local HaxwareAimbot = {
	Enabled = true;
	TeamCheck = true;
	WallCheck = true;

	Smoothing = 0;

	AimPart = "Head";
	Keybind = "MouseButton1";

	Fov = 100;

	ShowFov = false;
	------------------------------------------------------------------------------------------------------------------------------------
	Thickness = 1;

	FovFillColor = Color3.fromRGB(251,1,4);
	FovColor = Color3.fromRGB(251,1,4);

	FovFillTransparency = 1;
	FovTransparenct = 0;

	IsAiming =true;
}

local SigmaAimbot = Instance.new("ScreenGui")SigmaAimbot.Name = "SigmaAimbot" SigmaAimbot.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") SigmaAimbot.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local HESigmaAimbot = Instance.new("Frame")HESigmaAimbot.Name = "HESigmaAimbot" HESigmaAimbot.Parent = SigmaAimbot HESigmaAimbot.BackgroundColor3 = Color3.fromRGB(39, 39, 39) HESigmaAimbot.BorderColor3 = Color3.fromRGB(87, 255, 145) HESigmaAimbot.Position = UDim2.new(0.284624249, 0, 0.366314173, 0) HESigmaAimbot.Size = UDim2.new(0, 250, 0, 291) HESigmaAimbot.Active = true HESigmaAimbot.Draggable =true
local Name = Instance.new("TextLabel")Name.Name = "Name" Name.Parent = HESigmaAimbot Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255) Name.BackgroundTransparency = 1.000 Name.BorderColor3 = Color3.fromRGB(0, 0, 0) Name.BorderSizePixel = 0
local Frame = Instance.new("Frame")Frame.Parent = HESigmaAimbot Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) Frame.BackgroundTransparency = 1.000 Frame.BorderColor3 = Color3.fromRGB(0, 0, 0) Frame.BorderSizePixel = 0 Frame.Position = UDim2.new(0.287999839, 0, 0.105447777, 0) Frame.Size = UDim2.new(0, 100, 0, 115) 
local Enable_Aim = Instance.new("TextButton")Enable_Aim.Name = "Enable_Aim" Enable_Aim.Parent = Frame Enable_Aim.BackgroundColor3 = Color3.fromRGB(52, 52, 52) Enable_Aim.BorderColor3 = Color3.fromRGB(255, 255, 255) Enable_Aim.Position = UDim2.new(-1.59000003, 0, 1.0086956, 0) Enable_Aim.Size = UDim2.new(0, 122, 0, 24) Enable_Aim.Font = Enum.Font.Roboto Enable_Aim.Text = "Enable" Enable_Aim.TextColor3 = Color3.fromRGB(255, 255, 255) Enable_Aim.TextSize = 15.000
local UIListLayout = Instance.new("UIListLayout")UIListLayout.Parent = Frame UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder UIListLayout.Padding = UDim.new(0, 5)
local WallCheck = Instance.new("TextButton")WallCheck.Name = "WallCheck" WallCheck.Parent = Frame WallCheck.BackgroundColor3 = Color3.fromRGB(52, 52, 52) WallCheck.BorderColor3 = Color3.fromRGB(255, 255, 255) WallCheck.Position = UDim2.new(0.234439835, 0, 0.139479905, 0) WallCheck.Size = UDim2.new(0, 122, 0, 24) WallCheck.Font = Enum.Font.Roboto WallCheck.Text = "Wall Check" WallCheck.TextColor3 = Color3.fromRGB(255, 255, 255) WallCheck.TextSize = 15.000
local Teamcheck = Instance.new("TextButton")Teamcheck.Name = "Teamcheck" Teamcheck.Parent = Frame Teamcheck.BackgroundColor3 = Color3.fromRGB(52, 52, 52) Teamcheck.BorderColor3 = Color3.fromRGB(255, 255, 255) Teamcheck.Position = UDim2.new(0.234439835, 0, 0.139479905, 0) Teamcheck.Size = UDim2.new(0, 122, 0, 24) Teamcheck.Font = Enum.Font.Roboto Teamcheck.Text = "Team check" Teamcheck.TextColor3 = Color3.fromRGB(255, 255, 255) Teamcheck.TextSize = 15.000
local ShowFov = Instance.new("TextButton")ShowFov.Name = "ShowFov" ShowFov.Parent = Frame ShowFov.BackgroundColor3 = Color3.fromRGB(52, 52, 52) ShowFov.BorderColor3 = Color3.fromRGB(255, 255, 255) ShowFov.Position = UDim2.new(0.234439835, 0, 0.139479905, 0) ShowFov.Size = UDim2.new(0, 122, 0, 24) ShowFov.Font = Enum.Font.Roboto ShowFov.Text = "Show Fov" ShowFov.TextColor3 = Color3.fromRGB(255, 255, 255) ShowFov.TextSize = 15.000
local Hitpart = Instance.new("TextButton")Hitpart.Name = "Hitpart" Hitpart.Parent = Frame Hitpart.BackgroundColor3 = Color3.fromRGB(52, 52, 52) Hitpart.BorderColor3 = Color3.fromRGB(255, 255, 255) Hitpart.Position = UDim2.new(-1.59000003, 0, 1.0086956, 0) Hitpart.Size = UDim2.new(0, 122, 0, 24) Hitpart.Font = Enum.Font.Roboto Hitpart.Text = "HEAD, torso" Hitpart.TextColor3 = Color3.fromRGB(255, 255, 255) Hitpart.TextSize = 15.000
local TextLabel = Instance.new("TextLabel")TextLabel.Parent = Frame TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) TextLabel.BackgroundTransparency = 1.000 TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0) TextLabel.BorderSizePixel = 0 TextLabel.Position = UDim2.new(0.0747231692, 0, -0.0288301352, 0) TextLabel.Size = UDim2.new(0, 100, 0, 17) TextLabel.Font = Enum.Font.Roboto TextLabel.Text = "Smoothing " TextLabel.TextColor3 = Color3.fromRGB(87, 255, 145) TextLabel.TextSize = 15.000
local Smoothing_Num = Instance.new("TextBox")Smoothing_Num.Name = "Smoothing_Num" Smoothing_Num.Parent = Frame Smoothing_Num.BackgroundColor3 = Color3.fromRGB(52, 52, 52) Smoothing_Num.BorderColor3 = Color3.fromRGB(255, 255, 255) Smoothing_Num.Position = UDim2.new(-0.109999999, 0, 0.782608688, 0) Smoothing_Num.Size = UDim2.new(0, 122, 0, 24) Smoothing_Num.ClearTextOnFocus = false Smoothing_Num.Font = Enum.Font.Roboto Smoothing_Num.PlaceholderText = "3 - 0" Smoothing_Num.Text = "0" Smoothing_Num.TextColor3 = Color3.fromRGB(255, 255, 255) Smoothing_Num.TextSize = 14.000
local TextLabel_2 = Instance.new("TextLabel")TextLabel_2.Parent = Frame TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255) TextLabel_2.BackgroundTransparency = 1.000 TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0) TextLabel_2.BorderSizePixel = 0 TextLabel_2.Position = UDim2.new(0.0747231692, 0, -0.0288301352, 0) TextLabel_2.Size = UDim2.new(0, 100, 0, 17) TextLabel_2.Font = Enum.Font.Roboto TextLabel_2.Text = "Fov" TextLabel_2.TextColor3 = Color3.fromRGB(87, 255, 145) TextLabel_2.TextSize = 15.000
local FovNumb = Instance.new("TextBox")FovNumb.Name = "FovNumb" FovNumb.Parent = Frame FovNumb.BackgroundColor3 = Color3.fromRGB(52, 52, 52) FovNumb.BorderColor3 = Color3.fromRGB(255, 255, 255) FovNumb.Position = UDim2.new(-0.109999999, 0, 0.782608688, 0) FovNumb.Size = UDim2.new(0, 122, 0, 24) FovNumb.ClearTextOnFocus = false FovNumb.Font = Enum.Font.Roboto FovNumb.PlaceholderText = "350" FovNumb.Text = "200" FovNumb.TextColor3 = Color3.fromRGB(255, 255, 255) FovNumb.TextSize = 14.000
Enable_Aim.MouseButton1Click:Connect(function() if HaxwareAimbot.Enabled == true then HaxwareAimbot.Enabled = false Enable_Aim.BackgroundColor3 = Color3.fromRGB(52,52,52) else HaxwareAimbot.Enabled= true Enable_Aim.BackgroundColor3 = Color3.fromRGB(2, 54, 8) end end) WallCheck.MouseButton1Click:Connect(function() if HaxwareAimbot.WallCheck == true then HaxwareAimbot.WallCheck = false WallCheck.BackgroundColor3 = Color3.fromRGB(52,52,52) else HaxwareAimbot.WallCheck = true WallCheck.BackgroundColor3 = Color3.fromRGB(2, 54, 8) end end) Teamcheck.MouseButton1Click:Connect(function() if HaxwareAimbot.TeamCheck == true then HaxwareAimbot.TeamCheck = false Teamcheck.BackgroundColor3 = Color3.fromRGB(52,52,52) else HaxwareAimbot.TeamCheck = true Teamcheck.BackgroundColor3 = Color3.fromRGB(2, 54, 8) end end) ShowFov.MouseButton1Click:Connect(function() if HaxwareAimbot.ShowFov ==true then HaxwareAimbot.ShowFov = false ShowFov.BackgroundColor3 = Color3.fromRGB(52,52,52) else HaxwareAimbot.ShowFov = true ShowFov.BackgroundColor3 = Color3.fromRGB(2, 54, 8) end end) Hitpart.MouseButton1Click:Connect(function() if HaxwareAimbot.AimPart == "Head" then Hitpart.Text = "head, Torso" HaxwareAimbot.AimPart = "HumanoidRootPart" else Hitpart.Text = "HEAD, torso" HaxwareAimbot.AimPart = "Head" end end)
local Fov = Instance.new("ScreenGui")Fov.Name = "Fov" Fov.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") Fov.ZIndexBehavior = Enum.ZIndexBehavior.Sibling -- i miss you synapse fov
local FOVFFrame = Instance.new("Frame")FOVFFrame.Parent = Fov FOVFFrame.Name = "FOVFFrame" FOVFFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) FOVFFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) FOVFFrame.BorderSizePixel = 0 FOVFFrame.BackgroundTransparency = 1 FOVFFrame.AnchorPoint = Vector2.new(0.5, 0.5) FOVFFrame.Position = UDim2.new(0.5, 0,0.5, 0) FOVFFrame.Size = UDim2.new(0, HaxwareAimbot.Fov, 0, HaxwareAimbot.Fov) FOVFFrame.BackgroundTransparency = 1 
local UICorner = Instance.new("UICorner")UICorner.CornerRadius = UDim.new(1, 0) UICorner.Parent = FOVFFrame 
local UIStroke = Instance.new("UIStroke")UIStroke.Color = Color3.fromRGB(100,0,100) UIStroke.Parent = FOVFFrame UIStroke.Thickness = 1 UIStroke.ApplyStrokeMode = "Border"
HESigmaAimbot.Visible = false

