mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "ClickFall"
tool.Activated:connect(function()
   if mouse.Target:FindFirstChildWhichIsA("TouchTransmitter") then
       game:GetService("ReplicatedStorage").Events.TouchRE:FireServer(mouse.Target)
   end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)