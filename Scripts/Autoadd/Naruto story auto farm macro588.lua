-- Function to invoke the first script
local function invokeFirstScript()
    game:GetService("ReplicatedStorage").RemoteFunctions.SpeedChange.ChangeSpeedRemoteFunction:InvokeServer()
end

-- Function to teleport to coordinates
local function teleportToCoordinates()
    local coordinates = CFrame.new(Vector3.new(99.66310119628906, 3.2068777084350586, 4.609277725219727))
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = coordinates
end

-- Function to repeatedly spam subsequent scripts
local function spamScripts()
    local args1 = {
        [1] = 6,
        [2] = "u010002s0",
        [3] = "u010002",
        [4] = Vector3.new(108.2594985961914, 1.2655750513076782, 7.241194725036621)
    }

    game:GetService("ReplicatedStorage").RemoteFunctions.PlaceUnitFunctions.PlaceUnit:InvokeServer(unpack(args1))

    local args2 = {
        [1] = 4,
        [2] = "u006002s0",
        [3] = "u006002",
        [4] = Vector3.new(105.18785095214844, 1.2655750513076782, 6.637542724609375)
    }

    game:GetService("ReplicatedStorage").RemoteFunctions.PlaceUnitFunctions.PlaceUnit:InvokeServer(unpack(args2))

    local args3 = {
        [1] = workspace.Units.UFolder.U0Model,
        [2] = 1
    }

    game:GetService("ReplicatedStorage").RemoteFunctions.UpgradeUnitFunctions.UpgradeUnit:InvokeServer(unpack(args3))
end

-- Teleport to coordinates at the start
teleportToCoordinates()

-- Invoke the first script
invokeFirstScript()

-- Repeat spamming subsequent scripts every 1 second
while true do
    wait(1)
    spamScripts()
end
