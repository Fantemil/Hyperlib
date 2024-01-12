--[[
	Execute this script and it will create a box at the top of your screen. Use Dex
	or something similar to find a model that you'd like to "import" into Studio, then type the path
	to that instance (like you would when writing a script, with '.' as a separator). When you click
	the "run" button, unreadable code should appear in the top-left text box. Due to my bad coding,
	you can't use square brackets to name instances (like workspace["124837"]) and FindFirstChild()
	and other methods don't work, since my hierarchy marching code is already using WaitForChild().
	
	Copy that code then paste it into Studio's command bar. When it's executed, a model named
	"Capture" will appear in the Explorer pane, followed by each MeshPart. Due to limitations,
	you have to copy the requested mesh IDs to each instance as it's created, but as long as the
	model that you're saving doesn't have more than like 15 parts, it should all appear in the
	viewport when you're done.
	
	The Command Bar has a character limit for whatever reason, so more complex models are infeasible
	to import. If I learned the text variant of the RBXM format, maybe I could use that to directly
	save the model to that file, which could be imported into Studio without any of these complications,
	which are almost always Roblox's fault. The Command Bar should be allowed to change MeshParts' mesh
	IDs. Seriously!
	
	For some strange reason, even when using an exploit executor, Roblox intercepts any
	attempts to include functions in strings, saying a "string called a function" or something.
	This is very stupid, so to work around it, you'll have to replace a placeholder string
	in generated code using "replace all" function in a text editor. Blame Roblox for this rubbish.
	
	REPLACE
	DumbRBLX
	
	WITH
	local insM=IS:CreateMeshPartAsync(inst.Name,0,1);
]]--
--[[
	Roblox2Lua
	----------
	
	This code was generated using
	Deluct's Roblox2Lua plugin.
]]--
print("Model Capturer: Beginning initialization...")

--// Instances

local charactercopy_gui = Instance.new("ScreenGui")
charactercopy_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
charactercopy_gui.Name = "TopBarAdditions"
charactercopy_gui.Parent = game:GetService("CoreGui")

local textbox = Instance.new("TextBox")
textbox.AnchorPoint = Vector2.new(0, 0)
textbox.BackgroundColor3 = Color3.new(1, 1, 1)
textbox.BackgroundTransparency = 0.5
textbox.BorderSizePixel = 0
textbox.ClearTextOnFocus = false
textbox.TextScaled = true
textbox.Position = UDim2.new(0, 8, 0, 8)
textbox.Size = UDim2.new(0.5, 0, 0.15, 0)
textbox.Parent = charactercopy_gui
textbox.Text = "When an Instance is scanned, the generation code will be put here."
textbox.Visible = false

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 0)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 0.25
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.5, 0, 0, 8)
frame.Size = UDim2.new(0.333000004, 0, 0.125, 0)
frame.Parent = charactercopy_gui

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0.15000000596046448, 0)
uicorner.Parent = frame

local title = Instance.new("TextLabel")
title.Font = Enum.Font.GothamBlack
title.Text = "Model Capturer"
title.TextColor3 = Color3.new(0.333333, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.498039)
title.TextStrokeTransparency = 0.25
title.TextWrapped = true
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0.25, 0)
title.Name = "Title"
title.Parent = frame

local input_username = Instance.new("TextBox")
input_username.Font = Enum.Font.RobotoMono
input_username.PlaceholderText = "Paste an instance path here. (workspace.Instance)"
input_username.Text = ""
input_username.TextColor3 = Color3.new(0, 0, 0)
input_username.TextScaled = true
input_username.TextSize = 14
input_username.TextWrapped = true
input_username.TextXAlignment = Enum.TextXAlignment.Left
input_username.BackgroundColor3 = Color3.new(1, 1, 1)
input_username.BackgroundTransparency = 1
input_username.Position = UDim2.new(0.0250000004, 0, 0.333000004, 0)
input_username.Size = UDim2.new(0.5, 0, 0.333000004, 0)
input_username.Name = "Input_Username"
input_username.Parent = frame

