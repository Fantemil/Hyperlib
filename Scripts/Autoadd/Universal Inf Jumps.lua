InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
 if InfiniteJumpEnabled then
  game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
 end
end)