solution "Example"
	language		"C++"
	location		"project"
	targetdir		"bin"
	architecture	"x86"

	--
	-- Statically link the C-Runtime to reduce dependencies needed to run our module
	--
	flags "StaticRuntime"

	configurations { "Release" }

	configuration "Release"
		flags		"symbols"
		optimize	"On"

	project "gm_example"
		kind "SharedLib"
		include "LuaInterface"

		files { "src/**.cpp", "src/**.h" }