local uistroke = Instance.new("UIStroke")
uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke.Color = Color3.new(0, 0.666667, 0.498039)
uistroke.Thickness = 2
uistroke.Parent = input_username

local input_delay_time = Instance.new("TextBox")
input_delay_time.Font = Enum.Font.RobotoMono
input_delay_time.PlaceholderText = "Filename (don't write .txt)"
input_delay_time.Text = ""
input_delay_time.TextColor3 = Color3.new(0, 0, 0)
input_delay_time.TextScaled = true
input_delay_time.TextSize = 14
input_delay_time.TextWrapped = true
input_delay_time.TextXAlignment = Enum.TextXAlignment.Left
input_delay_time.BackgroundColor3 = Color3.new(1, 1, 1)
input_delay_time.BackgroundTransparency = 1
input_delay_time.Position = UDim2.new(0.0250000004, 0, 0.666000009, 0)
input_delay_time.Size = UDim2.new(0.5, 0, 0.333000004, 0)
input_delay_time.Name = "Input_DelayTime"
input_delay_time.Parent = frame

local uistroke_2 = Instance.new("UIStroke")
uistroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke_2.Color = Color3.new(0, 0.666667, 0.498039)
uistroke_2.Thickness = 2
uistroke_2.Parent = input_delay_time

local button_run = Instance.new("TextButton")
button_run.Font = Enum.Font.Unknown
button_run.Text = "    Save    "
button_run.TextColor3 = Color3.new(0, 0, 0)
button_run.TextScaled = true
button_run.TextSize = 14
button_run.TextWrapped = true
button_run.AnchorPoint = Vector2.new(1, 1)
button_run.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
button_run.Position = UDim2.new(0.975000024, 0, 0.975000024, 0)
button_run.Size = UDim2.new(0.425000012, 0, 0.666000009, 0)
button_run.Name = "Button_Run"
button_run.Parent = frame

local result = Instance.new("TextLabel")
result.Font = Enum.Font.Unknown
result.Text = "Please enter the name of the player to get the posed model of, along with a delay."
result.TextColor3 = Color3.new(1, 1, 1)
result.TextScaled = true
result.TextSize = 14
result.TextStrokeTransparency = 0.25
result.TextWrapped = true
result.AnchorPoint = Vector2.new(0.5, 0)
result.BackgroundColor3 = Color3.new(1, 1, 1)
result.BackgroundTransparency = 1
result.BorderSizePixel = 0
result.Position = UDim2.new(0.5, 0, 1, 0)
result.Size = UDim2.new(1, 0, 0.5, 0)
result.Name = "Result"
result.Parent = frame
print("UI created!")

-- CaptureCharacter(takes string, returns nothing)
-- Clones all parts of a Character and
-- moves them to a subfolder of ServerStorage (which goes unused
-- on the client-side.)
local function CaptureCharacter(_player : string)
	-- ALso make a Model to store this player's Character.
	local TargetFolderCharacter = game:GetService("ServerStorage"):FindFirstChild("Captures"):FindFirstChild(_player)
	if TargetFolderCharacter then
		TargetFolderCharacter:Destroy()
	end
	TargetFolderCharacter = Instance.new("Model",game:GetService("ServerStorage"):FindFirstChild("Captures"))
	TargetFolderCharacter.Name = _player

	-- Now that all of that preparation is out of the way, save this player's Character!
	local parts = {}

	-- Clone Character parts.
	for _, part in ipairs(game.Players:FindFirstChild(_player).Character:GetChildren()) do
		print("Part found: " .. part.Name)
		local PartClone = part:Clone()
		table.insert(parts,PartClone)
	end

	-- Move each part to ReplicatedStorage and anchor any BaseParts found.
	for _, savedpart in ipairs(parts) do
		if savedpart:IsA("BasePart") then savedpart.Anchored = true end
		savedpart.Parent = TargetFolderCharacter
		print(savedpart.Name .. " should be anchored and stored in " .. savedpart.Parent:GetFullName() .. ".")
	end
