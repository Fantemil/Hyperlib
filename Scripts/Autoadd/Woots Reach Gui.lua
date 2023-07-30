

Copy this:

local active = true
local trueActive = true
local dmgEnabled = true
local visualizerEnabled = false
local reachType = "Sphere"
local reach = 3.2

local visualizer = Instance.new("Part")
visualizer.BrickColor = BrickColor.Blue()
visualizer.Transparency = 0.3
visualizer.Anchored = true
visualizer.CanCollide = false
visualizer.Size = Vector3.new(0.5,0.5,0.5)
visualizer.BottomSurface = Enum.SurfaceType.Smooth
visualizer.TopSurface = Enum.SurfaceType.Smooth
visualizer.Material = Enum.Material.ForceField

local visualizer2 = Instance.new("Part")
visualizer2.Color = Color3.fromRGB(255, 255, 255)
visualizer2.Transparency = 1
visualizer2.Anchored = true
visualizer2.CanCollide = false
visualizer2.Size = Vector3.new(4, 0.05, 4)
visualizer2.BottomSurface = Enum.SurfaceType.Smooth
visualizer2.TopSurface = Enum.SurfaceType.Smooth

local selectionbox = Instance.new("SelectionBox")
selectionbox.Parent = visualizer2
selectionbox.Adornee = visualizer2
selectionbox.Color3 = Color3.fromRGB(255, 255, 255)
selectionbox.SurfaceColor3 = Color3.fromRGB(255, 255, 255)
selectionbox.Transparency = 0
selectionbox.SurfaceTransparency = 0.9
selectionbox.Visible = true


local ProjectSFF = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local E = Instance.new("TextLabel")
local Etext = Instance.new("TextLabel")
local Q = Instance.new("TextLabel")
local Qtext = Instance.new("TextLabel")
local R = Instance.new("TextLabel")
local Rtext = Instance.new("TextLabel")
local T = Instance.new("TextLabel")
local Ttext = Instance.new("TextLabel")
local main2 = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local Custom = Instance.new("TextLabel")
local F = Instance.new("TextLabel")
local Ftext = Instance.new("TextLabel")
local Line2 = Instance.new("TextLabel")



ProjectSFF.Name = "Project SFF"
ProjectSFF.Parent = game.CoreGui
ProjectSFF.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ProjectSFF
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(37, 36, 40)
main.BackgroundTransparency = 0.200
main.Draggable = true
main.Position = UDim2.new(0.346640825, -52, 0.354844391, -78)
main.Size = UDim2.new(0, 519, 0, 312)
main.Visible = false

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 519, 0, 50)
Title.Font = Enum.Font.SciFi
Title.Text = "Woot Reach"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 50.000

Line.Name = "Line"
Line.Parent = main
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 1.000
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.160256416, 0)
Line.Size = UDim2.new(0, 519, 0, 7)
Line.Font = Enum.Font.SciFi
Line.Text = "-------------------------------------"
Line.TextColor3 = Color3.fromRGB(255, 255, 255)
Line.TextSize = 50.000

E.Name = "E "
E.Parent = main
E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
E.BackgroundTransparency = 1.000
E.BorderSizePixel = 0
E.Position = UDim2.new(0, 0, 0.205128208, 0)
E.Size = UDim2.new(0, 53, 0, 50)
E.Font = Enum.Font.SciFi
E.Text = "E"
E.TextColor3 = Color3.fromRGB(255, 255, 255)
E.TextSize = 50.000

Etext.Name = "E text"
Etext.Parent = main
Etext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Etext.BackgroundTransparency = 1.000
Etext.BorderSizePixel = 0
Etext.Position = UDim2.new(0.294797689, 0, 0.205128208, 0)
Etext.Size = UDim2.new(0, 210, 0, 50)
Etext.Font = Enum.Font.SciFi
Etext.Text = "Activate reach"
Etext.TextColor3 = Color3.fromRGB(255, 255, 255)
Etext.TextSize = 25.000

Q.Name = "Q"
Q.Parent = main
Q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Q.BackgroundTransparency = 1.000
Q.BorderSizePixel = 0
Q.Position = UDim2.new(0, 0, 0.365384638, 0)
Q.Size = UDim2.new(0, 53, 0, 50)
Q.Font = Enum.Font.SciFi
Q.Text = "Q"
Q.TextColor3 = Color3.fromRGB(255, 255, 255)
Q.TextSize = 50.000

