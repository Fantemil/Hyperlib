function GiveWeapon(Name)
game:GetService("Lighting").EquipSkin:FireServer(game:GetService("Lighting").Weapons[Name])
end

GiveWeapon("Stick") --Put here the weapon name (You can get the name of the weapon from game:GetService("Lightning").Weapons)