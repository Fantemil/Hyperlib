local runService = game:GetService("RunService")
local client = game:GetService("Players").LocalPlayer
local connections = {}

local function getRootPart()
   local character = client.Character or client.CharacterAdded:Wait()
   
   return character:WaitForChild("HumanoidRootPart")
end

local function teleport(cframe)
   local rootPart = getRootPart()
   
   connections["Heartbeat"] = runService.Heartbeat:Connect(function()
       local oldVelocity = rootPart.Velocity
       
       rootPart.Velocity = Vector3.new(0, -550, 0)
       runService.RenderStepped:Wait()
       rootPart.Velocity = oldVelocity

       task.wait(.4)
       connections["Heartbeat"]:Disconnect()
   end)
   
   task.wait(.2)
   rootPart.CFrame = cframe
end

teleport(cframe here)