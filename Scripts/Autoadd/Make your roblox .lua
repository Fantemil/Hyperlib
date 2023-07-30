--// config settings
getgenv().config = {
    old_console = true,
    old_plist = true,
    old_graphics = true,
    dev = false
}

--// mods
getgenv().mods = {
    fps_counter = false,
    built_in_silentre = false,
    c00l_mode = false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/specowos/lua-projects/main/project%202016%3A%20Remastered/Main.lua"))()