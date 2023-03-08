local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "DELETE TOOL"
tool.RequiresHandle = false
tool.CanBeDropped = false

tool.Equipped:Connect(function(mouse)
mouse.Button1Down:connect(function()
if mouse.Target and mouse.Target.Parent then
game:GetService("ReplicatedStorage").DeleteCar:FireServer(mouse.Target)
end
end)
end)