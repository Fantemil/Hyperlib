_G.farm = true
-- true = auto farm on | false = auto farm off

pcall(function()
   spawn(function()
       while _G.farm do wait(.5) --if game lags just change .5 to something higher like 1
           for i,v in pairs(game:GetService("Workspace").Drops:GetChildren()) do
               v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
           end
       end
   end)
end)