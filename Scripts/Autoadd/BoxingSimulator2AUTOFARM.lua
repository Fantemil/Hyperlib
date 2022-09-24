getgenv().ball = true
while ball == true do
   wait(0.1)
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
       if v.name == "Dumbell" then
           v.Parent = game.Players.LocalPlayer.Character
       end
   end

Wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA'Tool' then
         v.Parent = game.Players.LocalPlayer.Backpack;
    end;
end;
Wait(0.1)
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
       if v.name == "Double Weight" then
           v.Parent = game.Players.LocalPlayer.Character
       Wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA'Tool' then
         v.Parent = game.Players.LocalPlayer.Backpack;
    end;
end;
       end
   end
end