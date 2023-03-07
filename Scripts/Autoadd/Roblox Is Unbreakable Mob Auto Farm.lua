-- Mobs = {"Zombie", "Thug", "Graveyard Zombie", "Dio Brando", "Brute", "Dio Brando (Teen)", "Brawler", "Bruford"}

Toggle = true -- Toggle Off / On
local Mob = "Thug"
while Toggle do
   task.wait()
   Enemies = game:GetService("Workspace").NPCs.Hostile:GetChildren()
   for i = 1, #Enemies do
       local v = Enemies[i]
       if
           v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and
               v:FindFirstChildOfClass("Humanoid").Health > 0
        then
           game.Players.LocalPlayer.Character.PrimaryPart.CFrame =
               CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
       end
       pcall(
           function()
               if game.Players.LocalPlayer:DistanceFromCharacter(v.PrimaryPart.Position) < 10 then
                   game:GetService("Players").LocalPlayer.Backpack.Events.HotkeyEvent:FireServer("Kick", true, false)
                   game:GetService("Players").LocalPlayer.Backpack.Events.HotkeyEvent:FireServer(
                       "Light Punch",
                       true,
                       false
                   )
               end
           end
       )
   end
end