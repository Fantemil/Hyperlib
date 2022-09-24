_G.ON = true
while _G.ON and wait(0.5) do
for i,v in pairs(game:GetService("Workspace").WorkspacePackage.NPCs.Vehicles:GetDescendants()) do
if v.ClassName == "MeshPart" then
game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(game:GetService("Players").LocalPlayer.Character.Pistol,{["pid"] = 1, ["hitDamage"] = 200, ["part"] = v, ["d"] = 11.539868354797, ["maxDist"] = 11.539136886597, ["h"] = v, ["numProjectiles"] = false, ["m"] = Enum.Material.SmoothPlastic, ["explodeOnImpact"] = false, ["n"] = Vector3.new(0,0,0), ["p"] = Vector3.new(0,0,0), ["blastRadius"] = 8, ["ammoCapacity"] = 10, ["t"] = 0.11927529118062, ["chargeRate"] = false, ["shotCooldown"] = 0.2, ["bulletSpeed"] = 1000, ["reloadTime"] = 2, ["dischargeRate"] = false, ["firingCharacter"] = game:GetService("Players").LocalPlayer.Character, ["sid"] = 107})
end
end
end