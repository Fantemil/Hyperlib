local Players = game:GetService("Players")
local player = Players.LocalPlayer
local mouse = player:GetMouse()
local randomKey = Random.new(131719996080);
head = player.Character:WaitForChild("Head");
hrp = player.Character:WaitForChild("HumanoidRootPart");
ignoreList = {};
while true do
    --local v28 = workspace.cinnamondl.HumanoidRootPart
    --local v29 = Vector3.new(453.4400329589844, 4.008459568023682, 71.38450622558594)
    --local v30 = Vector3.new(-0.03607673570513725, 0, -0.9993489980697632)
    --local v31 = Enum.Material.Plastic
    local shotSound = workspace.YOURNAMEHERE.FreeGun.Extras.GunShot
    local endBarrel = workspace.YOURNAMEHERE.FreeGun.EndBarrel

    local v28, v29, v30, v31 = workspace:FindPartOnRayWithIgnoreList(Ray.new(endBarrel.CFrame.p, (Vector3.new(mouse.Hit.X, mouse.Hit.Y, mouse.Hit.Z) - endBarrel.CFrame.p).unit * 2048), ignoreList, false, true);
    --local v32, v33, v34, v35 = workspace:FindPartOnRayWithIgnoreList(Ray.new(endBarrel.CFrame.p, hrp.CFrame.p - endBarrel.CFrame.p), ignoreList, false, true);
    --if v32 then
    --    v28 = v32;
    --    v29 = v33;
    --    v30 = v34;
    --    v31 = v35;
    --end;

    workspace.YOURNAMEHERE.FreeGun.FirearmRemote:FireServer(randomKey:NextNumber(), "firearm:fire", v28, v29, v30, v31, shotSound, endBarrel)
    
    wait()
end