-- Change getgenv().keybind to whatever key you like, execute to toggle on/off

getgenv().on = not on -- do not edit
getgenv().keybind = Enum.KeyCode.E -- change to desired keybind (https://create.roblox.com/docs/reference/engine/enums/KeyCode)
-- do not edit below --
if on and not conn then
   local j = tostring(keybind)
   j = string.gsub(j, "Enum.KeyCode.", "")
   game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Asoria RPG Kill Aura";
  Text = "Script is on, hold " .. j .. " while near mobs to commit mass genocide";
  Duration = 10;
   })
   local holding = false
   local mouse = game.Players.LocalPlayer:GetMouse()
   getgenv().conn = game:GetService("UserInputService").InputBegan:Connect(function(k, t)
       if k.KeyCode == keybind and not t and not holding then
           holding = true
           local conn2 = game:GetService("UserInputService").InputEnded:Connect(function(kk)
               if kk.KeyCode == keybind and holding then
                   holding = false
               end
           end)
           repeat
               task.wait()
                   for _, v in pairs(workspace:GetPartBoundsInRadius(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, 7.5)) do
                       v = v.Parent
                   if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Head") and v:FindFirstChild("Head") and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health ~= 0 and not game.Players:GetPlayerFromCharacter(v) then
                       
                       local args = {
                           [1] = "melee",
                           [2] = v:FindFirstChildOfClass("Humanoid"),
                           [3] = false
                       }

                       game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("useItem"):FireServer(unpack(args))

                   end
               end
           until not holding
           conn2:Disconnect()
       end
   end)
elseif not on and conn then
   game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Asoria RPG Kill Aura";
  Text = "Script is off";
  Duration = 5;
   })
   getgenv().conn:Disconnect()
   getgenv().conn = nil
end