local PLAYER = game.Players.LocalPlayer
local CurrentCam  = game.Workspace.CurrentCamera
local UIS = game:GetService("UserInputService")
local l_character = PLAYER.Character or PLAYER.CharacterAdded:wait()
local WorldToViewportPoint = CurrentCam.WorldToViewportPoint
local mouseLocation = UIS.GetMouseLocation


function isVisible(p, ...)
	if not (HaxwareAimbot.WallCheck == true) then
		return true
	end 
	return #CurrentCam:GetPartsObscuringTarget({ p }, { CurrentCam, PLAYER.Character, ... }) == 0 
end

function CameraGetClosestToMouse(Fov)
	local AimFov = Fov
	local targetPos = nil

	for i,v in pairs (game:GetService("Players"):GetPlayers()) do
		if v ~= PLAYER then
			if HaxwareAimbot.TeamCheck == true then
				if v.Character and v.Character:FindFirstChild(HaxwareAimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 and not (v.Team == PLAYER.Team) then
					local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[HaxwareAimbot.AimPart].Position)
					local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
					local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
					if on_screen and new_magnitude < AimFov and isVisible(v.Character[HaxwareAimbot.AimPart].Position, v.Character.Head.Parent) then
						AimFov = new_magnitude
						targetPos = v
					end
				end
			else
				if v.Character and v.Character:FindFirstChild(HaxwareAimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 then
					local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[HaxwareAimbot.AimPart].Position)
					local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
					local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
					if on_screen and new_magnitude < AimFov and isVisible(v.Character[HaxwareAimbot.AimPart].Position, v.Character.Head.Parent) then
						AimFov = new_magnitude
						targetPos = v
					end
				end
			end
		end
	end
	return targetPos
