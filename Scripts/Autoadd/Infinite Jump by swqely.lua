game:GetService("UserInputService").JumpRequest:connect(function() game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end)
