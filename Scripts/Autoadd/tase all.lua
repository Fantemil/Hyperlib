local ohInstance1 = game:GetService("Players").LocalPlayer.Backpack.Taser

game:GetService("ReplicatedStorage").ReloadEvent:FireServer(ohInstance1)

local players = game:GetService("Players")

local ohTable1 = {}
for i, player in ipairs(players:GetPlayers()) do
    -- Update the table with the player's name and number
    ohTable1[tostring(i)] = {
        ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
        ["Distance"] = 0,
        ["Cframe"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
        ["Hit"] = player.Character.Head -- Use each player's head
    }
end

-- Fire the ShootEvent
local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack.Taser
game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)