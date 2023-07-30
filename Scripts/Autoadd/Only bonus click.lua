getgenv().Data = true
  spawn(function()
      while Data do
      wait()
local args = {
    [1] = "Bonus"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tap"):FireServer(unpack(args))
end
end)