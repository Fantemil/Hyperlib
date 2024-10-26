-- Version: 3.2

-- Instances:

local Spectrum = Instance.new("ScreenGui")
local MainSpectrum = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local KillAura = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Hitbox = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Esp = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Exit = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

Spectrum.Name = "Spectrum"
Spectrum.Parent = game.CoreGui
Spectrum.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainSpectrum.Name = "Main Spectrum"
MainSpectrum.Parent = Spectrum
MainSpectrum.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
MainSpectrum.BackgroundTransparency = 0.500
MainSpectrum.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainSpectrum.BorderSizePixel = 0
MainSpectrum.Position = UDim2.new(0.252613097, 0, 0.444170684, 0)
MainSpectrum.Size = UDim2.new(0, 243, 0, 283)

UICorner.Parent = MainSpectrum

ImageLabel.Parent = MainSpectrum
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 42, 0, 41)
ImageLabel.Image = "rbxassetid://18459537596"

KillAura.Name = "KillAura"
KillAura.Parent = MainSpectrum
KillAura.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
KillAura.BackgroundTransparency = 0.500
KillAura.BorderColor3 = Color3.fromRGB(0, 0, 0)
KillAura.BorderSizePixel = 0
KillAura.Position = UDim2.new(0.0681343228, 0, 0.18091467, 0)
KillAura.Size = UDim2.new(0, 209, 0, 50)
KillAura.Font = Enum.Font.GothamBold
KillAura.Text = "KillAura"
KillAura.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAura.TextScaled = true
KillAura.TextSize = 14.000
KillAura.TextStrokeTransparency = 0.940
KillAura.TextWrapped = true

UICorner_2.Parent = KillAura

Hitbox.Name = "Hitbox"
Hitbox.Parent = MainSpectrum
Hitbox.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Hitbox.BackgroundTransparency = 0.500
Hitbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hitbox.BorderSizePixel = 0
Hitbox.Position = UDim2.new(0.0681343228, 0, 0.441186279, 0)
Hitbox.Size = UDim2.new(0, 209, 0, 50)
Hitbox.Font = Enum.Font.GothamBold
Hitbox.Text = "Hitbox"
Hitbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Hitbox.TextScaled = true
Hitbox.TextSize = 14.000
Hitbox.TextStrokeTransparency = 0.940
Hitbox.TextWrapped = true

UICorner_3.Parent = Hitbox

Esp.Name = "Esp"
Esp.Parent = MainSpectrum
Esp.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Esp.BackgroundTransparency = 0.500
Esp.BorderColor3 = Color3.fromRGB(0, 0, 0)
Esp.BorderSizePixel = 0
Esp.Position = UDim2.new(0.0681343228, 0, 0.710950017, 0)
Esp.Size = UDim2.new(0, 209, 0, 50)
Esp.Font = Enum.Font.GothamBold
Esp.Text = "AutoFarm(COMING SOON)"
Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
Esp.TextScaled = true
Esp.TextSize = 14.000
Esp.TextStrokeTransparency = 0.940
Esp.TextWrapped = true

UICorner_4.Parent = Esp

Exit.Name = "Exit"
Exit.Parent = MainSpectrum
Exit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Exit.BackgroundTransparency = 0.500
Exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.903525293, 0, -0.000509848469, 0)
Exit.Size = UDim2.new(0, 23, 0, 20)
Exit.Font = Enum.Font.GothamBold
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextStrokeTransparency = 0.940
Exit.TextWrapped = true

UICorner_5.Parent = Exit

-- Scripts:

local KaToggle = false

local function findClosestPlayer()
    local myPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local distance = (myPosition - character.HumanoidRootPart.Position).magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end

    return closestPlayer
end

KillAura.MouseButton1Click:Connect(function()
    KaToggle = not KaToggle
    KillAura.Text = KaToggle and "KillAura ON" or "KillAura OFF"

    while KaToggle do
        local closestPlayer = findClosestPlayer()
        if closestPlayer then
            local args = {
                [1] = "Bite",
                [2] = closestPlayer.Character.Humanoid,
                [3] = closestPlayer.Character.BiteHitbox
            }

            game:GetService("ReplicatedStorage").ServerEvents.Bite:FireServer(unpack(args))
        end
        wait(0.1)
    end
end)

Hitbox.MouseButton1Click:Connect(function()
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	_G.TeamCheck = true

		RunService.RenderStepped:Connect(function()
			if not _G.Disabled then
				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= LocalPlayer then
						local character = player.Character
						if character then
							pcall(function()
								local part = character:FindFirstChild("BiteHitbox")
								if part then
									if _G.TeamCheck and player.Team == LocalPlayer.Team then
										part.Size = Vector3.new(1, 1, 1)
									else
										part.Size = Vector3.new(25, 25, 25)
										part.Transparency = 1
										part.BrickColor = BrickColor.new("Royal purple")
										part.Material = Enum.Material.Neon
										part.CanCollide = false
										part.Massless = true
									end
								end

							end)
						end
					end
				end
			end
		end)
	end)

