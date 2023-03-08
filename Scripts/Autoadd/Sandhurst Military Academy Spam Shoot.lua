local Players = game:GetService("Players")
local player = Players.LocalPlayer
local mouse = player:GetMouse()
local randomKey = Random.new(131719996080);
ignoreList = {};

while true do
    local shotSound = player.Character.FreeGun.Extras.GunShot
    local endBarrel = player.Character.FreeGun.EndBarrel

    local v28, v29, v30, v31 = workspace:FindPartOnRayWithIgnoreList(Ray.new(endBarrel.CFrame.p, (Vector3.new(mouse.Hit.X, mouse.Hit.Y, mouse.Hit.Z) - endBarrel.CFrame.p).unit * 2048), ignoreList, false, true);

    player.Character.FreeGun.FirearmRemote:FireServer(randomKey:NextNumber(), "firearm:fire", v28, v29, v30, v31, shotSound, endBarrel)

    wait()
end