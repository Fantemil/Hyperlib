local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Motel simulator!", "DarkTheme")

local Main = Window:NewTab("Main")
local More = Window:NewTab("More")

local Cooking = Main:NewSection("Cooking")
local Check = Main:NewSection("Check In & Out")
local More = More:NewSection("More things")
-------------------------------------------------------------------------------


Cooking:NewButton("Cookies", "Auto buy Cookies and cook them", function()
    local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

local ohString1 = "MotelFunds" --MotelFunds or PersonalFunds
local ohString2 = food
local ohNumber3 = 1 --quantity

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
end)
-------------------------------------------------------------------------------


Cooking:NewButton("Bacon", "Auto buy Bacons and cook them", function()
    local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

local ohString1 = "MotelFunds" --MotelFunds or PersonalFunds
local ohString2 = food
local ohNumber3 = 1 --quantity

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
end)

-------------------------------------------------------------------------------


Cooking:NewButton("Pizzas", "Auto buy Pizzas and cook them", function()
    local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

local ohString1 = "MotelFunds" --MotelFunds or PersonalFunds
local ohString2 = food
local ohNumber3 = 1 --quantity

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
end)

-------------------------------------------------------------------------------


Cooking:NewButton("Pancakes", "Auto buy Pancakes and cook them", function()
    local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

local ohString1 = "MotelFunds" --MotelFunds or PersonalFunds
local ohString2 = food
local ohNumber3 = 1 --quantity

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
end)

-------------------------------------------------------------------------------


Check:NewButton("Check In", "Recommend execute Instant Interact first", function()
    x=-20

y=12

z=88.4

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
end)
-------------------------------------------------------------------------------


Check:NewButton("Check Out", "Recommend execute Instant Interact first", function()
    x=-14

y=12.7

z=88.8

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
end)
-------------------------------------------------------------------------------


More:NewButton("Instant Interact", "Make sure you execute this first", function()
    game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
  fireproximityprompt(prompt)
end)
end)
-------------------------------------------------------------------------------

More:NewSlider("Player Speed", "Control your speed", 200, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
-------------------------------------------------------------------------------
More:NewToggle("Full Bright", "It could be harmful", function(state)
    if state then
       if not _G.FullBrightExecuted then

 _G.FullBrightEnabled = false

 _G.NormalLightingSettings = {
  Brightness = game:GetService("Lighting").Brightness,
  ClockTime = game:GetService("Lighting").ClockTime,
  FogEnd = game:GetService("Lighting").FogEnd,
  GlobalShadows = game:GetService("Lighting").GlobalShadows,
  Ambient = game:GetService("Lighting").Ambient
 }

 game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
  if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
   _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").Brightness = 1
  end
 end)

 game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
  if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
   _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").ClockTime = 12
  end
 end)

 game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
  if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
   _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").FogEnd = 786543
  end
 end)

 game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
  if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
   _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").GlobalShadows = false
  end
 end)

 game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
  if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
   _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
  end
 end)

 game:GetService("Lighting").Brightness = 1
 game:GetService("Lighting").ClockTime = 12
 game:GetService("Lighting").FogEnd = 786543
 game:GetService("Lighting").GlobalShadows = false
 game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

 local LatestValue = true
 spawn(function()
  repeat
   wait()
  until _G.FullBrightEnabled
  while wait() do
   if _G.FullBrightEnabled ~= LatestValue then
    if not _G.FullBrightEnabled then
     game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
     game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
     game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
     game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
     game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
    else
     game:GetService("Lighting").Brightness = 1
     game:GetService("Lighting").ClockTime = 12
     game:GetService("Lighting").FogEnd = 786543
     game:GetService("Lighting").GlobalShadows = false
     game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    end
    LatestValue = not LatestValue
   end
  end
 end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
  print("hi")
    else
        if not _G.FullBrightExecuted then

 _G.FullBrightEnabled = false

 _G.NormalLightingSettings = {
  Brightness = game:GetService("Lighting").Brightness,
  ClockTime = game:GetService("Lighting").ClockTime,
  FogEnd = game:GetService("Lighting").FogEnd,
  GlobalShadows = game:GetService("Lighting").GlobalShadows,
  Ambient = game:GetService("Lighting").Ambient
 }

 game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
  if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
   _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").Brightness = 1
  end
 end)

 game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
  if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
   _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").ClockTime = 12
  end
 end)

 game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
  if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
   _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").FogEnd = 786543
  end
 end)

 game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
  if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
   _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").GlobalShadows = false
  end
 end)

 game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
  if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
   _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
   if not _G.FullBrightEnabled then
    repeat
     wait()
    until _G.FullBrightEnabled
   end
   game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
  end
 end)

 game:GetService("Lighting").Brightness = 1
 game:GetService("Lighting").ClockTime = 12
 game:GetService("Lighting").FogEnd = 786543
 game:GetService("Lighting").GlobalShadows = false
 game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

 local LatestValue = true
 spawn(function()
  repeat
   wait()
  until _G.FullBrightEnabled
  while wait() do
   if _G.FullBrightEnabled ~= LatestValue then
    if not _G.FullBrightEnabled then
     game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
     game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
     game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
     game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
     game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
    else
     game:GetService("Lighting").Brightness = 1
     game:GetService("Lighting").ClockTime = 12
     game:GetService("Lighting").FogEnd = 786543
     game:GetService("Lighting").GlobalShadows = false
     game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    end
    LatestValue = not LatestValue
   end
  end
 end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
    end
end)
-------------------------------------------------------------------------------
More:NewButton("Player speed (50)", "It keeps your speed to 50", function()
    while true do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
wait(1)
end
end)