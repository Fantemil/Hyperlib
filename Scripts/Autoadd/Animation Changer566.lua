local player = game.Players.LocalPlayer

if player.Character and player.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
    return
end

local function AntiGoofy()
    local character = player.Character
    local animate = character:WaitForChild("Animate")

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
            track:Stop()
        end
    end

    if animate:FindFirstChild("run") then
        animate:WaitForChild("run"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
    end
    if animate:FindFirstChild("jump") then
        animate:WaitForChild("jump"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
    end
    if animate:FindFirstChild("fall") then
        animate:WaitForChild("fall"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
    end
    if animate:FindFirstChild("climb") then
        animate:WaitForChild("climb"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
    end
    if animate:FindFirstChild("swim") then
        animate:WaitForChild("swim") :FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
    end
    if animate:FindFirstChild("swimidle") then
        animate:WaitForChild("swimidle"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
    end
    if animate:FindFirstChild("walk") then
        animate:WaitForChild("walk"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
    end
    if animate:FindFirstChild("idle") then
        animate.idle:WaitForChild("Animation1").AnimationId = "http://www.roblox.com/asset/?id=0"
        animate.idle:WaitForChild("Animation2").AnimationId = "http://www.roblox.com/asset/?id=0"
    end
end

local function setAnimations()
    local character = player.Character
    local animate = character:WaitForChild("Animate")

    if animate:FindFirstChild("run") then
        animate:WaitForChild("run"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=707861613"
    end
    if animate:FindFirstChild("jump") then
        animate:WaitForChild("jump"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319841935"
    end
    if animate:FindFirstChild("fall") then
        animate:WaitForChild("fall"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319839762"
    end
    if animate:FindFirstChild("climb") then
        animate:WaitForChild("climb"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319816685"
    end
    if animate:FindFirstChild("swim") then
        animate:WaitForChild("swim"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=707876443"
    end
    if animate:FindFirstChild("swimidle") then
        animate:WaitForChild("swimidle"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=707894699"
    end
    if animate:FindFirstChild("walk") then
        animate:WaitForChild("walk"):FindFirstChildOfClass("Animation").AnimationId = "http://www.roblox.com/asset/?id=707897309"
    end
    if animate:FindFirstChild("idle") then
        animate.idle:WaitForChild("Animation1").AnimationId = "http://www.roblox.com/asset/?id=782841498"
        animate.idle:WaitForChild("Animation2").AnimationId = "http://www.roblox.com/asset/?id=782845736"
    end
end

local function onCharacterAdded(character)
    AntiGoofy()
    setAnimations()
end

player.CharacterAdded:Connect(onCharacterAdded)


if player.Character then
    onCharacterAdded(player.Character)
end