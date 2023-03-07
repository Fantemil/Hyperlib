getgenv().AutoBomb = true

while getgenv().AutoBomb do
   local bomb = game:GetService("Workspace").Zones.BossRoomZone.Hovercraft.Bombs.BombModel
   repeat task.wait() until bomb
   game:GetService("ReplicatedStorage").Packages["_Index"]["sleitnick_knit@1.4.7"].knit.Services.BossRoomZoneService.RF.hhit:InvokeServer(bomb)
end