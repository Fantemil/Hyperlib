_G.Enabled = true
while task.wait() do
   pcall(function()
       if _G.Enabled then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace['Glass Bridge'].Finish['Money Pig'].Money.CFrame
       end
   end)
end