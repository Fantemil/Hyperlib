--// Service \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local VirtualInputManager = game:GetService("VirtualInputManager")

--// Variables \\--
local Camera = Workspace.CurrentCamera
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local Zombies = Workspace:WaitForChild("Zombies")

--// Get Closest Zombie \\--
function GetClosestZombie()
    local Closest = false
    local Distance = math.huge
    local MousePos = Vector2.new(Mouse.X, Mouse.Y)
    for _, A_1 in next, Zombies.GetDescendants(Zombies) do
        local Health = A_1.FindFirstChild(A_1, "HP")
        if Health and Health.Value > 0 and A_1.FindFirstChild(A_1, "HumanoidRootPart") then
            local vector, onScreen = Camera.WorldToScreenPoint(Camera, A_1.HumanoidRootPart.Position)
            if onScreen then
                local NewDistance = (MousePos - Vector2.new(vector.X, vector.Y)).Magnitude
                if NewDistance < Distance then
                    Distance = NewDistance
                    Closest = vector
                end
            end
        end
    end
    return Closest
end

--// ESP \\--
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:AddObjectListener(workspace.Zombies, {
    Recursive = true,
    Color =  Color3.new(1, 0.2, 0.2),
    Type = "Model",
    PrimaryPart = function(A_1)
        return A_1:WaitForChild("HumanoidRootPart")
    end,
    IsEnabled = function(A_1)
        local Health = A_1.PrimaryPart.Parent and A_1.PrimaryPart.Parent:FindFirstChild("HP")
        if Health and Health.Value > 0 then
            return true
        end
        return false
    end
})
ESP.TeamMates = false
ESP:Toggle(true)

--// No Weapon Spread \\--
for _, A_1 in next, game:GetService("ReplicatedStorage"):WaitForChild("SWEP_Resources"):WaitForChild("Config"):GetChildren() do
    local Weapon_Stats = require(A_1)
    if Weapon_Stats.Spread then
        Weapon_Stats.Spread = 0
    end
    if Weapon_Stats.ADSSpreadReduction then
        Weapon_Stats.ADSSpreadReduction = 0
    end
end

-- Make player re-equip gun
VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.One, 0, game)
VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.One, 0, game)

--// Funny Namecall \\--
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    -- Variables
    local Args = {...}
    local NamecallMethod = getnamecallmethod()

    -- Silent Aim
    if NamecallMethod == "FireServer" and Args[1] == "Hit2" and typeof(Args[2]) == "Instance" then
        local Model = Args[2].FindFirstAncestorOfClass(Args[2], "Model")
        local Head = Model.FindFirstChild(Model, "Head")
        if Model.Name ~= "Gluttony Zombie" then
            Args[2] = Head
        end
    elseif NamecallMethod == "ScreenPointToRay" then
        local Zombie = GetClosestZombie()
        if Zombie then
            Args[1] = Zombie.X
            Args[2] = Zombie.Y
        end
    end
    return OldNameCall(Self, unpack(Args))
end)