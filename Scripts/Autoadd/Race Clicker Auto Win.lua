while task.wait() do
   for i,v in pairs(workspace.Environment:GetDescendants()) do
       if v:FindFirstChildWhichIsA'TouchTransmitter' then
           firetouchinterest(v, game:service'Players'.LocalPlayer.Character.HumanoidRootPart, 0)
           task.wait((v.Parent.Name == 'Stage1K' and 1) or .1)
       end
   end
end