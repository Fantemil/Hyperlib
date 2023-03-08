local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

while plr ~= nil do
    wait(2)
    print("X: "..plr.Position.x)
    print("Y: "..plr.Position.y)
    print("Z: "..plr.Position.z)
end