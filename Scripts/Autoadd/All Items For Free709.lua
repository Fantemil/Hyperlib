

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(93.9510727, 167.577423, -152.158524, 0.992815435, 5.91190519e-09, -0.119655848, -1.84640463e-08, 1, -1.03793383e-07, 0.119655848, 1.05257001e-07, 0.992815435)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location

-- Top Hat (credit to vcvc on v3r):

for _,v in pairs(game.Workspace.CubePieces:GetChildren()) do

v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
-- firetouchinterest(v["TouchInterest"])
end
