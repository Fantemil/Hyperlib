

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()


local dumpstersFolder = game.Workspace:WaitForChild("Dumpsters")


for i, dumpster in pairs(dumpstersFolder:GetChildren()) do
    
    if dumpster:IsA("Model") and dumpster.Name == "Dumpster" then
      
        local unionOperation = dumpster:FindFirstChild("Union")
        if unionOperation then
            
            local clickDetector = unionOperation:FindFirstChild("ClickDetector")
            if clickDetector and clickDetector:IsA("ClickDetector") then
               
                local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                humanoidRootPart.CFrame = unionOperation.CFrame + Vector3.new(0, -15, 0) 

                Wait(0.5)
                fireclickdetector(clickDetector)
            end
        end
    end
end
