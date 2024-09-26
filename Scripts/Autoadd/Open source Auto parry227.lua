-- Open Source Blade Ball Auto Parry By PawsThePaw --
--// My Discord: pawsthepaw
--// Notes: I'm not giving Away my Freeze & Invisibility Detection, lmao, this is sort of decent, time based, Enjoy, Skid, or Learn, Its Your Choice.
getgenv().Paws = {
        ["AutoParry"] = true,
        ["PingBased"] = true,
        ["PingBasedOffset"] = 0,
        ["DistanceToParry"] = 0.5,
        ["BallSpeedCheck"] = true,
}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local ReplicatedPaw = game:GetService("ReplicatedStorage")

local Paws = ReplicatedPaw:WaitForChild("Remotes", 9e9)
local PawsBalls = workspace:WaitForChild("Balls", 9e9)
local PawsTable = getgenv().Paws

local function IsTheTarget()
        return Player.Character:FindFirstChild("Highlight")
end

local function FindBall()
    local RealBall
    for i, v in pairs(PawsBalls:GetChildren()) do
        if v:GetAttribute("realBall") == true then
            RealBall = v
        end
    end
    return RealBall
end

game:GetService("RunService").PreRender:connect(function()
        if not FindBall() then 
                return
        end
        local Ball = FindBall()
        
        local BallPosition = Ball.Position
        
        local BallVelocity = Ball.AssemblyLinearVelocity.Magnitude
        
        local Distance = Player:DistanceFromCharacter(BallPosition)
        
        local Ping = BallVelocity * (game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000)
        
        if PawsTable.PingBased then
        Distance -= Ping + PawsTable.PingBasedOffset
        end
        
        if PawsTable.BallSpeedCheck and BallVelocity == 0 then return
        end
        
        if (Distance / BallVelocity) <= PawsTable.DistanceToParry and IsTheTarget() and PawsTable.AutoParry then
               Paws:WaitForChild("ParryButtonPress"):Fire()
           end
end)