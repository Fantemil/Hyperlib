local HUMRP = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local TweenService = game:GetService("TweenService")
local noclipE = true
local antifall = true
getgenv().teleportmethod = "Teleport"
local function noclip()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
            HUMRP.Velocity = Vector3.new(0, 0, 0)
        end
    end
end
local function moveto(obj, speed,humrp)
if getgenv().teleportmethod == "Tween" then
    local PlayerHum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") 
    local info = TweenInfo.new(
        ((PlayerHum.Position - humrp.Position).Magnitude) / speed,
        Enum.EasingStyle.Linear)
    local tween = TweenService:Create(PlayerHum, info, {
        CFrame = obj
    })
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", PlayerHum)
        antifall.Velocity = Vector3.new(0, 0, 0)
        noclipE = game:GetService("RunService").Stepped:Connect(noclip)
        tween:Play()
    end
    tween.Completed:Connect(function()
        antifall:Destroy()
        noclipE:Disconnect()
    end)
else
   local PlayerHum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") 
   PlayerHum.CFrame = obj
end
end
local enemies = {}
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:FindFirstChild("Attacking") and not string.find(v.Name,"Dummy") and not v:FindFirstChild("PlayerHeader") and v:FindFirstChild("Alive") and not table.find(enemies,v.Name) then
        table.insert(enemies,v.Name)
    end    
