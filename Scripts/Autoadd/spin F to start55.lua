local player = game.Players.LocalPlayer
local character = player.Character

local speed = 55

local userInputService = game:GetService("UserInputService")
local keybind = Enum.KeyCode.F  -- Replace with your desired keybind

local isSpinning = false

local function spinCharacter()
    if isSpinning then
        return
    end

    isSpinning = true

    while isSpinning do
        character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(speed), 0))
        wait(0.01)
    end
end

local function stopSpinning()
    isSpinning = false
end

local function onKeyPress(input)
    if input.KeyCode == keybind then
        spinCharacter()
    end
end

local function onKeyRelease(input)
    if input.KeyCode == keybind then
        stopSpinning()
    end
end

userInputService.InputBegan:Connect(onKeyPress)
userInputService.InputEnded:Connect(onKeyRelease)
