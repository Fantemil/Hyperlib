getgenv().Settings = {
    Enabled = false, -- self explantory
    UseKeybind = true, -- If script will be toggled by a keybind or manually
    Keybind = "H", -- The keybind
    UseCutomTiming = false, -- If you want to use your own timing
    CustomTime = 0 -- Put number in here ex: 0.7 or 0.5 (dont go above 1)
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEssence247/nadwai9fw/main/message.txt", true))()