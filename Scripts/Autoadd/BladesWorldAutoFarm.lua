getgenv().toggle= true
while wait() do
   if not getgenv().toggle then break end
   for i,v in pairs(game:GetDescendants()) do
       if v.Name=="RemoteEvent" and v.Parent.Name=="up" then
           v:FireServer()
           
       end
       
   end
end