local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
hives = game.Workspace.Honeycombs:GetChildren() for i = #hives, 1, -1 do  v = game.Workspace.Honeycombs:GetChildren()[i] if v.Owner.Value == nil then game.ReplicatedStorage.Events.ClaimHive:FireServer(v.HiveID.Value) end end
OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "89 Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "89 Hub", IntroEnabled = true, IntroText = "89 Hub|Loader",IntroIcon = "rbxassetid://10472045394", Icon = "rbxassetid://10472045394" })
local Main = Window:MakeTab({
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})
getgenv().api = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/kocmoc/main/api.lua"))()
for _,v in next, game.workspace.Collectibles:GetChildren() do
    if string.find(v.Name,"") then
        v:Destroy()
    end
end 
local Dispenser = Window:MakeTab({
	Name = "Dispensers",
	Icon = "",
	PremiumOnly = false
})
local Use = Window:MakeTab({
	Name = "Dices",
	Icon = "",
	PremiumOnly = false
})
local Boosts = Window:MakeTab({
	Name = "Boosts",
	Icon = "",
	PremiumOnly = false
})
local Use2 = Window:MakeTab({
	Name = "Use Buffs",
	Icon = "",
	PremiumOnly = false
})
local Tp12 = Window:MakeTab({
	Name = "Teleports",
	Icon = "",
	PremiumOnly = false
})
local Mobs = Window:MakeTab({
	Name = "Combat",
	Icon = "",
	PremiumOnly = false
})
local Mask = Window:MakeTab({
    Name = "Masks",
    Icon = "",
    PremiumOnly = false
})
local Visuanal = Window:MakeTab({
	Name = "Visuals",
	Icon = "",
	PremiumOnly = false
})
Dispenser:AddButton({
	Name = "Use All Dispensers",
	Callback = function()
      local A_1 = "Glue Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Wealth Clock"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Coconut Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Strawberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Treat Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Free Ant Pass Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Blueberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Honey Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Free Royal Jelly Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  end
})
Use:AddButton({
	Name = "Use Field Dice",
	Callback = function()
local Dice1 = {["Name"] = "Field Dice"}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice1)
  	end    
})
Use:AddToggle({
    Name = "Auto Use Field Dice",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local Dice1 = {["Name"] = "Field Dice"}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice1)
            wait(3) end
    end    
})
Use:AddButton({
	Name = "Use Smooth Dice",
	Callback = function()
local Dice2 = {["Name"] = "Smooth Dice"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice2)  
end    
})
Use:AddToggle({
    Name = "Auto Use Smooth Dice",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local Dice2 = {["Name"] = "Smooth Dice"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice2)  

            wait(3) end
    end    
}) 
Use:AddButton({
	Name = "Use Loaded Dice",
	Callback = function()
local Dice3 = {["Name"] = "Loaded Dice"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice3)
  	end    
})
Use:AddToggle({
    Name = "Auto Use Loaded Dice",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local Dice3 = {["Name"] = "Loaded Dice"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Dice3)
            wait(3) end
    end    
}) 
Boosts:AddButton({
	Name = "Use All Boosters",
	Callback = function()
local red = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(red)
local blue = "Blue Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(blue)
local mountain = "Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(mountain)
	end
})
Boosts:AddToggle({
    Name = "Auto Use All Field Booster",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local red = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(red)
local blue = "Blue Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(blue)
local mountain = "Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(mountain)
wait(5) end    
end
})
Boosts:AddButton({
	Name = "Use Red Field Booster",
	Callback = function()
local red = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(red)
	end
})
Boosts:AddToggle({
    Name = "Auto Use Red Field Booster",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local red = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(red)
wait(5) end    
end
})
Boosts:AddButton({
	Name = "Use Blue Field Booster",
	Callback = function()
local blue = "Blue Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(blue)
	end
})
Boosts:AddToggle({
    Name = "Auto Use Blue Field Booster",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local blue = "Blue Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(blue)
wait(5)       end    
end
})
Boosts:AddButton({
	Name = "Use Field Booster",
	Callback = function()
local mountain = "Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(mountain)
	end
})
Boosts:AddToggle({
    Name = "Auto Use Field Booster",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local mountain = "Field Booster"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(mountain)
 wait(5)        end    
end
})
Use2:AddButton({
	Name = "Use All Buffs [no potions and Marshmallow Bee]",
	Callback = function()
local RedEx = {["Name"] = "Red Extract"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(RedEx)
      
local BlueEx = {["Name"] = "Blue Extract"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(BlueEx)
      
local Glitter = {["Name"] = "Glitter"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Glitter)

local Glue = {["Name"] = "Glue"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Glue)

local Oil = {["Name"] = "Oil"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Oil)

local Enzymes = {["Name"] = "Enzymes"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Enzymes)

local TDrink = {["Name"] = "Tropical TDrink"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(TDrink)
  	end    
})
Use2:AddButton({
	Name = "Use Red Extract",
	Callback = function()
local Red = {["Name"] = "Red Extract"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(RedEx)
	end
})
Use2:AddButton({
	Name = "Use Blue Extract",
	Callback = function()
local BlueEx = {["Name"] = "Blue Extract"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(BlueEx)
  	end 
})
Use2:AddButton({
	Name = "Use Glitter",
	Callback = function()
local Glitter = {["Name"] = "Glitter"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Glitter)
  	end    
})
Use2:AddButton({
	Name = "Use Glue",
	Callback = function()
local Glue = {["Name"] = "Glue"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Glue)
  	end    
})
Use2:AddButton({
	Name = "Use Oil",
	Callback = function()
local Oil = {["Name"] = "Oil"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Oil)
  	end    
})
Use2:AddButton({
	Name = "Use Enzymes",
	Callback = function()
local Enzymes = {["Name"] = "Enzymes"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Enzymes)
  	end    
})
Use2:AddButton({
	Name = "Use Tropical Drink",
	Callback = function()
local TDrink = {["Name"] = "Tropical Drink"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(TDrink)
  	end    
})
Use2:AddButton({
	Name = "Use Purple Potion",
	Callback = function()
local PP = {["Name"] = "Purple Potion"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(PP)
  	end    
})
Use2:AddButton({
	Name = "Use Super Smoothie",
	Callback = function()
local SS = {["Name"] = "Super Smoothie"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(SS)
  	end    
})
Use2:AddButton({
	Name = "Use Marshmallow Bee",
	Callback = function()
local Mbee = {["Name"] = "Marshmallow Bee"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Mbee)
  	end    
})
Main:AddToggle({
    Name = "Auto Dig",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do
             wait(0.1)
local function collectorSteal()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                if v then
                    if v.Character then
                        if v.Character:FindFirstChildWhichIsA("Tool") then
                            if v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("ClickEvent") then
                    v.Character:FindFirstChildWhichIsA("Tool").ClickEvent:FireServer()
                end
            end
        end
        end
        end
        end
    end
	if game.Players.LocalPlayer then 
		if game.Players.LocalPlayer.Character then 
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("ClickEvent", true) then 
				tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or nil 
				end 
			end 
		end 
	if tool then getsenv(tool.ClientScriptMouse).collectStart(game:GetService("Players").LocalPlayer:GetMouse()) end collectorSteal() workspace.NPCs.Onett.Onett["Porcelain Dipper"].ClickEvent:FireServer() end
end end
})
Dispenser:AddToggle({
    Name = "Auto Use All Dispensers",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff5 = cointr
         while turnoff5 == true do 
 local A_1 = "Glue Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Wealth Clock"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Coconut Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Strawberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Treat Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Free Ant Pass Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Blueberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Honey Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  A_1 = "Free Royal Jelly Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  wait(10)
            end
            end
})
Dispenser:AddButton({
	Name = "Use Glue Dispenser",
	Callback = function()
            local A_1 = "Glue Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Glue Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local A_1 = "Glue Dispenser"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Dispenser:AddButton({
	Name = "Use Wealth Clock",
	Callback = function()
   A_1 = "Wealth Clock"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Wealth Clock",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Wealth Clock"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Dispenser:AddButton({
	Name = "Use Coconut Dispenser",
	Callback = function()
                  A_1 = "Coconut Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Coconut Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Coconut Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Dispenser:AddButton({
	Name = "Use Strawberry Dispenser",
	Callback = function()
                  A_1 = "Strawberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Strawberry Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Strawberry Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Dispenser:AddButton({
	Name = "Use Treat Dispenser",
	Callback = function()
                  A_1 = "Treat Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Treat Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Treat Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Dispenser:AddButton({
	Name = "Use Free Ant Pass Dispenser",
	Callback = function()
                  A_1 = "Free Ant Pass Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Free Ant Pass Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Free Ant Pass Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Dispenser:AddButton({
	Name = "Use Blueberry Dispenser",
	Callback = function()
                  A_1 = "Blueberry Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Blueberry Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Blueberry Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Dispenser:AddButton({
	Name = "Use Honey Dispenser",
	Callback = function()
                  A_1 = "Honey Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Honey Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Honey Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Dispenser:AddButton({
	Name = "Use Free Royal Jelly Dispenser",
	Callback = function()
                  A_1 = "Free Royal Jelly Dispenser"
                  Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
  	end    
})
Dispenser:AddToggle({
    Name = "Auto Use Free Royal Jelly Dispenser",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
A_1 = "Free Royal Jelly Dispenser"
Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(A_1)
            wait(10) end
    end    
})
Use2:AddButton({
	Name = "Use Coconut",
	Callback = function()
local Coconut = {["Name"] = "Coconut"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Coconut)
  	end    
})
Main:AddDropdown({
    Name = "Field",
    Default = "Sunflower Field",
    Options = {"Sunflower Field", "Dandelion Field","Blue Flower Field","Clover Field","Spider Field","Bamboo Field","Strawberry Field","Pineapple Patch","Stump Field","Cactus Field","Pumpkin Patch","Pine Tree Forest","Rose Field","Mountain Top Field","Mushroom Field","Coconut Field","Pepper Patch"},
    Callback = function(archos)
    _G.area = archos
  _G.cords = game:GetService("Workspace").FlowerZones[_G.area].CFrame
    end
})
Main:AddToggle({
    Name = "Auto Farm [slow]",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         if turnoff4 == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.cords
wait(1)
local A = {["Name"] = "Sprinkler Builder"}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(A)
end
         while turnoff4 == true do 
local player = game:GetService("Players").LocalPlayer
local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
while player.CoreStats.Pollen.Value>=maxpollen do 

    player.Character:MoveTo(player.SpawnPos.Value.p)
                wait(0.5)
game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
                    repeat wait(0.5) until player.leaderstats.Pollen.Value < 1 wait(5)            
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.cords
end
 local function collectorSteal()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                if v then
                    if v.Character then
                        if v.Character:FindFirstChildWhichIsA("Tool") then
                            if v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("ClickEvent") then
                    v.Character:FindFirstChildWhichIsA("Tool").ClickEvent:FireServer()
                end
            end
        end
        end
        end
        end
    end
	if game.Players.LocalPlayer then 
		if game.Players.LocalPlayer.Character then 
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("ClickEvent", true) then 
				tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or nil 
				end 
			end 
		end 
	if tool then getsenv(tool.ClientScriptMouse).collectStart(game:GetService("Players").LocalPlayer:GetMouse()) end collectorSteal() workspace.NPCs.Onett.Onett["Porcelain Dipper"].ClickEvent:FireServer() end
	wait(.1)
      end
test = "C"
tweenservice = game:GetService("TweenService")
plr = game.Players.LocalPlayer
info = TweenInfo.new(1.7)
item = {}
for i,v in pairs(game.workspace.Flowers:GetDescendants()) do
end
for k,v in pairs(workspace.Collectibles:GetChildren()) do
 if tostring(v) == tostring(game.Players.LocalPlayer.Name) or tostring(v) == test then
                        if (v.Position-plr.Character.HumanoidRootPart.Position).magnitude <= 25 then
item.CFrame = CFrame.new(v.Position.x,plr.Character.HumanoidRootPart.Position.y,v.Position.z)
Tween = tweenservice:Create(plr.Character.HumanoidRootPart, info, item)
Tween:Play()
end
end
end
wait(0.2) end
  
  
})
Main:AddToggle({
    Name = "Auto Farm [fast]",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         if turnoff4 == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.cords
wait(1)
local A = {["Name"] = "Sprinkler Builder"}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(A)
end
         while turnoff4 == true do 
player = game:GetService("Players").LocalPlayer
pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
while player.CoreStats.Pollen.Value>=maxpollen do 

    player.Character:MoveTo(player.SpawnPos.Value.p)
                wait(0.5)
                    repeat wait(0.5) 
                        if player.CoreStats.Pollen.Value < 99   then wait(5)
wait(0.1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.cords 
wait(0.1)
                            end until player.CoreStats.Pollen.Value < 99     
end
 local function collectorSteal()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                if v then
                    if v.Character then
                        if v.Character:FindFirstChildWhichIsA("Tool") then
                            if v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("ClickEvent") then
                    v.Character:FindFirstChildWhichIsA("Tool").ClickEvent:FireServer()
                end
            end
        end
        end
        end
        end
    end
	if game.Players.LocalPlayer then 
		if game.Players.LocalPlayer.Character then 
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("ClickEvent", true) then 
				tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or nil 
				end 
			end 
		end 
	if tool then getsenv(tool.ClientScriptMouse).collectStart(game:GetService("Players").LocalPlayer:GetMouse()) end collectorSteal() workspace.NPCs.Onett.Onett["Porcelain Dipper"].ClickEvent:FireServer() end
	wait(.1)
test = "C"
tweenservice = game:GetService("TweenService")
plr = game.Players.LocalPlayer
info = TweenInfo.new(0.3)
item = {}
for k,v in pairs(workspace.Collectibles:GetChildren()) do
 if tostring(v) == tostring(game.Players.LocalPlayer.Name) or tostring(v) == test then
                        if (v.Position-plr.Character.HumanoidRootPart.Position).magnitude <= 50 then
item.CFrame = CFrame.new(v.Position.x,plr.Character.HumanoidRootPart.Position.y,v.Position.z)
Tween = tweenservice:Create(plr.Character.HumanoidRootPart, info, item)
Tween:Play()
wait(.2)
end
end
end
end
  
         end
})
Main:AddToggle({
    Name = "Auto Farm [walk]",
    Default = false,
    Callback = function(cointr91)
         getgenv().turnoff11 = cointr91
         if turnoff11 == true then
                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.cords
wait(0.5)
         A = {["Name"] = "Sprinkler Builder"}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(A)
         plr = game.Players.LocalPlayer
         while turnoff11 == true do
player = game:GetService("Players").LocalPlayer
pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
while player.CoreStats.Pollen.Value>=maxpollen do 

    player.Character:MoveTo(player.SpawnPos.Value.p)
                wait(0.5)
                    repeat wait(0.5) 
                        if player.CoreStats.Pollen.Value < 99   then wait(5)
wait(0.1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.cords 
wait(0.1)
                            end until player.CoreStats.Pollen.Value < 99     
end
 local function collectorSteal()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                if v then
                    if v.Character then
                        if v.Character:FindFirstChildWhichIsA("Tool") then
                            if v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("ClickEvent") then
                    v.Character:FindFirstChildWhichIsA("Tool").ClickEvent:FireServer()
                end
            end
        end
        end
        end
        end
    end
	if game.Players.LocalPlayer then 
		if game.Players.LocalPlayer.Character then 
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("ClickEvent", true) then 
				tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or nil 
				end 
			end 
		end 
	if tool then getsenv(tool.ClientScriptMouse).collectStart(game:GetService("Players").LocalPlayer:GetMouse()) end collectorSteal() workspace.NPCs.Onett.Onett["Porcelain Dipper"].ClickEvent:FireServer() end
	wait(.1)
	for i,v in pairs(game:GetService("Workspace").Collectibles:GetDescendants()) do
    if v:IsA("Part") and (plr.Character.HumanoidRootPart.Position - v.Position).Magnitude < 50 then
        plr.Character.Humanoid:MoveTo(v.Position)
end
end
end
end
end
})
Main:AddToggle({
    Name = "Auto Convert Pollen",
    Default = false,
    Callback = function(cointr9)
         getgenv().turnoff5 = cointr9
         while turnoff5 == true do
local player = game:GetService("Players").LocalPlayer
local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
wait(0.1)                                                                       
if player.CoreStats.Pollen.Value>=maxpollen then

    player.Character:MoveTo(player.SpawnPos.Value.p)
                wait(0.5) game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
if player.CoreStats.Pollen.Value<100  then
                    wait(2)  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.cords 
                    end repeat wait(0.5) until player.CoreStats.Pollen.Value < 99
end
end
end
})

Main:AddToggle({
    Name = "Auto Use Micro-Converter",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do
local player = game:GetService("Players").LocalPlayer
local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
wait(0.1)                                                                       
if player.CoreStats.Pollen.Value>=maxpollen then
local Ass = {["Name"] = "Micro-Converter"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Ass)
end
end
end
})
Main:AddToggle({
    Name = "Auto Use Instant Converter",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do
local player = game:GetService("Players").LocalPlayer
local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
wait(0.3)
if player.CoreStats.Pollen.Value>=maxpollen then do
local zakharpidor = {[1] = "Instant Converter"}
game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(zakharpidor))
end
wait(0.3)
elseif player.CoreStats.Pollen.Value>=maxpollen then do
zakharpidor = {[1] = "Instant Converter B"}
game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(zakharpidor))
wait(0.3) end
elseif player.CoreStats.Pollen.Value>=maxpollen then do
zakharpidor = {[1] = "Instant Converter C"}
game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(zakharpidor))
end
end
end
end})
Main:AddToggle({
    Name = "Auto Use Coconut",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local Coconut = {["Name"] = "Coconut"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Coconut)
            wait(11) end
        end
})
Main:AddToggle({
    Name = "Auto Use Gumdrops",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do
local Gumdrops = {["Name"] = "Gumdrops"}
Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(Gumdrops)
wait(3)
end
end
})
Main:AddToggle({
    Name = "Auto Place Splinkler",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         while turnoff4 == true do 
local A = {["Name"] = "Sprinkler Builder"}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(A)
            wait(2) end
    end    
})
Tp12:AddButton({
	Name = "TP To Hive",
	Callback = function()
    local player = game:GetService("Players").LocalPlayer
    player.Character:MoveTo(player.SpawnPos.Value.p)
  	end    
})
Tp12:AddButton({
	Name = "Join Random Server",
	Callback = function()
local placeId = "1537690962"
game:GetService("TeleportService"):Teleport(placeId)
  	end    
})
Tp12:AddDropdown({
    Name = "Teleport To",
    Default = "Black Bearl",
    Options = {"Black Bear","Brown Bear","Panda Bear","Polar Bear","Science Bear","Mother Bear","Spirit Bear","Gummy Bear","Onett","Tunnel Bear","King Beetle","Stick Bug","Mythic Meteor Shower","Basic Egg Shop","Tool Shop","Ticket Shop","Ticket Shop 2","Clover Field","Spider Field","Blue Flower Field","Sunflower Field","StrawBerry Field","Dandelion Field","Bamboo Field","Rose Field","Mushroom Field","Cactus Field","Pumpkin Field","MountainTop Field","PineTree Field","Pineapple Field","Coconut Field","Pepper Field","Stump Field","Red HQ","Blue HQ","MountainTop Shop","Royal Jelly Shop",},
    Callback = function(Value)
if Value == "Black Bear" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-258.1, 5, 299.7) 
elseif Value == "Brown Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(282, 46, 236) 
elseif Value == "Panda Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(106.3, 35, 50.1) 
elseif Value == "Polar Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-106, 119, -77)
elseif Value == "Science Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(267, 103, 20)
elseif Value == "Mother Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.898, 5.64093, 83.4582)
elseif Value == "Spirit Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-363.936, 105.284, 485.853)
elseif Value == "Gummy Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(271.624, 25292.9, -850.958) 
elseif Value == "King Beetle" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.117, 4.5759, 173.552)
elseif Value == "Tunnel Bear" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(313.654, 6.81172, -46.9131)
elseif Value == "Onett" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.41592, 232.791, -520.278)
elseif Value == "Stick Bug" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-129.2, 50.0709, 148.288)
elseif Value == "Mythic Meteor Shower" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(160.03, 126.662, -163.894)
elseif Value == "Ticket Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-232.495, 18.1145, 390.573)
elseif Value == "Ticket Shop 2" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.1861, 184.583, -225.034)
elseif Value == "Basic Egg Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-136.8, 4.6, 243.4)
elseif Value == "Tool Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86, 4.6, 294)
elseif Value == "Clover Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(174, 34, 189)
elseif Value == "Spider Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.2, 20, -5.3)
elseif Value == "Mushroom Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-94, 5, 116)
elseif Value == "Blue Flower Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113.7, 4, 101.5)
elseif Value == "Sunflower Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-208, 4, 185)
elseif Value == "StrawBerry Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169.3, 20, -3.2)
elseif Value == "Dandelion Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30, 4, 225)
elseif Value == "Bamboo Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93, 20, -25)
elseif Value == "Rose Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-322, 20, 124)
elseif Value == "Cactus Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194, 68, -107)
elseif Value == "Pumpkin Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194, 68, -182)
elseif Value == "MountainTop Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76, 176, -181)
elseif Value == "PineTree Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318, 68, -150)
elseif Value == "Pineapple Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(262, 68, -201)
elseif Value == "Coconut Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-254.478104, 68.9707947, 469.459045, 1, 0, 0, 0, 1, 0, 0, 0, 1)
elseif Value == "Pepper Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-488.303, 123.677, 529.154)
elseif Value == "Stump Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.483276, 94.4255676, -174.810959, 1, 0, 0, 0, 1, 0, 0, 0, 1)
elseif Value == "Blue HQ" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(292, 4, 98)
elseif Value == "Red HQ" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-334, 21, 216)
elseif Value == "MountainTop Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18, 176, -137)
elseif Value == "Royal Jelly Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-297, 53, 68)
end
end
})
Mobs:AddButton({
	Name = "Kill Crab",
	Callback = function()
local cocopad = Instance.new("Part", game:GetService("Workspace"))
cocopad.Name = "Coconut Part"
cocopad.Anchored = true
cocopad.Transparency = 1
cocopad.Size = Vector3.new(10, 1, 10)
cocopad.Position = Vector3.new(-307.52117919922, 105.91863250732, 467.86791992188)
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-307.52117919922, 105.91863250732, 467.86791992188)

  	end    
})
Mobs:AddButton({
	Name = "Kill Commando Chick",
	Callback = function()
local Commandopad = Instance.new("Part", game:GetService("Workspace"))
Commandopad.Name = "Commando Part"
Commandopad.Anchored = true
Commandopad.Transparency = 1
Commandopad.Size = Vector3.new(10, 1, 10)
Commandopad.Position = Vector3.new(532.56, 68.1981, 162.801)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(532.56, 68.1981, 162.801)
  	end    
})
Mobs:AddButton({
	Name = "AFK Stump Snail",
	Callback = function()
local snail = Instance.new("Part", game:GetService("Workspace"))
snail.Name = "Coconut Part"
snail.Anchored = true
snail.Transparency = 1
snail.Size = Vector3.new(10, 1, 10)
snail.Position = Vector3.new(424.483276, 71.4255676, -174.810959, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.483276, 68.4255676, -174.810959, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.483276, 74.4255676, -174.810959, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
Mobs:AddButton({
	Name = "Kill Tunnel Bear",
	Callback = function()
local nigger = Instance.new("Part", game:GetService("Workspace"))
nigger.Name = "Tunnel Part"
nigger.Anchored = true
nigger.Transparency = 1
nigger.Size = Vector3.new(10, 1, 10)
nigger.Position = Vector3.new(469.095, 23.2665, -46.3918)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469.095, 7.2665, -46.3918)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469.095, 24.2665, -46.3918)
end
})
Mobs:AddToggle({
    Name = "Auto Kill Mondo Chick[In testing]",
    Default = false,
    Callback = function(assmore)
         getgenv().turnoff54 = assmore
         if turnoff54 == true then
    while turnoff54 == true do
                     
                             mondopition = game.Workspace.Monsters["Mondo Chick (Lvl 8)"].Head.Position
                             api.tween(0.3,CFrame.new(mondopition.x, mondopition.y + 30, mondopition.z)) game.Players.LocalPlayer.Character.Humanoid.HipHeight = 40                        
                             end
                        else
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3

                        end
                        
end
})
Mobs:AddButton({
    Name = "Ass",
    allback = function()
for _,v in pairs(game.workspace.NPCBees:GetChildren()) do
      if v.Name == "Windy" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end end end})
Mobs:AddToggle({
    Name = "Kill Windy Bee",
    Callback = function(aa)
       getgenv().pon1 = aa
       if pon1 == true then
    while pon1 == true do wait(.3) for _,v in pairs(game.workspace.NPCBees:GetChildren()) do
      if v.Name == "Windy" then game.Players.LocalPlayer.Character.Humanoid.HipHeight = 35
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end end
 	local windymanoid = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in next, game.workspace.Particles:GetChildren() do
				for x in string.gmatch(v.Name, "Windy") do
					if string.find(v.Name, "Windy") then
						api.tween(1,CFrame.new(v.Position.x, v.Position.y, v.Position.z)) task.wait(1)
						api.tween(0.5, CFrame.new(v.Position.x, v.Position.y, v.Position.z)) task.wait(.5)
					end
				end
			end 
			for i,v in next, game.workspace.Particles:GetChildren() do
				for x in string.gmatch(v.Name, "Windy") do
                    task.wait() if string.find(v.Name, "Windy") then 
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 20 for i=1, 4 do windymanoid.CFrame = CFrame.new(v.Position+10, v.Position + 50, v.Position) task.wait(.3) 
                        end 
                    end
			task.wait(.1)
         end
        end end else game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3
         end end 
})
Mobs:AddToggle({
    Name = "Kill Viciuos Bee",
    Default = false,
    Callback = function(cointr)
         getgenv().turnoff4 = cointr
         if turnoff4 == true then
         while turnoff4 == true do
             wait()
			local vichumanoid = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in next, game.workspace.Particles:GetChildren() do
				for x in string.gmatch(v.Name, "Vicious") do
                    task.wait() if string.find(v.Name, "Vicious") then 
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 20 for i=1, 4 do vichumanoid.CFrame = CFrame.new(v.Position.x, v.Position.y + 20, v.Position.z) task.wait(.3) 
                        end 
                    end end
                end
			end
			task.wait(.1)
         
         else
             game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3
         end 
end})
Main:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 200,
    Default = 20,
    Color = Color3.fromRGB(230,255,255),
    Increment = 1,
    ValueName = " Speed",
    Callback = function(preston)
        _G.speed = preston
    end    
})
Main:AddToggle({
    Name = "Speed hack",
    Default = false,
    Callback = function(prestonon)
        while prestonon == true do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.speed wait(0.2) end
        end    
})
Main:AddSlider({
    Name = "Jump Power",
    Min = 0,
    Max = 2000,
    Default = 80,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "power",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
})
Mask:AddDropdown({
    Name = "Equip Mask",
    Default = "nil",
    Options = {"Gummy Mask","Demon Mask","Diamond Mask","Bubble Mask","Fire Mask","Honey Mask",},
    Callback = function(Value)
if Value == "Gummy Mask" then 
A_1 = "Equip"
A_2 = {["Mute"] = true
    , ["Type"] = "Gummy Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_1, A_2)
elseif Value == "Demon Mask" then
A_3 = "Equip"
A_4 = {["Mute"] = true
    , ["Type"] = "Demon Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_3, A_4)
elseif Value == "Diamond Mask" then
A_5 = "Equip"
A_6 = {["Mute"] = true
    , ["Type"] = "Diamond Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_5, A_6)
elseif Value == "Bubble Mask" then
A_7 = "Equip"
A_8 = {["Mute"] = true
    , ["Type"] = "Bubble Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_7, A_8)
elseif Value == "Fire Mask" then
A_9 = "Equip"
A_10 = {["Mute"] = true
    , ["Type"] = "Fire Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_9, A_10)
elseif Value == "Honey Mask" then 
A_11 = "Equip"
A_12 = {["Mute"] = true
    , ["Type"] = "Honey Mask", ["Category"] = "Accessory"}
Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_11, A_12)
end
end
})
local a = false
local godmodtoggle = Mobs:AddToggle({
    Name = "Godmode",
    Default = false,
    Callback = function(Value)
        local xyi = Value
        getgenv().zalypa = xyi
    if getgenv().zalypa == true then 
        a = true
    local camera = workspace.CurrentCamera
    local lp = game.Players.LocalPlayer
    local camerapos = camera.CFrame
    local character = lp.Character or workspace:FindFirstChild(lp.Name)
    local humanoid = character.Humanoid
    local copy = humanoid:Clone()
        lp.Character = nil
        copy:SetStateEnabled(15, false)
        copy:SetStateEnabled(0, false)
        copy:SetStateEnabled(1, false)
        copy.Parent = character
        humanoid:Destroy()
        lp.Character = character
        camera.CameraSubject = copy
        camera.CFrame = camerapos
        copy.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        character:FindFirstChild("Animate").Disabled = true
        character:FindFirstChild("Animate").Disabled = false
        humanoid:SetStateEnabled(15, true)
        copy:SetStateEnabled(0, true)
        copy:SetStateEnabled(1, true)
        lp.Character = nil
        humanoid:ChangeState(15)
        lp.Character = character
        humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
    elseif getgenv().zalypa == false then
        if a == false then
            return
        elseif a == true then
            local camera = workspace.CurrentCamera
    local lp = game.Players.LocalPlayer
    local camerapos = camera.CFrame
    local character = lp.Character or workspace:FindFirstChild(lp.Name)
    local humanoid = character.Humanoid
    local copy = humanoid:Clone()
        lp.Character = nil
        copy:SetStateEnabled(15, false)
        copy:SetStateEnabled(0, false)
        copy:SetStateEnabled(1, false)
        copy.Parent = character
        humanoid:Destroy()
        lp.Character = character
        camera.CameraSubject = copy
        camera.CFrame = camerapos
        copy.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        character:FindFirstChild("Animate").Disabled = true
        character:FindFirstChild("Animate").Disabled = false
        humanoid:SetStateEnabled(15, true)
        copy:SetStateEnabled(0, true)
        copy:SetStateEnabled(1, true)
        lp.Character = nil
        humanoid:ChangeState(15)
        lp.Character = character
        humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
           Players = game.Players
    LocalPlayer = Players.LocalPlayer
    Character = workspace:FindFirstChild(LocalPlayer.Name)
Character.Head:Destroy()
        end
end
end
    })
Visuanal:AddButton({
	Name = "Spawn Mythic Meteor",
	Callback = function()
    syn.secure_call(function() 
        require(game.ReplicatedStorage.LocalFX.MythicMeteor)({
        Pos = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
        Dur = 0.6,
        Radius = 16,
        Delay = 1.5,
    })
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
end
})
Visuanal:AddButton({
	Name = "Spawn Coconut",
	Callback = function()
      syn.secure_call(function() 
        require(game.ReplicatedStorage.LocalFX.FallingCoconut)({
        Pos = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
        Dur = 0.6,
        Radius = 16,
        Delay = 1.5,
        Friendly = true
    })
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
  	end
})
Visuanal:AddButton({
	Name = "Spawn Hostile Coconut",
	Callback = function()
    syn.secure_call(function() 
        require(game.ReplicatedStorage.LocalFX.FallingCoconut)({
        Pos = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
        Dur = 0.6,
        Radius = 16,
        Delay = 1.5,
        Friendly = false
    })
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
  	end
})
Visuanal:AddButton({
	Name = "Spawn Jellybean",
	Callback = function()
jellybeans = {"Navy","Blue","Spoiled","Merigold","Teal","Periwinkle","Pink","Slate","White","Black","Green","Brown","Yellow","Maroon","Red"}
syn.secure_call(function() 
        require(game.ReplicatedStorage.LocalFX.JellyBeanToss)({
        Start = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
        Type = jellybeans[math.random(1,#jellybeans)],
        End = (game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame * CFrame.new(0,0,-35)).p + Vector3.new(math.random(1,20),0,math.random(1,20))
    })
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
  	end
})
Visuanal:AddButton({
	Name = "Spawn Puffshroom Spore",
	Callback = function()
task.spawn(function() syn.secure_call(function()
field = game:GetService("Workspace").FlowerZones:GetChildren()[math.random(1,#game:GetService("Workspace").FlowerZones:GetChildren())]
pos = field.CFrame.p
require(game.ReplicatedStorage.LocalFX.PuffshroomSporeThrow)({
      Start = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p,
      End = pos,
})
end, game.Players.LocalPlayer.PlayerScripts.ClientInit) 
wait(10)
workspace.Particles:FindFirstChild("SporeCloud"):Destroy()
end)
  	end
})
Visuanal:AddButton({
	Name = "Spawn Party Popper",
	Callback = function()
syn.secure_call(function() 
require(game:GetService("ReplicatedStorage").LocalFX.PartyPopper)({
Pos = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
})
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
  	end
})
Visuanal:AddButton({
	Name = "Spawn Flame",
	Callback = function()
syn.secure_call(function()
        require(game.ReplicatedStorage.LocalFX.LocalFlames).AddFlame(
        game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
        10,
        1,
        game.Players.LocalPlayer.UserId,
        false
    )
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
  	end
})
Visuanal:AddButton({
	Name = "Spawn Dark Flame",
	Callback = function()
syn.secure_call(function()
        require(game.ReplicatedStorage.LocalFX.LocalFlames).AddFlame(
        game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
        10,
        1,
        game.Players.LocalPlayer.UserId,
        true
    )
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
  	end
})
Visuanal:AddToggle({
    Name = "Flame Walk",
    Default = false,
    Callback = function(ass)
        getgenv().Asshole = ass
        while Asshole == true do
            wait(0.1)
            syn.secure_call(function()
        require(game.ReplicatedStorage.LocalFX.LocalFlames).AddFlame(
        game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
        10,
        1,
        game.Players.LocalPlayer.UserId,
        false
    )
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
        end
    end})
Visuanal:AddToggle({
    Name = "Dark Flame Walk",
    Default = false,
    Callback = function(ass2)
    getgenv().Asshole2 = ass2
    while Asshole2 == true do
        wait(0.1)
        syn.secure_call(function()
        require(game.ReplicatedStorage.LocalFX.LocalFlames).AddFlame(
        game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame.p,
        10,
        1,
        game.Players.LocalPlayer.UserId,
        true
    )
end, game.Players.LocalPlayer.PlayerScripts.ClientInit)
    end
    end})
