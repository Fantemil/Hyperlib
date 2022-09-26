for i,v in pairs(game:GetService("Workspace").Map.Coins:GetDescendants()) do
local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
if v:IsA("Part") then
    local New_CFrame = CFrame.new(v.Position)


local ts = game:GetService("TweenService")
local char = game.Players.LocalPlayer.Character

local part = Root
local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
local tp = {CFrame = New_CFrame}

        ts:Create(part, ti, tp):Play()
        wait(2)   
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
        wait(0.5)

    end
        end