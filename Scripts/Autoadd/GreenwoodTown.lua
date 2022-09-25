local teamremote = game.ReplicatedStorage.Remote.changeTeam
local team = game:GetService("Teams")["TEAM NAME HERE"].TeamColor

teamremote:InvokeServer(team)