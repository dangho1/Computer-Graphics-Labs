// Model viewer code for the assignments in Computer Graphics 1TD388/1MD150.
//
// Modify this and other source files according to the tasks in the instructions.
//

#include "gltf_io.h"
#include "gltf_scene.h"
#include "gltf_render.h"
#include "cg_utils.h"
#include "cg_trackball.h"

#include <GL/gl3w.h>
#include <GLFW/glfw3.h>

#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include <cstdlib>
#include <iostream>

// Struct for our application context
struct Context {
    int width = 512;
    int height = 512;
    GLFWwindow *window;
    gltf::GLTFAsset asset;
    gltf::DrawableList drawables;
    cg::Trackball trackball;
    GLuint program;
    GLuint emptyVAO;
    float elapsedTime;
    std::string gltfFilename = "armadillo.gltf";
    // Add more variables here...
    glm::vec3 backgroundColor;
    glm::vec3 lightPosition;
    glm::vec3 diffuseColor;
    glm::vec3 ambientColor;
    glm::vec3 specularColor;
    int specularPower;
    float zoomFactor;
    int displayNormals;
    int displayOrtho;
};

// Returns the absolute path to the src/shader directory
std::string shader_dir(void)
{
    std::string rootDir = cg::get_env_var("MODEL_VIEWER_ROOT");
    if (rootDir.empty()) {
        std::cout << "Error: MODEL_VIEWER_ROOT is not set." << std::endl;
        std::exit(EXIT_FAILURE);
    }
    return rootDir + "/src/shaders/";
}

// Returns the absolute path to the assets/gltf directory
std::string gltf_dir(void)
{
    std::string rootDir = cg::get_env_var("MODEL_VIEWER_ROOT");
    if (rootDir.empty()) {
        std::cout << "Error: MODEL_VIEWER_ROOT is not set." << std::endl;
        std::exit(EXIT_FAILURE);
    }
    return rootDir + "/assets/gltf/";
}

void init_values(Context &ctx)
{
    ctx.backgroundColor = glm::vec3(0.8f, 0.8f, 0.8f);
    ctx.lightPosition = glm::vec3(0.0f, 0.0f, -1.0f);
    ctx.diffuseColor = glm::vec3(0.0f, 0.7f, 0.0f);
    ctx.ambientColor = glm::vec3(0.7f, 0.0f, 0.0f);
    ctx.specularColor = glm::vec3(1.0f, 1.0f, 1.0f);
    ctx.specularPower = 100;
    ctx.zoomFactor = 90.0f;
    ctx.displayNormals = 0;
    ctx.displayOrtho = 0;
}

void do_initialization(Context &ctx)
{
    ctx.program = cg::load_shader_program(shader_dir() + "mesh.vert", shader_dir() + "mesh.frag");

    gltf::load_gltf_asset(ctx.gltfFilename, gltf_dir(), ctx.asset);
    gltf::create_drawables_from_gltf_asset(ctx.drawables, ctx.asset);
    init_values(ctx);
}

