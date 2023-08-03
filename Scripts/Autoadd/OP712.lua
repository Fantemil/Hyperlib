--Auto Rebirth
local RunService = game:GetService("RunService")_G.yes = true turn this "False" to offlocal speedyboifunction Ez()if _G.yes == true thengame:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(9e999, 0)game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()elsespeedyboi:Disconnect()endendspeedyboi = RunService.Heartbeat:Connect(Ez)


--Infinite Cashgame:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(0, 1000000000000000)   <--- This is the max (DONT CHARGE)