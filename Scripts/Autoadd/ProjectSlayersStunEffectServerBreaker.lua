local repl = game.ReplicatedStorage
local plr  = game.Players.LocalPlayer
local scr  = plr.PlayerScripts.Client_Modules.Main_Script

local r = repl.Remotes.To_Server.Handle_Initiate_C
for i,v in next, workspace:GetDescendants() do
   if v:IsA("BasePart") then
       r:FireServer(
           scr:GetFullName(),
           os.clock(),
           "Stunned_Head_Effect",
           v, true
       )
       
       --v.BrickColor = BrickColor.Red()
   end
end