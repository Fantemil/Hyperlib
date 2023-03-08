local RunService = game:GetService("RunService")
_G.yes = true
local speedyboi
function Ez()
if _G.yes == true then
game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(9e999, 0)
game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
else
   speedyboi:Disconnect()
end
end
speedyboi = RunService.Heartbeat:Connect(Ez)