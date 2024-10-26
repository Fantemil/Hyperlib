local Players = game:GetService("Players")
local player = Players.LocalPlayer

if not player.Character or not player.Character.Parent then
    player.CharacterAdded:Wait()
end

local ws = game.Workspace
local prt = player.Character:WaitForChild("HumanoidRootPart")

local function fireTouch(p)
    for _, d in ipairs(p:GetDescendants()) do
        if d:IsA("TouchTransmitter") then
            local pp = d.Parent
            if pp:IsA("BasePart") then
                firetouchinterest(prt, pp, 0)
                firetouchinterest(prt, pp, 1)
            end
        end
    end
end

while wait(0.1) do
    fireTouch(ws:WaitForChild("SpawnLocations"))
    fireTouch(ws:WaitForChild("BossChests"))
end
