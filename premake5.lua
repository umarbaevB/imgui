project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14" --C++11/14/17
    systemversion "latest"
    staticruntime "on"

    targetdir ("build/" .. outputdir .. "/%{prj.name}")
    objdir ("build-interm/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }

    filter "system:linux"
        pic "on"
    

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
