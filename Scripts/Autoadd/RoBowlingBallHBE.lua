local UIS = game:GetService('UserInputService')
local plr = game.Players.LocalPlayer
local Char = plr.Character or plr.CharacterAdded:Wait()
local Key = 'N'
UIS.InputBegan:Connect(function(Input, IsTyping)
if IsTyping then return end
local KeyPressed = Input.KeyCode
if KeyPressed == Enum.KeyCode[Key] then
local plr = game:GetService("Players").LocalPlayer
workspace[plr.Name].BowlingBall.HitBox.Size = Vector3.new(6, 6, 6)
end
end)