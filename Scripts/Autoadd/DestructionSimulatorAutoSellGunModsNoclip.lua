local Config = {
    WindowName = "Destruction Simulator",
 Color = Color3.fromRGB(0,50,111),
 Keybind = Enum.KeyCode.RightBracket
}


local function owo(model)
 a = model:GetChildren()
     for i = 1, #a do
         if a[i]:IsA("Part") then
             p = a[i]
             local A_1 = os.time()--how about next time you get a "remote key" that can handle the neutron style
             local A_2 = game.Players.LocalPlayer.Backpack.Bomb.Stats
             local A_3 = p.Position
             local Event = game:GetService("ReplicatedStorage").Remotes.explodeBomb
             Event:FireServer(A_1, A_2, A_3)
             game.RunService.Heartbeat:Wait()
         end
 end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/FadeRemix/UI-Librarys/main/LOADSTRINGS/BracketV3%20Loadstring"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local speaker = game.Players.LocalPlayer 
local plrname = game:GetService("Players").LocalPlayer.Name
local LPR = game:GetService("Workspace"):FindFirstChild(plrname)
local humnoid = game:GetService("Workspace"):FindFirstChild(plrname).HumanoidRootPart
local bomb = game:GetService("ReplicatedStorage").Bombs.Bombs["Black Hole Bomb"].Tool
local bombRemote = game:GetService("ReplicatedStorage").Remotes.clientServerBomb
local places = {
    {"Switch",37.0067978, 1.50002098, -1054.49866},
    {"Rubix",-107.993179, 1.50002098, -1059.49866},
    {"Emojis",37.0067978, 1.50002098, -754.498657},
    {"Players",-107.993179, 1.50002098, -759.498657},
    {"Racetrack",37.0067978, 1.50002098, -454.498627},
    {"Construction",-107.993179, 1.50002098, -459.498688},
    {"Farm",37.0067978, 1.50002098, -154.498627},
    {"Roblox Town",-107.993202, 1.50002098, -159.498657},
    {"Light House",37.0067978, 1.50002098, 145.501343},
    {"Space",-107.993202, 1.50002098, 140.501358},
    {"Prison",37.0067978, 1.50002098, 445.501373},
    {"Pyramid",-107.993172, 1.50002098, 440.501312},
    {"Castle",37.0067978, 1.50002098, 745.501343},
    {"Glass Tower",-107.993202, 1.50002098, 740.501282},
    {"Volcano",37.0067978, 1.50002098, 1095.50134},
    {"Doomspire",-107.993202, 1.50002098, 1090.50122}
}

local function destoy()
    for i, v in pairs(workspace.Areas[game.Players.LocalPlayer.CurrentArea.Value]:GetChildren()) do
     if v:IsA("Model") then
 owo(v)
        end
    end
end

local function makeInvis(part)
    pcall(function()getrenv()._G.DropBomb(os.time(),bomb,game.Players.LocalPlayer,part,nil,part.Position)end)
    game:GetService("ReplicatedStorage").Remotes.clientServerBomb:FireServer(os.time(),bomb,game.Players.LocalPlayer,part,nil,part.Position)
end

--[[
local function tptorooms()
 for num,current in pairs(places) do
  wait(7)
        humnoid.CFrame = CFrame.new(current[2],current[3],current[4])
        wait(1)
    destoy()
    end
end
]]

local function cooldwn(CoolDownVAL)
 for h,q in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
  require(q.Stats).Cooldown = CoolDownVAL
 end
end

local Tab1 = Window:CreateTab("Cheats")
local modTab = Window:CreateTab("Gun Mods")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("Exploits")
local Section2 = Tab1:CreateSection("Other")
local sectionboost = Tab1:CreateSection("Boosts")
local gunmods = modTab:CreateSection("Launcher Mods")
local unimods = modTab:CreateSection("Universal Mods")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")
-------------

local shouldfire = false

-------------
local TogAUTOSELL = Section1:CreateToggle("Auto Sell", nil, function(State)
 shouldfire = State
end)
TogAUTOSELL:AddToolTip("Will automatically sell all")

-------------
local Button1 = Section1:CreateButton("Destroy Area", function()
for i, v in pairs(workspace.Areas[game.Players.LocalPlayer.CurrentArea.Value]:GetChildren()) do
     if v:IsA("Model") then
   owo(v)
  end
 end
end)
Button1:AddToolTip("MUST STAY IN AREA")

