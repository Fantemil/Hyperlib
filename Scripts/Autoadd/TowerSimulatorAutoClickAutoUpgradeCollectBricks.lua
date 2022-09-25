--// Exploit Check \\--
if #{fireclickdetector, firetouchinterest} ~= 2 then
    while true do
    end
end

--// Service \\--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

--// Variable \\--
local Player = Players.LocalPlayer

-- UI Library
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Created by Ezpi#0474")
Window:AddToggle({
    text = "Auto Click",
    flag = "click",
    callback = function(A_1)
        -- Click!
        while Library.flags.click and wait(Library.flags.speed) do
            local Tower = Player:FindFirstChild("MyTower")
            if Tower and Tower.Value then
                fireclickdetector(Tower.Value.ClickDetector)
            end 
        end
    end
})
Window:AddSlider({
    text = 'Auto Click Speed',
    flag = 'speed',
    min = 0.01,
    max = 3,
    float = 0.01,
    value = 1
})
Window:AddToggle({
    text = "Auto Upgrade",
    flag = "upgrade"
})
Window:AddToggle({
    text = "Collect Bricks & Birds",
    flag = "bricks",
    callback = function(A_2)
        -- Check
        if A_2 == false then
            return
        end
        -- Collect
        for _, A_1 in next, Workspace:GetChildren() do
            if string.find(A_1.Name:lower(), "brick") and A_1:FindFirstChild("ClickDetector") then
                fireclickdetector(A_1.ClickDetector)
            end
        end
    end
})
Library:Init()

--// Auto Upgrade \\--
local Bricks = Player:WaitForChild("leaderstats"):WaitForChild("Bricks")
Bricks.Changed:Connect(function()
    -- Check
    if Library.flags.upgrade == false or not Player:FindFirstChild("MyTower") or not Player.MyTower.Value then
        return
    end
    -- Upgrade
    local Tower = Player.MyTower.Value
    for _, A_1 in next, {"Left", "Right"} do
        local Button = Tower["PurchaseUpgradeButton" .. A_1].Head
        if Button.Price.Value <= Bricks.Value then
            local Root = Player.Character.PrimaryPart
            firetouchinterest(Root, Button, 0)
            firetouchinterest(Root, Button, 1)
        end
    end
end)

--// String Find \\--
function Find(String, Table)
    local Lower = String:lower()
    for _, A_1 in next, Table do
        if string.find(Lower, A_1:lower()) then
            return true
        end
    end
    return false
end

--// Brick Collector \\--
Workspace.ChildAdded:Connect(function(A_1)
    wait(0.1)
    if string.find(A_1.Name:lower(), "brick") and Library.flags.bricks then
        local Click = A_1:WaitForChild("ClickDetector")
        fireclickdetector(Click)
    end
end)

--// Bird Collector \\--
while wait(0.1) do
    -- Check
    if Library.flags.bricks and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character:FindFirstChild("TouchTheSky") and Player.Character.TouchTheSky:FindFirstChild("RemoteEvent") then
        -- Variables
        local Root = Player.Character.HumanoidRootPart
        local Event = Player.Character.TouchTheSky.RemoteEvent
        -- Collect Birds
        for _, A_1 in next, Workspace:GetChildren() do
            if A_1:IsA("Model") and Find(A_1.Name, {"goll", "gull", "ubo", "asteroid", "tree", "shadow", "meteor", "furniture"}) then
                for _, A_2 in next, A_1:GetDescendants() do
                    if A_2:IsA("BasePart") and A_2.Parent:IsA("Model") then
                        Event:FireServer(A_2)
                    elseif A_2:IsA("ClickDetector") then
                        fireclickdetector(A_2)
                    elseif A_2:IsA("TouchTransmitter") then
                        pcall(function()
                            firetouchinterest(Root, A_2.Parent, 0)
                            firetouchinterest(Root, A_2.Parent, 1)
                            wait()
                        end)
                    end
                end
                wait(0.1)
            end
        end
    end
end