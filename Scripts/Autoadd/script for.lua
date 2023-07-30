local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("stupid idiot cafe", "DarkTheme")
 
-- Teleports
local Tab = Window:NewTab("Teleports")
local Section = Tab:NewSection("Death Ray")
 
-- death ray
Section:NewButton("run", "Teleport you to death ray", function()
    wait(2)
    local teleport_table = {
        location1 = Vector3.new(246, -104, -47), -- your desired position
    }
 
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
 
    local lp = game.Players.LocalPlayer
 
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
 
    bypass_teleport(teleport_table.location1)
end)
 
-- spawn
local Section = Tab:NewSection("Spawn")
 
Section:NewButton("run", "Teleport you to spawn", function()
    wait(2)
local teleport_table = {
    location1 = Vector3.new(-29, 3, -19), -- your desired position
}
 
local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
 
local lp = game.Players.LocalPlayer
 
function bypass_teleport(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        -- a.Completed:Wait()
        -- print('Teleporting Done!')
    end
end
 
bypass_teleport(teleport_table.location1)
end)
 
-- stairs
local Section = Tab:NewSection("Stairs")
 
Section:NewButton("Run", "Teleport you to Stairs area", function()
    wait(2)
    local teleport_table = {
        location1 = Vector3.new(-369, -62, -138), -- your desired position
    }
 
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
 
    local lp = game.Players.LocalPlayer
 
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
 
    bypass_teleport(teleport_table.location1)
end)
 
-- Manager room
local Section = Tab:NewSection("Manager office")
Section:NewButton("Run", "Teleport you to Manager Office", function()
    wait(2.5)
    local teleport_table = {
        location1 = Vector3.new(-308, -62, 9), -- your desired position
    }
 
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
 
    local lp = game.Players.LocalPlayer
 
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
 
    bypass_teleport(teleport_table.location1)
end)
 
-- Weapon Store
local Section = Tab:NewSection("Weapon Store")
Section:NewButton("Run", "Teleport you to weapon store", function()
    wait(2)
    local teleport_table = {
        location1 = Vector3.new(328, -8, -2), -- your desired position
    }
 
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
 
    local lp = game.Players.LocalPlayer
 
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play() 
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
 
    bypass_teleport(teleport_table.location1)
end)
 
 
-- Tools
 
local Tab = Window:NewTab("Tools")
 
 
-- Auto Pick up Tools
local Section = Tab:NewSection("Pick up all tools")
Section:NewButton("Run", "Pick up all dropped tools", function()
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v:IsA("Tool") and v:FindFirstChild("Handle") then
            firetouchinterest(v.Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        end
    end
end)
 
-- Auto pick up files
local Section = Tab:NewSection("Auto pick up Files")
Section:NewButton("Run", "Pick up all Files", function()
    while task.wait() do
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "classified files" and v:FindFirstChild("Handle") then
                firetouchinterest(v.Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
            end
        end
    end
end)
 
-- PLAYER
 
local Tab = Window:NewTab("Player")
 
-- Walkspeed normal
local Section = Tab:NewSection("Walkspeed normal")
Section:NewButton("Run", "Set walkspeed to normal", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
end)
 
-- Walkspeed Faster
local Section = Tab:NewSection("Walkspeed fast")
Section:NewButton("Run", "Set walkspeed to be faster", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
end)
 
--GAME
local Tab = Window:NewTab("game")
 
-- unlock doors
local Section = Tab:NewSection("Unlock all doors")
Section:NewButton("Run", "Unlock all doors", function()
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "normaldoor" then
            v.lockpick:FireServer()
        end
    end
end)