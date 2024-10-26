local yuzzlrbx_on_yt_Player = game.Players.LocalPlayer
local yuzzlrbx_on_yt_Mouse = yuzzlrbx_on_yt_Player:GetMouse()
local yuzzlrbx_on_yt_InputService = game:GetService("UserInputService")

local yuzzlrbx_on_yt_CtrlHeld = false

local function yuzzlrbx_on_yt_Teleport(position)
    local yuzzlrbx_on_yt_Character = yuzzlrbx_on_yt_Player.Character or yuzzlrbx_on_yt_Player.CharacterAdded:Wait()
    local yuzzlrbx_on_yt_RootPart = yuzzlrbx_on_yt_Character:WaitForChild("HumanoidRootPart")
    yuzzlrbx_on_yt_RootPart.CFrame = CFrame.new(position + Vector3.new(0, 3, 0))
end

yuzzlrbx_on_yt_InputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
        yuzzlrbx_on_yt_CtrlHeld = true
    end
end)

yuzzlrbx_on_yt_InputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
        yuzzlrbx_on_yt_CtrlHeld = false
    end
end)

yuzzlrbx_on_yt_Mouse.Button1Down:Connect(function()
    if yuzzlrbx_on_yt_CtrlHeld then
        local yuzzlrbx_on_yt_Target = yuzzlrbx_on_yt_Mouse.Hit
        if yuzzlrbx_on_yt_Target then
            yuzzlrbx_on_yt_Teleport(yuzzlrbx_on_yt_Target.p)
        end
    end
end)
