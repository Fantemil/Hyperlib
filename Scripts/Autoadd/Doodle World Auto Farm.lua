getgenv().autofarm_settings = {
    enabled = true,
    kill_all = false, -- bypasses every other kill setting
    catch_when_shiny = true,
    kill_when_shiny = false,
    catch_when_skin = true,
    kill_when_skin = false,
    catch_when_havent_caught_before = false,
    kill_when_havent_caught_before = true,
    catch_when_specific_doodle = false,
    kill_when_specific_doodle = true,
    specific_doodles = { --add a comma after each doodle except for the last one
        "Glubbie",
        "Wisp",
        "Moss",
        "Mold",
        "Yagoat",
        "Leapo",
        "Glimmew"
    }
}
loadstring(game:HttpGet("https://spelling.wtf/scripts/doodleworld.lua"))()