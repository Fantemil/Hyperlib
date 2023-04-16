local killall = true

local attackers = "Bright red"
local defenders = "Bright blue"

local yourteam = "defenders" --attackers or defenders

if killall == true then
while wait() do
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if yourteam == "defenders" and v.TEEM.Value == BrickColor.new(attackers) then
local ohVector31 = Vector3.new(1241.58056640625, 108.92070007324219, -104.65380859375)
local ohCFrame2 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999986112, -0.00526912464, 0, 0.00526912464, 0.999986112)
local ohInstance3 = game.Players.LocalPlayer.Character
local ohNil4 = nil
local ohVector35 = Vector3.new(1914.190673828125, -889.3026123046875, 628.5653686523438)
local ohNil6 = nil
local ohVector37 = Vector3.new(1869.135986328125, 117.61474609375, 580.281982421875)
local ohVector38 = Vector3.new(1911.817138671875, -885.7427978515625, 625.97802734375)
local ohInstance9 = v.Character.Head
local ohNumber10 = 1
local ohNumber11 = 111
local ohInstance12 = game:GetService("Players").LocalPlayer
local ohNumber13 = 30
local ohNumber14 = 327.68
local ohNumber15 = 28
local ohNumber16 = 24
local ohNumber17 = 2
local ohVector318 = Vector3.new(1914.190673828125, -889.3026123046875, 628.5653686523438)
local ohNumber19 = 48
local ohBoolean20 = false
game.Players.LocalPlayer.Character.CLASSIC.UnrealEngine.FireAltBullet:FireServer(ohVector31, ohCFrame2, ohInstance3, ohNil4, ohVector35, ohNil6, ohVector37, ohVector38, ohInstance9, ohNumber10, ohNumber11, ohInstance12, ohNumber13, ohNumber14, ohNumber15, ohNumber16, ohNumber17, ohVector318, ohNumber19, ohBoolean20)
end
if yourteam == "attackers" and v.TEEM.Value == BrickColor.new(defenders) then
local ohVector31 = Vector3.new(1241.58056640625, 108.92070007324219, -104.65380859375)
local ohCFrame2 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999986112, -0.00526912464, 0, 0.00526912464, 0.999986112)
local ohInstance3 = game.Players.LocalPlayer.Character
local ohNil4 = nil
local ohVector35 = Vector3.new(1914.190673828125, -889.3026123046875, 628.5653686523438)
local ohNil6 = nil
local ohVector37 = Vector3.new(1869.135986328125, 117.61474609375, 580.281982421875)
local ohVector38 = Vector3.new(1911.817138671875, -885.7427978515625, 625.97802734375)
local ohInstance9 = v.Character.Head
local ohNumber10 = 1
local ohNumber11 = 111
local ohInstance12 = game:GetService("Players").LocalPlayer
local ohNumber13 = 30
local ohNumber14 = 327.68
local ohNumber15 = 28
local ohNumber16 = 24
local ohNumber17 = 2
local ohVector318 = Vector3.new(1914.190673828125, -889.3026123046875, 628.5653686523438)
local ohNumber19 = 48
local ohBoolean20 = false
game.Players.LocalPlayer.Character.CLASSIC.UnrealEngine.FireAltBullet:FireServer(ohVector31, ohCFrame2, ohInstance3, ohNil4, ohVector35, ohNil6, ohVector37, ohVector38, ohInstance9, ohNumber10, ohNumber11, ohInstance12, ohNumber13, ohNumber14, ohNumber15, ohNumber16, ohNumber17, ohVector318, ohNumber19, ohBoolean20)
end
end
end
end