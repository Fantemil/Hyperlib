local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Car Factory Tycoon", HidePremium = false, SaveConfig = false, ConfigFolder = "CFT"})

--[[Local Storage]]
local Factory = tostring(game.Players.LocalPlayer.Team)
local linha
local PL
local CV
for i,v in pairs(game:GetService("Workspace").Tycoons[Factory].Model.Lines:GetChildren()) do
if v.Name ~= 'Exclusive' then
PL = v
--wait(3)
end
end
local Tab = Window:MakeTab({
 Name = "Farming",
 Icon = "rbxassetid://1205680569", --1205680569
 PremiumOnly = false
})


local Section = Tab:AddSection({
 Name = "Fill"
})
Tab:AddLabel("What this do?")
 Tab:AddParagraph("Fill","It grabs 'Metal' and 'Glass' from the pile and adds to every conveyor until the other part explained bellow")
 Tab:AddParagraph("Requirements","Be able to carry 2 items at same time")

 Tab:AddLabel("Why this Slider?")
 Tab:AddParagraph("Welcome to the Slider","This will be the number of your last conveyor, from 1 to 8(next game updates it probably will expand)")

Tab:AddSlider({
 Name = "Last Conveyor",
 Min = 1,
 Max = 8,
 Default = 1,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 --ValueName = "bananas",
 Callback = function(Value)
   linha = ('Conveyor'..Value)
   CV = Value
   --print(linha)
 -- print(Value)
 end    
})
local wor
Tab:AddParagraph("How many workers do you have on last conveyor?","This is to prevent the bug of car getting stuck")
Tab:AddSlider({
 Name = "Last Conveyor Workers",
 Min = 0,
 Max = 5,
 Default = 0,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 --ValueName = "bananas",
 Callback = function(Value)
wor = Value
 end    
})



Tab:AddToggle({
 Name = "Fill",
 Default = false,
 Callback = function(Value)
--collect
getgenv().Fill = Value
if getgenv().Fill == true then
 repeat
  wait()
game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer('Glass')
game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Collect:InvokeServer('Metal')

--Conveyors
for i = 1, CV do
local PLR = ('Conveyor'..i)
wait()
game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.Drop:InvokeServer(PL.Parent[PLR])
end
until getgenv().Fill == false
end
end
})


local Section = Tab:AddSection({
 Name = "Cars"
})
Tab:AddLabel("And about this one?")
Tab:AddParagraph("Its a checkbox(a loop)","It will complete 5 steps(of 6) and on the last it will place wheels(instead of using the same remote to skip building parts)")
Tab:AddParagraph("Automation","To be able to make it don't get stuck, you will need to have this autofarm enabled with autosell")
Tab:AddParagraph("Full Automation Problems","Since you need to have a supply, you can't supply and carry wheels at same time, so its impossible to do both at same time(unless someone fork and do a pull request to solve this :D)")


Tab:AddToggle({
 Name = "Create Car",
 Default = false,
 Callback = function(Value)
--Create car
getgenv().CC = Value
if getgenv().CC == true then
 repeat
  wait(3)--Anti Stucker on car spawn
for i = wor,4 do
    game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.SpawnCarSegment:InvokeServer(linha)
    --game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.SpawnCarSegment:InvokeServer(conv)
    end
    --place wheel
 wait(1)
for i = 1,4 do
    game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.CollectWheel:InvokeServer(linha)
--    game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RF.CollectWheel:InvokeServer(conv)
    
    game:GetService("ReplicatedStorage").Packages.Knit.Services.MaterialService.RE.PlaceWheel:FireServer(linha)
end
 --wait(3)
 until getgenv().CC == false or getgenv().AutoSell == false
 OrionLib:MakeNotification({
  Name = "End of Vehicle Making!",
  Content = "For a loop, enable autosell or read the text for the reason",
  Image = "rbxassetid://4483345998",
  Time = 10
 })
 
end
end
})



local Section = Tab:AddSection({
 Name = "Sell"
})

Tab:AddLabel("How this works?")
Tab:AddParagraph("Another checkbox, another loop","It will sell with a random option, why random option? To sound be more like a human selling for the best price(you know, this is fake, there is no check for best price, its just a random option)(you can still get scammed!)")

Tab:AddToggle({
 Name = "AutoSell",
 Default = false,
 Callback = function(Value)
--sell
getgenv().AutoSell = Value
if getgenv().AutoSell == true then
 repeat
  wait(1)
for i,v in pairs(game:GetService("Workspace").Tycoons[Factory].Model.NPCs:GetChildren()) do
    local ohInstance1 = v 
    local ohString2 = math.random(1,3)--see the random option
    
    game:GetService("ReplicatedStorage").Packages.Knit.Services.TycoonService.RF.AcceptBid:InvokeServer(ohInstance1, ohString2)
    end
until getgenv().AutoSell == false
end    
end
})





local Tab = Window:MakeTab({
 Name = "Car and Teleports",
 Icon = "rbxassetid://8177115582",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Driveable Car Mods"
})
Tab:AddLabel("Exactly Change your car stats")
Tab:AddParagraph("MaxSpeed","It being 100 doesn't mean car will not go over 100, this value is different from what game show as SPS")

