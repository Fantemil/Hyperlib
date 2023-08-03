--first run this script in customization literally not main game.
for i,v in pairs(game.ReplicatedStorage.Player_Data[game.Players.LocalPlayer.Name].Customization:GetDescendants()) do
    if v:IsA("NumberValue") or v:IsA("StringValue") or v:IsA("IntValue") or v:IsA("BoolValue") then
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("Change_Value",v,true)
    end
end
game:GetService("TeleportService"):Teleport(5956785391)

--2nd script execute in spinning
local wanted = {"Kamado","Agatsuma","Tomioka","Kocho"}
for i = 1,game.ReplicatedStorage.Player_Data[game.Players.LocalPlayer.Name].Spins.Value do
game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("check_can_spin")
task.wait(.13)
if table.find(wanted,game.ReplicatedStorage.Player_Data[game.Players.LocalPlayer.Name].Clan.Value) then
return end
end