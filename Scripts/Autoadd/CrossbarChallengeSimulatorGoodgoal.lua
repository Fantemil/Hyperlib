--// by daddy ewo

local UIS = game:GetService('UserInputService')
local plr = game.Players.LocalPlayer
local Char = plr.Character or plr.CharacterAdded:Wait()
local Key = 'N'
UIS.InputBegan:Connect(function(Input, IsTyping)
if IsTyping then return end
local KeyPressed = Input.KeyCode
if KeyPressed == Enum.KeyCode[Key] then
   
local ohString1 = "yeet"
local ohNumber2 = 1.00

game.Players.LocalPlayer.Character.Act:FireServer(ohString1, ohNumber2)
end
end)