print("SOURCE CODE")
local CFrameEnd = CFrame.new(-6.02558994, -27.9724312, -110.739014, -0.987828076, -0.0481447242, 0.147911534, -0.05844016, 0.996102512, -0.0660648122, -0.14415437, -0.0739046484, -0.986791551) -- Place your coords in here
local Time = 0 -- Time in seconds
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.Snail.Cube, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait()

wait(2)
local CFrameEnd = CFrame.new(game.workspace.map.winGates.LastGate.BasePart.Position) -- Place your coords in here
local Time = 30 -- Time in seconds
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.Snail.Cube, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait()
