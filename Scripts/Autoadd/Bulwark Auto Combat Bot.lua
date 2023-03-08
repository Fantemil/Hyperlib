local Plr = game.Players.LocalPlayer.Character
local Plrs = game:GetService("Players"):GetChildren()

for _, v in pairs(game:GetService("Players"):GetChildren()) do
 if v ~= game.Players.LocalPlayer then
  local Tool = v.Character:FindFirstChildOfClass("Tool")
  if Tool ~= nil then
   print("Character")
   Tool.Stance.Changed:Connect(function()
    if (v.Character.HumanoidRootPart.Position - Plr.HumanoidRootPart.Position).Magnitude < 15 then
     if Tool.Stance.Value == "Release" then
      game:GetService("VirtualInputManager"):SendKeyEvent(true, "R", false, game)
     elseif Tool.Stance.Value == "Kicking" then
      print("Hm")
      --game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)
      --wait(.1)
      --game:GetService("VirtualInputManager"):SendMouseButtonEvent(960, 468, 1, true, game, 1)
      --wait(.5)
      --game:GetService("VirtualInputManager"):SendMouseButtonEvent(960, 468, 1, false, game, 1)
      --wait(.1)
      --game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)
     end
     if Tool.Stance.Value == "Parrying" then
      game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
     end
    end
   end)
  end
 end
end

local co = coroutine.create(function()
 while wait() do
  x = math.random(1, 10)
  for _, v in pairs(game.Players:GetChildren()) do
   if v ~= game.Players.LocalPlayer then
    if v ~= nil then
     if v.Team.Name ~= "Spectators" then
      if v.Character:FindFirstChild("HumanoidRootPart") then
       if (v.Character.HumanoidRootPart.Position - Plr.HumanoidRootPart.Position).Magnitude < 50 then
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
         game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.Character.HumanoidRootPart.Position)
         if (v.Character.HumanoidRootPart.Position - Plr.HumanoidRootPart.Position).Magnitude < 5 then
          if v.Character:FindFirstChildOfClass("Tool") then
           if v.Character:FindFirstChildOfClass("Tool").Stance.Value ~= "Riposte" and
            v.Character:FindFirstChildOfClass("Tool").Stance.Value ~= "Release" and
            v.Character:FindFirstChildOfClass("Tool").Stance.Value ~= "Windup" then
            mouse1click()
            if x > 7 then
             wait(math.random(3, 7) * .1)
             game:GetService("VirtualInputManager"):SendKeyEvent(true, "Q", false, game)
            end
           end
          end
         end
        end
       end
      end
     end
    end
   end
  end
 end
end)

coroutine.resume(co)

game.Players.LocalPlayer.CharacterAdded:Connect(function()
 coroutine.close(co)
 print("Work")
end)