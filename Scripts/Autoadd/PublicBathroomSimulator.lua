 local LP = game.Players.LocalPlayer
game.ReplicatedStorage.ToolEvents.TpRollEvent:FireServer()
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "TpRoll" then
       v.Parent = LP.Character
   end
end
while true do
   wait()
   for i,v in pairs (LP.Character:GetChildren()) do
       if v.Name == "TpRoll" then
           v:Activate()
       end
   end
end