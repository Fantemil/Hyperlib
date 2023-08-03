for i = 0, 1 do
  task.spawn(function()
   while task.wait() do
     game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Chat"):WaitForChild("sendMessage"):FireServer('\255','All')
   end
  end)
end