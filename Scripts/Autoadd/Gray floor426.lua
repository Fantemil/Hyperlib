--> Variables
--> only for 4.4 u fat fuck
local UIS = game:GetService("UserInputService")
local Run = game:GetService("RunService")
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Root = Character:WaitForChild("HumanoidRootPart")
_G.Normal = 8000
_G.Tilted = 5500
_G.Wiper = 10000

--> Create
UIS.InputBegan:Connect(function(input, gpe)
    if input.KeyCode == Enum.KeyCode.LeftBracket and not gpe then
        Root.Tilt.P = _G.Normal
    end

    if input.KeyCode == Enum.KeyCode.RightBracket and not gpe then
        Root.Tilt.P = _G.Tilted
    end

    if input.KeyCode == Enum.KeyCode.Six and not gpe then
        Root.Tilt.P = _G.Wiper
    end

    if input.KeyCode == Enum.KeyCode.LeftControl and not gpe then
        Character.Humanoid.WalkSpeed = 30
    end
end)

UIS.InputEnded:Connect(function(input, gpe)
    if input.KeyCode == Enum.KeyCode.LeftControl and not gpe then
       Character.Humanoid.WalkSpeed = 16
    end
end)

if game.PlaceId == 4596514848 then
    game:GetService("ReplicatedStorage").GameValues.staminaRegen.Value = math.huge
else
    -- ur a asian
end