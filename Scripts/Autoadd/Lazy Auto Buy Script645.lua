local tycoonName = "Tycoon 1" -- Change this

local Players = game:GetService("Players")
local tycoon = game:GetService("Workspace").Tycoons[tycoonName]

if tycoon then
    for i = 1, 1000 do
        task.wait(0.2)
        local buttonsFolder = tycoon.ButtonsFolder

        local player = Players.LocalPlayer
        local character = player.Character
        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

        if not humanoidRootPart then
            return
        end
        for _, button in ipairs(buttonsFolder:GetChildren()) do
            if button.Name ~= " " then

                local floorNumberValue = button:FindFirstChild("FloorNumber")

                if floorNumberValue then
                

                    local buttonPosition = button.WorldPivot.Position

                    if buttonPosition then
                        humanoidRootPart.CFrame = CFrame.new(buttonPosition)
                        break
                    end
                else
                    print("I like men")
                end
            end
        end
    end
end