local function WUCBVR_fake_script() -- MainSpectrum.Animation&Stuff 
	local script = Instance.new('LocalScript', MainSpectrum)

	local TweenService = game:GetService("TweenService")
	local frame = script.Parent
	local corner = frame.UICorner
	local lbl = frame:GetDescendants()

	frame.Size = UDim2.new(0, 32, 0, 34)
	frame.Position = UDim2.new(0.488, 0, 0.478, 0)
	corner.CornerRadius = UDim.new(0, 50)
	frame.ImageLabel.ImageTransparency = 1

	for i, v in pairs(lbl) do
		if v :IsA("TextBox") then
			v.TextTransparency = 1
		end
	end

	for _, v in pairs(lbl) do
		if v:IsA("GuiObject") then
			v.BackgroundTransparency = 1
			if v:IsA("TextLabel") or v:IsA("TextButton") then
				v.TextTransparency = 1
			end
		end
		if v:IsA("ImageLabel") or v:IsA("ImageButton") then
			v.ImageTransparency = 1
		end
	end

	print("Set Properties")

	local goalCorner = { CornerRadius = UDim.new(0, 8) }
	local goalFrame = {
		Size = UDim2.new(0, 243,0, 283),
		Position = UDim2.new(0.433, 0,0.392, 0)
	}

	local tweenInfo = TweenInfo.new(
		1.5,                            -- Time (seconds)
		Enum.EasingStyle.Linear,      -- Easing style
		Enum.EasingDirection.Out,     -- Easing direction
		0,                            -- Repeat count (0 = no repeat)
		false,                        -- Reverses (true = no)
		0                             -- Delay time
	)

	local tweenCorner = TweenService:Create(corner, tweenInfo, goalCorner)
	local tweenSize = TweenService:Create(frame, tweenInfo, { Size = goalFrame.Size })
	local tweenPosition = TweenService:Create(frame, tweenInfo, { Position = goalFrame.Position })

	tweenCorner:Play()

	tweenCorner.Completed:Connect(function()
		tweenSize:Play()
		tweenPosition:Play()
	end)

	print("Tweened Succsesfuly")

	local function onTweensCompleted()
		for _, v in pairs(lbl) do
			if v:IsA("GuiObject") then
				local tweenBackground = TweenService:Create(v, tweenInfo, { BackgroundTransparency = 0.6 })
				tweenBackground:Play()
				if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
					local tweenText = TweenService:Create(v, tweenInfo, { TextTransparency = 0 })
					tweenText:Play()
				end
			end
			if v:IsA("ImageLabel") or v:IsA("ImageButton") then
				local tweenImage = TweenService:Create(v, tweenInfo, { ImageTransparency = 0 })
				tweenImage:Play()
				local tweenImages = TweenService:Create(v, tweenInfo, { BackgroundTransparency = 1 })
				tweenImages:Play()
			end
		end
	end

	warn("Tweens Completed")

	tweenPosition.Completed:Connect(onTweensCompleted)
	tweenSize.Completed:Connect(onTweensCompleted)

	wait(4.2)

	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Spectrum Loaded!", -- Required
		Text = "By spectrum_691", -- Required
		Icon = "rbxassetid://18459537596", -- Optional
		Duration = 5
	})

	print("Spectrum Succsesfuly Loaded!")
end
coroutine.wrap(WUCBVR_fake_script)()
local function ZTICXSR_fake_script() -- MainSpectrum.Drag 
	local script = Instance.new('LocalScript', MainSpectrum)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));

	local gui = script.Parent

	local dragging
	local dragInput
	local dragStart
	local startPos

	function Lerp(a, b, m)
		return a + (b - a) * m
	end;

	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;

		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(ZTICXSR_fake_script)()
