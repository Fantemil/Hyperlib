local tanks = workspace:WaitForChild("Tanks"):WaitForChild("Tanks")
local localPlayer = game:GetService("Players").LocalPlayer

while true do
    local ded
    for _, part in ipairs(tanks:GetChildren()) do
        if part:IsA("Model") then
            local humanoidRootPart = part:FindFirstChild("HumanoidRootPart")
            
            if humanoidRootPart and part ~= localPlayer.Character then
                ded = humanoidRootPart.CFrame
            end
        end
    end
    
    if ded then
        local args = {
            [1] = ded
        }

        localPlayer.Character:WaitForChild("Controls"):WaitForChild("Shoot"):FireServer(unpack(args))
    else
        print("poo")
    end

    wait(0.1) 
end
