-- Gives you 101 Cubits / +1010% Xp Gain

local Cubits = game.Workspace["Client Cubits"]:GetChildren()

for _,v in ipairs(Cubits) do
 if v:FindFirstChildOfClass("ProximityPrompt") then
  local Prox = v:FindFirstChildOfClass("ProximityPrompt")
  fireproximityprompt(Prox)
 end
end