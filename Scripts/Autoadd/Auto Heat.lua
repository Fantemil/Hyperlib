getgenv().Click = false
  spawn(function()
      while Click do
      wait()
      
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("HeatIncreaseFunc"):InvokeServer()

end
end)

