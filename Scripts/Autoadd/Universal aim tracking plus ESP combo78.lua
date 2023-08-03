local Area = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MyCharacter = LocalPlayer.Character
local MyRoot = MyCharacter:FindFirstChild("HumanoidRootPart")
local MyHumanoid = MyCharacter:FindFirstChild("Humanoid")
local Mouse = LocalPlayer:GetMouse()
local MyView = Area.CurrentCamera
local MyTeamColor = LocalPlayer.TeamColor
local HoldingM2 = false
local Active = false
local Lock = false
local Epitaph = .187 
local HeadOffset = Vector3.new(0, .1, 0)

_G.TeamCheck = false
_G.AimPart = "HumanoidRootPart"
_G.Sensitivity = 0
_G.CircleSides = 64
_G.CircleColor = Color3.fromRGB(255, 0, 130)
_G.CircleTransparency = 0
_G.CircleRadius = 200
_G.CircleFilled = false
_G.CircleVisible = true
_G.CircleThickness = 1

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(MyView.ViewportSize.X / 2, MyView.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness

local function CursorLock()
	UIS.MouseBehavior = Enum.MouseBehavior.LockCenter
end
local function UnLockCursor()
	HoldingM2 = false Active = false Lock = false 
	UIS.MouseBehavior = Enum.MouseBehavior.Default
end
function FindNearestPlayer()
	local dist = math.huge
	local Target = nil
	for _, v in pairs(Players:GetPlayers()) do
		if v ~= LocalPlayer and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 and v.Character:FindFirstChild("HumanoidRootPart") and v then
			local TheirCharacter = v.Character
			local CharacterRoot, Visible = MyView:WorldToViewportPoint(TheirCharacter[_G.AimPart].Position)
			if Visible then
				local RealMag = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(CharacterRoot.X, CharacterRoot.Y)).Magnitude
				if RealMag < dist and RealMag < FOVCircle.Radius then
					dist = RealMag
					Target = TheirCharacter
				end
			end
		end
	end
	return Target
end

UIS.InputBegan:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton2 then
		HoldingM2 = true
		Active = true
		Lock = true
		if Active then
        	local The_Enemy = FindNearestPlayer()
			while HoldingM2 do task.wait(.000001)
				if Lock and The_Enemy ~= nil then
					local Future = The_Enemy.HumanoidRootPart.CFrame + (The_Enemy.HumanoidRootPart.Velocity * Epitaph + HeadOffset)
					MyView.CFrame = CFrame.lookAt(MyView.CFrame.Position, Future.Position)
					CursorLock()
				end
			end
		end
	end
end)
UIS.InputEnded:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton2 then
		UnLockCursor()
	end
end)
game.StarterGui:SetCore("SendNotification", {Title = "Working.", Text = "Success, Script Loaded.", Duration = 4,})

--add this esp if you want function (remove all of the --)
--CreateSG(name,parent,face)
--function CreateSG(name,parent,face)
--	local SurfaceGui = Instance.new("SurfaceGui",parent)
--	SurfaceGui.Parent = parent
--	SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
--	SurfaceGui.Face = Enum.NormalId[face]
--	SurfaceGui.LightInfluence = 0
--	SurfaceGui.ResetOnSpawn = false
--	SurfaceGui.Name = name
--	SurfaceGui.AlwaysOnTop = true
--	local Frame = Instance.new("Frame",SurfaceGui)
--	Frame.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
--	Frame.Size = UDim2.new(1,0,1,0)
--end

--while wait(1) do
--	for i,v in pairs (game:GetService("Players"):GetPlayers()) do
--		if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("cham") == nil then
--			for i,v in pairs (v.Character:GetChildren()) do
--				if v:IsA("MeshPart") or v.Name == "Head" then
--					CreateSG("cham",v,"Back")
--					CreateSG("cham",v,"Front")
--					CreateSG("cham",v,"Left")
--					CreateSG("cham",v,"Right")
--					CreateSG("cham",v,"Right")
--					CreateSG("cham",v,"Top")
--					CreateSG("cham",v,"Bottom")
--				end
--			end
--		end
--	end
--end