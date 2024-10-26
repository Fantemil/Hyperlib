local lp = game.Players.LocalPlayer.Character 

local Weapon = "Akimbo" -- Your Weapon name
 lp[Weapon]:GetAttributeChangedSignal("Ammo"):Connect( function()
 lp[Weapon]:SetAttribute("Ammo", 999) end ) lp[Weapon]:SetAttribute("Firerate", 9999) lp[Weapon]:SetAttribute("BulletSpeed", 9999) lp[Weapon]:SetAttribute("Spread", 0)