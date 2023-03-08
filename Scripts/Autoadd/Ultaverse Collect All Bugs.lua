local plr = game:GetService("Players").LocalPlayer

for _,v in pairs(game:GetService("Workspace").HairBags:GetChildren()) do
    pcall(function()fireproximityprompt(v.ProximityPrompt, 1)end)
end
for _,v in pairs(game:GetService("Workspace").FaceBags:GetChildren()) do
    pcall(function()fireproximityprompt(v.ProximityPrompt, 1)end)
end 