-- set minimum xmake version
set_xmakever("3.0.0")

-- include subprojects
includes("lib/commonlibsf")

-- set project constants
set_project("commonlibsf-template")
set_version("0.0.0")
set_license("GPL-3.0")
set_languages("c++23")
set_warnings("allextra")

-- add common rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- define targets
target("commonlibsf-template")
    add_rules("commonlibsf.plugin", {
        name = "commonlibsf-template",
        author = "libxse",
        description = "SFSE plugin template using CommonLibSF",
        email = "user@site.com"
    })

    -- add src files
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/pch.h")
