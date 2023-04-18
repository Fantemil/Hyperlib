local codes = require(game.ReplicatedStorage.Resources.ModuleScripts.MainData).Codes

for i,v in next, codes do
   game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Code:FireServer(i)
end