local cf = CFrame.new(game:GetService("Workspace").Muzan.SpawnPos.Value)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(10), {CFrame = cf})                    
tween:Play()