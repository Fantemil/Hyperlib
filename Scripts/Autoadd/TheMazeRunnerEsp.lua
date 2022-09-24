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
local PathfindingService = game:GetService("PathfindingService")
local StarterGui = game:GetService("StarterGui")
 
--// Variables \\--
local Player = Players.LocalPlayer
local Chest_Folder = Workspace:WaitForChild("Chests")
local Griever_Folder = Workspace:WaitForChild("AIGrievers")

--// ESP Library \\--
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Color = Color3.new(1, 1, 1)

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Immunity by Ezpi#0474")

--// Get Closest Chest \\--
function GetChest()
    local Closest = false
    local Distance = math.huge
    for _, A_1 in next, Chest_Folder:GetDescendants() do
        if A_1:IsA("Model") and A_1.PrimaryPart and A_1:FindFirstChild("Tier") then
            local New_Distance = Player:DistanceFromCharacter(A_1.PrimaryPart.Position)
            if New_Distance < Distance then
                Distance = New_Distance
                Closest = A_1.PrimaryPart
            end
        end
    end
    return Closest
end

--// Chest ESP \\--
Window:AddToggle({
    text = "Players",
    callback = function(A_1)
        ESP.Players = A_1
    end
})
Window:AddToggle({
    text = "Chests"
})
Window:AddToggle({
    text = "Grievers"
})
Window:AddButton({
    text = "Calculate Path",
    callback = function()
        -- Remove Old Path
        for _, A_1 in next, Player.Character:GetChildren() do
            if A_1.Name == "Ezpi" then
                A_1:Destroy()
            end
        end
        -- Get Chest
        local Chest = GetChest()
        if Chest == false then
            return
        end
        -- Compute the path
        local Path = PathfindingService:CreatePath()
        local Success = pcall(function()
            Path:ComputeAsync(Player.Character.PrimaryPart.Position, Chest.Position)
        end)      
        -- Generate Path   
        if Success and Path.Status == Enum.PathStatus.Success then
            -- New Path
            local Waypoints = Path:GetWaypoints()
            for _, Waypoint in next, Waypoints do
                local Visual = Instance.new("Part")
                Visual.Parent = Player.Character
                Visual.Name = "Ezpi"
                Visual.Shape = Enum.PartType.Ball
                Visual.Anchored = true
                Visual.Material = Enum.Material.Neon
                Visual.CanCollide = false
                Visual.CFrame = CFrame.new(Waypoint.Position)
                Visual.Transparency = 0.7
            end 
        elseif Path.Status == Enum.PathStatus.NoPath then
            StarterGui:SetCore("SendNotification", {
                Title = "Pathfinding",
                Text = "No path found :("
            })
        else
            warn(Success, Path.Status)
            StarterGui:SetCore("SendNotification", {
                Title = "Pathfinding",
                Text = "Error"
            })
        end
    end
})
Window:AddBind({
    text = "Teleport Forwards",
    callback = function()
        Player.Character.HumanoidRootPart.CFrame *= CFrame.new(0, 0, -12)
    end
})
Library:Init()

--// Chest ESP \\--
ESP:AddObjectListener(Chest_Folder, {
    Recursive = true,
    Validator = function(A_1)
        return A_1.ClassName == "Model" and A_1:WaitForChild("Tier", 5)
    end,
    Color = Color3.new(0.3, 1, 0.3),
    IsEnabled = function()
        return Library.flags.Chests == true
    end
})

--// Griever ESP \\--
ESP:AddObjectListener(Griever_Folder, {
    PrimaryPart = function(A_1)
        return A_1:FindFirstChild("HumanoidRootPart")
    end,
    IsEnabled = function(A_1)
        local Humanoid = A_1.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid")
        if Humanoid and Humanoid.Health > 0 then
            return Library.flags.Grievers == true 
        end
    end,
    Color = Color3.new(1, 0.3, 0.3)
})