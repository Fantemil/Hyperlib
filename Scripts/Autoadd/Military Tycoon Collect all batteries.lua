for k,v in pairs (game:GetService("Workspace").EventsFolder.BatteryEvent:GetDescendants()) do
    if v:IsA("BasePart") and v:GetChildren("TouchInterest") then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
       wait(0.2)
   end
end