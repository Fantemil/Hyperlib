local a = game:GetService("Players").LocalPlayer.Backpack.Weapon_SP1911.Handle.Attachment_Muzzle
while task.wait() do
   for i = 1,250 do
       task.spawn(function()
       game:GetService("ReplicatedStorage").Weapons_ReplicatedStorage.RemoteEvent_ShootFastCastProjectile:FireServer(1, Vector3.zero, Vector3.zero, 500, 1, a, 1, 0, {})
       end)
   end
end