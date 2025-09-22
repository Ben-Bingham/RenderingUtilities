project "RenderingUtilities"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"

	flags "MultiProcessorCompile"

    filter "configurations:Debug"
        symbols "on"

    filter "configurations:Release"
        optimize "on"
    filter {}

	targetdir "%{wks.location}/build/3rdParty/bin/%{prj.name}"
	objdir "%{wks.location}/build/3rdParty/bin-int/%{prj.name}"

    files {
        "src/utility/**.cpp",
        "src/utility/**.h"
    }

    includedirs {
        "src/",
        "../GLEW/include",
		"../GLFW/include",
		"../stb",
		"../ImGui/src",
		"../glm",
    }    

    libdirs {
        "../GLFW/lib-vc2022",
        "../GLEW/lib/Release/x64"
    }

    links {
        "glew32s",
        "opengl32",
        "glfw3",
		"ImGui",
		"glm"
	}