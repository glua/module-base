solution "Example"
	language		"C++"
	location		"project"
	targetdir		"bin"

	if os.get() == "windows" then
		architecture	"x86"
	end

	--
	-- Statically link the C-Runtime to reduce dependencies needed to run our module
	--
	flags "StaticRuntime"

	configurations { "Release" }

	configuration "Release"
		flags		"symbols"
		optimize	"On"

	project "gm_example"
		kind	"SharedLib"
		include	"LuaInterface"

		files { "src/**.cpp", "src/**.h" }
