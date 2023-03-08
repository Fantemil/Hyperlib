_G.collectpump = true -- true/false, you can turn it off

local plr = game.Players.LocalPlayer.Character.Head

while _G.collectpump == true do
 for i, v in pairs(game:GetService("Workspace").Scripts.PumpkinsCollect.Storage:GetDescendants()) do
     if v.Name == "TouchInterest" and v.Parent then
         firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
     end
 end
wait()
end