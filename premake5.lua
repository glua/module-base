solution "my_module"
	language		"C++"
	location		"project"
	targetdir		"bin"

	--
	-- Statically link the C-Runtime to reduce dependencies needed to run our module
	--
	flags "StaticRuntime"

	configurations { "Release" }

	configuration "Release"
		flags		"symbols"
		optimize	"On"

	project "my_module"
		kind	"SharedLib"
		include	"LuaInterface"

		files { "src/**.cpp", "src/**.h" }
