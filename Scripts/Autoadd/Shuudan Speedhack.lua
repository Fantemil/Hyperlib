--shift speed walk
local Players = game:service("Players")
local Player = Players.LocalPlayer
local userInput = game:service("UserInputService")
local runService = game:service("RunService")
repeat wait() until Player.Character
local Character = Player.Character
local pHum = Character:WaitForChild("Humanoid")
local humRoot = Character:WaitForChild("HumanoidRootPart")
local Multiplier = 1.4 --adjust this for more or less speed
userInput.InputBegan:connect(function(Key)
if Key.KeyCode == Enum.KeyCode.LeftBracket then
Multiplier = Multiplier + 0.1
wait(0.2)
while userInput:IsKeyDown(Enum.KeyCode.LeftBracket) do
wait()
Multiplier = Multiplier + 0.1
end
end
if Key.KeyCode == Enum.KeyCode.RightBracket then
Multiplier = Multiplier - 0.1
wait(0.2)
while userInput:IsKeyDown(Enum.KeyCode.RightBracket) do
wait()
Multiplier = Multiplier - 0.1
end
end
end)
runService.Stepped:connect(function()
if userInput:IsKeyDown(Enum.KeyCode.LeftControl) then
humRoot.CFrame = humRoot.CFrame + pHum.MoveDirection * Multiplier
end
end)