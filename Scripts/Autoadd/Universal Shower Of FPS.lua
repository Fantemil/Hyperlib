local FpsGui = Instance.new("ScreenGui")
local FPSAmount = Instance.new("TextLabel")
local RunService = game:GetService("RunService")
local TimeFunction = RunService:IsRunning() and time or os.clock

local LastIteration, Start
local FrameUpdateTable = {}

local function HeartbeatUpdate()
 LastIteration = TimeFunction()
 for Index = #FrameUpdateTable, 1, -1 do
  FrameUpdateTable[Index + 1] = FrameUpdateTable[Index] >= LastIteration - 1 and FrameUpdateTable[Index] or nil
 end

 FrameUpdateTable[1] = LastIteration
 FPSAmount.Text = tostring(math.floor(TimeFunction() - Start >= 1 and #FrameUpdateTable or #FrameUpdateTable / (TimeFunction() - Start)))
end

Start = TimeFunction()
RunService.Heartbeat:Connect(HeartbeatUpdate)

FpsGui.Name = "FpsGui"
FpsGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FpsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FPSAmount.Name = "FPSAmount"
FPSAmount.Parent = FpsGui
FPSAmount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPSAmount.BackgroundTransparency = 1.000
FPSAmount.Size = UDim2.new(0.150000006, 0, 0.100000001, 0)
FPSAmount.Font = Enum.Font.Code
FPSAmount.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSAmount.TextScaled = true
FPSAmount.TextSize = 14.000
FPSAmount.TextWrapped = true
FPSAmount.Draggable = true