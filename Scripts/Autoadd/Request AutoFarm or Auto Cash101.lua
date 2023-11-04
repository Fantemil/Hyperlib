local player = game:GetService("Players")
local lplayer = player.LocalPlayer
local character = lplayer.Character
local mobname = {
    "Arlo",
    "Blyke",
    "Cripple",
    "Isen",
    "Volcan",
    "Zeke",
    "Remi",
    "Byron",
    "Orrin",
    "Farrah",
    "Seraphine"
}
getgenv().autotp = true
while autotp do
   local function mobn()
      for _, mob in ipairs(game.Workspace:GetChildren()) do
         if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
            local compare = (character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).Magnitude
            if compare < 25 and compare > 0 and mob.Humanoid.Health > 0 and table.find(mobname, mob.Name) then
               return mob
            end
         end
      end
   end
   local mobpath = mobn()
   if mobpath ~= nil then
      repeat
         for i = 1,5 do
               local value = workspace.Entexio.Cancellations.Value
            game:GetService("ReplicatedStorage"):WaitForChild("Punch"):FireServer(mobpath.Humanoid,i,value)
         end
         wait()
      until mobpath.Humanoid.Health <= 0
   end
   wait()
end

Someone Clean this up I tried making one