local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local easterModel = workspace:FindFirstChild("Easter001!"):FindFirstChild("EasterEggUltimate")

if not easterModel then
    warn("Easter model not found!")
    return
end

local eggies = {}

for _, obj in pairs(easterModel:GetDescendants()) do
    if obj.Name == "Eggy" and obj:IsA("BasePart") then
        table.insert(eggies, obj)
    end
end

local function collectEggies()
    for _, eggy in pairs(eggies) do
        humanoidRootPart.CFrame = eggy.CFrame
        wait(0.7) 
    end
end

collectEggies()