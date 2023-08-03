for i,v in next, workspace.Scavenger:GetDescendants() do
   if v:FindFirstChildOfClass("TouchTransmitter") then
       game.Players.LocalPlayer.Character.HumanoidRootPart.Position = v.Position
       task.wait(1)
   end
end