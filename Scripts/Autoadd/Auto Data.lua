getgenv().Data = true
  spawn(function()
      while Data do
      wait()
     local args = {
    [1] = 3,
    [2] = 1
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Data"):FireServer(unpack(args))
end
end)