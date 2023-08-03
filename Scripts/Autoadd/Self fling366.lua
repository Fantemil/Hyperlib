-- FE SELF FLING REAL
-- used for trolling example: bang someone and when they turn around and look at you, FLING YOURSELF
-- hotkey dont have to be capitals lol
-- press e to fling urself and q to go back where u previously were

local Config = {
    FlingHotkey = "E",
    TpBackHotkey = "Q",
    Permanent = false
}

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer

local Character = Player.Character
local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
local RootPart = Humanoid.RootPart

for _, x in next, Config do
    if type(x) == "string" then
        Config[_] = x:upper()
    end
end

local CurrentPos
local Connection

Connection = UserInputService.InputBegan:Connect(function(Key, Typing)
    if not Typing then
        if Key.KeyCode == Enum.KeyCode[Config.FlingHotkey] then
            if Config.Permanent then
                if Player.Character.Humanoid.RootPart.Velocity.Magnitude <= 20 then
                    CurrentPos = Player.Character.Humanoid.RootPart.CFrame
                end
                Player.Character.Humanoid.RootPart.Velocity = (Player.Character.Humanoid.RootPart.Velocity + Vector3.new(0, 50, 0)) + (Player.Character.Humanoid.RootPart.CFrame.LookVector * 100)
                Player.Character.Humanoid.RootPart.RotVelocity = (Player.Character.Humanoid.RootPart.RotVelocity + Vector3.new(math.random(200, 300), math.random(-200, 300), math.random(200, 300))) 
            else
                if RootPart.Velocity.Magnitude <= 20 then
                    CurrentPos = RootPart.CFrame
                end
                RootPart.Velocity = (RootPart.Velocity + Vector3.new(0, 50, 0)) + (RootPart.CFrame.LookVector * 100)
                RootPart.RotVelocity = (RootPart.RotVelocity + Vector3.new(math.random(200, 300), math.random(-200, 300), math.random(200, 300)))
            end
        elseif Key.KeyCode == Enum.KeyCode[Config.TpBackHotkey] then
            if CurrentPos then
                if Config.Permanent then
                    if Player.Character.Humanoid.RootPart.Velocity.Magnitude >= 20 then
                        Player.Character.Humanoid.RootPart.Velocity = Vector3.new()
                        Player.Character.Humanoid.RootPart.RotVelocity = Vector3.new()
                        Player.Character.Humanoid.RootPart.CFrame = CurrentPos
                        Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                    end
                else
                    if RootPart.Velocity.Magnitude >= 20 then
                        RootPart.Velocity = Vector3.new()
                        RootPart.RotVelocity = Vector3.new()
                        RootPart.CFrame = CurrentPos
                        Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                    end
                end
            end
        end
    end
end)

if not Config.Permanent then
    Humanoid.Died:Connect(function()
        Connection:Disconnect()
    end)
end
