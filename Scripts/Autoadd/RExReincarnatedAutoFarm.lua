local StoneBlacklist = {
"Stone";
"Diorite";
"Magma";
"Granite";
"Obsidian";
"Basalt";
"Mantle";
}

local SpecialStoneBlacklist = {
"Marble";
"Celestone";
"Reflectistone";
"Prismatisone";
"Ice";
"Voidstone";
"Etherstone";

}
warn("Cookie")

while true do
for _, v in pairs(workspace.Mine:GetChildren()) do
if game.Players.LocalPlayer.Backpack:FindFirstChild("Pickaxe") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Pickaxe)
end
if v.Position.X <= 557 and v.Position.X >= 468 and v.Position.Z >= -46 and v.Position.Z <= 56 then
-- if not table.find(StoneBlacklist, v.Name) and not table.find(SpecialStoneBlacklist, v.Name) then
  -- game.Players.LocalPlayer.Character:PivotTo(v.CFrame)
  -- warn(v.Name)
   wait()
game:GetService("ReplicatedStorage").MineEvent:FireServer(v)
end
end
wait()
end