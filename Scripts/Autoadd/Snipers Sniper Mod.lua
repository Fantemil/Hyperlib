local function Mod()
   local player = game.Players.LocalPlayer
   local bp = player.Backpack
   local Sniper = bp:WaitForChild("Sniper")
   local SniperConfig = Sniper:WaitForChild("Configuration")
   print("Player Died")
   wait()
   Sniper.CurrentAmmo.Value = 999999999999 --didnt work but it doesn't stop script, so
   SniperConfig.ShotCooldown.Value = 0
   SniperConfig.AmmoCapacity.Value = 999999999999 --same as above
   SniperConfig.RecoilMin.Value = 0
   SniperConfig.RecoilMax.Value = 0
   SniperConfig.RecoilDecay.Value = 0
   SniperConfig.HitDamage.Value = math.huge
   SniperConfig.TotalRecoilMax.Value = 0
end


Mod() --so u dont need to respawn for u to be able to use this lol

game.Players.LocalPlayer.CharacterAdded:Connect(Mod)