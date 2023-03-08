for i = 1,100 do task.wait()
  task.spawn(function()
    while true do task.wait() do
      game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.PayIncome:InvokeServer(game:GetService("Players").LocalPlayer)
    end
    end
  end)
end