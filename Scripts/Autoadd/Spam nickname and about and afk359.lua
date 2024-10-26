if _G.spamnickname then
    _G.spamnickname = false
    return
elseif _G.spamabout then
    _G.spamabout = false
    return
end
_G.spamnickname = true
_G.spamabout = true 
local text1 = "L"
local text2 = "Imagine"
local text3 = "LOL"
local text4 = "Hi guys find ny"
function spamnickname()
    local args = {
    [1] = "Nickname",
    [2] = text1,
    [3] = Color3.new(math.random(), math.random(), math.random())
    }

    game:GetService("ReplicatedStorage"):WaitForChild("IconEvents"):WaitForChild("ChangeBioEvent"):FireServer(unpack(args))
    wait(0.01)
    local args = {
    [1] = "Nickname",
    [2] = text2,
    [3] = Color3.new(math.random(), math.random(), math.random())
    }

    game:GetService("ReplicatedStorage"):WaitForChild("IconEvents"):WaitForChild("ChangeBioEvent"):FireServer(unpack(args))
    wait(0.01)
    local args = {
    [1] = "Nickname",
    [2] = text3,
    [3] = Color3.new(math.random(), math.random(), math.random())
    }

    game:GetService("ReplicatedStorage"):WaitForChild("IconEvents"):WaitForChild("ChangeBioEvent"):FireServer(unpack(args))
    wait(0.01)
    local args = {
    [1] = "Nickname",
    [2] = text4,
    [3] = Color3.new(math.random(), math.random(), math.random())
    }

    game:GetService("ReplicatedStorage"):WaitForChild("IconEvents"):WaitForChild("ChangeBioEvent"):FireServer(unpack(args))
    wait(0.01)
end
function spamabout()
    local args = {
    [1] = "About",
    [2] = text1,
    [3] = Color3.new(math.random(), math.random(), math.random())
    }

    game:GetService("ReplicatedStorage"):WaitForChild("IconEvents"):WaitForChild("ChangeBioEvent"):FireServer(unpack(args))
    wait(0.01)
    local args = {
    [1] = "About",
    [2] = text2,
    [3] = Color3.new(math.random(), math.random(), math.random())
    }

    game:GetService("ReplicatedStorage"):WaitForChild("IconEvents"):WaitForChild("ChangeBioEvent"):FireServer(unpack(args))
    wait(0.01)
    local args = {
    [1] = "About",
    [2] = text3,
    [3] = Color3.new(math.random(), math.random(), math.random())
    }

    game:GetService("ReplicatedStorage"):WaitForChild("IconEvents"):WaitForChild("ChangeBioEvent"):FireServer(unpack(args))
    wait(0.01)
    local args = {
    [1] = "About",
    [2] = text4,
    [3] = Color3.new(math.random(), math.random(), math.random())
    }

    game:GetService("ReplicatedStorage"):WaitForChild("IconEvents"):WaitForChild("ChangeBioEvent"):FireServer(unpack(args))
    wait(0.01)
end
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("AFK"):FireServer(unpack(args))
if _G.spamnickname and _G.spamabout then
    while _G.spamnickname and _G.spamabout do
        task.spawn(spamnickname)
        task.spawn(spamabout)
        wait(0.1)
        local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("AFK"):FireServer(unpack(args))

    end
end