-------------

local buttonINVIS = Section1:CreateButton("Make Players Invis (SS)",function()
 for i,v in next,game.Players:GetPlayers() do
     if v.Character then
         for i,v in next,v.Character:GetChildren() do
             if v:IsA("BasePart") then
                 makeInvis(v)
             end
         end
     end
 end
end)
buttonINVIS:AddToolTip("!! SERVERSIDE !!")

-------------

local TextBox1 = sectionboost:CreateTextBox("XP Boost", "Multiplier Amount", true, function(Value)
 game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("XPBoost", 99999999999999, Value)
end)
TextBox1:AddToolTip("Will multiply amount of XP you get")

-------------

local MoneyBox = sectionboost:CreateTextBox("Money Boost", "Multiplier Amount", true, function(Value)
 game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("CoinBoost", 99999999999999, Value)
end)
MoneyBox:AddToolTip("Will multiply amount of money you get")

-------------

local brickBox = sectionboost:CreateTextBox("Brick Boost", "Multiplier Amount", true, function(Value)
 game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("BrickBoost", 99999999999999, Value)
end)
brickBox:AddToolTip("Will multiply amount of bricks you get")

-------------

local NoclipToggle = Section2:CreateToggle("No-clip", nil, function(State)
 local Noclipping = nil
if State == true then
  Clip = false
 wait(0.1)
 local function NoclipLoop()
  if Clip == false and speaker.Character ~= nil then
   for _, child in pairs(speaker.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
     child.CanCollide = false
    end
   end
  end
 end
 Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
 elseif State == false then
   if Noclipping then
  Noclipping:Disconnect()
 end
 Clip = true
end
end)
NoclipToggle:AddToolTip("Allows you to walk in any room")
NoclipToggle:CreateKeybind("E", function(Key)
 print(Key)
end)

-------------

local anchortoggle = Section2:CreateToggle("Anchor Character", nil, function(State)
if State == true then
 humnoid.Anchored = true
 elseif State == false then
  humnoid.Anchored = false
 end
end)
anchortoggle:AddToolTip("Useful for 'Destroy Area'")
anchortoggle:CreateKeybind("L", function(Key)
 print(Key)
end)


-------------

local Dropdown1 = Section2:CreateDropdown("Teleport to area", {"Switch","Rubix","Emojis","Players","Racetrack","Construction","Roblox Town","Light House","Space","Prison","Pyramid","Castle","Glass Tower","Volcano","Doomspire"}, function(String)
    local selection = String
    for _,v in pairs(places) do
        if selection == v[1] then
            humnoid.CFrame = CFrame.new(v[2],v[3],v[4])
        end
    end
end)
Dropdown1:AddToolTip("Teleport to any area")

-------------

local rockspedslider = gunmods:CreateSlider("Rocket Speed",0,100,2,true, function(Value)
rockspedsliderval = Value
end)
rockspedslider:AddToolTip("How fast the rocket will go")

-------------

local burstslider = gunmods:CreateSlider("Bursts",0,100,1,true, function(Value)
burstsliderval = Value
end)
burstslider:AddToolTip("Will burst rocket shots")

-------------

local burstspedslider = gunmods:CreateSlider("Burst Speed",0,1,0.5,false, function(Value)
burstspedsliderval = Value
end)
burstspedslider:AddToolTip("How fast the burst will go")

-------------

local coolApply = gunmods:CreateButton("Apply Gun Mods", function()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
 require(v.Stats).RocketSpeed = rockspedsliderval
 require(v.Stats).Bursts = burstsliderval
 require(v.Stats).BurstWait = burstspedsliderval
    end
end)
coolApply:AddToolTip("Dont hold Launcher!")

------------

local coolslider = unimods:CreateSlider("Cooldown",0,100,5,true, function(Value)
cooldwnslderval = Value
end)
coolslider:AddToolTip("Set how fast you can shoot")

------------

local blastRslider = unimods:CreateSlider("Blast Radius",0,100,3,true, function(Value)
blastRsliderval = Value
end)
blastRslider:AddToolTip("How big the explosion is")

-------------

local blastFslider = unimods:CreateSlider("Blast Force",100,1000,500,true, function(Value)
blastFsliderval = Value
end)
blastFslider:AddToolTip("How strong the explosion is")

-------------

local modapply = unimods:CreateButton("Apply Universal Mods", function()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
 require(v.Stats).Cooldown = cooldwnslderval
 require(v.Stats).BlastRadius = blastRsliderval
 require(v.Stats).BlastForce = blastFsliderval
    end
end)
modapply:AddToolTip("Dont hold Launcher/Grenade!")

------------

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
 --code
end)

