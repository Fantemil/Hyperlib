local VirtualInputManager = game:GetService("VirtualInputManager")
local runS = game:GetService("RunService")
local pl = game:GetService("Players")
local lp = pl.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local ws = game:GetService("Workspace")
local camera = workspace.CurrentCamera
local UIS = game:GetService("UserInputService")
local mousePPos = UIS:GetMouseLocation()
runS.RenderStepped:Connect(function() mousePPos = UIS:GetMouseLocation() end)
local Center = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)

local FullSettings = {
    AimBot = {
        Checks = {
            TeamCheck = true,
            WallCheck = true,
            AliveCheck = true
        },
        Fov = {
            Enable = true,
            Visible = true,
            Thickness = 0.6,
            Color = Color3.fromRGB(255, 255, 255),
            LockColor = Color3.fromRGB(255, 0, 0),
			OffColor = Color3.fromRGB(150, 150, 150),
            Filled = false,
            Size = 60
        },
        Values = {
            Enable = true,
            Toggle = false,
            HitPart = "HitboxHead",
			HitPartList = {"Head", "LeftFoot", "LeftHand", "LeftLowerArm", "LeftLowerLeg", "LeftUpperArm", "LowerTorso", "RightFoot", "RightHand", "RightLowerArm", "RightLowerLeg", "RightUpperArm", "RightUpperLeg", "UpperTorso", "HitboxBody", "FakeMass", "HitboxBodySmall", "HumanoidRootPart"},
            TriggerKey = Enum.UserInputType.MouseButton2,
        }
    },
	Esp = {
		Checks = {
            TeamCheck = true,
            WallCheck = false,
            AliveCheck = true
        },
		Values = {
			Enabled = true,
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = 0.5,
			OutlineColor = Color3.fromRGB(200, 200, 200),
			OutlineTransparency = 0
        }
	}
}


do -- Aimbot
	local FOV = Drawing.new("Circle")
	FOV.Visible = FullSettings.AimBot.Fov.Visible
	FOV.Visible = FullSettings.AimBot.Fov.Enable
	FOV.Thickness = FullSettings.AimBot.Fov.Thickness
	FOV.Color = FullSettings.AimBot.Fov.Color
	FOV.Filled = FullSettings.AimBot.Fov.Filled
	FOV.Radius = FullSettings.AimBot.Fov.Size
	FOV.Position = mousePPos

	runS.RenderStepped:Connect(function() FOV.Position = mousePPos end)

	coroutine.wrap(function ()
		local lock = false

		local function GetPartToFov(Part)
			for _, v in ipairs(pl:GetPlayers()) do
				if v ~= lp and v.Character and v.Character:FindFirstChild(Part) then
					if FullSettings.AimBot.Checks.AliveCheck and v.Character:FindFirstChildOfClass("Humanoid") and v.Character.Humanoid.Health <= 0 then continue end

					local ray = workspace:FindPartOnRayWithIgnoreList(
						Ray.new(camera.CFrame.Position, 
						(v.Character[Part].Position - camera.CFrame.Position).Unit * 
						(v.Character[Part].Position - camera.CFrame.Position).Magnitude),
							{lp.Character, camera}
					)

					if FullSettings.AimBot.Checks.WallCheck and (not ray or not ray:IsDescendantOf(v.Character)) then continue end
					if FullSettings.AimBot.Checks.TeamCheck and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart:FindFirstChild("TeammateLabel") then continue end
					local vPos = camera:WorldToViewportPoint(v.Character[Part].Position)
					local distance = (Vector2.new(vPos.X, vPos.Y) - mousePPos).Magnitude
					
					if FullSettings.AimBot.Fov.Enable and (distance > FullSettings.AimBot.Fov.Size) then continue end
					return v
				end
			end
		end

		UIS.InputBegan:Connect(function(input, gameProcessedEvent)
			if gameProcessedEvent then return end
			if FullSettings.AimBot.Values.Toggle == false or FullSettings.AimBot.Values.TriggerKey == nil then
				lock = true
			else
				if input.UserInputType == FullSettings.AimBot.Values.TriggerKey then
					lock = not lock
				end
			end
		end)

		while task.wait() do
			if FullSettings.AimBot.Values.Enable then
				if not lp.PlayerGui.MainGui.MainFrame.Lobby.Currency.Visible then
					local Target = nil
					Target = GetPartToFov(FullSettings.AimBot.Values.HitPart)

					if Target ~= nil then
						FOV.Color = FullSettings.AimBot.Fov.LockColor
					else
						FOV.Color = FullSettings.AimBot.Fov.Color
					end

					if (FullSettings.AimBot.Values.Toggle == true and lock == false) or (FullSettings.AimBot.Values.Toggle == false and not UIS:IsMouseButtonPressed(FullSettings.AimBot.Values.TriggerKey)) then
						FOV.Color = FullSettings.AimBot.Fov.OffColor
					end


					if Target and Target.Character and Target.Character:FindFirstChild(FullSettings.AimBot.Values.HitPart) and lock and camera:WorldToViewportPoint(Target.Character[FullSettings.AimBot.Values.HitPart].Position).Z > 0 then
						if not FullSettings.AimBot.Values.Toggle and FullSettings.AimBot.Values.TriggerKey and not UIS:IsMouseButtonPressed(FullSettings.AimBot.Values.TriggerKey) then continue end
						camera.CFrame = CFrame.new(camera.CFrame.Position + (Target.Character[FullSettings.AimBot.Values.HitPart].Position - camera.CFrame.Position).Unit * 0.5, Target.Character[FullSettings.AimBot.Values.HitPart].Position)
						
						VirtualInputManager:SendMouseButtonEvent(Center.X, Center.Y, 0, true, game, 0)
						task.wait()
						VirtualInputManager:SendMouseButtonEvent(Center.X, Center.Y, 0, false, game, 0)
					end
				end
			end
		end
	end)()
end

do -- Esp
	coroutine.wrap(function ()
		while task.wait() do
			for _, v in pairs(pl:GetPlayers()) do
				if v ~= lp and v.Character then
					local Esp = v.Character:FindFirstChild("Esp")

					if FullSettings.Esp.Checks.AliveCheck and v.Character:FindFirstChildOfClass("Humanoid") and v.Character.Humanoid.Health <= 0 then  if Esp then Esp:Destroy() end continue end
					if FullSettings.Esp.Checks.TeamCheck and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart:FindFirstChild("TeammateLabel") then if Esp then Esp:Destroy() end continue end
					if not Esp then
						Esp = Instance.new("Highlight")
						Esp.RobloxLocked = true
						Esp.Name = "Esp"
						Esp.Adornee = v.Character
						Esp.Parent = v.Character
					end

					if Esp then
						if FullSettings.Esp.Checks.WallCheck then
							Esp.DepthMode = Enum.HighlightDepthMode.Occluded
						else
							Esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						end
						
						Esp.Enabled = FullSettings.Esp.Values.Enabled
						Esp.FillColor = FullSettings.Esp.Values.FillColor
						Esp.FillTransparency = FullSettings.Esp.Values.FillTransparency
						Esp.OutlineColor = FullSettings.Esp.Values.OutlineColor
						Esp.OutlineTransparency = FullSettings.Esp.Values.OutlineTransparency
					end
				end
			end
		end
	end)()
end