void draw_scene(Context &ctx)
{
    // Activate shader program
    glUseProgram(ctx.program);

    // Set render state
    glEnable(GL_DEPTH_TEST);  // Enable Z-buffering

    // Define per-scene uniforms
    glUniform1f(glGetUniformLocation(ctx.program, "u_time"), ctx.elapsedTime);
    // ...

    ImGui::ColorEdit3("My color", &ctx.backgroundColor[0]);

    glm::mat4 projection = glm::mat4(1.0f);
    glUniformMatrix4fv(glGetUniformLocation(ctx.program, "u_projection"), 1, GL_FALSE,
                       &projection[0][0]);

    glm::mat4 model_trans = glm::translate(glm::mat4(1.0f), glm::vec3(0.5f, -0.3f, 0.0f));
    glm::mat4 model_scale = glm::scale(glm::mat4(1.0f), glm::vec3(0.5f, 0.5f, 0.5f));
    glm::mat4 model_rot =
        glm::rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(1.0f, 0.0f, 0.0f));
    glm::mat4 model = model_scale * model_rot;
    glUniformMatrix4fv(glGetUniformLocation(ctx.program, "u_model"), 1, GL_FALSE, &model[0][0]);

    glm::mat4 look = glm::lookAt(glm::vec3(0.0f, 0.0f, -1.0f), glm::vec3(0.0f, 0.0f, 0.0f),
                                 glm::vec3(0.0f, 1.0f, 0.0f));

    glm::mat4 perspective = glm::perspective(glm::radians(ctx.zoomFactor), 1.0f, 0.1f, 100.0f);

    glm::mat4 view = perspective * look * glm::mat4(ctx.trackball.orient);
    glUniformMatrix4fv(glGetUniformLocation(ctx.program, "u_view"), 1, GL_FALSE, &view[0][0]);

    ImGui::ColorEdit3("Lightning position", &ctx.lightPosition[0]);
    glUniform3fv(glGetUniformLocation(ctx.program, "u_lightPosition"), 1, &ctx.lightPosition[0]);

    ImGui::ColorEdit3("Diffuse Color", &ctx.diffuseColor[0]);
    glUniform3fv(glGetUniformLocation(ctx.program, "u_diffuseColor"), 1, &ctx.diffuseColor[0]);

    ImGui::ColorEdit3("Ambient Color", &ctx.ambientColor[0]);
    glUniform3fv(glGetUniformLocation(ctx.program, "u_ambientColor"), 1, &ctx.ambientColor[0]);

    ImGui::ColorEdit3("Specular Color", &ctx.specularColor[0]);
    glUniform3fv(glGetUniformLocation(ctx.program, "u_specularColor"), 1, &ctx.specularColor[0]);

    ImGui::SliderInt("Specular Power", &ctx.specularPower, 1, 1000);
    glUniform1i(glGetUniformLocation(ctx.program, "u_specularPower"), ctx.specularPower);  // ALPHA

    ImGui::Checkbox("Display normals RGB", (bool *)&ctx.displayNormals);
    glUniform1i(glGetUniformLocation(ctx.program, "u_displayNormals"), ctx.displayNormals);

    ImGui::Checkbox("Ortho projection", (bool *)&ctx.displayOrtho);
    glUniform1i(glGetUniformLocation(ctx.program, "u_displayOrtho"), ctx.displayOrtho);

    glm::mat4 ortho = glm::ortho(-1.0f, 1.0f, -1.0f, 1.0f);
    glUniformMatrix4fv(glGetUniformLocation(ctx.program, "u_ortho"), 1, GL_FALSE, &ortho[0][0]);

    // Draw scene
    for (unsigned i = 0; i < ctx.asset.nodes.size(); ++i) {
        const gltf::Node &node = ctx.asset.nodes[i];
        const gltf::Drawable &drawable = ctx.drawables[node.mesh];

        // Define per-object uniforms
        // ...

        // Draw object
        glBindVertexArray(drawable.vao);
        glDrawElements(GL_TRIANGLES, drawable.indexCount, drawable.indexType,
                       (GLvoid *)(intptr_t)drawable.indexByteOffset);
        glBindVertexArray(0);
    }

    // Clean up
    cg::reset_gl_render_state();
    glUseProgram(0);
}

void do_rendering(Context &ctx)
{
    // Clear render states at the start of each frame
    cg::reset_gl_render_state();

    // Clear color and depth buffers
    glClearColor(ctx.backgroundColor[0], ctx.backgroundColor[1], ctx.backgroundColor[2], 0.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    draw_scene(ctx);
}

void reload_shaders(Context *ctx)
{
    glDeleteProgram(ctx->program);
    ctx->program = cg::load_shader_program(shader_dir() + "mesh.vert", shader_dir() + "mesh.frag");
}

void error_callback(int /*error*/, const char *description)
{
    std::cerr << description << std::endl;
}

void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods)
{
    // Forward event to ImGui
    ImGui_ImplGlfw_KeyCallback(window, key, scancode, action, mods);
    if (ImGui::GetIO().WantCaptureKeyboard) return;

    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    if (key == GLFW_KEY_R && action == GLFW_PRESS) { reload_shaders(ctx); }
}

