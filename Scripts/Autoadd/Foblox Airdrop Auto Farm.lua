while wait do
    wait (1)
  for i,v in pairs(workspace:GetDescendants())do
if v:IsA("UnionOperation") and v.Name == "Crate" then
workspace[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart.CFrame = v.CFrame+ Vector3.new(0,3,0)
for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then 
                fireproximityprompt(v,1,true)
            end 
end
end
end
end