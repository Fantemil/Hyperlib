--// Services \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

--// Variables \\--
local PlayerName = Players.LocalPlayer.Name
local Vault = Workspace:WaitForChild("Vault")

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Solver by Ezpi#0474")
Window:AddLabel({
    text = "discord.gg/nxHQEk2kEt"
})
Window:AddToggle({
    text = "Vault Solver",
    flag = "Vault",
    callback = function()
        for _, A_1 in next, Vault:GetDescendants() do
            if A_1.Name == "Player" and A_1:IsA("StringValue") then
                Start(A_1, A_1.Parent.Parent)
            end
        end
    end
})
Window:AddSlider({
    text = "Click Delay",
    min = 0.1,
    max = 2,
    value = 0.2,
    float = 0.05,
    flag = "Delay"
})
Library:Init()

--// Solve \\--
function Solve(Player_Vault)
    local Screen = Player_Vault.Screen:FindFirstChild("TextLabel", true).Text
    for _, A_1 in next, Player_Vault.Locks:GetDescendants() do
        if A_1.Name == "TextLabel" and A_1.Text == Screen then
            fireclickdetector(A_1.Parent.Parent.ClickDetector)
            return
        end
    end
end

--// Loop \\--
function Start(A_1, A_2)
    while A_1.Value == PlayerName and task.wait(Library.flags.Delay) and Library.flags.Vault == true do
        Solve(A_2)
    end
end

--// Activate \\--
for _, A_1 in next, Vault:GetDescendants() do
    if A_1.Name == "Player" and A_1:IsA("StringValue") then
        Start(A_1, A_1.Parent.Parent)
        A_1:GetPropertyChangedSignal("Value"):Connect(function()
            Start(A_1, A_1.Parent.Parent)
        end)
    end
end