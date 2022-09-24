local RP = game:GetService("ReplicatedStorage"); RP:WaitForChild("Packages"); RP:WaitForChild("Packages"):WaitForChild("Promise")
local Promise = require(RP.Packages.Promise)
local Knit = require(RP.Packages.Knit)

repeat task.wait() until game:IsLoaded() and Knit.OnStart()._status == "Resolved"

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local BoatController = Knit.GetController("BoatController")
local CollectController = Knit.GetController("CollectController")
local TrashService = Knit.GetService("TrashService")
local ControlModule = BoatController.ControlModule

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

getgenv().Settings = {
    BoatSpeed = Vector3.new(0, 0, -10),
    ModifyBoatSpeed = false,
    NoSlowdown = false,
    AutoSell = false,
    AutoCollect = false,
    AutoCollectGems = false,
    ForceStop = false,
    ZoneId = 1,
    CollectionDelay = 0,
    Dismounting = false
}


local SlowdownValue = LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("Client"):WaitForChild("Controllers"):WaitForChild("Boat"):WaitForChild("SlowdownPercent")

SlowdownValue.Value = 100
RunService.RenderStepped:Connect(function()
    if Settings.NoSlowdown or Settings.ModifyBoatSpeed then
        SlowdownValue.Value = 100
    end
end)

function GetClosestPartInTable(Folder)
    local closestPart, distance

    for index, value in ipairs(Folder:GetChildren()) do
        if value:IsA("Part") then
            local partDistance = (Character.HumanoidRootPart.Position - value.Position).Magnitude

            if closestPart == nil then
                closestPart, distance = value, partDistance
            elseif closestPart ~= nil and distance > partDistance then
                closestPart, distance = value, partDistance
            end
        end
    end

    return closestPart, distance
end

local TrashValue = LocalPlayer.PlayerScripts.Client.Controllers:WaitForChild("Trash"):WaitForChild("Trash")

function waitt()
    if Settings.CollectionDelay == 0 then
        RunService.Heartbeat:Wait()
    elseif Settings.CollectionDelay > 0 then
        task.wait(Settings.CollectionDelay)
    end
end

local Selling = false

function CollectTrash()
    local Zone = game:GetService("Workspace").ActiveTrash:FindFirstChild("Zone"..Settings.ZoneId)
    if Zone then
        local Path = Zone:GetDescendants()
        
        if BoatController.CurrentBoat then
            BoatController.CurrentBoat.Anchored = false
        end

        for i,v in pairs(Path) do
            ToggleDismounting(false)
            if TrashValue.Value >= LocalPlayer:GetAttribute("MaxTrash") or BoatController.CurrentBoat == nil or Settings.ForceStop or Selling then
                if TrashValue.Value >= LocalPlayer:GetAttribute("MaxTrash") then
                    SellTrash()
                    return
                end

                continue 
            end

            if v:IsA("MeshPart") then
                if v:GetAttribute("Active") == true and v.Transparency ~= 1 and v.CanTouch == true then
                    local startClock = os.clock()

                    pcall(function()
                        repeat
                            LocalPlayer.PlayerScripts.Client.Controllers.Boat.ForwardAmount.Value = 1
                            BoatController.CurrentBoat.CFrame = CFrame.new(v.Position)
                            TrashService.HandlePickup._re:FireServer(v)
                            RunService.Heartbeat:Wait()
                        until TrashValue.Value >= LocalPlayer:GetAttribute("MaxTrash") or not v or v.Transparency == 1 or v.CanTouch == false or v:GetAttribute("Active") == false or v:GetAttribute("IsCollecting") or (os.clock() - startClock) >= 0.5 or Settings.ForceStop
                    end)
                end
                
                waitt()
            end
        end

        if Settings.ForceStop then
            Settings.ForceStop = false
        end

        if BoatController.CurrentBoat then
            BoatController.CurrentBoat.Anchored = false
        end
    end
end

function SellTrash()
    local CurrentBoat = BoatController.CurrentBoat

    if CurrentBoat then
        local ClosestSellPart = GetClosestPartInTable(game:GetService("Workspace").SellParts)

        if ClosestSellPart then
            Selling = true
            local oldCFrame = CurrentBoat.CFrame
            local start = os.clock()
            repeat
                CurrentBoat.CFrame = ClosestSellPart.CFrame:ToWorldSpace(CFrame.new(5, 0, 25)) * CFrame.Angles(0, 0, math.rad(-90))
                CurrentBoat.CFrame = ClosestSellPart.CFrame:ToWorldSpace(CFrame.new(5, 0, 25)) * CFrame.Angles(0, 0, math.rad(-90))
                RunService.Heartbeat:Wait()
            until TrashValue.Value == 0 or Settings.ForceStop-- or (os.clock() - start) >= Timeout
            Selling = false
            CurrentBoat.CFrame = oldCFrame
        end
    end
end

function CollectGem(Gem)
    if Settings.ForceStop then return end

    local CurrentBoat = BoatController.CurrentBoat
    local oldCFrame = CurrentBoat.CFrame

    if CurrentBoat then
        local cf = CFrame.new(Gem.Position)

        for i = 1, 10 do
            if Gem then
                CurrentBoat.CFrame = cf
                firetouchinterest(CurrentBoat, Gem, 0)
                task.wait()
                firetouchinterest(CurrentBoat, Gem, 1)
            end
        end
        CurrentBoat.CFrame = oldCFrame
    end
