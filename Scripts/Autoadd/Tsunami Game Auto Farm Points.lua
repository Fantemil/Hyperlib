local Amt = 4
local WaitTime = 7


local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local wp = game:GetService("Workspace").ScriptImportance.WinnersTunnel.WinnersPart

--print((Amt * WaitTime) + (Amt * 3) .. "s Is how long you will wait")


for i = 1, Amt, 1 do
    
local ts = game:GetService("TweenService")
local ti = TweenInfo.new(3, Enum.EasingStyle.Linear)
local tween = ts:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, ti, {CFrame = CFrame.new(game:GetService("Workspace").ScriptImportance.WinnersTunnel.WinnersPart.Position)})


tween:Play()

tween.Completed:Wait()

wait(WaitTime)
end