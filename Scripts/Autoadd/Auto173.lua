if not run then
    -- Killaura script Not mine
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sunsworn1020903/sunsworn1020903/main/KillAura"))()
    task.wait(5)
end
getgenv().run = true
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local RootPart = Character.HumanoidRootPart

local Events = game:GetService("ReplicatedStorage").Events
local RemoteEvents = Events.Remote

local AntiCheat = workspace.AntiCheat
local Checks = {
    Blue = AntiCheat.Blue,
    Red = AntiCheat.Red
}
local Areas = {
    Red = CFrame.new(0, 14, 100),
    Blue = CFrame.new(0, 14, -100),
    Underground = CFrame.new(0,0,0),
    Safespot = CFrame.new(0, -5, 0)
}

local function Touch(part)
    local OldCFrame = RootPart.CFrame
    RootPart.CFrame = part.CFrame
    wait(.25)
end

local function isUnderground(Character)
    if Character.HumanoidRootPart.Position.Y < 11.7 then
        return true
    end
    return false
end

local function CurrentArea(Player)
    local PlayerCharacter = Player.Character
    local RootPart = PlayerCharacter:WaitForChild("HumanoidRootPart")
    if not isUnderground(PlayerCharacter) then
        if RootPart.Position.Z > 0 then
            return "Red"
        elseif RootPart.Position.Z < 0 then
            return "Blue"
        end
    end
    return "Underground"
end
local function TeleportToArea(Area)
    RootPart.CFrame = Areas[Area]
    wait(.25)
end
local function SwitchArea(NewArea)
    local CurrentArea = CurrentArea(LocalPlayer)
    if CurrentArea == NewArea then return end
    if CurrentArea ~= "Underground" and NewArea ~= "Safespot" then
        Touch(Checks[CurrentArea])
    end
    if NewArea ~= "Underground" and NewArea ~= "Safespot" then 
        Touch(Checks[NewArea])
    end
    TeleportToArea(NewArea)
end

local function Shoot(Part)
    RemoteEvents.ShotTarget:FireServer("Sniper", Part.Position)
end

local function TeleportTo(Part)
    RootPart.CFrame = CFrame.new(Part.Position)
end

local function Goto(Player)
    if not Player.Character then return end
    local TargetArea = CurrentArea(Player)
    SwitchArea(TargetArea)
    TeleportTo(Player.Character.HumanoidRootPart)
end
game:GetService("RunService").RenderStepped:Connect(function()
        Character = LocalPlayer.Character
        RootPart = Character:WaitForChild("HumanoidRootPart")
end)
while wait() do
    for i, Player in pairs(game.Players:GetPlayers()) do
        if Player.TeamColor.Name == LocalPlayer.TeamColor.Name then continue end
        if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character:WaitForChild("Humanoid").Health > 0 then
            if Player.Character:FindFirstChild("ForceField") then continue end
            Goto(Player)
            task.wait(.7)
            SwitchArea("Safespot")
        end
    end
end