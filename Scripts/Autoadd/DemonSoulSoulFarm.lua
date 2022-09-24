--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = CoreGui
    end
end

--// Services \\--
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

--// Variables \\--
local Player = Players.LocalPlayer
local Gui = Player:WaitForChild("PlayerGui")
local Waiting = Player:WaitForChild("WaitingSoul")
local Total = Player:WaitForChild("leaderstats"):WaitForChild("Soul")
local Count = Gui:FindFirstChild("SoulCount", true) or false
local Soul = ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("DropSoul")

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Souls by Ezpi#0474")
Window:AddLabel({
    text = "discord.gg/nxHQEk2kEt"
})
Window:AddToggle({
    text = "Soul Farm",
    flag = "Soul",
    callback = function(A_1)
        -- Check
        if Total.Value == "0" then
            return
        end
        -- Soul Animation Fix
        Gui:FindFirstChild("HallUiCtrl", true).Disabled = A_1
        -- AutoFarm
        while Library.flags.Soul == true and task.wait() do
            if Waiting.Value < 1 then
                Soul:FireServer(-1)
                Waiting:GetPropertyChangedSignal("Value"):wait()
            else
                Soul:FireServer(0.5)
            end
        end
    end
})
Library:Init()

--// Soul Animation Fix \\--
Gui.DescendantAdded:Connect(function(A_1)
    task.wait()
    if A_1.Name == "SoulCount" then
        Count = A_1
    elseif A_1.Name == "HallUiCtrl" then
        A_1.Disabled = true
    end
end)
Total:GetPropertyChangedSignal("Value"):Connect(function()
    if Count ~= false and Count.Parent ~= nil and Library.flags.Soul == true then
        Count.Text = Total.Value
    end
end)