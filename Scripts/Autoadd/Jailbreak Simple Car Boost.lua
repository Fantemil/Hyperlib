dir = 0
gs = game.GetService
gs(game,"RunService").Heartbeat:connect(function()
   for i,v in next,workspace.Vehicles:children() do
       if v.Name ~= "Heli" then
           if v:FindFirstChild("Engine") then
               local bf,cf = v.Engine:FindFirstChild("NewForce"),v:GetPrimaryPartCFrame().lookVector
               if not bf then
                   bf = v.Engine:FindFirstChild("BodyForce") or v.Engine:FindFirstChild("VectorForce")
                   if bf then
                       bf = bf:Clone()
                       bf.Parent = v.Engine
                       bf.Name = "NewForce"
                   end
               end
               if bf then
                   local fa = 1
                   if v.Name:lower():find("bike") then fa = .3 elseif v.Name:lower():find("bugg") then fa = .5 end
                   if v.Seat.PlayerName.Value ~= game:GetService("Players").LocalPlayer.Name then fa = 0 end
                   bf.Force = Vector3.new(cf.X*300000*dir*fa,0,cf.Z*300000*dir*fa)
               end
           end
      end
   end
end)
val = {
{Enum.KeyCode.W,1};
{Enum.KeyCode.S,-1};
}
uis = gs(game,"UserInputService")
chk = function(k)
   for i,v in next,val do
       if v[1]==k.KeyCode then
           return v[2]
       end
   end
end
uis.InputBegan:connect(function(k)
dir = chk(k) or dir
end)
uis.InputEnded:connect(function(k)
   if chk(k) == dir then
       dir = 0
   end
end)