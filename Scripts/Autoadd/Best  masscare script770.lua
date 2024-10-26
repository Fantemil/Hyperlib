local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostDuckyy/ESP-Library/main/Kiriot22/source.lua"))()
ESP.Players = false
ESP:Toggle(true)

local MainWindow = OrionLib:MakeWindow({
    Name = "Residence Massacre",
    HidePremium = true,
    SaveConfig = true,
    ConfigFolder = "Residence Massacre",
    IntroEnabled = false,
})

-- Credits to getgc for adonis bypass
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Misc-Script/main/adonis%20ac%20bypass.lua"))()

local antiCheatBypass; antiCheatBypass = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()

    if string.lower(method) == "kick" then
        return task.wait(9e9)
    end

    if string.lower(method) == "fireserver" then
        if string.lower(self.Name) == "kick" then
            return task.wait(9e9)
        end
    end

    return antiCheatBypass(self, ...)
end)

print("Sucessfully bypassed client-sided anti-cheat")

local walkSpeed = 12
local sprintSpeed = 17

local newIndexHook; newIndexHook = hookmetamethod(game, "__newindex", function(Self, Key, NewValue, ...)
    if checkcaller() then
        return newIndexHook(Self, Key, NewValue, ...)
    end

    if Self == Player and Key == "CameraMode" and OrionLib.Flags["unlock_third_person"].Value == true then
        return newIndexHook(Self, Key, Enum.CameraMode.Classic, ...)
    end

    if Self.Name == "Stam" and Key == "Value" and OrionLib.Flags["infinite_stamina"].Value == true then
        return newIndexHook(Self, Key, 5, ...)
    end

    if Self.Name == "Humanoid" and Self.Parent.Name == Player.Name and Key == "WalkSpeed" then
        if NewValue == 12 then
            return newIndexHook(Self, Key, walkSpeed, ...)
        elseif NewValue == 17 then
            return newIndexHook(Self, Key, sprintSpeed, ...)
        end
    end

    return newIndexHook(Self, Key, NewValue, ...)
end)

local fullbrightEnabled = false
game:GetService("RunService").Heartbeat:Connect(function()
    if fullbrightEnabled then
        Lighting.Brightness = 2
        Lighting.ClockTime = 14
        Lighting.FogEnd = 100000
        Lighting.GlobalShadows = false
        Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    end
end)

local MainTab = MainWindow:MakeTab({
    Name = "Main",
    PremiumOnly = false
})

local InfiniteStamina = MainTab:AddToggle({
    Name = "Infinite Stamina",
    Default = false,
    Flag = "infinite_stamina",
    Save = true,
    Callback = function(isOn)
        
    end
})

local WalkSpeed = MainTab:AddSlider({
    Name = "Walk Speed",
    Min = 12,
    Max = 100,
    Default = 12,
    Increment = 1,
    Flag = "walk_speed",
    Save = true,
    Callback = function(newValue)
        walkSpeed = newValue

        if Player.Character then
            Player.Character.Humanoid.WalkSpeed = newValue
        end
    end
})

local SprintSpeed = MainTab:AddSlider({
    Name = "Sprint Speed",
    Min = 17,
    Max = 100,
    Default = 17,
    Increment = 1,
    Flag = "sprint_speed",
    Save = true,
    Callback = function(newValue)
        sprintSpeed = newValue
    end
})

MainTab:AddSection({
    Name = "Automations"
})

local Doors = workspace:WaitForChild("Doors")

local AutomaticallyOpenDoors = MainTab:AddToggle({
    Name = "Automatically Open Doors",
    Default = false,
    Flag = "automatically_open_doors",
    Save = true,
    Callback = function(isOn)
    end
})

task.spawn(function()
    while task.wait() do
        if OrionLib.Flags["automatically_open_doors"].Value == true then
            if not Player.Character then
                continue
            end

            for _, door in pairs(Doors:GetChildren()) do
                if door.Name == "Door" then 
                    local distance = (door.Main.Position - Player.Character.HumanoidRootPart.Position).Magnitude

                    if distance <= 8 and door.Status.Open.Value == false then
                        fireclickdetector(door.Detector.ClickDetector)
                    end
                end
            end
        end
    end
end)

local AutomaticallyRestorePower = MainTab:AddToggle({
    Name = "Automatically Restore Power",
    Default = false,
    Flag = "automatically_restore_power",
    Save = true,
    Callback = function(isOn)
    end
})

local FuseBox = workspace:WaitForChild("FuseBox")
local WarningGUI = FuseBox:WaitForChild("WarningSign"):WaitForChild("BillboardGui")

WarningGUI:GetPropertyChangedSignal("Enabled"):Connect(function()
    if OrionLib.Flags["automatically_restore_power"].Value == true then
        if WarningGUI.Enabled == false then return end

        local wrench = Player.Backpack:FindFirstChild("Wrench") or Player.Character:FindFirstChild("Wrench")
        
        if wrench == nil then return end

        local originalPosition = Player.Character.HumanoidRootPart.CFrame

        Character.HumanoidRootPart.CFrame = CFrame.new(-1.7270968, 4.49999857, -91.3651733, -0.999955058, 7.80579441e-08, -0.00948043261, 7.75318725e-08, 1, 5.58571998e-08, 0.00948043261, 5.51196528e-08, -0.999955058)
        task.wait(0.1)

        if FuseBox.Status.Open.Value == false then
            repeat
                fireclickdetector(FuseBox.Model.Detector.ClickDetector)
                task.wait()
            until FuseBox.Status.Open.Value == true
        end

        wrench.Parent = Player.Character

        for _, wire in pairs(FuseBox.Wires:GetChildren()) do
            if wire.Sparkles.Enabled == true then
                Remotes.ClickWire:FireServer(wire)
            end
        end

        wrench.Parent = Player.Backpack
        Character.HumanoidRootPart.CFrame = originalPosition
    end
end)

