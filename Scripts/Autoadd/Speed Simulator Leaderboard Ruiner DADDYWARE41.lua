--Auto Rebirth
local RunService = game:GetService("RunService")
_G.yes = true 

while _G.yes == true do
    task.wait(0.2)
    game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(9e999, 0)
    game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
end


--Infinite Cash

--game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(0, 1000000000000000)   <--- This is the max (DONT CHARGE)