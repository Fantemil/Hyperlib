game.Players.LocalPlayer.Character:WaitForChild("antiSpeed/JumpHack"):Destroy()

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
	character:WaitForChild("antiSpeed/JumpHack"):Destroy()
end)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Anticheat bypass",
	Text = "Done!",
	Icon = "rbxassetid://14529775287"
})