local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/zekgt/lua/main/phantom%20forces/libraries/ESP.lua"))()
ESP.Boxes = false
ESP.Names = false
local window = library:CreateWindow("Phantom Forces")
local folder1 = window:CreateFolder("ESP")
local folder2 = window:CreateFolder("Misc")
local Ghosts = game.Workspace.Players['Bright orange']
local Phantoms = game.Workspace.Players['Bright blue']
ESP:AddObjectListener(Ghosts, {
  Recursive = true,
  Type = "Model",
  CustomName = " ",
  Color = Color3.fromRGB(255,165,0),
      Validator = function(obj)
      return obj:FindFirstChild("Torso")
  end,
  IsEnabled = "GhostsESP"
})
ESP:AddObjectListener(Phantoms, {
  Recursive = true,
  Type = "Model",
  CustomName = " ",
  Color = Color3.fromRGB(0,0,233),
      Validator = function(obj)
      return obj:FindFirstChild("Torso")
  end,
  IsEnabled = "PhantomsESP"
})
ESP.GhostsESP = false
ESP.PhantomsESP = false 
folder1:Toggle("Enabled", function(v)
 if v then
  ESP:Toggle(true)
 else
  ESP:Toggle(false)
 end
end)
folder1:Toggle("Ghosts", function(v) -- so fucking sorry for adding this because i couldn't figure out teamcheck
    ESP.GhostsESP = v
end)
folder1:Toggle("Phantoms", function(v) -- so fucking sorry for adding this because i couldn't figure out teamcheck
    ESP.PhantomsESP = v
end)
folder1:Toggle("Boxes", function(v)
 if v then
  ESP.Boxes = true
  else
  ESP.Boxes = false
 end
end)
folder1:Toggle("Tracers", function(v)
 if v then
  ESP.Tracers = true
  else
   ESP.Tracers = false
 end
end)
folder1:Toggle("Distance", function(v)
if v then
 ESP.Names = true
 else
  ESP.Names = false
 end
end)
folder2:Button("Rejoin Server", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
local creditsTable = {
    "UI: Aika",
    "ESP: Kiriot22",
    "Script: ZekGT",
}
folder2:Dropdown("Credits", creditsTable, true, function()
 warn""
end)
folder2:Slider("FPS Capacity",{
    min = 10;
    max = 300;
    precise = false;
    }, function(v)
    setfpscap(v)
end)
print("ESP Loaded")