local lp = game.Players.LocalPlayer.Character

local function god()
   lp.CharacterDied:Destroy()
       lp.Death:Destroy()
       lp.Ragdolled:Destroy()
       lp.BodyEffects:Destroy()
end


god()