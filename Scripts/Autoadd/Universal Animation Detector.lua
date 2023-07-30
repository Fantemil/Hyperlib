--[[ Made by ThroughTheFireAndFlames#9925

    |  Universal Animation Detector

--]]
-- Note: It is meant to make auto dodge/parry/block scripts!

getgenv().Keybind = Enum.KeyCode.V

getgenv().Mag = 10

getgenv().Animations = { -- Animation ID | Animation Name
     "Anim1",
     "Anim2",
     "Anim3",
     "Anim4",
}

getgenv().Reaction = function()
    print("Animation Detected!");
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/AnimDetector/main/Universal"))();