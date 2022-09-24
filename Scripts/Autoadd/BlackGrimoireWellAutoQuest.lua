--// Exploit Check \\--
if firetouchinterest == nil then
    while true do
    end
end

--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = game:GetService("CoreGui")
    end
end

--// Services \\--
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")

--// Variables \\--
local Player = Players.LocalPlayer
local Well = Workspace:WaitForChild("HAGEWELL"):WaitForChild("GetTheWaterFromMe")
local Give = Workspace:WaitForChild("NPCs"):WaitForChild("Larissa"):WaitForChild("GIVEMEYOURWATER")
local Event = ReplicatedStorage:WaitForChild("MissionEvent")

--// Level Check \\--
if Player:WaitForChild("stats"):WaitForChild("Level").Value < 30 then
    StarterGui:SetCore("SendNotification", {
        Title = "[ERROR]",
        Text = "Level 30 required.",
        Duration = 5
    })
    return
end

--// Get Bucket \\--
function GetBucket()
    -- Variable
    local Character = Player.Character
    -- Check Equipped & Backpack
    if Character and Player:FindFirstChild("Backpack") then
        return Character:FindFirstChild("Bucket") or Player.Backpack:FindFirstChild("Bucket") or false
    end
    return false
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Well Farm by Ezpi#0474")
Window:AddToggle({
    text = "Enabled",
})
Window:AddSlider({
    text = "Quest Delay",
    value = 4,
    min = 2,
    max = 10,
    float = 0.1,
    flag = "Quest_Delay"
})
Library:Init()

--// AutoFarm \\--
while task.wait(Library.flags.Quest_Delay) do
    -- Get Bucket
    if Library.flags.Enabled then
        local Bucket = GetBucket()
        if Bucket then
            Bucket.Parent = Player.Character
            -- Fill Bucket
            while Bucket.Filled.Value == false and task.wait(0.1) do
                Bucket:Activate()
                firetouchinterest(Bucket.bucket, Well, 0)
                firetouchinterest(Bucket.bucket, Well, 1)
            end
            -- Give Bucket
            while Bucket.Parent == Player.Character and task.wait(0.1) do
                firetouchinterest(Give, Player.Character.PrimaryPart, 0)
                firetouchinterest(Give, Player.Character.PrimaryPart, 1)
            end
        else
            -- Get Quest
            Event:FireServer("questpls", "Bringwater")
        end
    end
end