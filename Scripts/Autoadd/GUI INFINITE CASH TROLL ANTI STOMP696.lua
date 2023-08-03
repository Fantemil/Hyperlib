local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Vincent's Mad Skillz Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Combat = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Combat:AddButton({
	Name = "Grab All Items",
	Callback = function()
      		for i, v in pairs(game.Workspace:GetChildren()) do
                if v:FindFirstChild("Handle") then
                    fireclickdetector(v.ClickDetector)
                    print(v.Name)
                end
            end
  	end    
})




-- No Stomp

local noStomp = false
Combat:AddToggle({
	Name = "No Stomp",
	Default = false,
	Callback = function(Value)
		noStomp = Value

        while noStomp == true do 
            wait(10)

            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Ragdoll"):GetChildren()) do
                v:Destroy()
            end
        end
	end    
})



local hitBoxExtend = false
local hitBoxExtender = Combat:AddToggle({
	Name = "Hitbox Extender",
	Default = false,
	Callback = function(Value)
        hitBoxExtend = Value
        while hitBoxExtend == true do
            wait(4)
            for i, v in ipairs(game.Players:GetChildren()) do
                if v.Name == game.Players.LocalPlayer.Name then
                    continue
                end
                v.Character.Head.Size = Vector3.new(5, 5, 5)
                v.Character.Head.Color = Color3.new(255, 0, 0)
            end
        end
         for i, v in ipairs(game.Players:GetChildren()) do
            if v.Name == game.Players.LocalPlayer.Name then
                continue
            end
            v.Character.Head.Size = Vector3.new(1, 1, 1)
         end
        
	end    
})

local infEnergy = false
Combat:AddToggle({
	Name = "Inf Energy",
	Default = false,
	Callback = function(Value)
		infEnergy = Value

        while infEnergy do
            wait()
            game.Workspace[game.Players.LocalPlayer.Name].Values.Energy.Value = math.huge
        end

	end    
})



-- Kings Gun Shop -712, 4, -61

-- Skate Park -610, 4, -225

-- Hand Gun Shop -1050, 4, 458

-- Pizza Shop -479, 4, 467

-- Misc

local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Misc:AddButton({
	Name = "Inf Cash (Client)",
	Callback = function()
      		game.Players.LocalPlayer.PlayerData.Cash.Value = math.huge
  	end    
})

local spamDoors = false
Misc:AddToggle({
	Name = "Spam Open All Doors (May Cause Some Lag)",
	Default = false,
	Callback = function(Value)
		spamDoors = Value

        while spamDoors == true do
            wait(0.5) 
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if v:IsA("ClickDetector") and v.Parent.Name == "OpenClick" then
                    fireclickdetector(v)
                end
            end
        end
	end    
})