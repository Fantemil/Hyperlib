--Left-Shift + Click
--Must Claim A Bakery
--Made By Shag420#6729
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")
mouse.Button1Down:Connect(function()
   if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftShift) then
local args = {
   [1] = mouse.Target
}

game:GetService("ReplicatedStorage").Remotes.TI_0:FireServer(unpack(args))
wait(1)
game:GetService("ReplicatedStorage").Remotes.Trash:FireServer() --Remove this if you dont want to delete the item
end
end)