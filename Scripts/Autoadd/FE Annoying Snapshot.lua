while task.wait() do
 task.spawn(function()
  for i, v in next, game.Players:GetPlayers() do
   game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Snapshot"):WaitForChild("ReqReportSnapshot"):InvokeServer(v)
  end
 end)
end