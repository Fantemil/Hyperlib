local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local ToViewport = Camera.WorldToViewportPoint

local function CreateLine()
	local line = Drawing.new("Line")
	line.Visible = true
	line.Color = Color3.fromRGB(0,0,255)
	line.Transparency = 1
	line.Thickness = 2
	return line
end

local function CreateLabel()
	local label = Drawing.new("Text")
	label.Visible = true
	label.Color = Color3.fromRGB(255, 255, 255) -- color for text
	label.Size = 20
	label.Center = true
	return label
end

local function UpdateLine(line, start, end_)
	local startPoint = ToViewport(Camera, start)
	local endPoint = ToViewport(Camera, end_)

	if startPoint.Z > 0 and endPoint.Z > 0 then
		line.From = Vector2.new(startPoint.X, startPoint.Y)
		line.To = Vector2.new(endPoint.X, endPoint.Y)
		line.Visible = true
	else
		line.Visible = false
	end
end

local function UpdateLabel(label, position, text)
	local pos, onScreen = ToViewport(Camera, position)

	if onScreen then
		label.Position = Vector2.new(pos.X, pos.Y)
		label.Text = text
		label.Visible = true
	else
		label.Visible = false
	end
end

local function CreateSkeleton(player)
	local skeleton = {}
	local character = player.Character
	if character then
		for _, part in ipairs(character:GetChildren()) do
			if part:IsA("BasePart") then
				for _, joint in ipairs(part:GetChildren()) do
					if joint:IsA("Motor6D") then
						local line = CreateLine()
						table.insert(skeleton, {line, joint.Part0, joint.Part1})
					end
				end
			end
		end
	end
	return skeleton
end

local function UpdateSkeleton(skeleton, label, player)
	local character = player.Character
	if character and character.PrimaryPart then
		local distance = (LocalPlayer.Character.PrimaryPart.Position - character.PrimaryPart.Position).Magnitude
		UpdateLabel(label, character.Head.Position + Vector3.new(0, 2, 0), string.format("%s (%.2f)", player.Name, distance)) -- the Vector3 offset is to make sure label appears above the player's head
		for _, data in ipairs(skeleton) do
			local line, part0, part1 = data[1], data[2], data[3]
			if part0 and part1 then
				UpdateLine(line, part0.Position, part1.Position)
			end
		end
	else
		for _, data in ipairs(skeleton) do
			local line = data[1]
			line.Visible = false
		end
		label.Visible = false
	end
end

local skeletons = {}

local function AddPlayer(player)
	if player ~= LocalPlayer then
		local skeleton = CreateSkeleton(player)
		local label = CreateLabel()
		table.insert(skeletons, {skeleton, label, player})
	end
end

for _, player in ipairs(Players:GetPlayers()) do
	AddPlayer(player)
end

Players.PlayerAdded:Connect(AddPlayer)

Players.PlayerRemoving:Connect(function(player)
	for i, data in ipairs(skeletons) do
		if data[3] == player then
			for _, data in ipairs(data[1]) do
				local line = data[1]
				line:Remove() 
			end
			data[2]:Remove()
			table.remove(skeletons, i)
			break
		end
	end
end)

RunService.RenderStepped:Connect(function()
	for _, data in ipairs(skeletons) do
		local skeleton, label, player = data[1], data[2], data[3]
		UpdateSkeleton(skeleton, label, player)
	end
end)
