local FLYING = false
function sFLY(flyspeed, QEfly, vfly)
	repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until game.Players.LocalPlayer:GetMouse()
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

    local Character = game.Players.LocalPlayer.Character
    local hrp = Character:FindFirstChild("HumanoidRootPart")
    local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local mouse = game.Players.LocalPlayer:GetMouse()
    local moverParent = game.Workspace:FindFirstChildOfClass("Terrain")
    local moverAttachment = hrp.RootAttachment

	local T = hrp
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('AlignOrientation')
        BG.Mode = Enum.OrientationAlignmentMode.OneAttachment
        BG.RigidityEnabled = true
        BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.CFrame = T.CFrame
        BG.Attachment0 = moverAttachment
		local BV = Instance.new('LinearVelocity')
		BV.VectorVelocity = Vector3.new(0, 0, 0)
		BV.MaxForce = 9e9
        BV.Attachment0 = moverAttachment

        BG.Parent = moverParent
        BV.Parent = moverParent

		task.spawn(function()
			repeat wait()
				if not vfly and hum then
					hum.PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.VectorVelocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.VectorVelocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.VectorVelocity = Vector3.new(0, 0, 0)
				end
				BG.CFrame = game.Workspace.CurrentCamera.CoordinateFrame
			until not FLYING or Character.Parent == nil
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if hum then
				hum.PlatformStand = false
			end
		end)
	end
	flyKeyDown = mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = flyspeed
		elseif KEY:lower() == 's' then
			CONTROL.B = - flyspeed
		elseif KEY:lower() == 'a' then
			CONTROL.L = - flyspeed
		elseif KEY:lower() == 'd' then 
			CONTROL.R = flyspeed
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = flyspeed * 2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = - flyspeed * 2
		end
		pcall(function() game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

sFLY(1, true, false)