end

local function IterateChildHierarchy(_startInstance : Instance, _details : { Name : string, Type : string }) : Instance
	local CurrentLocation = _startInstance	-- This tracks the current Instance as we move down the hierarchy.
	
	if _startInstance and typeof(_startInstance) == "Instance" and _details and type(_details) == "table" and
		_details[1].Name and type(_details[1].Name) == "string" and _details[1].Type and type(_details[1].Type) == "string"
	then
		-- The recursion begins! Do a ":FindFirstChild()"" check for each string in order, each time moving deeper into the hierarchy.
		for _, level in _details do
			-- Check which type of scan to do, then do it based on "Type". If certain keywords aren't found, assume it's FindFirstChild().
			if string.find(string.lower(level.Type), "wait") then CurrentLocation = CurrentLocation:WaitForChild(level.Name)
			elseif string.find(string.lower(level.Type), "class") then CurrentLocation = CurrentLocation:FindFirstChildOfClass(level.Name)
			else CurrentLocation = CurrentLocation:FindFirstChild(level.Name)
			end
			
			-- If this check caused the variable to become nil, that child Instance didn't exist, so it ends early.
			if not CurrentLocation then break end
		end
	end
	
	return CurrentLocation	-- This will be nil if any child isn't found, and will conveniently BE the last child if everything passes.
end

