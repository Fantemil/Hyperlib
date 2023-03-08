getgenv().Tap = true
  spawn(function()
      while Tap do
          wait()


local rm = game:GetService("ReplicatedStorage").Framework.Communication.Events.Tap
rm:FireServer()
end
end)