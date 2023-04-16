local autosell = true

local Ignored = workspace:WaitForChild("Ignored")
local Sell = Ignored:WaitForChild("Clean the shoes on the floor and come to me for cash")
local Drop = Ignored:WaitForChild("Drop")

local Heartbeat = game:GetService("RunService").Heartbeat
local Players = game:GetService("Players")
local lp = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() and Players.LocalPlayer
local connections = {}

local function getchar()
   return lp.Character or lp.CharacterAdded:Wait()
end

local function gethumanoid()
   return getchar():WaitForChild("Humanoid")
end

local function getroot()
   local humanoid = gethumanoid()
   if not humanoid.RootPart then
       humanoid:GetPropertyChangedSignal("RootPart"):Wait()
   end
   for i,v in next, getconnections(humanoid.RootPart:GetPropertyChangedSignal("CFrame")) do
       v:Disconnect()
   end
   return humanoid.RootPart
end

connections["CharacterAdded"] = lp.CharacterAdded:Connect(function(char)
   for i,v in next, getconnections(char:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("CFrame")) do
       v:Disconnect()
   end
end)

local state = false
local function collect(MeshPart)
   if MeshPart:IsA("MeshPart") and MeshPart.Parent then
       if not state then
           state = true
           local oldpos = getroot().CFrame
           local click = MeshPart:WaitForChild("ClickDetector")
           local maxclick = click.MaxActivationDistance
           repeat
               if MeshPart then
                   getroot().CFrame = MeshPart.CFrame * CFrame.new(-math.random(0,maxclick),0,0)
               end
               Heartbeat:Wait()
               if click then
                   pcall(fireclickdetector,click,maxclick)
               end
           until not MeshPart or not MeshPart.Parent or not click or not click.Parent
           if autosell then
               local SellClick = Sell:WaitForChild("ClickDetector")
               local maxclick = SellClick.MaxActivationDistance
               getroot().CFrame = Sell:WaitForChild("HumanoidRootPart").CFrame
               Heartbeat:Wait()
               pcall(fireclickdetector,SellClick,maxclick)
           end
           getroot().CFrame = oldpos
           gethumanoid():ChangeState(2)
           state = false
       else
           repeat task.wait() until not state
           collect(MeshPart)
       end
   end
end

getgenv().disable = function()
   for i,v in next, connections do
       warn("Disconnecting",i,v:Disconnect())
   end
   table.clear(connections)
end

connections["ChildAdded"] = Drop.ChildAdded:Connect(collect)
for i,v in Drop:GetChildren() do
   collect(v)
end