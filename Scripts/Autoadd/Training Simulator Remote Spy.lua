for i,v in pairs(game:GetDescendants()) do
   if v:IsA("RemoteEvent")  then
   local remote = v
   remote.OnClientEvent:Connect(function(...)
       wait(1) -- delay
       local args = {...}
       if #args == 0 then
           print("remote Name:" , remote)
       else
       print("args: ", table.unpack(args), " remote Name:" , remote)
       end
   end)
   end
end