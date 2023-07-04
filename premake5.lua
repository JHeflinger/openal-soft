project "OpenAL"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"al/**.h",
		"al/**.cpp",
		"alc/**.h",
		"alc/**.cpp",
		"common/**.h",
		"common/**.cpp",
		"core/**.h",
		"core/**.cpp",
	}

	includedirs
	{
		"al",
		"alc",
        "common",
        "core"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"