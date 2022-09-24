-- Hold E to shoot your guns very fast, works best with Revolver
-- init 
if not game:IsLoaded() then 
   game.Loaded:Wait();
end

-- variables
local players, replicatedStorage, runService, userInputService = game:GetService("Players"), game:GetService("ReplicatedStorage"), game:GetService("RunService"), game:GetService("UserInputService");
local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse();

local toolRemoteEvents = replicatedStorage:FindFirstChild("ToolRemoteEvents");
local reloadWeapon = replicatedStorage:FindFirstChild("ReloadWeapon");

local keyHeld = false

-- events 
userInputService.InputBegan:Connect(function(key)
   if userInputService:GetFocusedTextBox() then return end 
   
   if key.KeyCode == Enum.KeyCode.E then 
       keyHeld = true
   end
end);

userInputService.InputEnded:Connect(function(key)
   if userInputService:GetFocusedTextBox() then return end 
   
   if key.KeyCode == Enum.KeyCode.E then 
       keyHeld = false
   end
end);

runService.RenderStepped:Connect(function()
   if keyHeld == true then 
       if client.Character and client.Character:FindFirstChildOfClass("Tool") then
           local tool = client.Character:FindFirstChildOfClass("Tool");
           
           toolRemoteEvents[((tool.Name ~= "Revolver" and tool.Name) or "Rev")]:FireServer(mouse.Hit.Position, tool);
           reloadWeapon:FireServer();
       end
   end
end);