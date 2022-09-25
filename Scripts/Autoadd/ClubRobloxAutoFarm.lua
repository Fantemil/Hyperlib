for i = 1,770,1 do
local player = game.Players.LocalPlayer.Character
wait(.5)
local ohString1 = "PizzaBox"
game:GetService("ReplicatedStorage").RemoteEvents.RoleplayEvents.RoleplayItemEvents.remoteEquipRoleplayItem:FireServer(ohString1)
wait(.5)
player:MoveTo(game:GetService("Workspace").GlobalServerItems.Rooms.HomeWorld.ScriptParts.PizzaDelivery.Position)
end