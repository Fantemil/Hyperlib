local VirtualInputManager = game:GetService('VirtualInputManager')
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid

local function jump()
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, nil)
    wait(0.01)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, nil)
end

while true do
    wait()
    if Humanoid.FloorMaterial == Enum.Material.Air then
        jump()
        if Humanoid.FloorMaterial ~= Enum.Material.Air then
            continue
        end
    end
    
    if Humanoid.Health <= 0 then
        repeat
            Character = LocalPlayer.CharacterAdded:Wait()
            Humanoid = Character:WaitForChild("Humanoid")
            wait()
        until Humanoid.Health > 0
    end
end