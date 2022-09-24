local PlayerService = game:GetService("Players")

local Player = PlayerService.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = Character.HumanoidRootPart

local ZombieStorage = game:GetService("Workspace").ZombieAreas
local useGlo = getgenv() or _G

useGlo.Silent = false

local function GetClosestZombie()
    local MagnitudeDistance = math.huge
    local ClosestZombie
    local Magnitude

    for _, Zombie in pairs(ZombieStorage:GetDescendants()) do
        if Zombie.name == "Head" then
            if Zombie then
                Magnitude = (HumanoidRootPart.Position - Zombie.Position).Magnitude
                if Magnitude < MagnitudeDistance then
                    MagnitudeDistance = Magnitude
                    ClosestZombie = Zombie
                end
            end
        end
    end
    return ClosestZombie
end


local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if useGlo.Silent then
        if method == "FireServer" and args[1][1] == "Shot"  then
            args[1][2] = GetClosestZombie().Position
            return Self.FireServer(Self,unpack(args))
        end
    end
    return OldNamecall(Self, ...)
end)


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Silent aim, silent aim 5x", HidePremium = false, SaveConfig = false})

local Tab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})


Tab:AddToggle({
        Name = "Silent aim",
        Default = false,
        Callback = function(Value)
                useGlo.Silent = Value
        end    
})


function ChangeSpeed(Humanoid,Value)
    Humanoid.WalkSpeed = Value
end

local walkspeedslider = Tab:AddSlider({
    Name = "Walkspeed",
    Min = 16,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(255, 0, 123),
    Increment = 1,
    Callback = function(Value)
        ChangeSpeed(game.Players.LocalPlayer.Character.Humanoid,Value)
    end
})


local orionion = game:GetService("CoreGui"):FindFirstChild("Orion")

local destroygui = Tab:AddButton({
    Name = "Destroy GUI",
    Callback = function()
        orionion:Destroy()
        OrionLib:Destroy()
        
        wait(1)
        
        OrionLib:MakeNotification({
            Name = "Removing GUI...",
            Content = "GUI is removed!",
            Time = 3
        })
    end    
})



OrionLib:Init()