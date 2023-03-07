local Char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local Humanoid = Char:WaitForChild("Humanoid")
local UIS = game:GetService('UserInputService')
local IsCrawling = false
local CrouchingAnimation = Humanoid:LoadAnimation(game.ReplicatedStorage.ClientAnimations:WaitForChild("Crouching"))

Humanoid.Running:Connect(function(speed)
 if speed > 0 then
  CrouchingAnimation:AdjustSpeed(1)
 else
  CrouchingAnimation:AdjustSpeed(0)
 end
end)

UIS.InputBegan:Connect(function(input)
 if input.KeyCode == Enum.KeyCode.LeftControl then
  if not IsCrawling then
   IsCrawling = true
   CrouchingAnimation:Play()
   CrouchingAnimation:AdjustSpeed(0)
   Humanoid.WalkSpeed = 8
  end
 end
end)

 if not IsCrawling then
   IsCrawling = true
   CrouchingAnimation:Play()
   CrouchingAnimation:AdjustSpeed(0)
   Humanoid.WalkSpeed = 16
  end
 

 while true do
    wait(0.1)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
                local spin = Instance.new('BodyAngularVelocity', game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))
                spin.AngularVelocity = Vector3.new(0, math.random(-60000, 55000), 0)
                spin.MaxTorque = Vector3.new(0, 35000, 0)
                wait()
          spin:Destroy()
    end