local AutomaticallyRestoreFuel = MainTab:AddToggle({
    Name = "Automatically Restore Fuel",
    Default = false,
    Flag = "automatically_restore_fuel",
    Save = true,
    Callback = function(isOn)
    end
})

local Shack = workspace:WaitForChild("Shack")
local WarningGUI_Shack = Shack:WaitForChild("Generator"):WaitForChild("WarningSign"):WaitForChild("BillboardGui")

WarningGUI_Shack:GetPropertyChangedSignal("Enabled"):Connect(function()
    if OrionLib.Flags["automatically_restore_fuel"].Value == true then
        if WarningGUI_Shack.Enabled == false then return end

        local originalPosition = Player.Character.HumanoidRootPart.CFrame

        Character.HumanoidRootPart.CFrame = CFrame.new(-79.7254257, 4.67498064, -132.755371, 0.999983847, 1.62270264e-09, 0.00568361348, -2.22811014e-09, 1, 1.0651172e-07, -0.00568361348, -1.06522663e-07, 0.999983847)
        task.wait(0.1)

        repeat
            repeat
                fireclickdetector(Shack.JerryCan.ClickDetector)
                task.wait()
            until Character:FindFirstChild("JerryCan") ~= nil
    
            task.wait(0.1)
    
            repeat
                fireclickdetector(Shack.Generator.ClickDetector)
                task.wait()
            until Character:FindFirstChild("JerryCan") == nil

            task.wait()
        until Shack.Generator.Fuel.Value == 100

        Character.HumanoidRootPart.CFrame = originalPosition
    end
end)

local VisualsTab = MainWindow:MakeTab({
    Name = "Visuals",
    PremiumOnly = false
})

Lighting:SetAttribute("Brightness", Lighting.Brightness)
Lighting:SetAttribute("ClockTime", Lighting.ClockTime)
Lighting:SetAttribute("FogEnd", Lighting.FogEnd)
Lighting:SetAttribute("GlobalShadows", Lighting.GlobalShadows)
Lighting:SetAttribute("OutdoorAmbient", Lighting.OutdoorAmbient)

local Fullbright = VisualsTab:AddToggle({
    Name = "Fullbright",
    Default = false,
    Flag = "fullbright",
    Save = true,
    Callback = function(isOn)
        -- Pasted from infinity yield source
        fullbrightEnabled = isOn

        if isOn then
            Lighting.Brightness = 2
            Lighting.ClockTime = 14
            Lighting.FogEnd = 100000
            Lighting.GlobalShadows = false
            Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        else
            Lighting.Brightness = Lighting:GetAttribute("Brightness")
            Lighting.ClockTime = Lighting:GetAttribute("ClockTime")
            Lighting.FogEnd = Lighting:GetAttribute("FogEnd")
            Lighting.GlobalShadows = Lighting:GetAttribute("GlobalShadows")
            Lighting.OutdoorAmbient = Lighting:GetAttribute("OutdoorAmbient")
        end
    end
})

local UnlockThirdPerson = VisualsTab:AddToggle({
    Name = "Unlock Third Person",
    Default = false,
    Flag = "unlock_third_person",
    Save = true,
    Callback = function(isOn)
        if isOn then
            Player.CameraMaxZoomDistance = 1000
            Player.CameraMode = Enum.CameraMode.Classic
        else
            Player.CameraMaxZoomDistance = 16
        end
    end
})

local ESPTab = MainWindow:MakeTab({
    Name = "ESP",
    PremiumOnly = false
})

local PlayersESP = ESPTab:AddToggle({
    Name = "Players ESP",
    Default = false,
    Flag = "players_ESP",
    Save = true,
    Callback = function(isOn)
        ESP.Players = isOn
    end
})

local ItemSpots = workspace:WaitForChild("ItemSpots")

for _, spot in pairs(ItemSpots:GetChildren()) do
    local theItem = spot:FindFirstChildOfClass("Tool") or spot:FindFirstChildOfClass("Model")

    spot.ChildAdded:Connect(function(child)
        if child:IsA("Tool") or child:IsA("Model") then
            child:WaitForChild("Handle")
            ESP:Add(child.Handle, {
                Name = child.Name,
                Color = Color3.fromRGB(226, 169, 123),
                IsEnabled = "Items"
            })
        end
    end)

    if not theItem then
        continue
    end

    ESP:Add(theItem.Handle, {
        Name = theItem.Name,
        Color = Color3.fromRGB(226, 169, 123),
        IsEnabled = "Items",
    })
end

local ItemsESP = ESPTab:AddToggle({
    Name = "Item ESP",
    Default = false,
    Flag = "itemsESP",
    Save = true,
    Callback = function(isOn)
        ESP.Items = isOn
    end
})

ESP:AddObjectListener(workspace, {
    Name = "Mutant",
    Type = "Model",
    CustomName = "Mutant",
    PrimaryPart = function(obj)
        return obj:WaitForChild("HumanoidRootPart")
    end,
    IsEnabled = "Mutant"
})

local MutantESP = ESPTab:AddToggle({
    Name = "Mutant ESP",
    Default = false,
    Flag = "mutant_ESP",
    Save = true,
    Callback = function(isOn)
        ESP.Mutant = isOn
    end
})

OrionLib:Init()
OrionLib:MakeNotification({
    Name = "Loaded!",
    Content = "Created by pixeluted",
    Time = 8
})
