local Plr = game.Players.LocalPlayer
local Char = Plr.Character
local LowerTorso = Char:WaitForChild("LowerTorso")
local Hrp = Char:WaitForChild("HumanoidRootPart")

local OldP = Hrp.CFrame
Hrp:PivotTo(Hrp.CFrame*CFrame.new(0,1000,0))
LowerTorso.Anchored = true
LowerTorso.Root:Destroy()
Hrp:PivotTo(OldP)
local P = Instance.new("BodyPosition", Hrp)
P.Position = Hrp.Position
P.MaxForce = Vector3.new(100000,100000,100000)
P.P = 100000
local K = Instance.new("SelectionBox", Hrp)
K.Adornee = Hrp
local Kk = Instance.new("BodyAngularVelocity", Hrp)
Kk.P = 50000
Kk.MaxTorque = Vector3.new(100000,100000,100000)
Kk.AngularVelocity = Vector3.new(10000,10000,10000)

local Forward
game:GetService("UserInputService").InputBegan:Connect(function(Key)
	if Key.KeyCode == Enum.KeyCode.Z then
		Forward = true
	end
end)
game:GetService("UserInputService").InputEnded:Connect(function(Key)
	if Key.KeyCode == Enum.KeyCode.Z then
		Forward = false
	end
end)

game:GetService("RunService").Stepped:Connect(function()
	if Forward == true then
		P.Position += game.Workspace.CurrentCamera.CFrame.LookVector
	end
end)