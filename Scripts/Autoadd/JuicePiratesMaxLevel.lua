local data = game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].Data

local function yes()
   if data.Points.Value + data.Levels.Value > 749 then
       return 749 - data.Levels.Value
   else
       return data.Points.Value
   end
end

game:GetService("ReplicatedStorage").StatSystem.Points:FireServer("Gems", 10 - data.Gems.Value)
wait(0.3)
game:GetService("ReplicatedStorage").StatSystem.Points:FireServer("Levels", yes())
game:GetService("ReplicatedStorage").Remote.ResetStats.HaveMoney:FireServer()