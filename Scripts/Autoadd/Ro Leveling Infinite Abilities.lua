local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(asd)
if asd.KeyCode == Enum.KeyCode.Q then
     game.ReplicatedStorage.Events.AssassinSkillFirst:fireServer()
     game.ReplicatedStorage.Events.AssassinSkillSecond:fireServer()
     game.ReplicatedStorage.Events.AssassinSkillThird:fireServer()
     game.ReplicatedStorage.Events.PunchEvent:fireServer()
end
end)