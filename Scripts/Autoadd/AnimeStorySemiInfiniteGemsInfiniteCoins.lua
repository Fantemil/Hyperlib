 while wait() do
       for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                   if v:FindFirstChild("ProximityPrompt") then
                       fireproximityprompt(v.ProximityPrompt)
           end
       end
end