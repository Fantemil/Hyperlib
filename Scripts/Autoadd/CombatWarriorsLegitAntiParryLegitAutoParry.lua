local Magnitude = 15

local players = game:GetService("Players")
local client = players.LocalPlayer
local camera = workspace.CurrentCamera

local function iskeydown(enum)
   return game:GetService("UserInputService"):IsKeyDown(enum)
end
local function keyclick(enum)
   local vim = game:GetService("VirtualInputManager")
   return vim:SendKeyEvent(true, enum, false, game) and task.wait() and vim:SendKeyEvent(false, enum, false, game)
end

local function lookAt(character)
   spawn(function()
       for i=0, 1, 0.1  do
           local goal = camera.CFrame:Lerp(CFrame.lookAt(camera.CFrame.Position, character.HumanoidRootPart.Position), i)
           camera.CFrame = goal
           task.wait()
       end
   end)
end
local function islooking(chr, sensitivity)
   return chr.HumanoidRootPart.CFrame.LookVector:Dot(client.Character.HumanoidRootPart.Position) >= sensitivity
end

local function notify(Type, Title, Content)
   --haha no v3 notification noob
end





function Update(plr : Player)
   if plr ~= client then
       local function onRespawn(chr)
           local tool;
           repeat
               task.wait()
               if chr:FindFirstChild("SemiTransparentShield") and chr:FindFirstChild("HumanoidRootPart") and chr:FindFirstChildOfClass("Tool") and chr:FindFirstChildOfClass("Tool"):FindFirstChild("Hitboxes") then
                   tool = chr:FindFirstChildOfClass("Tool")
               end
           until tool and tool:IsA("Tool") and tool:FindFirstChild("Hitboxes")
           print(plr.DisplayName..":)")

           do -- [[Auto Parry]]
               local function autoParry(child)
                   if client.Character:FindFirstChildOfClass("Tool") and client.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Hitboxes") and child:IsA("Sound") and not iskeydown(Enum.KeyCode.C) and child:IsA("Sound") and (chr.HumanoidRootPart.Position - client.Character.HumanoidRootPart.Position).Magnitude < Magnitude then
                       local looking = islooking(chr, 0.25)
                       if looking then
                           keyclick(Enum.KeyCode.F)
                       else
                           lookAt(chr)
                           keyclick(Enum.KeyCode.F)
                       end
                   end
               end

               if tool.Hitboxes:FindFirstChild("Hitbox") then
                   print("applied")
                   tool.Hitboxes.Hitbox.ChildAdded:Connect(autoParry)
               elseif tool.Hitboxes:FindFirstChild("Weapon1Hitbox") and tool.Hitboxes:FindFirstChild("Weapon2Hitbox") then
                   print("applied")
                   tool.Hitboxes.Weapon1Hitbox.ChildAdded:Connect(autoParry)
                   tool.Hitboxes.Weapon2Hitbox.ChildAdded:Connect(autoParry)
               end
           end

           do -- [[Anti Parry]]
               local function antiParry(child)
                   if child:IsA("Sound") and client.Character:FindFirstChildOfClass("Tool") and client.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Hitboxes") and (chr.HumanoidRootPart.Position - client.Character.HumanoidRootPart.Position).Magnitude < Magnitude then
                       local looking = islooking(chr, 0.25)
                       if looking then
                           local tool = client.Character:FindFirstChildOfClass("Tool")
                           client.Character.Humanoid:UnequipTools()
                           chr.SemiTransparentShield:GetPropertyChangedSignal("Transparency"):Wait()
                           client.Character.Humanoid:EquipTool(tool)
                       end
                   end
               end
               chr.SemiTransparentShield.ChildAdded:Connect(antiParry)
           end
       end

       if plr.Character ~= nil then
           task.spawn(onRespawn, plr.Character)
       end
       plr.CharacterAdded:Connect(function(chr)
           warn('respawning', chr)
           task.spawn(onRespawn, chr)
       end)
   end
end

for _,v in next, players:GetPlayers() do
   task.spawn(Update, v)
end
players.PlayerAdded:Connect(function(plr)
   task.spawn(Update, plr)
end)