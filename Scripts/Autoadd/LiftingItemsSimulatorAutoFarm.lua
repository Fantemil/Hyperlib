getgenv().toggle=true
while wait() do
   if not getgenv().toggle then break end
   for i,v in pairs(game:GetDescendants()) do
       if v.Name=="RemoteFunction" then
           v:InvokeServer()
       end
   end
end