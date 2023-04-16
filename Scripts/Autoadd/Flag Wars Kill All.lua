_G.a = true
while _G.a == true do
   for i,v in pairs(game:GetService('Players'):GetPlayers()) do
if v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v ~= game.Players.LocalPlayer then
         humanoid = v.Character.Humanoid
local args = {
   [1] = game:GetService("Players").LocalPlayer.Character.Pistol,  -- your gun here
   [2] = {
       ["p"] = Vector3.new(127.40184783935547, 15.57960033416748, -51.664894104003906),
       ["pid"] = 1,
       ["part"] = humanoid,
       ["d"] = 252.61036682128906,
       ["maxDist"] = 252.60980224609375,
       ["h"] = humanoid,
       ["m"] = Enum.Material.SmoothPlastic,
       ["sid"] = 1,
       ["t"] = 0.8584426607754916,
       ["n"] = Vector3.new(-0.11215610802173615, 0.37135982513427734, 0.9216901063919067)
   }
}

game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
task.wait()
end
end
end