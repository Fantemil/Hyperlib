local player = game.Players.LocalPlayer
local character1 = player.Character
local mouse = player:GetMouse()
 
local fakebody = Instance.new("Part", character1)
fakebody.Transparency = 1
fakebody.Anchored = true
fakebody.CanCollide = false
fakebody.Position = character1.Head.Position
fakebody.Name = "FPart"
wait()
 
_G.ReanimationType = "PDeath" --PDeath, Fling, Simple
_G.Velocity = Vector3.new(36,0,0)
_G.FlingBlock = true
_G.FlingBlockTransparency = 1
_G.HighlightFlingBlock = true
_G.FlingBlockPosition = "FPart"
_G.HighlightFlingBlockColor = Color3.fromRGB(255,0,0)
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/GelatekWasTaken/Reanimation.lua/main/Main/Main.lua"))()
 
function GetPlayer(name)
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.DisplayName:lower():sub(1, #name) == name:lower() or v.Name:lower():sub(1, #name) == name:lower() then
            return v
        end
    end    
end
 
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = plr.Character
local killing = false
local victim = nil
 
plr.Chatted:Connect(function(msg)
    if string.sub(msg, 1, 6) == "/kill " then
        if plrs:FindFirstChild(string.sub(msg, 7)) then
            victim = plrs:FindFirstChild(string.sub(msg, 7))
            killing = true
            wait(2)
            killing = false
        else
            if GetPlayer(string.sub(msg, 7)) then
                victim = GetPlayer(string.sub(msg, 7))
                killing = true
                wait(2)
                killing = false
            else
                print("Player not found!")
            end
        end
    end
end)
 
plrs.PlayerRemoving:Connect(function(player)
    if player == victim then
        killing = false
    end
end)
 
spawn(function()
    while game:GetService("RunService").Heartbeat:Wait() do
        if killing == false then
            
        else
            if victim.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
                character1.Reanimate.FPart.Position = victim.Character.Torso.Position
            else
                character1.Reanimate.FPart.Position = victim.Character.UpperTorso.Position
            end
end
end
end)
wait(1)
 
local plr = game.Players.LocalPlayer
local char = plr.Character
local gumn = char["WDW_FoamFinger"].Handle
plr.SimulationRadius = 9283829373828273
larm = char["Left Arm"]
torso = char["Torso"]
larm.Attachment:Destroy()
t = Instance.new("Attachment", larm)
t.Position = Vector3.new(1.5, 0.5, 0.5)
t.Orientation = Vector3.new(-90, 0, 0)
 
to = Instance.new("Attachment", torso)
 
local lp = Instance.new("AlignPosition", larm)
lp.Attachment0 = t
lp.Attachment1 = to
lp.RigidityEnabled = true
 
local lo = Instance.new("AlignOrientation", larm)
lo.Attachment0 = t
lo.Attachment1 = to
lo.RigidityEnabled = true
gumn.AccessoryWeld:Destroy()
mouse.Button1Down:Connect(function()
    local sfx = Instance.new("Sound", char)
    sfx.SoundId = "rbxassetid://8029032073"
    sfx.Playing = true
    larm.Attachment.Orientation = Vector3.new(-120, 0, 0)
    gumn.Attachment.Position = Vector3.new(0, -2, 2)
    gumn.Attachment.Orientation = Vector3.new(-90, -2, 90)
    wait(0.1)
    gumn.Attachment.Position = Vector3.new(-0.5, -2.5, 1.5)
    char.Reanimate.FPart.Position = mouse.Hit.p
    larm.Attachment.Orientation = Vector3.new(-90, 0, 0)
    wait(0.5)
    sfx:Destroy()
    end)