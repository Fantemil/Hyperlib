local Players = game:GetService("Players")
local ESP = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-ESP-Library-9570", true))("there are cats in your walls let them out let them out let them out")

--SYNAPSE ONLY
--[[
"How do we add overrides like in kiriot's esp?"

function ESP:GetTeamColor()
   return Color3.new(0, 0, 1)
end
]]

for i, Player in next, Players:GetPlayers() do
   ESP.Object:New(ESP:GetCharacter(Player))
   ESP:CharacterAdded(Player):Connect(function(Character)
       ESP.Object:New(Character)
   end)
end

Players.PlayerAdded:Connect(function(Player)
   ESP.Object:New(ESP:GetCharacter(Player))
   ESP:CharacterAdded(Player):Connect(function(Character)
       ESP.Object:New(Character)
   end)
end)