end


local function aimAt(pos, smooth)
	local AimPart = pos.Character:FindFirstChild(HaxwareAimbot.AimPart)
	if AimPart then
		local LookAt = nil
		local Distance = math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - pos.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
		if Distance > 100  then
			local distChangeBig = Distance / 10
			LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeBig)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
		else
			local distChangeSmall = Distance / 10
			LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeSmall)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
		end
		CurrentCam.CFrame = CFrame.lookAt(CurrentCam.CFrame.Position, LookAt)
	end
end

game:GetService('RunService').RenderStepped:connect(function()
	if HaxwareAimbot.Enabled == true then 
		if UIS:IsMouseButtonPressed(Enum.UserInputType[HaxwareAimbot.Keybind]) then
			local _pos = CameraGetClosestToMouse(HaxwareAimbot.Fov)
			if _pos then
				aimAt(_pos, HaxwareAimbot.Smoothing)
			end
		end
	end 

	if not (FovNumb.Text == "") then
		HaxwareAimbot.Fov = tonumber(FovNumb.Text)
	end
	if not (Smoothing_Num.Text == "") then
		HaxwareAimbot.Smoothing = tonumber(Smoothing_Num.Text)
	end

	local acc = HaxwareAimbot.Smoothing / 2	
	local posd = UIS:GetMouseLocation() 
	FOVFFrame.Position = UDim2.new(0, posd.X, 0, posd.Y - 36)
	FOVFFrame.Size = UDim2.new(0, HaxwareAimbot.Fov + acc, 0, HaxwareAimbot.Fov + acc)
	FOVFFrame.Visible = HaxwareAimbot.ShowFov
	FOVFFrame.BackgroundColor3 = HaxwareAimbot.FovFillColor
	FOVFFrame.Transparency = HaxwareAimbot.FovFillTransparency

	UIStroke.Color = HaxwareAimbot.FovFillColor
	UIStroke.Transparency = HaxwareAimbot.FovTransparenct
	UIStroke.Thickness = HaxwareAimbot.Thickness
end)