void char_callback(GLFWwindow *window, unsigned int codepoint)
{
    // Forward event to ImGui
    ImGui_ImplGlfw_CharCallback(window, codepoint);
    if (ImGui::GetIO().WantTextInput) return;
}

void mouse_button_callback(GLFWwindow *window, int button, int action, int mods)
{
    // Forward event to ImGui
    ImGui_ImplGlfw_MouseButtonCallback(window, button, action, mods);
    if (ImGui::GetIO().WantCaptureMouse) return;

    double x, y;
    glfwGetCursorPos(window, &x, &y);

    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    if (button == GLFW_MOUSE_BUTTON_LEFT) {
        ctx->trackball.center = glm::vec2(x, y);
        ctx->trackball.tracking = (action == GLFW_PRESS);
    }
}

void cursor_pos_callback(GLFWwindow *window, double x, double y)
{
    // Forward event to ImGui
    if (ImGui::GetIO().WantCaptureMouse) return;

    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    cg::trackball_move(ctx->trackball, float(x), float(y));
}

void scroll_callback(GLFWwindow *window, double x, double y)
{
    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));

    if (ctx->zoomFactor >= 1.0f && ctx->zoomFactor <= 180.0f) ctx->zoomFactor -= y;
    if (ctx->zoomFactor <= 1.0f) ctx->zoomFactor = 1.0f;
    if (ctx->zoomFactor >= 180.0f) ctx->zoomFactor = 180.0f;
    // Forward event to ImGui
    // ImGui_ImplGlfw_ScrollCallback(window, x, y);
    // if (ImGui::GetIO().WantCaptureMouse) return;
}

void resize_callback(GLFWwindow *window, int width, int height)
{
    // Update window size and viewport rectangle
    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    ctx->width = width;
    ctx->height = height;
    glViewport(0, 0, width, height);
}

int main(int argc, char *argv[])
{
    Context ctx = Context();
    if (argc > 1) { ctx.gltfFilename = std::string(argv[1]); }

    // Create a GLFW window
    glfwSetErrorCallback(error_callback);
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    ctx.window = glfwCreateWindow(ctx.width, ctx.height, "Model viewer", nullptr, nullptr);
    glfwMakeContextCurrent(ctx.window);
    glfwSetWindowUserPointer(ctx.window, &ctx);
    glfwSetKeyCallback(ctx.window, key_callback);
    glfwSetCharCallback(ctx.window, char_callback);
    glfwSetMouseButtonCallback(ctx.window, mouse_button_callback);
    glfwSetCursorPosCallback(ctx.window, cursor_pos_callback);
    glfwSetScrollCallback(ctx.window, scroll_callback);
    glfwSetFramebufferSizeCallback(ctx.window, resize_callback);

    // Load OpenGL functions
    if (gl3wInit() || !gl3wIsSupported(3, 3) /*check OpenGL version*/) {
        std::cerr << "Error: failed to initialize OpenGL" << std::endl;
        std::exit(EXIT_FAILURE);
    }
    std::cout << "OpenGL version: " << glGetString(GL_VERSION) << std::endl;

    // Initialize ImGui
    ImGui::CreateContext();
    ImGui_ImplGlfw_InitForOpenGL(ctx.window, false /*do not install callbacks*/);
    ImGui_ImplOpenGL3_Init("#version 330" /*GLSL version*/);

    // Initialize rendering
    glGenVertexArrays(1, &ctx.emptyVAO);
    glBindVertexArray(ctx.emptyVAO);
    glEnable(GL_TEXTURE_CUBE_MAP_SEAMLESS);
    do_initialization(ctx);

    // Start rendering loop
    while (!glfwWindowShouldClose(ctx.window)) {
        glfwPollEvents();
        ctx.elapsedTime = glfwGetTime();

        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();
        // ImGui::ShowDemoWindow();
        do_rendering(ctx);
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(ctx.window);
    }

    // Shutdown
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
    glfwDestroyWindow(ctx.window);
    glfwTerminate();
    std::exit(EXIT_SUCCESS);
}
