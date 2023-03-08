while true do
   wait()
for i, v in pairs(game.Workspace:GetDescendants()) do
   if v:IsA("ProximityPrompt") then
   if v.Parent:IsA("Part") then
       if v.Parent.Size == Vector3.new(1,1,1) and v.Name ~= "ConscriptionProx" then
       if (v.Parent.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 500 then
           fireproximityprompt(v)
       end
       end
       end
   end
end
wait(.7)
end