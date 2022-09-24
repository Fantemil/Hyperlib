--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = game:GetService("CoreGui")
    end
end

--// Services \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

--// Variable \\--
local Player = Players.LocalPlayer
local Ignore = {}

--// ESP Library by Kiriot22 \\--
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Boxes = false

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Memory by Ezpi#0474")
Window:AddButton({
    text = "Clear",
    callback = function()
        for _, A_1 in next, ESP.Objects do
            A_1:Remove()
        end
    end
})
Library:Init()

--// Set Tile \\--
function Detect(Root, C)
    -- Parameters
    local Params = RaycastParams.new()
    Params.FilterDescendantsInstances = Ignore
    Params.FilterType = Enum.RaycastFilterType.Blacklist
    -- RayCast
    local Hit = Workspace:Raycast(Root.Position, Vector3.new(0, -6, 0), Params)
    if Hit and Hit.Instance:FindFirstChildOfClass("TouchTransmitter") then
        print(Hit.Instance)
        ESP:Add(Hit.Instance, {
            Name = "Ezpi",
            PrimaryPart = Hit.Instance,
            Color = C,
            IsEnabled = function(A_1)
                return Player:DistanceFromCharacter(A_1.PrimaryPart.Position) <= 125
            end
        })
    end
end

--// Humanoid Detect Stuff \\--
function OnDeath(Char)
    -- Variables
    local Humanoid = Char:WaitForChild("Humanoid")
    while not Char.PrimaryPart do
        task.wait()
    end
    local Root = Char.PrimaryPart
    -- Store
    table.insert(Ignore, Char)
    -- Detect Changes
    Humanoid.StateChanged:Connect(function(Old, New)
        if Char == Player.Character then
            print(Old, New)
        end
        if Old == Enum.HumanoidStateType.Freefall and New == Enum.HumanoidStateType.Landed or New == Enum.HumanoidStateType.Jumping then
            Detect(Root, Color3.new(0, 1, 0))
        elseif New == Enum.HumanoidStateType.Dead then
            Detect(Root, Color3.new(1, 0, 0))
        end
    end)
end

--// Detect Player Death \\--
for _, A_1 in next, Players:GetPlayers() do
    if A_1.Character then
        task.spawn(function()
            OnDeath(A_1.Character)
        end)
    end
    A_1.CharacterAdded:Connect(OnDeath)
    A_1.CharacterRemoving:Connect(function(Char)
        local Index = table.find(Ignore, Char)
        if Index then
            table.remove(Ignore, Index)
        end
    end)
end
Players.PlayerAdded:Connect(function(Plr)
    if Plr.Character then
        task.spawn(function()
            OnDeath(Plr.Character)
        end)
    end
    Plr.CharacterAdded:Connect(OnDeath)
    Plr.CharacterRemoving:Connect(function(Char)
        local Index = table.find(Ignore, Char)
        if Index then
            table.remove(Ignore, Index)
        end
    end)
end)

--// Ignore Fake Parts \\--
function FakePart(Part)
    if Part:IsA("TouchTransmitter") and Part.Parent.Transparency >= 0.9 then
        table.insert(Ignore, Part.Parent)
    end
end

--// Detect Parts \\--
Workspace.DescendantAdded:Connect(FakePart)
for _, A_1 in next, Workspace:GetDescendants() do
    FakePart(A_1)
end