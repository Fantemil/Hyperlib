--[[
    rebirth
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Profile"):WaitForChild("RebirthRequest"):InvokeServer()
]]
--[[
    claim group sword
    local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Common"):WaitForChild("Reward"):WaitForChild("GroupReward"):FireServer(unpack(args))

]]
--[[
    hit
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Weapon"):WaitForChild("TakeDamage"):FireServer()

]]
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 85
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Common"):WaitForChild("Reward"):WaitForChild("GroupReward"):FireServer(unpack(args))

function hi()
    while true do task.wait()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Weapon"):WaitForChild("TakeDamage"):FireServer()
    end
end
game:GetService("RunService").Stepped:Connect(function
    task.spawn(hi)
end)
while true do wait(5)
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Profile"):WaitForChild("RebirthRequest"):InvokeServer()
end