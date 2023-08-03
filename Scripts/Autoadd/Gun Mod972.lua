for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
if v.Name == 'Firerate' then v.Value = 0.1 else
if v.Name == 'ClipSize' then v.Value = 200 else
if v.Name == 'Range' then v.Value = 3000 else
if v.Name == 'spreadMax' then v.Value = 0 else
if v.Name == 'Pierce' then v.Value = 50 else
if v.Name == 'Laser' then v.Value = true --[[cosmetic]] else
if v.Name == 'ReBolt' then v.Value = false --[[shotgun thing]] else
if v.Name == 'MeleeSpeed' then v.Value = 5 else
if v.Name == 'Shots' then v.Value = 3 else
if v.Name == 'ShellReload' then v.Value = false
end
end
end
end
end
end
end
end
end
end
end
