local i = false
local ToggleKey = Enum.KeyCode.Semicolon --https://developer.roblox.com/en-us/api-reference/enum/KeyCode
--must hit togglekey to start
local length = 100000 --number of studs between you and other players to hit them (keep it at this to kill all)

game:GetService("ReplicatedStorage").Remotes.Died:Destroy()
game:GetService("Workspace").Interactives.Water:Destroy()
getgenv().toggle = false
function killaura(character)
   spawn(function()
       local namee = character.Name
       while task.wait(0.1) do
           if toggle == true then
               if game.Players.LocalPlayer.Character then
                   if character then
                       if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("HumanoidRootPart") then
                           if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude < length then
                               local num = 0
                               if not _G.current then
                                   _G.current = character
                                   timer = tick()
                                   while task.wait(0.035) do
                                       if (tick() - timer)/1000 > 5 then
                                           break
                                       end
                                       if _G.current ~= character then
                                           break
                                       end
                                       if workspace:FindFirstChild(character.Name.."Shield") then
                                           workspace:FindFirstChild(character.Name.."Shield"):Destroy()
                                       end
                                       if not toggle then
                                           break
                                       end
                                       if not game.Players:GetPlayerFromCharacter(character) then
                                           break
                                       elseif not game.Players:GetPlayerFromCharacter(character).Parent then
                                           break
                                       end
                                       if game.Players:GetPlayerFromCharacter(character).SafeZone.Value then
                                           break
                                       end
                                       if character.Humanoid.Health > 0 then
                                           num = num + 1
                                           local a,b,c = math.random(-500, 500)/100,0,math.random(-500, 500)/100
                                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(character.HumanoidRootPart.Position + Vector3.new(a,b,c), character.HumanoidRootPart.Position)
                                           game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = character.HumanoidRootPart.Velocity
                                           if i then
                                               i = false
                                               game:GetService("ReplicatedStorage").Remotes.Hit:FireServer("Right Arm")
                                           else
                                               i = true
                                               game:GetService("ReplicatedStorage").Remotes.Hit:FireServer("Left Arm")
                                           end
                                       else
                                           break
                                       end
                                   end
                                   if _G.current == character then
                                       _G.current = nil
                                   end
                               end
                           end
                       end
                   else
                       repeat task.wait(1) until game.Players[namee].Character
                       task.wait(0.05)
                       killaura(game.Players[namee].Character)
                   end
               end
           else
               repeat task.wait(0.1) until toggle
           end
       end
   end)
end
for i, v in pairs(game.Players:GetChildren()) do
   if v ~= game.Players.LocalPlayer then
       task.wait(0.1347523)
       killaura(v.Character)
       v.CharacterAdded:Connect(function()
           task.wait(0.05)
           killaura(v.Character)
       end)
   end
end
game.Players.ChildAdded:Connect(function(v)
   killaura(v.Character)
   v.CharacterAdded:Connect(function()
       task.wait(0.05)
       killaura(v.Character)
   end)
end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
   if inp.KeyCode == ToggleKey then
       if getgenv().toggle then
           getgenv().toggle = false
       else
           getgenv().toggle = true
       end
   end
end)
while task.wait() do
   if not _G.current and toggle then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0, 1000, 0))
   end
end