Qtext.Name = "Q text"
Qtext.Parent = main
Qtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Qtext.BackgroundTransparency = 1.000
Qtext.BorderSizePixel = 0
Qtext.Position = UDim2.new(0.321772635, 0, 0.365384638, 0)
Qtext.Size = UDim2.new(0, 210, 0, 50)
Qtext.Font = Enum.Font.SciFi
Qtext.Text = "Deactivate reach"
Qtext.TextColor3 = Color3.fromRGB(255, 255, 255)
Qtext.TextSize = 25.000

R.Name = "R"
R.Parent = main
R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
R.BackgroundTransparency = 1.000
R.BorderSizePixel = 0
R.Position = UDim2.new(0, 0, 0.525641084, 0)
R.Size = UDim2.new(0, 53, 0, 50)
R.Font = Enum.Font.SciFi
R.Text = "R"
R.TextColor3 = Color3.fromRGB(255, 255, 255)
R.TextSize = 50.000

Rtext.Name = "R text"
Rtext.Parent = main
Rtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rtext.BackgroundTransparency = 1.000
Rtext.BorderSizePixel = 0
Rtext.Position = UDim2.new(0.296724468, 0, 0.525641084, 0)
Rtext.Size = UDim2.new(0, 210, 0, 50)
Rtext.Font = Enum.Font.SciFi
Rtext.Text = "Increase range (+0.5)"
Rtext.TextColor3 = Color3.fromRGB(255, 255, 255)
Rtext.TextSize = 25.000

T.Name = "T"
T.Parent = main
T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
T.BackgroundTransparency = 1.000
T.BorderSizePixel = 0
T.Position = UDim2.new(0, 0, 0.68589747, 0)
T.Size = UDim2.new(0, 53, 0, 50)
T.Font = Enum.Font.SciFi
T.Text = "T"
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.TextSize = 50.000

Ttext.Name = "T text"
Ttext.Parent = main
Ttext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ttext.BackgroundTransparency = 1.000
Ttext.BorderSizePixel = 0
Ttext.Position = UDim2.new(0.296724468, 0, 0.68589747, 0)
Ttext.Size = UDim2.new(0, 210, 0, 50)
Ttext.Font = Enum.Font.SciFi
Ttext.Text = "Decrease range (-0.5)"
Ttext.TextColor3 = Color3.fromRGB(255, 255, 255)
Ttext.TextSize = 25.000

main2.Name = "main2"
main2.Parent = main
main2.BackgroundColor3 = Color3.fromRGB(37, 36, 40)
main2.BackgroundTransparency = 0.200
main2.Position = UDim2.new(-0.000179930226, 0, 0.999075055, 0)
main2.Size = UDim2.new(0, 519, 0, 65)

TextBox.Parent = main2
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 0.500
TextBox.Position = UDim2.new(0.308003008, 0, 0.127493978, 0)
TextBox.Size = UDim2.new(0, 200, 0, 42)
TextBox.Font = Enum.Font.SciFi
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 25.000

TextButton.Parent = main2
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BackgroundTransparency = 0.700
TextButton.Position = UDim2.new(0.715201735, 0, 0.127205133, 0)
TextButton.Size = UDim2.new(0, 47, 0, 42)
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "Apply"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 18.000

Custom.Name = "Custom"
Custom.Parent = main2
Custom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Custom.BackgroundTransparency = 1.000
Custom.BorderSizePixel = 0
Custom.Position = UDim2.new(0.0327553004, 0, 0.11474359, 0)
Custom.Size = UDim2.new(0, 125, 0, 50)
Custom.Font = Enum.Font.SciFi
Custom.Text = "Custom Range"
Custom.TextColor3 = Color3.fromRGB(255, 255, 255)
Custom.TextSize = 25.000

F.Name = "F"
F.Parent = main
F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
F.BackgroundTransparency = 1.000
F.BorderSizePixel = 0
F.Position = UDim2.new(0, 0, 0.836538494, 0)
F.Size = UDim2.new(0, 53, 0, 50)
F.Font = Enum.Font.SciFi
F.Text = "F"
F.TextColor3 = Color3.fromRGB(255, 255, 255)
F.TextSize = 50.000

