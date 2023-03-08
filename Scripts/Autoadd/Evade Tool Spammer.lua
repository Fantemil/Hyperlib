function spam()
 while task.wait() do
  for i, v in next, workspace.Game.Players:GetChildren() do
   if v and v:FindFirstChild('Equip') then
    v:FindFirstChild('Equip'):InvokeServer(2)
    continue
   else
    continue -- feel free to remove, was just fixing the breaks, didnt help
   end
  end
 end
end
workspace.Game.ChildAdded:Connect(function(v)
 if v.Name == 'Map' then
        task.wait(32) -- waits for map to start
  spam()
 end
end)

task.spawn(function()
  while task.wait(90) do -- fixes breaking
      spam()
   end
end)
spam()