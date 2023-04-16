-- Set hitbox size, transparency level, and notification status
local size = Vector3.new(10, 10, 10)
local trans = 1
local notifications = false

-- Store the time when the code starts executing
local start = os.clock()

-- Send a notification saying that the script is loading
game.StarterGui:SetCore("SendNotification", {
   Title = "Script",
   Text = "Loading script...",
   Icon = "",
   Duration = 5
})

-- Load the ESP library and turn it on
local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/andrewc0de/Roblox/main/Dependencies/ESP.lua"))()
esp:Toggle(true)

-- Configure ESP settings
esp.Boxes = true
esp.Names = false
esp.Tracers = false
esp.Players = false

-- Add an object listener to the workspace to detect enemy models
esp:AddObjectListener(workspace, {
   Name = "soldier_model",
   Type = "Model",
   Color = Color3.fromRGB(255, 0, 4),

   -- Specify the primary part of the model as the HumanoidRootPart
   PrimaryPart = function(obj)
       local root
       repeat
           root = obj:FindFirstChild("HumanoidRootPart")
           task.wait()
       until root
       return root
   end,

   -- Use a validator function to ensure that models do not have the "friendly_marker" child
   Validator = function(obj)
       task.wait(1)
       if obj:FindFirstChild("friendly_marker") then
           return false
       end
       return true
   end,

   -- Set a custom name to use for the enemy models
   CustomName = "?",

   -- Enable the ESP for enemy models
   IsEnabled = "enemy"
})

-- Enable the ESP for enemy models
esp.enemy = true

-- Wait for the game to load fully before applying hitboxes
task.wait(1)

-- Apply hitboxes to all existing enemy models in the workspace
for _, v in pairs(workspace:GetDescendants()) do
   if v.Name == "soldier_model" and v:IsA("Model") and not v:FindFirstChild("friendly_marker") then
       local pos = v:FindFirstChild("HumanoidRootPart").Position
       for _, bp in pairs(workspace:GetChildren()) do
           if bp:IsA("BasePart") then
               local distance = (bp.Position - pos).Magnitude
               if distance <= 5 then
                   bp.Transparency = trans
                   bp.Size = size
               end
           end
       end
   end
end

-- Function to handle when a new descendant is added to the workspace
local function handleDescendantAdded(descendant)
   task.wait(1)

   -- If the new descendant is an enemy model and notifications are enabled, send a notification
   if descendant.Name == "soldier_model" and descendant:IsA("Model") and not descendant:FindFirstChild("friendly_marker") then
       if notifications then
           game.StarterGui:SetCore("SendNotification", {
               Title = "Script",
               Text = "[Warning] New Enemy Spawned! Applied hitboxes.",
               Icon = "",
               Duration = 3
           })
       end

       -- Apply hitboxes to the new enemy model
       local pos = descendant:FindFirstChild("HumanoidRootPart").Position
       for _, bp in pairs(workspace:GetChildren()) do
           if bp:IsA("BasePart") then
               local distance = (bp.Position - pos).Magnitude
               if distance <= 5 then
                   bp.Transparency = trans
                   bp.Size = size
               end
           end
       end
   end
end

-- Connect the handleDescendantAdded function to the DescendantAdded event of the workspace
task.spawn(function()
   game.Workspace.DescendantAdded:Connect(handleDescendantAdded)
end)

-- Store the time when the code finishes executing
local finish = os.clock()

-- Calculate how long the code took to run and determine a rating for the loading speed
local time = finish - start
local rating
if time < 3 then
   rating = "fast"
elseif time < 5 then
   rating = "acceptable"
else
   rating = "slow"
end

-- Send a notification showing how long the code took to run and its rating
game.StarterGui:SetCore("SendNotification", {
   Title = "Script",
   Text = string.format("Script loaded in %.2f seconds (%s loading)", time, rating),
   Icon = "",
   Duration = 5
})