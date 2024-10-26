local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local noclip = false

local function enableNoclip()
    noclip = true
    while noclip do

        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
        game:GetService("RunService").Stepped:Wait()
    end
end

local function disableNoclip()
    noclip = false

    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") and not part.CanCollide then
            part.CanCollide = true
        end
    end
end

-- Toggle noclip on and off with the "N" key
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.N then
        if noclip then
            disableNoclip()
        else
            enableNoclip()
        end
    end
end)
