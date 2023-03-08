local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Singularity5490/rbimgui-2/main/rbimgui-2.lua"))()
local window = ui.new({text="autofarm"})
local tab = window.new({text = "main"})
local autofarmToggle = tab.new("Switch", {text="autofarm"})

-- wrote this myself :sunglasses:
local function getClosestObject(folder)
   local distance, part = math.huge, nil
   local mainPart
   for i,v in pairs(folder:GetChildren()) do
       local HRPPosition = Players.LocalPlayer.Character.HumanoidRootPart.Position

       for i2,v2 in pairs(v:GetChildren()) do
           if v2:IsA("BasePart") then
               mainPart = v2
               break
           end
       end

       if mainPart and not mainPart.Parent:FindFirstChild("Humanoid") and mainPart.Parent:FindFirstChild("Health") then
           local realDistance = math.abs((HRPPosition - mainPart.Position).Magnitude)

           if realDistance < distance then
               distance = realDistance
               part = mainPart
           end
       end
   end
   return part
end

local function getClosestPickups(folder)
   local pickups = {}
   for i,v in pairs(folder:GetChildren()) do
       if v:FindFirstChild("Pickup") and v:IsA("BasePart") and table.find(pickups,v) == nil then
           if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 30 then
               table.insert(pickups, v)
           end
       end
   end
   return pickups
end


while wait(0.3) do
   if autofarmToggle.on then
       local part = getClosestObject(workspace)
       local HRPPosition = Players.LocalPlayer.Character.HumanoidRootPart.Position
       local realDistance = math.round(math.abs((HRPPosition - part.Position).Magnitude))
   
       ReplicatedStorage.Events.SwingTool:FireServer(ReplicatedStorage.RelativeTime.Value, {
           [1] = part
       })
       for i,v in pairs(getClosestPickups(workspace)) do
           game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
       end
       wait(0.1)
       if part.Position.Y <= 30 then
           TweenService:Create(Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(realDistance/10, Enum.EasingStyle.Linear), {CFrame=part.CFrame+Vector3.new(0,part.Size.Y,0)}):Play()
           task.wait(realDistance/10)
       end
   end
end