for i,v in next, getupvalue(getupvalue(require(game:GetService("ReplicatedStorage"):WaitForChild("_replicationFolder"):WaitForChild("Network")).FireServer,1),1) do
   local remote = v.Remote
   local Name = v.Name
   if remote and Name then
       remote.Name = Name
   else
       warn("Dehash Failure:",i,v,typeof(i),typeof(v))
   end
end