local MS 
Tab:AddSlider({
 Name = "MaxSpeed",
 Min = 90,
 Max = 400,
 Default = 100,
 Color = Color3.fromRGB(255,255,255),
 Increment = 10,
 --ValueName = "bananas",
 Callback = function(Value)
MS = Value 
 end    
})
Tab:AddParagraph("Torque","You can climb walls if its higher enought, I think")
local T
Tab:AddSlider({
 Name = "Torque",
 Min = 100,
 Max = 10000,
 Default = 200,
 Color = Color3.fromRGB(255,255,255),
 Increment = 100,
 --ValueName = "bananas",
 Callback = function(Value)
T = Value
 end    
})
Tab:AddParagraph("How good it brake","It needs to be negative to brake, if its positive it will 'accelerate'")
local BF
Tab:AddSlider({
 Name = "Brake Force",
 Min = -200,
 Max = 200,
 Default = -50,
 Color = Color3.fromRGB(255,255,255),
 Increment = 10,
 --ValueName = "bananas",
 Callback = function(Value)
BF = Value
 end    
})
Tab:AddParagraph("How much car turn","I don't see changed")
local MSA
Tab:AddSlider({
 Name = "MaxSteerAngle",
 Min = -100,
 Max = 200,
 Default = 20,
 Color = Color3.fromRGB(255,255,255),
 Increment = 10,
 --ValueName = "bananas",
 Callback = function(Value)
MSA = Value
 end    
})
Tab:AddParagraph("The Button","After doing changes, click on it to mod the car your driving/seated")
Tab:AddButton({
 Name = "Mod!",
 Callback = function()
  for _,t in pairs(getgc(true)) do
   if type(t) == 'table' then
      if rawget(t, "MaxSpeed") then
       rawset(t, "MaxSpeed", MS)
      if rawget(t,'Torque') then
       rawset(t,'Torque', T)
      if rawget(t,'BrakeForce') then
       rawset(t,'BrakeForce',BF)
      if rawget(t,'MaxSteerAngle') then
       rawset(t,'MaxSteerAngle', MSA)--did not saw a difference from this
   end
   end
   end
   end
   end
   end   
  end    
})


local Section = Tab:AddSection({
 Name = "Teleports"
})
local car
Tab:AddTextbox({
 Name = "Car Name",
 Default = "Write your car name, the same on Car Dealership",
 TextDisappear = false,
 Callback = function(Value)
 car = Value
 end   
})
local time
Tab:AddSlider({
 Name = "Time",
 Min = 20,
 Max = 90,
 Default = 21,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 --ValueName = "bananas",
 Callback = function(Value)
time = Value
 end    
})

Tab:AddParagraph("Time Trial","There is a kick if going under 20 seconds")
Tab:AddButton({
 Name = "Trigger Time Trial and teleport to Finish Line",
 Callback = function()
  --car = 'Tiny Cooper'
  local carro 
   
  local A_1 = "TimeTrial"
  local Event = game:GetService("ReplicatedStorage").Packages.Knit.Services.EventService.RF.StartEvent
  Event:InvokeServer(A_1)
  
  wait(time)
  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
  if v.Name == car then
  carro = v 
  warn(v)
  end
  end
  for a,t in pairs(carro:GetDescendants()) do
  if t:IsA('Part') then
  --t.CFrame = game:GetService("Workspace").TimeTrial.Start.CFrame
  t.CFrame = game:GetService("Workspace").TimeTrial.Finish.CFrame
  end
  end   
 end    
})

Tab:AddButton({
 Name = "Bring Race Checkpoints",
 Callback = function()
local lp = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i,v in pairs(game:GetService("Workspace").Race.Checkpoints:GetChildren()) do
v.CFrame = lp
end
   end    
})

Tab:AddParagraph("Patches of game","You can only collect after it hit the floor/ground")
Tab:AddButton({
 Name = "AirDrop",
 Callback = function()
local old = game:GetService("Workspace")[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
game:GetService("Workspace")[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").World.AirDrops.Drops.AirDrop.Base.CFrame
wait()
game:GetService("Workspace")[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = old   end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Tab = Window:MakeTab({
 Name = "Credits",
 Icon = "rbxassetid://11921409629",
 PremiumOnly = false
})

Tab:AddLabel("Scripts")
Tab:AddParagraph("Me","Mod Cars, AutoFarm stuff, etc")
Tab:AddLabel("Orion Library")
Tab:AddParagraph("shlexware","On Github")

local Tab = Window:MakeTab({
 Name = "Changelog",
 Icon = "rbxassetid://4834592491",
 PremiumOnly = false
})
local Section = Tab:AddSection({
 Name = "05/02/2023"
})
Tab:AddParagraph("Teleports","Added a teleport to finish line on Time Trial, Bring checkpoints of race and teleport to airdrop")

--[[
Name = <string> - The name of the section.
]]local Section = Tab:AddSection({
 Name = "04/02/2023 DD/MM/YYYY"
})
Tab:AddParagraph("Its alive!","Started adding the autofarm and mod car.")--pain, took me over 8 hours to fix and test stuff, since i'm not an expert when working on UI Libs


OrionLib:Init()