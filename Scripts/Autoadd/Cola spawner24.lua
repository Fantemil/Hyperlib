local GiveItem = game.ReplicatedStorage.GiveItem
local plr = game.Players.LocalPlayer
local chr = plr.Character
local backpack = plr.Backpack

for i = 0, 100 do -- U can change a number of cans of cola
  GiveItem:FireServer("DiskCola")
  local DiskCola = backpack:WaitForChild("DiskCola")
  DiskCola.Parent = chr
  DiskCola.Parent = workspace
end