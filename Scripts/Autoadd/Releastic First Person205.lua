local Camera = workspace.CurrentCamera
local Head = game.Players.LocalPlayer.Character.Head
game:GetService("RunService").RenderStepped:Connect(function()
   Camera.CFrame = Head.CFrame
end)