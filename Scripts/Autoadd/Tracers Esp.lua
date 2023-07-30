-- I MADE THIS FOR FUN
-- HI IM FLAMES I WAS BORED LOL
-- TIMMY IS SAD CAUSE YOU DIDNT JOIN MY DISCORD
-- https://discord.gg/MpY7h3WqNh
-- https://discord.gg/MpY7h3WqNh
-- https://discord.gg/MpY7h3WqNh
-- IF YOU JOIN LITTLE TIMMY WILL BE HAPPY
-- HIIIIIIIIIIIII
-- VECTOR OH! YEAHHHH
-- AAAAAAAAAAAAAAAAAAA
-- TAKE IT
-- REEEEEEEEEEEEEEE

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local DrawingLines = {}
local toggleLines = false

local function UpdateLines()
    local viewportSize = workspace.CurrentCamera.ViewportSize

    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local character = player.Character.HumanoidRootPart
            local endPosition = workspace.CurrentCamera:WorldToViewportPoint(character.Position)
            
            if DrawingLines[player.UserId] then
                if endPosition.Z > 0 then
                    DrawingLines[player.UserId].To = Vector2.new(endPosition.X, endPosition.Y)
                    DrawingLines[player.UserId].Visible = true
                else
                    DrawingLines[player.UserId].Visible = false
                end

            elseif endPosition.Z > 0 then
                local Line = Drawing.new("Line")
                Line.From = Vector2.new(viewportSize.X/2, viewportSize.Y)
                Line.Color = Color3.fromRGB(255, 255, 255)
                Line.Thickness = 2
                Line.Transparency = 1
                Line.ZIndex = 1
                Line.To = Vector2.new(endPosition.X, endPosition.Y)
                Line.Visible = true

                DrawingLines[player.UserId] = Line
            end
        end
    end

    for userId, line in pairs(DrawingLines) do
        local player = Players:GetPlayerByUserId(userId)
        if not player then
            line:Remove()
            DrawingLines[userId] = nil
        end
    end
end

local function RemoveLines()
    for _, line in pairs(DrawingLines) do
        line:Remove()
    end
    DrawingLines = {}
end

local function ToggleLines(input)
    if input.KeyCode == Enum.KeyCode.F then
        toggleLines = not toggleLines
        if toggleLines then
            UpdateLines()
        else
            RemoveLines()
        end
    end
end

UserInputService.InputBegan:Connect(ToggleLines)

while wait() do
    if toggleLines then
        UpdateLines()
    end
end
