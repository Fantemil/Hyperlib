local function WriteLine(FirstPoint, SecondPoint, Framing)

local Start = FirstPoint
local End = SecondPoint
local Framing = Framing

local StartX = Start.Position.X.Scale
local StartY = Start.Position.Y.Scale

local EndX = End.Position.X.Scale

local EndY = End.Position.Y.Scale

local AccuracyPercentile = 1500

local number1 = ( math.max(StartX,StartY) / math.min(StartX, StartY) ) / AccuracyPercentile
local number2 = ( math.max(EndX, EndY) / math.min(EndX, EndY) ) / AccuracyPercentile

local FinalValue = ( math.max(number2, number1) / math.min(number2, number1) ) / AccuracyPercentile


local PosX = StartX
local PosY = StartY
local i = 0
repeat
i = i + 1

if PosX > EndX then
PosX = PosX - FinalValue
else
PosX = PosX + FinalValue
end

if PosY > EndY then
PosY = PosY - FinalValue
else
PosY = PosY + FinalValue
end

local Frame = Instance.new("Frame", Framing)

Frame.Position = UDim2.new(PosX, 0, PosY, 0)

local higherX = math.max(PosX, EndX)
local lowerX = math.min(PosX, EndX)

local higherY = math.max(PosY, EndY)
local lowerY = math.min(PosY, EndY)

until higherX - lowerX < 0.01 and higherY - lowerY < 0.01 -- this distance works

end


local Frame = script.Parent:FindFirstChildWhichIsA("Frame")
WriteLine(Frame.Start, Frame.End, Frame )