local ConvertedResult = ""
-- Converts the given instance's properties into Lua code. This should place a new instance into the "dest" (destination) model, which should be already created.
-- This code is designed to put everything in one place, only specifically checking for SpecialMeshes, Decals, and Textures within parts.
print("Initializing Textify function...")
local function Textify(_instance)
	if _instance:IsA("BasePart") then
		result.Text = "Textifying " .. _instance:GetFullName()
		
		local Name = _instance.Name
		local Color = _instance.Color
		local SizeX = _instance.Size.X; local SizeY = _instance.Size.Y; local SizeZ = _instance.Size.Z
		local X, Y, Z, R00, R01, R02, R10, R11, R12, R20, R21, R22 = _instance.CFrame:GetComponents()
		local Material = _instance.Material
		local Transparency = _instance.Transparency
		
		ConvertedResult = ConvertedResult .. "\u{000D}\u{000A}"
		ConvertedResult = ConvertedResult .. "local inst = Instance.new(\"" .. tostring(_instance.ClassName) .. "\",dest)" .. "\u{000D}\u{000A}"
		
		-- If this is a MeshPart, add its specific properties after the common ones.
		-- Temporarily name the MeshPart after its asset ID, which will be passed to InsertService:CreateMeshPartAsync() before its name is finalized by the common code below.
		if _instance:IsA("MeshPart") then
			
			-- Check for common asset ID prefixes and strip them out before continuing. This will reduce the characters of mesh IDs in the generated code, which will increase the odds of this code running in the Command Bar, which is the only place it can run since it uses a stupidly restricted method.
			local MeshId = _instance.MeshId
			if MeshId:find("rbxassetid://") then MeshId = MeshId:sub(14,-1)
			elseif MeshId:find("http://www.roblox.com/asset/?id=") then MeshId = MeshId:sub(33, -1)
			end
			local TextureID = _instance.TextureID
			local WaitFunction = "DumbRBLX"
			
			ConvertedResult = ConvertedResult .. "\u{000D}\u{000A}" ..
				"inst.Name = \"rbxassetid://" .. tostring(MeshId) .. "\"" .. "\u{000D}\u{000A}" ..
				tostring(WaitFunction) .. "\u{000D}\u{000A}"	-- With the transition to InsertService, all we need to do IS use that function instead of setting the MeshID manually!
			ConvertedResult = ConvertedResult .. "insM.TextureID = \"" .. tostring(TextureID) .. "\"" .. "\u{000D}\u{000A}"
			ConvertedResult = ConvertedResult .. "inst:Destroy();inst = insM;\u{000D}\u{000A}"	-- Remove the initial MeshPart, since insM (the real part) replaced it. InsM takes over as the instance itself so the rest of the code still runs.
		elseif _instance:IsA("Part") then	-- If this instance is a Part, set its shape here.
		local Shape = _instance.Shape.Value
			ConvertedResult = ConvertedResult .. "\u{000D}\u{000A}" ..
				"inst.Shape=" .. tostring(Shape) .. "\u{000D}\u{000A}"
		end
		
		ConvertedResult = ConvertedResult .. "inst.Name=\"" .. Name .. "\"" .. "\u{000D}\u{000A}"
		ConvertedResult = ConvertedResult .. "inst.Anchored=" .. tostring(_instance.Anchored) .. "\u{000D}\u{000A}"
		ConvertedResult = ConvertedResult .. "inst.Color = Color3.new(" .. tostring(Color.R) .. "," .. tostring(Color.G) .. "," .. tostring(Color.B) .. ")" .. "\u{000D}\u{000A}"
		ConvertedResult = ConvertedResult .. "inst.Material=" .. tostring(Material) .. "\u{000D}\u{000A}"
		ConvertedResult = ConvertedResult .. "inst.Transparency = " .. tostring(Transparency)  .. "\u{000D}\u{000A}"
		
		ConvertedResult = ConvertedResult .. "inst.Size=Vector3.new(" .. tostring(SizeX) .. "," .. tostring(SizeY) .. "," .. tostring(SizeZ) .. ")\u{000D}\u{000A}"
		ConvertedResult = ConvertedResult .. "inst.CFrame=CFrame.new(" .. tostring(X) .. "," .. tostring(Y) .. "," .. tostring(Z) .. "," .. tostring(R00) .. "," .. tostring(R01) .. "," .. tostring(R02) .. "," .. tostring(R10) .. "," .. tostring(R11) .. "," .. tostring(R12) .. "," .. tostring(R20) .. "," .. tostring(R21) .. "," .. tostring(R22) .. ")\u{000D}\u{000A}"
		
		ConvertedResult = ConvertedResult .. "\u{000D}\u{000A}"
		
		-- Are there any child instances that need to be parented to this one? If so, iterate through and link them to this one.
		if _instance:FindFirstChildOfClass("SpecialMesh") or _instance:FindFirstChildOfClass("Decal") or _instance:FindFirstChildOfClass("Texture") then
			for _, child in ipairs(_instance:GetChildren()) do
				if child:IsA("SpecialMesh") then
					local VertexColor = child.VertexColor
					local MeshType = child.MeshType
					local Scale = child.Scale
					local MeshId = child.MeshId
					local TextureId = child.TextureId
					
					-- Since generated parts actually check their class before they're spawned, things meant to be Parts actually spawn as such, so SpecialMeshes should show up in captures now.
					ConvertedResult = ConvertedResult .. "\u{000D}\u{000A}" ..
						"local sMesh=Instance.new(\"SpecialMesh\", inst)" .. "\u{000D}\u{000A}" ..
						"sMesh.Name=\"" .. Name .. "\"" .. "\u{000D}\u{000A}" ..
						"sMesh.VertexColor=Vector3.new(" .. tostring(VertexColor.X) .. "," .. tostring(VertexColor.Y) .. "," .. tostring(VertexColor.Z) .. ")" .. "\u{000D}\u{000A}" ..
						"sMesh.MeshType=" .. tostring(MeshType) .. "\u{000D}\u{000A}" ..
						"sMesh.MeshId=\"" .. tostring(MeshId) .. "\"" .. "\u{000D}\u{000A}" ..
						"sMesh.TextureId=\"" .. tostring(TextureId) .. "\"" .. "\u{000D}\u{000A}" ..
						"sMesh.Scale=Vector3.new(" .. tostring(Scale) .. ")" .. "\u{000D}\u{000A}"
				elseif child:IsA("Decal") then
					local Color2 = child.Color3
					local Texture = child.Texture
					local Transparency2 = child.Transparency
					local ZIndex = child.ZIndex
					local Face = child.Face
					
					ConvertedResult = ConvertedResult .. "\u{000D}\u{000A}" ..
						"local sMesh = Instance.new(\"Decal\", inst)" .. "\u{000D}\u{000A}" ..
						"sMesh.Name = \"" .. Name .. "\"" .. "\u{000D}\u{000A}" ..
						"sMesh.Color3 = Color3.new(" .. tostring(Color2.R) .. ", " .. tostring(Color2.G) .. ", " .. tostring(Color2.B) .. ")" .. "\u{000D}\u{000A}" ..
						"sMesh.Transparency = " .. tostring(Transparency2) .. "\u{000D}\u{000A}" ..
						"sMesh.Texture = \"" .. tostring(Texture) .. "\"" .. "\u{000D}\u{000A}" ..
						"sMesh.Face = " .. tostring(Face) .. "\u{000D}\u{000A}" ..
						"sMesh.ZIndex = " .. tostring(ZIndex) .. "\u{000D}\u{000A}"
				elseif child:IsA("Texture") then
					local Color2 = _instance.Color3
					local Texture = child.Texture
					local Transparency2 = child.Transparency
					local ZIndex = child.ZIndex
					local Face = child.Face
					
					local OffsetStudsU = child.OffsetStudsU
					local OffsetStudsV = child.OffsetStudsV
					local StudsPerTileU = child.StudsPerTileU
					local StudsPerTileV = child.StudsPerTileV
					
					ConvertedResult = ConvertedResult .. "\u{000D}\u{000A}" ..
						"local tex = Instance.new(\"Texture\", inst)" .. "\u{000D}\u{000A}" ..
						"tex.Name = \"" .. Name .. "\"" .. "\u{000D}\u{000A}" ..
						"tex.Color3 = Color3.new(" .. tostring(Color2.R) .. ", " .. tostring(Color2.G) .. ", " .. tostring(Color2.B) .. ")" .. "\u{000D}\u{000A}" ..
						"tex.Transparency = " .. tostring(Transparency2) .. "\u{000D}\u{000A}" ..
						"tex.Texture = \"" .. tostring(Texture) .. "\"" .. "\u{000D}\u{000A}" ..
						"tex.Face = " .. tostring(Face) .. "\u{000D}\u{000A}" ..
						"tex.ZIndex = " .. tostring(ZIndex) .. "\u{000D}\u{000A}" ..
						"tex.OffsetStudsU = " .. tostring(OffsetStudsU) .. "\u{000D}\u{000A}" ..
						"tex.OffsetStudsV = " .. tostring(OffsetStudsV) .. "\u{000D}\u{000A}" ..
						"tex.StudsPerTileU = " .. tostring(StudsPerTileU) .. "\u{000D}\u{000A}" ..
						"tex.StudsPerTileV = " .. tostring(StudsPerTileV) .. "\u{000D}\u{000A}"
				end
			end
		end
	end
	
	return true
