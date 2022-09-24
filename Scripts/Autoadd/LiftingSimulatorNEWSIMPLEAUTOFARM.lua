local name = game.Players.LocalPlayer.PlayerGui.Main_Gui.DataMenu_Frame.Muscle.Status.Text
local hobbit = tostring(name)

local function tpSell()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-635.280334, -53.8498306, 1858.97144, -0.378215998, -7.89655417e-08, 0.925717354, -6.32973212e-08, 1, 5.94409109e-08, -0.925717354, -3.61139243e-08, -0.378215998)
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-520.632263, -54.8478699, 1919.43408, 0.121402971, -4.69970622e-08, -0.992603302, 3.73789639e-08, 1, -4.27755431e-08, 0.992603302, -3.19094049e-08, 0.121402971)
end

while wait(.5) do
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
if game.Players.LocalPlayer.PlayerGui.Main_Gui.DataMenu_Frame.Muscle.Status.Text == hobbit then
tpSell()
end
end