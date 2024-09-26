local arsenal = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local arsenal_2 = Instance.new("TextLabel")
local NoClip = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local AimBot = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ESP = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

arsenal.Name = "arsenal"
arsenal.Parent = game.CoreGui
arsenal.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = arsenal
main.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.591141462, 0, 0, 0)
main.Size = UDim2.new(0, 265, 0, 244)
main.Active = true
main.Draggable = true

arsenal_2.Name = "arsenal"
arsenal_2.Parent = main
arsenal_2.BackgroundColor3 = Color3.fromRGB(61, 157, 20)
arsenal_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
arsenal_2.BorderSizePixel = 0
arsenal_2.Size = UDim2.new(0, 265, 0, 50)
arsenal_2.Font = Enum.Font.Unknown
arsenal_2.Text = "Arsenal Script By Bone"
arsenal_2.TextColor3 = Color3.fromRGB(0, 0, 0)
arsenal_2.TextScaled = true
arsenal_2.TextSize = 14.000
arsenal_2.TextWrapped = true

NoClip.Name = "NoClip"
NoClip.Parent = main
NoClip.BackgroundColor3 = Color3.fromRGB(58, 148, 19)
NoClip.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoClip.BorderSizePixel = 0
NoClip.Position = UDim2.new(0.120754719, 0, 0.247408062, 0)
NoClip.Size = UDim2.new(0, 200, 0, 38)
NoClip.Font = Enum.Font.FredokaOne
NoClip.Text = "NoClip"
NoClip.TextColor3 = Color3.fromRGB(0, 0, 0)
NoClip.TextScaled = true
NoClip.TextSize = 14.000
NoClip.TextWrapped = true
NoClip.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Noclip-Open-source-10442", true))() 
end)

UICorner.CornerRadius = UDim.new(0.200000003, 8)
UICorner.Parent = NoClip

AimBot.Name = "AimBot"
AimBot.Parent = main
AimBot.BackgroundColor3 = Color3.fromRGB(58, 148, 19)
AimBot.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimBot.BorderSizePixel = 0
AimBot.Position = UDim2.new(0.120754719, 0, 0.521998227, 0)
AimBot.Size = UDim2.new(0, 200, 0, 38)
AimBot.Font = Enum.Font.FredokaOne
AimBot.Text = "Aimbot"
AimBot.TextColor3 = Color3.fromRGB(0, 0, 0)
AimBot.TextScaled = true
AimBot.TextSize = 14.000
AimBot.TextWrapped = true
AimBot.MouseButton1Down:Connect(function()
	local teamCheck = false
	local fov = 150
	local smoothing = 1

	local RunService = game:GetService("RunService")

	local FOVring = Drawing.new("Circle")
	FOVring.Visible = true
	FOVring.Thickness = 1.5
	FOVring.Radius = fov
	FOVring.Transparency = 1
	FOVring.Color = Color3.fromRGB(255, 128, 128)
	FOVring.Position = workspace.CurrentCamera.ViewportSize/2

	local function getClosest(cframe)
		local ray = Ray.new(cframe.Position, cframe.LookVector).Unit

		local target = nil
		local mag = math.huge

		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not teamCheck)) then
				local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude

				if magBuf < mag then
					mag = magBuf
					target = v
				end
			end
		end

		return target
	end

	loop = RunService.RenderStepped:Connect(function()
		local UserInputService = game:GetService("UserInputService")
		local pressed = --[[UserInputService:IsKeyDown(Enum.KeyCode.E)]] UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) --Enum.UserInputType.MouseButton2
		local localPlay = game.Players.localPlayer.Character
		local cam = workspace.CurrentCamera
		local zz = workspace.CurrentCamera.ViewportSize/2

		if pressed then
			local Line = Drawing.new("Line")
			local curTar = getClosest(cam.CFrame)
			local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
			ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
			if (ssHeadPoint - zz).Magnitude < fov then
				workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), smoothing)
			end
		end

		if UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
			loop:Disconnect()
			FOVring:Remove()
		end
	end)