local function MYIVCBK_fake_script() -- MainSpectrum.BlurEffectScript 
	local script = Instance.new('LocalScript', MainSpectrum)

	-- script by: @ImSnox
	local Lighting          = game:GetService("Lighting")
	local camera			= workspace.CurrentCamera

	local BLUR_SIZE         = Vector2.new(10, 10)
	local PART_SIZE         = 0.01
	local PART_TRANSPARENCY = 1 - 1e-7
	local START_INTENSITY	= 1

	script.Parent:SetAttribute("BlurIntensity", START_INTENSITY)

	local BLUR_OBJ          = Instance.new("DepthOfFieldEffect")
	BLUR_OBJ.FarIntensity   = 0
	BLUR_OBJ.NearIntensity  = script.Parent:GetAttribute("BlurIntensity")
	BLUR_OBJ.FocusDistance  = 0.25
	BLUR_OBJ.InFocusRadius  = 0
	BLUR_OBJ.Parent         = Lighting

	local PartsList         = {}
	local BlursList         = {}
	local BlurObjects       = {}
	local BlurredGui        = {}

	BlurredGui.__index      = BlurredGui

	function rayPlaneIntersect(planePos, planeNormal, rayOrigin, rayDirection)
		local n = planeNormal
		local d = rayDirection
		local v = rayOrigin - planePos

		local num = n.x*v.x + n.y*v.y + n.z*v.z
		local den = n.x*d.x + n.y*d.y + n.z*d.z
		local a = -num / den

		return rayOrigin + a * rayDirection, a
	end

	function rebuildPartsList()
		PartsList = {}
		BlursList = {}
		for blurObj, part in pairs(BlurObjects) do
			table.insert(PartsList, part)
			table.insert(BlursList, blurObj)
		end
	end

	function BlurredGui.new(frame, shape)
		local blurPart        = Instance.new("Part")
		blurPart.Size         = Vector3.new(1, 1, 1) * 0.01
		blurPart.Anchored     = true
		blurPart.CanCollide   = false
		blurPart.CanTouch     = false
		blurPart.Material     = Enum.Material.Glass
		blurPart.Transparency = PART_TRANSPARENCY
		blurPart.Parent       = workspace.CurrentCamera

		local mesh
		if (shape == "Rectangle") then
			mesh        = Instance.new("BlockMesh")
			mesh.Parent = blurPart
		elseif (shape == "Oval") then
			mesh          = Instance.new("SpecialMesh")
			mesh.MeshType = Enum.MeshType.Sphere
			mesh.Parent   = blurPart
		end

		local ignoreInset = false
		local currentObj  = frame

		while true do
			currentObj = currentObj.Parent

			if (currentObj and currentObj:IsA("ScreenGui")) then
				ignoreInset = currentObj.IgnoreGuiInset
				break
			elseif (currentObj == nil) then
				break
			end
		end

		local new = setmetatable({
			Frame          = frame;
			Part           = blurPart;
			Mesh           = mesh;
			IgnoreGuiInset = ignoreInset;
		}, BlurredGui)

		BlurObjects[new] = blurPart
		rebuildPartsList()

		game:GetService("RunService"):BindToRenderStep("...", Enum.RenderPriority.Camera.Value + 1, function()
			blurPart.CFrame = camera.CFrame * CFrame.new(0,0,0)
			BlurredGui.updateAll()
		end)
		return new
	end

	function updateGui(blurObj)
		if (not blurObj.Frame.Visible) then
			blurObj.Part.Transparency = 1
			return
		end

		local camera = workspace.CurrentCamera
		local frame  = blurObj.Frame
		local part   = blurObj.Part
		local mesh   = blurObj.Mesh

		part.Transparency = PART_TRANSPARENCY

		local corner0 = frame.AbsolutePosition + BLUR_SIZE
		local corner1 = corner0 + frame.AbsoluteSize - BLUR_SIZE*2
		local ray0, ray1

		if (blurObj.IgnoreGuiInset) then
			ray0 = camera:ViewportPointToRay(corner0.X, corner0.Y, 1)
			ray1 = camera:ViewportPointToRay(corner1.X, corner1.Y, 1)
		else
			ray0 = camera:ScreenPointToRay(corner0.X, corner0.Y, 1)
			ray1 = camera:ScreenPointToRay(corner1.X, corner1.Y, 1)
		end

		local planeOrigin = camera.CFrame.Position + camera.CFrame.LookVector * (0.05 - camera.NearPlaneZ)
		local planeNormal = camera.CFrame.LookVector
		local pos0 = rayPlaneIntersect(planeOrigin, planeNormal, ray0.Origin, ray0.Direction)
		local pos1 = rayPlaneIntersect(planeOrigin, planeNormal, ray1.Origin, ray1.Direction)

		local pos0 = camera.CFrame:PointToObjectSpace(pos0)
		local pos1 = camera.CFrame:PointToObjectSpace(pos1)

		local size   = pos1 - pos0
		local center = (pos0 + pos1)/2

		mesh.Offset = center
		mesh.Scale  = size / PART_SIZE
	end

	function BlurredGui.updateAll()
		BLUR_OBJ.NearIntensity = tonumber(script.Parent:GetAttribute("BlurIntensity"))

		for i = 1, #BlursList do
			updateGui(BlursList[i])
		end

		local cframes = table.create(#BlursList, workspace.CurrentCamera.CFrame)
		workspace:BulkMoveTo(PartsList, cframes, Enum.BulkMoveMode.FireCFrameChanged)

		BLUR_OBJ.FocusDistance = 0.25 - camera.NearPlaneZ
	end

	function BlurredGui:Destroy()
		self.Part:Destroy()
		BlurObjects[self] = nil
		rebuildPartsList()
	end

	BlurredGui.new(script.Parent, "Rectangle")

	BlurredGui.updateAll()
	return BlurredGui

end
coroutine.wrap(MYIVCBK_fake_script)()
local function CCQZ_fake_script() -- Exit.LocalScript 
	local script = Instance.new('LocalScript', Exit)

	script.Parent.MouseButton1Click:Connect(function()
		game:GetService("CoreGui").Spectrum:Destroy()
	end)
end
coroutine.wrap(CCQZ_fake_script)()