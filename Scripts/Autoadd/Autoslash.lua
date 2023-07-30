_G.toggle = true -- change to false to disable
local cd = 0 -- time between each slash (0 being the fastest, 1 = 1 second and so on)

local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

while task.wait(cd) and _G.toggle do
    local args = {
        [1] = "Combat",
        [2] = Vector3.new(pos.X, pos.Y, pos.Z),
        [3] = 1
    }

    game:GetService("Players").LocalPlayer.Backpack.LocalScript.RemoteEvent:FireServer(unpack(args))
end