--// Services \\--
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

--// Variables \\--
local PlayerName = Players.LocalPlayer.Name
local Buy = ReplicatedStorage:WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TycoonService"):WaitForChild("RF"):WaitForChild("BuyObject")
local Reb = ReplicatedStorage.Knit.Services.TycoonService.RF:WaitForChild("Rebirth")
local Pay = ReplicatedStorage.Knit.Services.TycoonService.RF:WaitForChild("PayIncome")

--// Get Money \\--
task.spawn(function()
    while task.wait() do
        task.spawn(Pay.InvokeServer, Pay)
    end
end)

--// Buy Buttons \\--
while task.wait(0.2) do
    for _, Tycoon in next, workspace.Tycoons:GetChildren() do        
        if Tycoon:GetAttribute("Owner") == PlayerName then                
            for _, A_1 in next, Tycoon.Buttons:GetChildren() do                
                if not A_1:FindFirstChild("Type") or A_1.Type.Value ~= "Gamepass" then                        
                    task.spawn(function()                        
                        Buy:InvokeServer(A_1.Name, 3)                        
                    end)                        
                    task.wait()                        
                end                
            end                
        end        
    end
    Reb:InvokeServer()
end