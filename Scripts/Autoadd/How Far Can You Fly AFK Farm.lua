--sorry for the bad code its a long story
while true do
   local PlayerHead = game.Players.LocalPlayer.Character.Head -- players head
for i, v in pairs(workspace.Coins:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(PlayerHead, v.Parent, 0)
        task.wait()
        firetouchinterest(PlayerHead, v.Parent, 1)
    end
end 
task.wait()
end