local Target = "PlayerUsername"

local GetPlayers = game.Players
local GetTarget = GetPlayers[Target]
for _,v in pairs(game:GetService("Workspace").BuiltParts[GetTarget.UserId]:GetDescendants()) do
       if v:IsA("Model") then
local oof = v
       
workspace[game.Players.LocalPlayer.Name].RequestUnbuildPart:InvokeServer(oof)
end
end