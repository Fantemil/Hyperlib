discord.gg/bxScU3K4

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/linemaster2/esp-library/main/library.lua"))();


ESP.Enabled = false;
ESP.ShowBox = false;
ESP.ShowName = false;
ESP.ShowHealth = false;
ESP.ShowTracer = false;
ESP.ShowDistance = false;
ESP.ShowSkeletons = false;

    local ESP_SETTINGS = {
        BoxOutlineColor = Color3.new(1, 1, 1),
        BoxColor = Color3.new(1, 1, 1),
        NameColor = Color3.new(1, 1, 1),
        HealthOutlineColor = Color3.new(0, 0, 0),
        HealthHighColor = Color3.new(0, 1, 0),
        HealthLowColor = Color3.new(1, 0, 0),
        CharSize = Vector2.new(4, 6),
        Teamcheck = false,
        WallCheck = false,
        Enabled = false,
        ShowBox = false,
        BoxType = "2D",
        ShowName = false,
        ShowHealth = false,
        ShowDistance = false,
        ShowSkeletons = false,
        ShowTracer = false,
        TracerColor = Color3.new(1, 1, 1), 
        TracerThickness = 2,
        SkeletonsColor = Color3.new(1, 1, 1),
        TracerPosition = "Bottom",
    }
    

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

MinimizeButton({
  Image = "",
  Size = {40, 40},
  Color = Color3.fromRGB(10, 10, 10),
  Corner = true,
  Stroke = false,
  StrokeColor = Color3.fromRGB(255, 0, 0)
})



local Main = MakeTab({Name = "Main"})


local Toggle = AddToggle(Main, {
  Name = "Enabled",
  Default = false,
  Callback = function(Value)
    ESP.Enabled = Value;
  end
})

local Toggle = AddToggle(Main, {
  Name = "Name",
  Default = false,
  Callback = function(Value)
    ESP.ShowName = Value;
  end
})

local Toggle = AddToggle(Main, {
  Name = "Box",
  Default = false,
  Callback = function(Value)
    ESP.ShowBox = Value;
  end
})

local Toggle = AddToggle(Main, {
  Name = "Tracer",
  Default = false,
  Callback = function(Value)
    ESP.ShowTracer = Value;
  end
})

local Toggle = AddToggle(Main, {
  Name = "Health",
  Default = false,
  Callback = function(Value)
    ESP.ShowHealth = Value;
  end
})

local Toggle = AddToggle(Main, {
  Name = "Skeletons",
  Default = false,
  Callback = function(Value)
    ESP.ShowSkeletons = Value;
  end
})



local Toggle = AddToggle(Main, {
  Name = "Distance",
  Default = false,
  Callback = function(Value)
    ESP.ShowDistance = Value;
  end
})


local Toggle = AddToggle(Main, {
  Name = "Team check",
  Default = false,
  Callback = function(Value)
    ESP.Teamcheck = Value;	
  end
})

local Toggle = AddToggle(Main, {
  Name = "Wall check",
  Default = false,
  Callback = function(Value)
    ESP.WallCheck = Value;
  end
})






local Dropdown = AddDropdown(Main, {
  Name = "Tracer",
  Options = {"Bottom", "Top", "Middle"},
  Default = "Top",
  Callback = function(Value)
    ESP.TracerPosition = Value;
  end
})

local Dropdown = AddDropdown(Main, {
  Name = "Box",
  Options = {"2D", "Corner Box Esp"},
  Default = "2D",
  Callback = function(Value)
    ESP.BoxType = Value
  end
})


