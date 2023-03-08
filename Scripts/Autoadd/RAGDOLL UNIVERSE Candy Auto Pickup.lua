local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerService = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local MainRemote = ReplicatedStorage.MainRemote
local LocalPlayer = PlayerService.LocalPlayer
local Drops = Workspace.Drops

getgenv().ItemPickup = true
getgenv().PickupDistance = 30

local GarbageScriptName = utf8.char(71,97,114,98,97,103,101,8203,67,111,100,101)

local function GetKey()
   for Index,Func in pairs(getgc()) do
       local FEnv = getfenv(Func)
       if FEnv.script and FEnv.script.Name == GarbageScriptName then
           local UpValues = getupvalues(Func)
           if UpValues[1] then
               if type(UpValues[1]) == "string" then
                   return UpValues[1]
               end
           end
       end
   end
end

local function GetItem(Name,RootPart)
   local ClosestItem,Distance = nil,PickupDistance
   for Index,Item in pairs(Drops:GetChildren()) do
       if Item.Name == Name then
           local Magnitude = (RootPart.Position - Item.Position).Magnitude
           if Magnitude < Distance then
               ClosestItem,Distance = Item,Magnitude
           end
       end
   end return ClosestItem
end

local Key = GetKey()
local HumanoidRootPart = LocalPlayer.Character
and LocalPlayer.Character:FindFirstChild("Torso")

task.spawn(function()
   while task.wait(1) do
       if ItemPickup then Key = GetKey()
           HumanoidRootPart = LocalPlayer.Character
           and LocalPlayer.Character:FindFirstChild("Torso")
       end
   end
end)

RunService.RenderStepped:Connect(function()
   if ItemPickup and HumanoidRootPart and Key then
       local Item = GetItem("Candy",HumanoidRootPart)
       if Item then MainRemote:FireServer(Key.."ac","us",Item) end
   end
end)