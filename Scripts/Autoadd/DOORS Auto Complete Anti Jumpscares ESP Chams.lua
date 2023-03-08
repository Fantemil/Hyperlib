local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Doors", HidePremium = false, SaveConfig = true, ConfigFolder = "DoorsSex"})
local VisualsTab = Window:MakeTab({
 Name = "Visuals",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart

local KeyChams = {}
VisualsTab:AddToggle({
 Name = "Key Chams",
 Default = false,
    Flag = "KeyToggle",
 Callback = function(Value)
  for i,v in pairs(KeyChams) do
            v.Enabled = Value
        end
 end    
})

local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0.980392, 0.670588, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = inst
    Cham.Adornee = inst
    Cham.Enabled = OrionLib.Flags["KeyToggle"].Value
    Cham.RobloxLocked = true
    return Cham
end

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "KeyObtain" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "KeyObtain" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)

local BookChams = {}
VisualsTab:AddToggle({
 Name = "Book Chams",
 Default = false,
    Flag = "BookToggle",
 Callback = function(Value)
  for i,v in pairs(BookChams) do
            v.Enabled = Value
        end
 end    
})

local FigureChams = {}
VisualsTab:AddToggle({
 Name = "Figure Chams",
 Default = false,
    Flag = "FigureToggle",
    Callback = function(Value)
        for i,v in pairs(FigureChams) do
            v.Enabled = Value
        end
    end
})

local function ApplyBookChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0, 1, 0.749019)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = inst
    Cham.Enabled = OrionLib.Flags["BookToggle"].Value
    Cham.Adornee = inst
    Cham.RobloxLocked = true
    return Cham
end

local function ApplyEntityChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(1, 0, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = inst
    Cham.Enabled = OrionLib.Flags["FigureToggle"].Value
    Cham.Adornee = inst
    Cham.RobloxLocked = true
    return Cham
end

local BookCoroutine = coroutine.create(function()
    for i,v in pairs(game:GetService("Workspace").CurrentRooms["50"].Assets:GetDescendants()) do
        if v.Name == "LiveHintBook" then
            table.insert(BookChams,ApplyBookChams(v))
        end
    end
end)
local EntityCoroutine = coroutine.create(function()
    local Entity = game:GetService("Workspace").CurrentRooms["50"].FigureSetup:WaitForChild("FigureRagdoll",5)
    Entity:WaitForChild("Torso",2.5)
    table.insert(FigureChams,ApplyEntityChams(Entity))
end)


local GameTab = Window:MakeTab({
 Name = "Game",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local TargetWalkspeed
GameTab:AddSlider({
 Name = "Speed",
 Min = 15,
 Max = 50,
 Default = 5,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 Callback = function(Value)
  TargetWalkspeed = Value
 end    
})
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = TargetWalkspeed
    end)
end)
local pcl = Instance.new("SpotLight")
pcl.Brightness = 1
pcl.Face = Enum.NormalId.Front
pcl.Range = 90
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false


GameTab:AddToggle({
 Name = "Headlight",
 Default = false,
    Callback = function(Value)
        pcl.Enabled = Value
    end
})

GameTab:AddToggle({
 Name = "No seek arms/obstructions",
 Default = false,
    Flag = "NoSeek"
})

game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if OrionLib.Flags["NoSeek"].Value == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait(0.01)
            descendant:Destroy()
        end)
    end
end)

GameTab:AddToggle({
 Name = "Instant Interact",
 Default = false,
    Flag = "InstantToggle"
})

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if OrionLib.Flags["InstantToggle"].Value == true then
        fireproximityprompt(prompt)
    end
end)
GameTab:AddToggle({
 Name = "Predict chases",
 Default = false,
    Flag = "PredictToggle" 
})
GameTab:AddToggle({
 Name = "Notify when mob spawns",
 Default = false,
    Flag = "MobToggle" 
})
GameTab:AddButton({
 Name = "Complete breaker box minigame",
 Callback = function()
        game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
   end    
})

local NotificationCoroutine = coroutine.create(function()
    LatestRoom.Changed:Connect(function()
        if OrionLib.Flags["PredictToggle"].Value == true then
            local n = ChaseStart.Value - LatestRoom.Value
            if 0 < n and n < 4 then
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Event in " .. tostring(n) .. " rooms.",
                    Time = 5
                })
            end
        end
        if OrionLib.Flags["BookToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(BookCoroutine)
            end
        end
        if OrionLib.Flags["FigureToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(EntityCoroutine)
            end
        end
    end)
    workspace.ChildAdded:Connect(function(inst)
        if inst.Name == "RushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            OrionLib:MakeNotification({
                Name = "Warning!",
                Content = "Rush has spawned, hide!",
                Time = 5
            })
        elseif inst.Name == "AmbushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            OrionLib:MakeNotification({
                Name = "Warning!",
                Content = "Ambush has spawned, hide!",
                Time = 5
            })
        end
    end)
end)

coroutine.resume(NotificationCoroutine)