local resetval = Section4:CreateButton("Reset Transparency",function(Value)
 Slider3:SetValue(0)
end)

------------
local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
 Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
 Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)

local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
 Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

local LabelCreator = Section3:CreateLabel("Created by: Fade#8495")
local LabelMenu = Section3:CreateLabel("UI Lib: Bracket V3")

-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
 if Name == "Default" then
  Window:SetBackground("2151741365")
 elseif Name == "Hearts" then
  Window:SetBackground("6073763717")
 elseif Name == "Abstract" then
  Window:SetBackground("6073743871")
 elseif Name == "Hexagon" then
  Window:SetBackground("6073628839")
 elseif Name == "Circles" then
  Window:SetBackground("6071579801")
 elseif Name == "Lace With Flowers" then
  Window:SetBackground("6071575925")
 elseif Name == "Floral" then
  Window:SetBackground("5553946656")
 end
end)
Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
 Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
 Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
 Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)


while wait(0.01) do
 if shouldfire then
  game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()
  print("on")
 end 
end

------------- Auto farm ish

--[[
local AUTOFARMbutton = Section5:CreateButton("Auto Farm", function()
tptorooms()
end)
AUTOFARMbutton:AddToolTip("Must leave game to turn off... for now")
]]

------------- Menu shit
--[[
local Toggle1 = Section1:CreateToggle("Toggle 1", nil, function(State)
 print(State)
end)
Toggle1:AddToolTip("Toggle 1 ToolTip")
Toggle1:CreateKeybind("Y", function(Key)
 print(Key)
end)

local TextBox1 = Section1:CreateTextBox("TextBox 1", "Only numbers", true, function(Value)
 print(Value)
end)
TextBox1:AddToolTip("Yes only numbers")
TextBox1:SetValue("new value here")
Section1:CreateTextBox("TextBox 1\nMultiline", "numbers and letters", false, function(String)
 print(String)
end)
-------------
local Slider1 = Section1:CreateSlider("Slider 1", 0,100,nil,true, function(Value)
 print(Value)
end)
Slider1:AddToolTip("Slider 1 ToolTip")
Slider1:SetValue(50)
-------------
local Dropdown1 = Section1:CreateDropdown("Dropdown 1", {"Option 1","Option 2","Option 3"}, function(String)
 print(String)
end)
Dropdown1:AddToolTip("Dropdown 1 ToolTip")
Dropdown1:SetOption("Option 1")

local Colorpicker1 = Section1:CreateColorpicker("Colorpicker 1", function(Color)
 print(Color)
end)
Colorpicker1:AddToolTip("Colorpicker 1 ToolTip")
Colorpicker1:UpdateColor(Color3.fromRGB(255,0,0))

Section2:CreateLabel("Label 2\nMultiline")
-------------
local Button2 = Section2:CreateButton("Button 2\nMultiline", function()
 print("Click Button 2")
end)
Button2:AddToolTip("Button 2 ToolTip\nMultiline")
-------------
local Toggle2 = Section2:CreateToggle("Toggle 2\nMultiline", nil, function(State)
 print(State)
end)
Toggle2:AddToolTip("Toggle 2 ToolTip\nMultiline")
Toggle2:CreateKeybind("U", function(Key)
 print(Key)
end)
-------------
local Slider2 = Section2:CreateSlider("Slider 2\nMultiline", 0,100,nil,false, function(Value)
 print(Value)
end)
Slider2:AddToolTip("Slider 2 ToolTip\nMultiline")
Slider2:SetValue(25)
-------------
local Dropdown2 = Section2:CreateDropdown("Dropdown 2\nMultiline", {"Option 4","Option 5","Option 6"}, function(String)
 print(String)
end)
Dropdown2:AddToolTip("Dropdown 2 ToolTip")
Dropdown2:SetOption("Option 6")
-------------
local Colorpicker2 = Section2:CreateColorpicker("Colorpicker 2\nMultiline", function(Color)
 print(Color)
end)
Colorpicker2:AddToolTip("Colorpicker 2 ToolTip")
Colorpicker2:UpdateColor(Color3.fromRGB(0,0,255))

local Label1 = Section1:CreateLabel("Label 1")
Label1:UpdateText("lol")
]]