end       
local HUMRP = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
getgenv().ToFarm = ""
getgenv().Quest = "" 
getgenv().Distance = 3
getgenv().tweenspeed = 500
getgenv().method = "Behind"
getgenv().autofarm = false
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "World of Stands", HidePremium = true, SaveConfig = false, ConfigFolder = "WorldOfStands"})
local Tab = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Status = Tab:AddLabel("Status: Waiting")
Tab:AddToggle({
	Name = "Autofarm",
	Default = false,
	Flag = "Autofarm",
	Save = true,
	Callback = function(Value)
		getgenv().autofarm = Value
		spawn(function()
		    while wait() do
		       if not getgenv().autofarm then return end 
		        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		            if v.Name == getgenv().ToFarm and v ~= nil then
		            Status:Set("Status: Started Farming")
		            local Char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded
		            local HUMRPs = Char:WaitForChild("HumanoidRootPart")
		            if getgenv().method == "Above" and v:FindFirstChild("HumanoidRootPart") ~= nil then
                    moveto(v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.Angles(math.rad(-90), 0, 0) + Vector3.new(0, Distance, 0),1000,v:FindFirstChild("HumanoidRootPart"))
                    elseif getgenv().method == "Below" and v:FindFirstChild("HumanoidRootPart") ~= nil then
                    moveto(v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.Angles(math.rad(90), 0, 0) + Vector3.new(0, -Distance, 0),1000,v:FindFirstChild("HumanoidRootPart"))
                    elseif getgenv().method == "Behind" and v:FindFirstChild("HumanoidRootPart") ~= nil then
                    moveto(v:FindFirstChild("HumanoidRootPart").CFrame + v:FindFirstChild("HumanoidRootPart").CFrame.LookVector*-Distance,1000,v:FindFirstChild("HumanoidRootPart"))  
                    end
                    require(game:GetService("ReplicatedStorage").Network):FireServer("TryPunch")
		            Status:Set("Status: Killing "..v.Name)
		            repeat 
		            wait() 
		            if not getgenv().autofarm then return end
		            local HUMRPs = Char:WaitForChild("HumanoidRootPart")
		            if getgenv().method == "Above" and v:FindFirstChild("HumanoidRootPart") ~= nil then
                    moveto(v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.Angles(math.rad(-90), 0, 0) + Vector3.new(0, Distance, 0),1000,v:FindFirstChild("HumanoidRootPart"))
                    elseif getgenv().method == "Below" and v:FindFirstChild("HumanoidRootPart") ~= nil then
                    moveto(v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.Angles(math.rad(90), 0, 0) + Vector3.new(0, -Distance, 0),1000,v:FindFirstChild("HumanoidRootPart"))
                    elseif getgenv().method == "Behind" and v:FindFirstChild("HumanoidRootPart") ~= nil then
                    moveto(v:FindFirstChild("HumanoidRootPart").CFrame + v:FindFirstChild("HumanoidRootPart").CFrame.LookVector*-Distance,1000,v:FindFirstChild("HumanoidRootPart"))
                    end
                    require(game:GetService("ReplicatedStorage").Network):FireServer("TryPunch")
		            until v:FindFirstChild("HumanoidRootPart") == nil or v:FindFirstChild("Humanoid").Health == 0 or v:FindFirstChild("Alive").Value == false
		           else
		              Status:Set("Status: Waiting till "..getgenv().ToFarm.." Spawns")
		         end
		       end
		    end    
		end)    
	end    
})
Tab:AddToggle({
    Name = "Auto Skill",
    Default = false,
    Callback = function(Value)
       getgenv().autoskill = Value
       spawn(function()
           while wait() do
                if not getgenv().autoskill then return end
                task.wait()
                if not game:GetService("Players").LocalPlayer.PlayerGui.BaseGui.Overlay.BarFrame.ActionFrame.Attack1:FindFirstChild("Attack1") then
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Attack1")
                wait(1)
                elseif not game:GetService("Players").LocalPlayer.PlayerGui.BaseGui.Overlay.BarFrame.ActionFrame.Attack2:FindFirstChild("Attack2") then
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Attack2")
                wait(1)
                elseif not game:GetService("Players").LocalPlayer.PlayerGui.BaseGui.Overlay.BarFrame.ActionFrame.Attack3:FindFirstChild("Attack3") then
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Attack3")
                wait(1)
                end
            end   
        end)   
    end    
})
Tab:AddToggle({
    Name = "Auto Quest",
    Default = false,
    Callback = function(Value)
        getgenv().quest = Value
        spawn(function()
            while wait() do
        if getgenv().quest == true then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").InteractiveNPC:GetDescendants()) do
                    if v.Name == "ID" and v.Parent.Name ~= "Bounty Master" then
                task.wait()
                require(game:GetService("ReplicatedStorage").Network):FireServer("OnPromptActivated",v.Value)
                task.wait()
                require(game:GetService("ReplicatedStorage").Network):InvokeServer("NPCInteract",v.Value)
                game:GetService("Players").LocalPlayer.PlayerGui.BaseGui.TextLabel:Destroy()
                end
                end
                wait(10)
            end)    
            end
            end
        end)        
    end    
})
Tab:AddDropdown({
	Name = "To Farm",
	Default = "",
	Options = enemies,
	Callback = function(Value)
		getgenv().ToFarm = Value
		Status:Set("Status: Choosed "..getgenv().ToFarm)
	end
})
Tab:AddDropdown({
	Name = "Kill Method",
	Default = "Behind",
	Options = {"Above","Behind","Below"},
	Callback = function(Value)
		getgenv().method = Value
	end    
})
Tab:AddDropdown({
       Name = "Teleport Method",
       Default = "Teleport",
       Options = {"Teleport","Tween"},
       Callback = function(Value)
          getgenv().teleportmethod = Value
       end 
})
Tab:AddSlider({
	Name = "Distance From mob",
	Min = 0,
	Max = 7,
	Default = 3,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Distance",
	Callback = function(Value)
		getgenv().Distance = Value
	end    
})
spawn(
    function()
        while wait() do
            if getgenv().autoskill == true then
                pcall(
                    function()
                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model") then
                            for i, v in pairs(
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model"):GetDescendants()
                            ) do
                                if v.Name == "BladeWeld" and v.Enabled == true then
                                    wait()
                                    require(game:GetService("ReplicatedStorage").Network):FireServer("StandSummon")
                                elseif v.Name == "Head" and v.Transparency == 1 then
                                    wait()
                                    require(game:GetService("ReplicatedStorage").Network):FireServer("StandSummon")
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
