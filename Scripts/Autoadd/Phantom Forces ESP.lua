local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local var = true
local blue = 'Bright blue'
local orange = 'Bright orange'
local enemy
if var then
if game.Players.LocalPlayer.TeamColor == 'Bright orange' then
enemy = game.Workspace.Players['Bright blue']
else
enemy = game.Workspace.Players["Bright orange"]
end
end
ESP:AddObjectListener(enemy, {
  Recursive = true,
  Type = "Model",
  CustomName = " ",
  Color = Color3.fromRGB(0,255,0),
      Validator = function(obj)
      return obj:FindFirstChild("Torso")
  end,
  IsEnabled = "EnabledESP"
})
ESP.EnabledESP = true
_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Phantom Forces ESP")

local b = w:CreateFolder("made by ZekGT")

b:Toggle("ESP",function(bool)
   shared.toggle = bool
   if shared.toggle then
ESP:Toggle(true)
else
ESP:Toggle(false)
end
end)