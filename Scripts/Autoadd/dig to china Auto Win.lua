local plr = game:GetService("Players").LocalPlayer
local hrp = plr.Character.HumanoidRootPart

local china = workspace.ChinaDetector

while task.wait(1) do
   firetouchinterest(hrp, china, 0)
   task.wait(.1)
   firetouchinterest(hrp, china, 1)
end