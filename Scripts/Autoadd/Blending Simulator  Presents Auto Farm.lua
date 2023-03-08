-- Set enabled to true to turn the script on, or false to turn it off
local enabled = true

-- Create a Heartbeat connection to the game's run service
local heartbeat = game:GetService("RunService").Heartbeat

-- Define a function to handle each heartbeat event
local function onHeartbeat(dt)
 -- Loop through all children of the "Areas" folder in the Workspace
 for _,v in ipairs(game:GetService("Workspace").Areas:GetChildren()) do
   -- Loop through all children of each "Area" folder
   for _,child in ipairs(v:GetChildren()) do
     -- If the child is named "Present_Drop", move it to the player's character
     if child.Name == "Present_Drop" then
       child.PrimaryPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,0)
     end
   end
 end

 -- If enabled is false, disconnect the Heartbeat event and exit the function
 if not enabled then
   heartbeat:Disconnect()
   return
 end
end

-- Connect the onHeartbeat function to the Heartbeat event
heartbeat:Connect(onHeartbeat)