local mod = require(game:GetService("ReplicatedStorage").Modules.Client["Player_skills_handler"])
old1 = hookfunction(mod.KeyDown, function(a, b)
   a.delay_between_moves = 0
   a.waiting_for_action = false
   return old1(a, b)
end)
old2 = hookfunction(mod.KeyUp, function(a, b)
   a.waiting_for_action = false
   return old2(a, b)
end)