getgenv().egg = true
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
while getgenv().egg == true do
for i ,v in pairs(game:GetService("Workspace").ScriptingParts:GetDescendants()) do
   if v:IsA("MeshPart") then
       player.CFrame = v.CFrame
       if v:FindFirstChild("ProximityPrompt") then
       fireproximityprompt(v.ProximityPrompt)
   end
end
end
wait()
end