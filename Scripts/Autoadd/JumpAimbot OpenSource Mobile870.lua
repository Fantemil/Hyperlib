local Players = game:GetService("Players")
local uis = game:GetService('UserInputService')

local function makeCharacterLookAtCamera()
	local player = Players.LocalPlayer
	local character = player.Character
	if character then
		local humanoid = character:FindFirstChild("Humanoid")
		if humanoid then
			local Camera = workspace.CurrentCamera
			local X, Y, Z = Camera.CFrame:ToOrientation() 
			character.HumanoidRootPart.CFrame = CFrame.new(character.HumanoidRootPart.Position) * CFrame.Angles(X, Y, Z)
		end
	end
end


uis.JumpRequest:Connect(function()
	print("A")
	makeCharacterLookAtCamera()
end)