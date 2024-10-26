game.Workspace.Finish.Teleporter.Name = "Teleporter1"
while true do
    wait()
    local TweenService = game:GetService("TweenService")
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local finishSpawn = workspace.FinishSpawn.Position
    local teleporter = workspace.Finish.Teleporter.Position
    
    local function tweenToPosition(targetPosition)
        local tweenInfo = TweenInfo.new(7.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local goal = {Position = targetPosition}
        
        local tween = TweenService:Create(character.PrimaryPart, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait()
    end
    
        wait(3)
        tweenToPosition(finishSpawn)
        wait(4)
        tweenToPosition(teleporter)
    end