Ftext.Name = "F text"
Ftext.Parent = main
Ftext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ftext.BackgroundTransparency = 1.000
Ftext.BorderSizePixel = 0
Ftext.Position = UDim2.new(0.296724468, 0, 0.836538494, 0)
Ftext.Size = UDim2.new(0, 210, 0, 50)
Ftext.Font = Enum.Font.SciFi
Ftext.Text = "Hide/Show hitboxes"
Ftext.TextColor3 = Color3.fromRGB(255, 255, 255)
Ftext.TextSize = 25.000

Line2.Name = "Line2"
Line2.Parent = main
Line2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line2.BackgroundTransparency = 1.000
Line2.BorderSizePixel = 0
Line2.Position = UDim2.new(-0.00385356462, 0, 0.974359035, 0)
Line2.Size = UDim2.new(0, 519, 0, 7)
Line2.Font = Enum.Font.SciFi
Line2.Text = "-------------------------------------"
Line2.TextColor3 = Color3.fromRGB(255, 255, 255)
Line2.TextSize = 50.000

repeat wait() until game.Players.LocalPlayer



game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Woot Reach Loaded!";
	Text  = "Press X to view controls";
	Icon = "";
	Duration = 8;
})

local mouse = game.Players.LocalPlayer:GetMouse()

bindx = "x"
mouse.KeyDown:connect(function(keyx)
	if keyx == bindx then
		if main.Visible == false then
			main.Visible = true
		elseif main.Visible == true then
			main.Visible = false
		end
	end
end)

binde = "e"
mouse.KeyDown:connect(function(keye)
	if keye == binde then
		dmgEnabled = true
		visualizerEnabled = true
	end
end)

bindq = "q"
mouse.KeyDown:connect(function(keyq)
	if keyq == bindq then
		dmgEnabled = false
		visualizerEnabled = false
	end
end)

bindf = "f"
mouse.KeyDown:connect(function(keyf)
	if keyf == bindf then
		visualizerEnabled = not visualizerEnabled
	end
end)

local plr = game.Players.LocalPlayer

local function onHit(hit,handle)
	local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
	if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name then
		if dmgEnabled then
			for _,v in pairs(hit.Parent:GetChildren()) do
				if v:IsA("Part") then
					firetouchinterest(v,handle,0)
					firetouchinterest(v,handle,1)
				end
			end
		else
			firetouchinterest(hit,handle,0)
			firetouchinterest(hit,handle,1)
		end
	end
end

local function getWhiteList()
	local wl = {}
	for _,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr then
			local char = v.Character
			if char then
				for _,q in pairs(char:GetChildren()) do
					if q:IsA("Part") then
						table.insert(wl,q)
					end
				end
			end
		end
	end
	return wl
	-- WAIT WHAT EVOCUL WAS DOWN HERE TOO WHAT? WHO IS THIS MAD MAN????
end

TextButton.MouseButton1Down:connect(function()
	reach = TextBox.Text
end)

bindr = "r"
mouse.KeyDown:connect(function(keyr)
	if keyr == bindr then
		reach = reach + 0.5
	end
end)

bindt = "t"
mouse.KeyDown:connect(function(keyt)
	if keyt == bindt then
		reach = reach - 0.5
	end
end)
local cooldown = false
game:GetService("RunService").RenderStepped:connect(function()
	if not active or not trueActive then return end
	local s = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
	if not s then 
		visualizer.Parent = nil 
		visualizer2.Parent = nil 
	end
	if s then
		local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
		if handle then
			if visualizerEnabled then
				visualizer.Parent = workspace
				visualizer2.Parent = workspace
			else
				visualizer.Parent = nil
				visualizer2.Parent = nil
			end
			if reach then
				if reachType == "Sphere" then
					visualizer2.Size = Vector3.new(reach*2,0.05,reach*2)
					visualizer.CFrame = handle.CFrame
					visualizer2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -2.95, 0)
					for _,v in pairs(game.Players:GetPlayers()) do
						local hrp = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
						if hrp and handle then
							local mag = (hrp.Position - handle.Position).magnitude
							if tonumber(mag) <= tonumber(reach) and cooldown == false then
								cooldown = true
								onHit(hrp,handle)
								wait(0.1)
								cooldown = false
							end
						end
					end
				end
			end
		end
	end
end)

local i = 0
while wait() do
	if i >= 0.99 then
		i = 0
	elseif i < 1 then
		i = i+0.009
	end

	local h = tonumber(i)
	local color = Color3.fromHSV(h, 1, 0.8)

	visualizer.Color = color
	selectionbox.Color3 = color
	selectionbox.SurfaceColor3 = color
end