_G.Farm = true

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-302, 19, 843)
wait(0.5)
while _G.Farm do
   wait(0.3)
local ohInstance1 = workspace[game.Players.LocalPlayer.Name][game:GetService("Players").LocalPlayer.equippedBall.Value].Handle
local ohVector32 = 94.680191040039, 91.668006896973, 0.50552368164062
local ohVector33 = -301.3918762207, 19.509910583496, 842.79827880859
local ohBoolean4 = true
local ohInstance5 = workspace.Hoop.Hoop
local ohVector36 = 0, -90.269996643066, 0

game:GetService("ReplicatedStorage").Shot:FireServer(ohInstance1, ohVector32, ohVector33, ohBoolean4, ohInstance5, ohVector36)


local ohNumber1 = 196
local ohInstance2 = workspace.Hoop
local ohNumber3 = 5

game:GetService("ReplicatedStorage").Score:FireServer(ohNumber1, ohInstance2, ohNumber3)
end