local gun;

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       gun = v
   end
end


while wait() do
   for i,v in pairs(game.Workspace.Zombies:GetChildren()) do
       if v:FindFirstChild("Head") then
           
           local tab1 = {
               Vector3.new(0.059999998658895, 0.059999998658895, 6),
               "Cool yellow",
               0,
               Enum.Material.SmoothPlastic,
               1800
           }
           
           local tab2 = {
               v.Head,
               v.Head.Position,
               Vector3.new(-0.39749202132225, 0.68922543525696, 0.6057790517807),
               1.0203440189362
           }
           
           gun.Fire:FireServer(
               v.Head.Position,
               v.Head.Position,
               Vector3.new(0.96279543638229, -0.037109609693289, -0.26767128705978),
               tab1,
               tab2
           )
       end
   end
end