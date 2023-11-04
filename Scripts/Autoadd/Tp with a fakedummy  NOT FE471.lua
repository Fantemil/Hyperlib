local Imput = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()

function To(position)
   local Chr = Plr.Character
   if Chr ~= nil then
       Chr:MoveTo(position)
   end
end

Imput.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and Imput:IsKeyDown(Enum.KeyCode.LeftControl) then
       local player = game.Players.LocalPlayer
		local character = player.Character
		character.Archivable = true
		local dummy = Instance.new("Part")
		dummy.Name = "Dummy"
		dummy.Size = Vector3.new(0, 0, 0)
		dummy.Anchored = true
		dummy.CanCollide = false
		dummy.CFrame = character.HumanoidRootPart.CFrame
		dummy.Parent = workspace
		local clonedCharacter = character:Clone()
		clonedCharacter.Parent = dummy
	wait(0.01)
	local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://147722165"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(0.01)
       To(Mouse.Hit.p)
       wait(5)
       for k, v in pairs(workspace:GetChildren()) do
			if v.Name == "Dummy" then
				v:Destroy()
			end
		end
   end
end)