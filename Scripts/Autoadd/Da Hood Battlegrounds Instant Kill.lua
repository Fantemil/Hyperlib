--[[ 
Works best with a Revolver
Hold a gun out, hover over someone, and press the instantKillKey to instantly kill them
You and the person you want to instant kill MUST BE HOLDING A GUN
Make sure you have ammo in your gun
Coded this high at 4 am so it may be buggy
]]

getgenv().instantKillKey = "E" -- the key you press to instantly kill someone

-- init, by xaxa
if not game:IsLoaded() then
   game.Loaded:Wait();
end

-- variables
local players, replicatedStorage, userInputService = game:GetService("Players"), game:GetService("ReplicatedStorage"), game:GetService("UserInputService");

local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse();
local camera, vector2 = workspace.CurrentCamera, Vector2.new

local revRemote = replicatedStorage:FindFirstChild("ToolRemoteEvents"):FindFirstChild("Rev");
local reloadRemote = replicatedStorage:FindFirstChild("ReloadWeapon");
local stompRemote = replicatedStorage:FindFirstChild("Stomp");

-- functions
function getClosestPlayerToMouse(maxDistance)
   assert((maxDistance or typeof(maxDistance) == "number"), "1st argument error with function, getClosestPlayerToMouse(maxDistance)");
   
   local closestPlayer, closestPart = nil, nil
   
   for index, player in next, players:GetPlayers() do
       if player.Name == client.Name then continue end
       
       local character = player.Character
       if not character then continue end
       
       local head = character:FindFirstChild("Head") or character.PrimaryPart
       if not head then return end
       
       local humanoid = character:FindFirstChildOfClass("Humanoid");
       if not (humanoid or humanoid.Health > 0) then continue end
       
       local rootToViewportPoint, isOnScreen = camera:WorldToViewportPoint(head.Position);
       if not isOnScreen then continue end
       
       local distanceBetweenMouse = ((vector2(rootToViewportPoint.X, rootToViewportPoint.Y) - vector2(mouse.X, mouse.Y)).Magnitude);
       
       if distanceBetweenMouse < maxDistance then
           closestPlayer, closestPart = player, head
       end
   end
   
   if closestPlayer ~= nil and closestPart ~= nil then
       return closestPlayer, closestPart
   end
end

-- hooks
local newindex_hook; do
   newindex_hook = hookmetamethod(game, "__newindex", newcclosure(function(self, index, value)
       if checkcaller() then
           return newindex_hook(self, index, value);
       end
       
       if self:IsA("Humanoid") and index == "WalkSpeed" and (value == 7 or (value == 5 and not userInputService:IsKeyDown(Enum.KeyCode.LeftControl))) then
           value = 16
       end
       
       return newindex_hook(self, index, value);
   end));
end

-- events
userInputService.InputBegan:Connect(function(key)
   if userInputService:GetFocusedTextBox() then return end

   if key.KeyCode == Enum.KeyCode[string.upper(getgenv().instantKillKey or "e")] then
       local closestPlayer, closestPart = getClosestPlayerToMouse(150);
       if not (closestPlayer or closestPart) then return end
       
       local clientCharacter = client.Character
       if not clientCharacter then return end
       
       local clientCharacterTool = client.Character:FindFirstChildOfClass("Tool");
       if not clientCharacterTool or (clientCharacterTool and not clientCharacterTool:FindFirstChild("Ammo")) then return end
       
       local closestPlayersTool = closestPlayer.Character:FindFirstChildOfClass("Tool");
       if not closestPlayersTool or (closestPlayersTool and not closestPlayersTool:FindFirstChild("Ammo")) then return end
       
       task.spawn(function()
           for i = 1, 20 do
               task.wait();
               revRemote:FireServer(closestPart.Position + closestPart.Velocity * 0.165, closestPlayersTool);
           end
           
           stompRemote:FireServer(closestPlayer.Character);
       end);
   end
end);