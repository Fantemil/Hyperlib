loadstring(game:HttpGet(("https://raw.githubusercontent.com/REDzHUB/LibraryV2/main/redzLib")))()
MakeWindow({
  Hub = {
    Title = "Esp",
    Animation = "by thaibao7444"
  },
  Key = {
    KeySystem = false,
    Title = "Key System",
    Description = "",
    KeyLink = "",
    Keys = {"1234"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Running the Script...",
      Incorrectkey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})

local Main = MakeTab({Name = "Esp"})




local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Tracers = false
ESP.Boxes = false
ESP.Names = false
ESP.TeamColor = false
ESP.TeamMates = false



local Toggle = AddToggle(Main, {
  Name = "Enable",
  Default = false,
  Callback = function(Value)
    ESP.Players = Value
  end
})


local Toggle = AddToggle(Main, {
  Name = "Name",
  Default = false,
  Callback = function(Value)
    ESP.Names = Value
  end
})


local Toggle = AddToggle(Main, {
  Name = "Box",
  Default = false,
  Callback = function(Value)
    ESP.Boxes = Value
  end
})


local Toggle = AddToggle(Main, {
  Name = "Tracer",
  Default = false,
  Callback = function(Value)
    ESP.Tracers = Value
  end
})


local Toggle = AddToggle(Main, {
  Name = "Team check",
  Default = false,
  Callback = function(Value)
    ESP.TeamColor = Value
  end
})


local Toggle = AddToggle(Main, {
  Name = "Team color",
  Default = false,
  Callback = function(Value)
ESP.TeamMates = Value
  end
})


AddColorPicker(Main, {
  Name = "Color",
  Default = Color3.fromRGB(255, 255, 0),
  Callback = function(Value)
    ESP.Color = Value
  end
})


