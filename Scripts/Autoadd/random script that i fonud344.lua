
@user-wr5mt6gb2p
5 months ago
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.Workspace
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.106721163, 0, 0.413223147, 0)
Frame.Size = UDim2.new(0, 103, 0, 55)
Frame.ZIndex = 0

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(7, 255, 238)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0582524277, 0, 0.0845070407, 0)
TextButton.Size = UDim2.new(0, 90, 0, 44)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Decal Spam"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

-- Scripts:

local function ITYGLGC_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local tex1 = "rbxassetid://14543521691"
	local tex2 = "rbxassetid://14543521691"
	local texture = "14543521691"
	
	local A = workspace:GetDescendants()
	local B = workspace:GetDescendants()
	local C = workspace:GetDescendants()
	local D = workspace:GetDescendants()
	local F = workspace:GetDescendants()
	
	for i, v in pairs(A) do
	    if v:IsA("Part") then
	        local d = Instance.new("Decal", v)
	        v.Decal.Face = "Top"
	        v.Decal.Texture = texture
	    end
	end
	
	for i, v in pairs(B) do
	    if v:IsA("Part") then
	        local s = Instance.new("Decal", v)
	        v.Decal.Face = "Front"
	        v.Decal.Texture = texture
	    end
	end
	
	for i, v in pairs(C) do
	    if v:IsA("Part") then
	        local h = Instance.new("Decal", v)
	        v.Decal.Face = "Back"
	        v.Decal.Texture = texture
	    end
	end
	
	for i, v in pairs(D) do
	    if v:IsA("Part") then
	        local j = Instance.new("Decal", v)
	        v.Decal.Face = "Right"
	        v.Decal.Texture = texture
	    end
	end
	
	for i, v in pairs(F) do
	    if v:IsA("Part") then
	        local k = Instance.new("Decal", v)
	        v.Decal.Face = "Left"
	        v.Decal.Texture = texture
	    end
	end
	
	local s = Instance.new("Sky", game.Lighting)
	s.SkyboxBk = tex1
	s.SkyboxDn = tex2
	s.SkyboxFt = tex1
	s.SkyboxLf = tex1
	s.SkyboxRt = tex1
	s.SkyboxUp = tex2
end
coroutine.wrap(ITYGLGC_fake_script)()