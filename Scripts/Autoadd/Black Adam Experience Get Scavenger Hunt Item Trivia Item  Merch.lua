for i,v in pairs(workspace.Scavenger:GetDescendants()) do
   if v:FindFirstChild("TouchInterest") then
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v,0)
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v,1)
       task.wait()
   end
end

task.wait()

for i,v in pairs(workspace["Trivia Hall"].TriviaReward:GetChildren()) do
    if v:FindFirstChild("TouchInterest") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v,0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v,1)
    end
end