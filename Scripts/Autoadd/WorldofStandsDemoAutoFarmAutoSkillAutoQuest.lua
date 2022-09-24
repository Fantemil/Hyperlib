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
getgenv().Distance = 5
getgenv().tweenspeed = 500
getgenv().method = "Behind"
getgenv().autofarm = false
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "World of Stands", HidePremium = true, SaveConfig = true, ConfigFolder = "WorldOfStands"})
local Tab = Window:MakeTab({
 Name = "Autofarm",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local Status = Tab:AddLabel("Status: Waiting")

local validfolder = isfolder("WorldOfStands")
if validfolder then
local valid = isfile("WorldOfStands/2544520106.txt")
if valid then
local contents = readfile("WorldOfStands/2544520106.txt")
local HttpService = game:GetService("HttpService")
local SettingsTable = HttpService:JSONDecode(contents)
for i,v in pairs(SettingsTable) do
   getgenv()[i] = v
end   
end
end

Tab:AddToggle({
    Name = "Itemfarm",
    Default = getgenv().itemfarm,
    Flag = "itemfarm",
    Save = true,
    Callback = function(Value)
    getgenv().itemfarm = Value
spawn(function()
while wait() do
       local Char = game.Players.LocalPlayer.Character 
       local HUMRPs = Char:WaitForChild("HumanoidRootPart")
       if not getgenv().itemfarm then return end
      if getgenv().itemfarm == true then
          for _,v in pairs(game.Workspace:GetChildren()) do
           if v:FindFirstChild("Part") and v.Part:FindFirstChildOfClass("TouchTransmitter") then
              if v:FindFirstChild("Part") ~= nil then
              firetouchinterest(HUMRPs, v.Part, 0)
              end
              wait()
                if v:FindFirstChild("Part") ~= nil then
                firetouchinterest(HUMRPs, v.Part, 1)
              end
            end
           end
      end
end
end)
 end
})
Tab:AddToggle({
 Name = "Autofarm",
 Default = getgenv().autofarm,
 Flag = "autofarm",
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
    Default = getgenv().autoskill,
    Flag = "autoskill",
    Save = true,
    Callback = function(Value)
       getgenv().autoskill = Value
       spawn(function()
           while wait() do
                if not getgenv().autoskill then return end
                task.wait()
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Attack1")
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Attack2")
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Attack3")
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Tech1")
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Tech2")
                require(game:GetService("ReplicatedStorage").Network):FireServer("TryAttack","Ultimate")
            end   
        end)   
    end    
})
Tab:AddToggle({
    Name = "Auto Quest",
    Default = getgenv().quest,
    Flag = "quest",
    Save = true,
    Callback = function(Value)
        getgenv().quest = Value
        
OrionLib:MakeNotification({
   Name = "Info!",
   Content = "Using Autoquest will make you not able to move. To Fix This Reset",
   Image = "rbxassetid://4483345998",
   Time = 5
  })
        spawn(function()
            while wait() do
            
if not getgenv().quest then return end
                for i,v in pairs(game:GetService("Workspace").InteractiveNPC:GetDescendants()) do
                    if v.Name == "ID" and v.Parent.Name ~= "Bounty Master" then
                task.wait()
                require(game:GetService("ReplicatedStorage").Network):FireServer("OnPromptActivated",v.Value)
                task.wait()
                require(game:GetService("ReplicatedStorage").Network):InvokeServer("NPCInteract",v.Value)
                if game:GetService("Players").LocalPlayer.PlayerGui.BaseGui:FindFirstChild("TextLabel") ~= nil then
                
game:GetService("Players").LocalPlayer.PlayerGui.BaseGui.TextLabel:Destroy()
                
end
                
                end
                end
                wait(10)
            end
        end)        
    end    
})
Tab:AddDropdown({
 Name = "To Farm",
 Default = getgenv().ToFarm,
 Save = true,
 Flag = "ToFarm",
 Options = enemies,
 Callback = function(Value)
  getgenv().ToFarm = Value
  Status:Set("Status: Choosed "..getgenv().ToFarm)
 end
})
Tab:AddDropdown({
 Name = "Kill Method",
 Default = getgenv().method,
 Save = true,
 Flag = "method",
 Options = {"Above","Behind","Below"},
 Callback = function(Value)
  getgenv().method = Value
 end    
})
Tab:AddDropdown({
       Name = "Teleport Method",
       Default = getgenv().teleportmethod,
       Save = true,
       Flag = "teleportmethod",
       Options = {"Teleport","Tween"},
       Callback = function(Value)
          getgenv().teleportmethod = Value
       end 
})
Tab:AddSlider({
 Name = "Distance From mob",
 Min = 0,
 Max = 7,
 Default = 5,
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