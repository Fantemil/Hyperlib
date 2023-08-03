
local StatusBar = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Ping = Instance.new("TextLabel")
local FPS = Instance.new("TextLabel")
local YourPosition = Instance.new("TextLabel")
local Health = Instance.new("TextLabel")
local Spawntime = Instance.new("TextLabel")
--Properties:
StatusBar.Name = "StatusBar"
StatusBar.Parent = game.CoreGui
StatusBar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = StatusBar
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 200, 0, -36)
Frame.Size = UDim2.new(0.725000024, 0, 0, 34)
Frame.ZIndex = 100

Ping.Name = "Ping"
Ping.Parent = Frame
Ping.BackgroundColor3 = Color3.new(0.00392157, 0.00392157, 0.00392157)
Ping.BackgroundTransparency = 1
Ping.Size = UDim2.new(0.200000003, 0, 0, 34)
Ping.SizeConstraint = Enum.SizeConstraint.RelativeXX
Ping.Font = Enum.Font.SourceSans
Ping.Text = "Ping: nil"
Ping.TextColor3 = Color3.new(1, 1, 1)
Ping.TextSize = 40
Ping.TextWrapped = true

FPS.Name = "FPS"
FPS.Parent = Frame
FPS.BackgroundColor3 = Color3.new(1, 1, 1)
FPS.BackgroundTransparency = 1
FPS.Position = UDim2.new(0.200000003, 0, 0, 0)
FPS.Size = UDim2.new(0.200000003, 0, 0, 34)
FPS.SizeConstraint = Enum.SizeConstraint.RelativeXX
FPS.Font = Enum.Font.SourceSans
FPS.Text = "FPS: nil"
FPS.TextColor3 = Color3.new(1, 1, 1)
FPS.TextSize = 40
FPS.TextWrapped = true

YourPosition.Name = "YourPosition"
YourPosition.Parent = Frame
YourPosition.BackgroundColor3 = Color3.new(1, 1, 1)
YourPosition.BackgroundTransparency = 1
YourPosition.Position = UDim2.new(0.400000006, 0, 0, 0)
YourPosition.Size = UDim2.new(0.200000003, 0, 0, 34)
YourPosition.SizeConstraint = Enum.SizeConstraint.RelativeXX
YourPosition.Font = Enum.Font.SourceSans
YourPosition.Text = "Position: nil,nil,nil"
YourPosition.TextColor3 = Color3.new(1, 1, 1)
YourPosition.TextSize = 30
YourPosition.TextWrapped = true

Health.Name = "Health"
Health.Parent = Frame
Health.BackgroundColor3 = Color3.new(1, 1, 1)
Health.BackgroundTransparency = 1
Health.Position = UDim2.new(0.600000024, 0, 0, 0)
Health.Size = UDim2.new(0.200000003, 0, 0, 34)
Health.SizeConstraint = Enum.SizeConstraint.RelativeXX
Health.Font = Enum.Font.SourceSans
Health.Text = "Health: nil"
Health.TextColor3 = Color3.new(1, 1, 1)
Health.TextSize = 30

Spawntime.Name = "Spawntime"
Spawntime.Parent = Frame
Spawntime.BackgroundColor3 = Color3.new(1, 1, 1)
Spawntime.BackgroundTransparency = 1
Spawntime.Position = UDim2.new(0.800000012, 0, 0, 0)
Spawntime.Size = UDim2.new(0.200000003, 0, 0, 34)
Spawntime.SizeConstraint = Enum.SizeConstraint.RelativeXX
Spawntime.Font = Enum.Font.SourceSans
Spawntime.Text = "Seconds since spawn: nil"
Spawntime.TextColor3 = Color3.new(1, 1, 1)
Spawntime.TextSize = 20
-- Scripts:
function SCRIPT_NDMS87_FAKESCRIPT() -- Frame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Frame
	repeat wait() until game:IsLoaded()
	wait(1)
	local labels = script.Parent
	
	function round(n)
	    return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
	end
	
	function setsize()
	local x = workspace.CurrentCamera.ViewportSize.X - 375
	local old = script.Parent.Size
	script.Parent.Size = UDim2.new(0, x, 0, old.Y.Offset)
	end
	setsize()
	workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
	setsize()
	end)
	spawntime = os.time()
	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
	spawntime = os.time()
	end)
	local plr = game:GetService("Players").LocalPlayer
	game:GetService("RunService").RenderStepped:Connect(function()
		local pos = plr.Character.HumanoidRootPart.CFrame.Position
		local health = plr.Character:FindFirstChildOfClass("Humanoid").Health
		labels.Ping.Text = "Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
		labels.FPS.Text = "FPS: " .. fps
		labels.YourPosition.Text = "Position: " .. round(pos.x) .. ", " .. round(pos.y) .. ", " .. round(pos.z)
		labels.Health.Text = "Health: " .. tostring(health)
		labels.Spawntime.Text = "Seconds since spawn: " ..os.time() - spawntime
	end)
	while wait() do
		fps = round(2/wait())
	end

end
coroutine.resume(coroutine.create(SCRIPT_NDMS87_FAKESCRIPT))