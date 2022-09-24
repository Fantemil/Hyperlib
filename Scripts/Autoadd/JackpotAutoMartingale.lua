local Settings = {
   BaseBet = 1,
   Increase = 2,
   Type = "Gems",
   TotalBets = 100
}

local ScriptInformation = {
   CurrentBet = 1
}

for i=1, Settings.TotalBets do
   local Response = game:GetService("ReplicatedStorage").Communication.GameCoinflip:InvokeServer("Heads", ScriptInformation.CurrentBet, Settings.Type)
   ScriptInformation.CurrentBet = Response and Settings.BaseBet or ScriptInformation.CurrentBet * Settings.Increase
end