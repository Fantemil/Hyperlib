_G.FirePP = true
game:GetService("RunService").Stepped:connect(function()
if _G.FirePP then
      for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                  if v:FindFirstChild("ProximityPrompt") then
                      fireproximityprompt(v.ProximityPrompt)
          end
      end
end
end)