end

button_run.MouseButton1Click:Connect(function()
	if type(input_username.Text) ~= "string" then
		result.Text = "The instance provided isn't a string."
		error("Failed, see result under box.")
	end
	
	-- Split the given path into individual instance names, then use IterateChildHierarchy() to try to reference it.
	-- If no periods are used, just treat this as an instance placed under the workspace itself.
	local PathComponents = input_username.Text:split(".")
	if PathComponents[1] == "workspace" then PathComponents[1] = "Workspace" end	-- Replace the all-lowercase alias with the internal "Workspace", which Roblox ACTUALLY uses.
	
	local IterationCommandList = {}	-- This is filled with a list of "instructions" for IterateChildHierarchy(), so it knows what to look for.
	for _, inst in ipairs(PathComponents) do
		table.insert(IterationCommandList, {Name = inst, Type = "WaitForChild"})
	end
	
	local BaseInstance = IterateChildHierarchy(workspace.Parent, IterationCommandList)
	if BaseInstance then
		ConvertedResult = "-- This was generated using Xane's Model Capturer." .. "\u{000D}\u{000A}" ..
		"\u{000D}\u{000A}" ..
		"-- Please name the model that these contents will be inserted into..." .. "\u{000D}\u{000A}" ..
		"local IS=game:GetService(\"InsertService\")" .. "\u{000D}\u{000A}" ..
		"local dModel=\"Capture\"\u{000D}\u{000A}" ..
		"local dest = Instance.new(\"Model\",workspace)\u{000D}\u{000A}" ..
		"dest.Name = dModel\u{000D}\u{000A}" ..
		"\u{000D}\u{000A}" ..
		"print(\"Reconstructing model \" .. dModel .. \". No errors, please...\"); task.wait(3);" ..
		"\u{000D}\u{000A}\u{000D}\u{000A}"
		
		for _, inst in ipairs(BaseInstance:GetDescendants()) do
			_ = Textify(inst)
		end
		
result.Text = "input_delay_time.Text" or "Model" .. " was textified! Check the workspace folder for a new .lua file!"
		if input_delay_time.Text:len() > 0 then
			writefile(input_delay_time.Text .. "_" .. game:GetService("HttpService"):GenerateGUID(false):sub(1,4) .. ".lua", ConvertedResult)	-- Just save the results to a file in the workspace folder. The Android app is SO WEAK!
		else
			writefile("Capture_" .. game:GetService("HttpService"):GenerateGUID(false) .. ".lua", ConvertedResult)	-- Just save the results to a file in the workspace folder. The Android app is SO WEAK!
		end
		-- textbox.Text = ConvertedResult	-- Place the generated code in the text box, ready to be copied into Roblox Studio.
	else
		result.Text = "The instance couldn't be found, so nothing has been saved."
		error("Failed, see result under box.")
	end
	
	-- Try to find this user in the players list.
	--[[local found = false
	for _, _player in ipairs(game:GetService("Players"):GetPlayers()) do
		if _player.Name == input_username.Text then
			found = true
			break
		end
	end

	-- "All" is a special keyword that will capture ALL PLAYERS when used, handy to make up for
	-- SaveInstance()'s lack of players, leaving saved place maps feeling dead and empty.
	if string.lower(input_username.Text) == "all" then found = true end

	if not found then
		result.Text = "That player isn't in the current server."
		error("Failed, see result under box.")
	end

	-- Make sure the number in the delay text input field is actually a number.
	if input_delay_time.Text == "" then input_delay_time.Text = "0" end
	local temp_delayConverted = tonumber(input_delay_time.Text)
	if type(temp_delayConverted) ~= "number" then
		result.Text = "The delay isn't a valid number."
		error("Failed, see result under box.")
	end

	-- Create the "captures" folder if it doesn't exist.
	local TargetFolderBase = game:GetService("ServerStorage"):FindFirstChild("Captures")
	if not TargetFolderBase then
		TargetFolderBase = Instance.new("Folder",game:GetService("ServerStorage"))
		TargetFolderBase.Name = "Captures"
	end

	if temp_delayConverted > 0.001 then task.wait(temp_delayConverted) end

	if string.lower(input_username.Text) ~= "all" then
		CaptureCharacter(input_username.Text)
		result.Text = input_username.Text .. "'s Character Model has been captured to ServerStorage.Captures! Saving the map."
	else
		for _, _player in ipairs(game:GetService("Players"):GetPlayers()) do
			CaptureCharacter(_player.Name)
		end
		result.Text = "All players on this server should be saved to ServerStorage.Captures! Saving map now..."
	end
	
	saveinstance({mode="optimized",noscripts=true})]]
end)