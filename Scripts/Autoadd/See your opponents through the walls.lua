local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local VPFrame = Instance.new("ViewportFrame", ScreenGui)

VPFrame.Position = UDim2.new(0, 0, 0, -30)
VPFrame.Size = UDim2.new(1, 0, 1, 15)
VPFrame.LightColor = Color3.fromRGB(255, 255, 255)
VPFrame.Ambient = game.Lighting.OutdoorAmbient
VPFrame.BackgroundTransparency = 1
VPFrame.CurrentCamera = workspace.CurrentCamera

spawn(function()
game:GetService("RunService").RenderStepped:connect(function()
local player = game.Players:GetPlayers()
for i=1,#player do
if player[i].Character ~= nil and player[i].Name ~= game.Players.LocalPlayer.Name then
if VPFrame:findFirstChild(player[i].Name) then
VPFrame:findFirstChild(player[i].Name):remove()
end
local plrmodel = Instance.new("Model", VPFrame)
plrmodel.Name = player[i].Name
local parts = player[i].Character:getChildren()
for i=1,#parts do
if parts[i].ClassName == "LocalScript" or parts[i].ClassName == "Script"  or parts[i].ClassName == "Sound" then
else
parts[i]:Clone().Parent = plrmodel
end
end
end
end
end)
end)

spawn(function()
game.Players.PlayerRemoving:Connect(function(player)
VPFrame:ClearAllChildren()
end)
end)