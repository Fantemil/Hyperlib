_G.toggle = true

while _G.toggle and wait(0.7) do
   for i, v in pairs(game.Workspace:GetDescendants()) do
       if v.Name == "Head" and v.Parent.Parent.Name == "Stuff" then
           v:Destroy()
       end
   end
end