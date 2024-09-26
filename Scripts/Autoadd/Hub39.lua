local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local start_stage = 1
local end_stage = 727
local wait_time = 0.15
local stop_autoteleport = false
local wait_time2 = 0.15
local prestige_cframe = CFrame.new(-1129.43237, 539.133972, 511.508728)

local Window = OrionLib:MakeWindow({Name = "Mega Obby Hub", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Auto Stage",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Auto Prestige",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local function teleportStages()
    local todo = game:GetService("Workspace").Stages:GetChildren()
    local Plr = game:GetService("Players").LocalPlayer
    
    local function tp(plr, endpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(endpos)
    end

    for j = start_stage, end_stage, 1 do
        if stop_autoteleport then break end
        for i, v in pairs(todo) do
            if todo[i].Name == tostring(j) then
                local todo_2 = todo[i]:GetChildren()
                for t, v in pairs(todo_2) do
                    if todo_2[t].Name == "Spawn" then
                        local Pos = todo_2[t].Position
                        tp(Plr, Pos)
                        wait(wait_time)
                        break
                    end
                end
            end
        end
    end
end

local function teleportPrestige()
    local Plr = game:GetService("Players").LocalPlayer
    while wait(wait_time2) do
        if not OrionLib.Flags["AutoPrestige"].Value then break end
        Plr.Character.HumanoidRootPart.CFrame = prestige_cframe
    end
end

Tab:AddSlider({
    Name = "Start Stage",
    Min = 1,
    Max = 726,
    Default = start_stage,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Stage",
    Callback = function(value)
        start_stage = value
    end    
})

Tab:AddSlider({
    Name = "End Stage",
    Min = 1,
    Max = 727,
    Default = end_stage,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Stage",
    Callback = function(value)
        end_stage = value
    end    
})

Tab:AddSlider({
    Name = "Teleport Delay | Set This Higher For a Lower Chance of Failing",
    Min = 0,
    Max = 1,
    Default = wait_time,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 0.01,
    ValueName = "Seconds",
    Callback = function(value)
        wait_time = value
    end    
})

Tab:AddToggle({
    Name = "Auto Teleport",
    Default = false,
    Flag = "AutoTeleport", 
    Save = true,
    Callback = function(value)
        stop_autoteleport = not value
        if value then
            teleportStages()
        end
    end
})

Tab2:AddSlider({
    Name = "Teleport Delay | Set This Higher For a Lower Chance of Failing",
    Min = 0.6,
    Max = 1,
    Default = 0.6,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 0.01,
    ValueName = "Seconds",
    Callback = function(val2)
        wait_time2 = val2
    end    
})

Tab2:AddToggle({
    Name = "Auto Prestige",
    Default = false,
    Flag = "AutoPrestige", 
    Save = true,
    Callback = function(vale2)
        if vale2 then
            teleportPrestige()
        end
    end
})

OrionLib:Init()