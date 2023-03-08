_G.Enabled = true
while task.wait() do
   pcall(function()
       if _G.Enabled then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Stages.Finish.Winner.CFrame
       end
   end)
end