-- By DylanIsAKing#2402 :)

if getgenv().autoCollect then getgenv().autoCollect = false
else getgenv().autoCollect = true
end

local function touch(object)
    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, object, 0)
    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, object, 1)
end

while getgenv().autoCollect do
    for i, v in pairs(game:GetService("Workspace").orbFolder.City:GetChildren()) do
        if v:FindFirstChild("outerOrb") then
            touch(v.outerOrb)
        elseif v:FindFirstChild("outerGem") then
            touch(v.outerGem)
        end
        task.wait()
    end
    for i, v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
        touch(v)
        task.wait()
    end
end