end)

UICorner_2.CornerRadius = UDim.new(0.200000003, 8)
UICorner_2.Parent = AimBot

ESP.Name = "ESP"
ESP.Parent = main
ESP.BackgroundColor3 = Color3.fromRGB(58, 148, 19)
ESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESP.BorderSizePixel = 0
ESP.Position = UDim2.new(0.098113209, 0, 0.776096582, 0)
ESP.Size = UDim2.new(0, 200, 0, 38)
ESP.Font = Enum.Font.FredokaOne
ESP.Text = "ESP"
ESP.TextColor3 = Color3.fromRGB(0, 0, 0)
ESP.TextScaled = true
ESP.TextSize = 14.000
ESP.TextWrapped = true
ESP.MouseButton1Down:Connect(function()
	local ESP = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local ESPByBone = Instance.new("TextButton")
	local start = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")

	--Properties:

	ESP.Name = "ESP"
	ESP.Parent = game.CoreGui

	main.Name = "main"
	main.Parent = ESP
	main.BackgroundColor3 = Color3.fromRGB(159, 159, 159)
	main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	main.BorderSizePixel = 0
	main.Position = UDim2.new(0.774011314, 0, 0.488188982, 0)
	main.Size = UDim2.new(0, 200, 0, 123)
	main.Active = true
	main.Draggable = true

	ESPByBone.Name = "ESP By Bone"
	ESPByBone.Parent = main
	ESPByBone.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
	ESPByBone.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ESPByBone.BorderSizePixel = 0
	ESPByBone.Position = UDim2.new(-0.000988464337, 0, -0.333813429, 0)
	ESPByBone.Size = UDim2.new(0, 200, 0, 50)
	ESPByBone.Font = Enum.Font.Unknown
	ESPByBone.Text = "ESP By Bone"
	ESPByBone.TextColor3 = Color3.fromRGB(0, 0, 0)
	ESPByBone.TextScaled = true
	ESPByBone.TextSize = 30.000
	ESPByBone.TextWrapped = true

	start.Name = "start"
	start.Parent = main
	start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	start.BorderColor3 = Color3.fromRGB(0, 0, 0)
	start.BorderSizePixel = 0
	start.Position = UDim2.new(0.184954524, 0, 0.290762544, 0)
	start.Size = UDim2.new(0, 126, 0, 50)
	start.Font = Enum.Font.Unknown
	start.Text = "START"
	start.TextColor3 = Color3.fromRGB(0, 0, 0)
	start.TextScaled = true
	start.TextSize = 14.000
	start.TextWrapped = true
	start.MouseButton1Down:Connect(function()
		local color = BrickColor.new(50,0,250)
		local transparency = .8

		local Players = game:GetService("Players")
		local function _ESP(c)
			repeat wait() until c.PrimaryPart ~= nil
			for i,p in pairs(c:GetChildren()) do
				if p.ClassName == "Part" or p.ClassName == "MeshPart" then
					if p:FindFirstChild("shit") then p.shit:Destroy() end
					local a = Instance.new("BoxHandleAdornment",p)
					a.Name = "shit"
					a.Size = p.Size
					a.Color = color
					a.Transparency = transparency
					a.AlwaysOnTop = true    
					a.Visible = true    
					a.Adornee = p
					a.ZIndex = true    

				end
			end
		end
		local function ESP()
			for i,v in pairs(Players:GetChildren()) do
				if v ~= game.Players.LocalPlayer then
					if v.Character then
						_ESP(v.Character)
					end
					v.CharacterAdded:Connect(function(chr)
						_ESP(chr)
					end)
				end
			end
			Players.PlayerAdded:Connect(function(player)
				player.CharacterAdded:Connect(function(chr)
					_ESP(chr)
				end)  
			end)
		end
		ESP()
	end)

	UICorner.CornerRadius = UDim.new(0.200000003, 8)
	UICorner.Parent = start

end)

UICorner_3.CornerRadius = UDim.new(0.200000003, 8)
UICorner_3.Parent = ESP