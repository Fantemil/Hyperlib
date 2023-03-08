getgenv().bones = true
getgenv().upgrade = true
getgenv().rebirth = true
getgenv().autoSell = true
getgenv().delay = 0.1

local player = game.Players.LocalPlayer
local sell = game:GetService("Workspace").SellPart
local v1,v2 = math.huge, 0

while task.wait(delay) do
   if bones then
       v2 = math.ceil(5 * 1.9 ^ player:WaitForChild("BoneCount").Value)
       game:GetService("Workspace").AddBones:FireServer(v1, v2)
       if autoSell then
           firetouchinterest(player.Character.HumanoidRootPart, sell, 0)
           task.wait()
           firetouchinterest(player.Character.HumanoidRootPart, sell, 1)
       end
   end
   if upgrade then
       game:GetService("Workspace").UpgradeBone:FireServer()
   end
   if rebirth then
       game:GetService("ReplicatedStorage").Rebirth:FireServer(tonumber(player.PlayerGui.RebirthShop.Frame.RebirthLevel.Text))
   end
end