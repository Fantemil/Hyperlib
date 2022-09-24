for _,v in pairs(game.ReplicatedStorage.Emotes.Packs:GetChildren()) do
   local anim = require(v)
   anim.Required = false;
end