end

function CollectGems()
    for i,v in pairs(game:GetService("Workspace").Gems:GetDescendants()) do
        if Settings.ForceStop then return end

        if v.Name == "Gem" then
            CollectGem(v)
        end
    end

    if Settings.ForceStop then
        Settings.ForceStop = false
    end
end

function ToggleDismounting(CanDismount)
    for i,v in pairs(game:GetService("Workspace").DismountSpots:GetChildren()) do
        v.CanTouch = CanDismount
    end
end

game:GetService("Workspace").Gems.DescendantAdded:Connect(function(newChild)
    if Settings.AutoCollectGems == false then return end

    if newChild.Name == "Gem" then
        CollectGems()
    end
end)

function UpgradeBoat()
    game:GetService("ReplicatedStorage").Packages.Knit.Services.BoatService.RF.Upgrade:InvokeServer()
end

TrashValue.Changed:Connect(function(newValue)
    if Settings.AutoSell == false then return end

    if newValue >= LocalPlayer:GetAttribute("MaxTrash") then
        SellTrash()
    end
end)

task.spawn(function()
    while true do
        if Settings.AutoCollect then
            if TrashValue.Value >= LocalPlayer:GetAttribute("MaxTrash") then
                SellTrash()
            else
                CollectTrash()
                
                if TrashValue.Value > 0 then
                    SellTrash()
                end
            end
        end

        task.wait(0.5)
    end
end)

function SpawnBoat()
    task.spawn(function()
        game:GetService("ReplicatedStorage").Packages.Knit.Services.BoatService.RF.Create:InvokeServer(LocalPlayer.Character.HumanoidRootPart.CFrame)
    end)
end

RunService.RenderStepped:Connect(function()
    if Settings.ModifyBoatSpeed == false then return end

    if BoatController.CurrentBoat then
        local BodyVelocity = BoatController.BodyVelocity
        
        if BodyVelocity then
            if ControlModule:GetMoveVector().Z <= -0.1 then
                local BoatVelocity = BoatController.CurrentBoat.CFrame:VectorToWorldSpace(Settings.BoatSpeed) * Vector3.new(1, 0, 1)
                BodyVelocity.Velocity = BoatVelocity * 10
            elseif 0.1 <= ControlModule:GetMoveVector().Z then
                local BoatVelocity = BoatController.CurrentBoat.CFrame:VectorToWorldSpace(-Settings.BoatSpeed) * Vector3.new(1, 0, 1)
                BodyVelocity.Velocity = BoatVelocity * 10
            end
        end
    end
end)



local Config = {
    WindowName = "Sea Cleaning Simulator",
 Color = Color3.fromRGB(64, 89, 148),
 Keybind = Enum.KeyCode.RightBracket
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Main")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("Boat Tinkering")
local Section2 = Tab1:CreateSection("Trash Related")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

Section1:CreateToggle("No slowdown effect", nil, function(State)
    Settings.NoSlowdown = State
end)

Section1:CreateSlider("Boat Speed", 0,25,10,false, function(Value)
 Settings.BoatSpeed = Vector3.new(0, 0, -Value)
end)

Section1:CreateToggle("Modify Boat Speed", nil, function(State)
    Settings.ModifyBoatSpeed = State
end)

Section1:CreateButton("Upgrade Boat", UpgradeBoat)

Section1:CreateButton("Spawn Boat", SpawnBoat)

Section1:CreateToggle("Disable Dismounting", nil, function(State)
    ToggleDismounting(not State)
end)

Section2:CreateToggle("Auto Sell Trash", false, function(State)
    if TrashValue.Value >= LocalPlayer:GetAttribute("MaxTrash") then
        SellTrash()
    end

    Settings.AutoSell = State
end)

Section2:CreateToggle("Auto Collect Trash", false, function(State)
    if TrashValue.Value >= LocalPlayer:GetAttribute("MaxTrash") then
        SellTrash()
    end

    Settings.AutoCollect = State
end)

Section2:CreateSlider("Trash Collection Delay", 0, 1, 0, false, function(State)
    Settings.CollectionDelay = State
end)

Section2:CreateToggle("Auto Collect Gems", false, function(State)
    if State then
        CollectGems()
    end

    Settings.AutoCollectGems = State
end)

for index, value in ipairs(game:GetService("Workspace").Gems:GetChildren()) do
    RP.Packages.Knit.Services.ZoneService.RF.SetZone:InvokeServer(value.Name)
end

Section2:CreateDropdown("Collect Zone", {1,2,3,4,5,6}, function(Value)
    RP.Packages.Knit.Services.ZoneService.RF.SetZone:InvokeServer("Zone"..Value)
 Settings.ZoneId = Value
end)

Section2:CreateButton("Sell Trash", SellTrash)

Section2:CreateButton("Collect Trash", CollectTrash)

Section2:CreateButton("Collect Gems", CollectGems)

Section2:CreateButton("Force Stop", function()
    Settings.ForceStop = true
    task.delay(2, function()
        Settings.ForceStop = false
    end)
end)

local Toggle3 = Section3:CreateToggle("UI Toggle", true, function(State)
 Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
 Config.Keybind = Enum.KeyCode[Key]
end)

local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
 Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

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