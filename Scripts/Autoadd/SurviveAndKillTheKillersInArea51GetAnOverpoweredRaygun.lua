local plr = game.Players.LocalPlayer

function gunmods()
for i,v in pairs(getgc(true)) do
  if type(v) == 'table' then
      if rawget(v, 'stored_ammo') then
          v.ammo=99999
          v.stored_ammo=99999
          v.is_auto=true
          v.shoot_wait=0
          v.bullet_count=10
          v.inaccuracy=0
end;end;end;end
function packapunch()
 if game:GetService("ReplicatedStorage")["Remote Functions"]:FindFirstChild("PAP Weapon") then
 game:GetService("ReplicatedStorage")["Remote Functions"]["PAP Weapon"]:InvokeServer("RayGun")
game:GetService("ReplicatedStorage")["Remote Events"].PAPFinished:FireServer()
end
end

plr.Character.ChildAdded:Connect(function(child)
if child:IsA("Tool") then
packapunch()
gunmods()
end
end)

plrcframe = plr.Character.HumanoidRootPart.CFrame
wait()
plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Weapons.RayGun.Hitbox.CFrame
repeat wait()
until plr.Backpack:FindFirstChild("RayGun")
plr.Character.HumanoidRootPart.CFrame = plrcframe
packapunch()