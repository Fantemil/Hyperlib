for i = 1,50 do
local Target = "harrypsavage"
local ohInstance1 = workspace[Target .. "_HumanoidMover"].Collider
local ohVector32 = Vector3.new(math.huge, math.huge,math.huge)
local ohNumber3 = math.huge

workspace[game.Players.LocalPlayer.Name].ThrowObjectFunc:InvokeServer(ohInstance1, ohVector32, ohNumber3)
end