local Settings        = {
   DeathReason = "died uwu"; -- this isnt filterd either
   Damage      = 1000; --// (this can also be negative to add hp, or set it to 0/0 for godmode)
   ExcludeLPlr = true;
}


local GetService      = game.GetService
local FindFirstChild  = game.FindFirstChild

local Players       = GetService(game, "Players")
local Workspace     = GetService(game, "Workspace")

local LocalPlayer   = Players.LocalPlayer


local CommonPlayerScript = require(FindFirstChild(Workspace, "CommonPlayerScript"))


function GetPlayerRemotes(Target)
   if Settings.ExcludeLPlr and Target == LocalPlayer then return end
   local TargetCharacter = Target and Target.Character
   local PlayerScript    = TargetCharacter and FindFirstChild(TargetCharacter, "PlayerScript")
   
   return FindFirstChild(PlayerScript, "DealDamage"), FindFirstChild(PlayerScript, "SetCauseOfDeath")
end

for _, Player in next, Players.GetPlayers(Players) do
   local DealDamage, SetCauseOfDeath = GetPlayerRemotes(Player)
   if DealDamage and SetCauseOfDeath then
       SetCauseOfDeath:FireServer( Settings.DeathReason );
       DealDamage:FireServer(Settings.Damage, CommonPlayerScript.makeGauss(Player.Name))
   end
end