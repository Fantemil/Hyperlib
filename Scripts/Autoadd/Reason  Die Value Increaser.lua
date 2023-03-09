local hash = 5436.241708698704 -- grab the 3rd argument from the bulletHit remote, resets every round
local amount = 150
local weapon = "Steyr M" -- weapons like flamethrowers, RPGs do not work

local args = {
   [1] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(weapon),
   [2] = {
       ["AR556"] = workspace.Map.Reloads.AmmoTable.AR556,
       ["AR762"] = workspace.Map.Reloads.AmmoTable.AR762,
       ["Parent"] = workspace.Map.Reloads,
       ["Potential Spawn(README)"] = workspace.Map.Reloads.AmmoTable:FindFirstChild("Potential Spawn(README)"),
       ["Sniper416"] = workspace.Map.Reloads.AmmoTable.Sniper416,
       ["Archivable"] = true,
       ["Buck 102 (hehehe get teased bro)"] = workspace.Map.Reloads.AmmoTable:FindFirstChild("Buck 102 (hehehe get teased bro)"),
       ["Clips"] = game:GetService("ReplicatedStorage").Shop.Weapons.Newspaper.Price,
       ["BR762"] = workspace.Map.Reloads.AmmoTable.BR762,
       ["Union"] = workspace.Map.Reloads.AmmoTable.Union,
       ["Shotgun"] = workspace.Map.Reloads.AmmoTable.Shotgun,
       ["Tacshotgun"] = workspace.Map.Reloads.AmmoTable.Tacshotgun,
       ["ClassName"] = "Model",
       ["Main"] = workspace.Map.Reloads.AmmoTable.Main,
       ["Name"] = "AmmoTable",
       ["className"] = "Model",
       ["HQ"] = workspace.Map.Reloads.AmmoTable.HQ
   }
}

for i = 1, amount do
   spawn(function()
       local table_1 = {
           ["Breakable"] = game.Players.LocalPlayer.Settings.Rank
       };
       local number_1 = 0
       local number_2 = hash
       local Target = game.RStorage.RemoteEvents.BulletHit
       game:GetService("ReplicatedStorage").RemoteFunctions.Restock:InvokeServer(unpack(args))
       Target:FireServer(table_1, number_1, number_2)
   end)
   task.wait(0.0005)
end