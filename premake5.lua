local target_suffixes = {

	bsd       = "linux",
	linux     = "linux",
	solaris   = "linux",
	windows   = "win32",
	macosx    = "osx"  ,

}


solution "Example"
	language		"C++"
	location		"project"

	targetdir		"bin"
	targetprefix		"gm_"
	targetextension		".dll"
	targetsuffix		( "_" .. target_suffixes[ os.get() ] )

	--
	-- Statically link the C-Runtime to reduce dependencies needed to run our module
	--
	flags "StaticRuntime"

	configurations { "Release" }

	configuration "Release"
		flags		"symbols"
		optimize	"On"

	project "example"
		kind	"SharedLib"
		include	"LuaInterface"

		files { "src/**.cpp", "src/**.h" }
