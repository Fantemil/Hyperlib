 local Key = Enum.KeyCode.L
 local UIS = game:GetService("UserInputService") 
local State = false UIS.InputBegan:Connect(function(Input) 
if Input.KeyCode == Key then State = not State end end) UIS.JumpRequest:Connect(function() if State then game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end end)