--// Service \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
 
--// Variables \\--
local Player = Players.LocalPlayer
local Draggables = Workspace:WaitForChild("PlayerDraggables"):WaitForChild(Player.UserId)
local Workout = ReplicatedStorage:WaitForChild("StrongMan_UpgradeStrength")
 
--// Get Goal \\--
local Areas = Workspace:WaitForChild("Areas")
function GetGoal()
    for _, A_1 in next, Areas:GetChildren() do
        local Goal = A_1:FindFirstChild("Goal", true)
        if Goal and Goal:FindFirstChildOfClass("TouchTransmitter") then
            return Goal
        end
    end
    return false
end
 
--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = game:GetService("CoreGui")
    end
end
 
--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://pastebin.com/raw/edJT9EGX'))()
local Window = Library:CreateWindow("Trainer by Ezpi")
 
--// Exploit Check \\--
if fireproximityprompt and firetouchinterest then
    local Toggle_1 = Window:AddToggle({
        text = 'Auto Pull',
        flag = 'Enabled',
        callback = function()
            -- Get Goal
            local Goal = GetGoal()
 
            -- Get Closest Draggable
            local Closest = false
            local Distance = 100
            for _, A_1 in next, Areas:GetDescendants() do
                if A_1:IsA("ProximityPrompt") and Player:DistanceFromCharacter(A_1.Parent.Position) < Distance and A_1:FindFirstAncestor("DraggableItems") then
                    Closest = A_1
                    Distance = Player:DistanceFromCharacter(A_1.Parent.Position)
                end
            end
 
            -- Check Closest
            if Closest == false then
                StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "Ezpi's Trainer",
                        Text = "No draggable found. :(",
                        Duration = 10
                    }
                )
            end
 
            -- Loop
            Player.Character.HumanoidRootPart.Anchored = true
            while Closest and Goal and Library.flags.Enabled and wait() do
                -- Use Closest Draggable
                fireproximityprompt(Closest, 1)
 
                -- Pull to end
                if Goal then
                    for _, A_1 in next, Draggables:GetChildren() do
                        firetouchinterest(Goal, A_1, 0)
                        firetouchinterest(Goal, A_1, 1)
                    end
                end
            end
            Player.Character.HumanoidRootPart.Anchored = false
 
            -- Make sure to finish it
            wait(0.2)
            if Goal then
                for _, A_1 in next, Draggables:GetChildren() do
                    firetouchinterest(Goal, A_1, 0)
                    firetouchinterest(Goal, A_1, 1)
                end
            end
        end
    })
else
    Window:AddLabel("Buy Synapse X\nx.synapse.to")
end
Library:Init()
 
--// Auto-Workout \\--
while wait(0.1) do
    if Player.Character and Player.Character:FindFirstChild("Weights") then
        Workout:InvokeServer()
    end
end
 