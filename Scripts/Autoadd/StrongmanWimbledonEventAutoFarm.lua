local virtualUser = game:GetService('VirtualUser')
virtualUser:CaptureController()

while true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(56.5, 18, -170)
wait()
virtualUser:SetKeyDown('e')
virtualUser:SetKeyUp('e')
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(56.5, 22, -74)
wait()
end