_G.moneyfarm = true

for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].Finish["Money Pig"]:GetDescendants()) do
   
   if v:IsA("ParticleEmitter") then
       
       v.Parent.Name = "MeshPart 2"
   end
end

spawn(function()
   while _G.moneyfarm == true do
       
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["Glass Bridge"].Finish["Money Pig"].MeshPart, 0)
task.wait(.5)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["Glass Bridge"].Finish["Money Pig"].MeshPart, 1)

end
end)