--Created by Qcalnik (Edited)

--[[ Settings ]]
local TimesToTeleport = 50
local Radius = 100

--[[ Variables ]]
local PS = game:GetService("Players")
local WS = game:GetService("Workspace")
local Player = PS.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Character = PS.LocalPlayer.Character or PS.LocalPlayer.CharacterAdded:Wait()
local Backpack = Player:WaitForChild("Backpack")
local HumanoidRoot = Character:WaitForChild("HumanoidRootPart")
local ItemsFolder = WS:WaitForChild("GameObjects").Physical.Items
local Storage = PlayerGui:WaitForChild("MainGui").Menus.Inventory

--[[ Remotes ]]
local Pickup  = Character.System.Action


local OldCFrame = HumanoidRoot.CFrame 
local OldPosition = HumanoidRoot.Position 

function Check(Object)
 if Object.Name == "Crowbar" then
  return false
 end
 if Object:FindFirstChildOfClass("Part") or Object:FindFirstChildOfClass("MeshPart") then
  local Part = Object:FindFirstChildOfClass("Part") or Object:FindFirstChildOfClass("MeshPart")
  local Distance = (OldPosition - Part.Position).magnitude
  if Distance < Radius then
   return false
  end
  return true, Part
 end
 return false
end

function InvetoryCheck()
 local StorageAmount = Storage.UpperLine.Storage
 if StorageAmount.Text == "16/16 items" or StorageAmount.Text == "17/16 items" then
  HumanoidRoot.CFrame = OldCFrame
  wait()
  for i,v in pairs(Backpack:GetChildren()) do
   
   local A_1 = "Inventory_DropAll"
   local A_2 = 
    {
     ["Tool"] = v.Name
    }
   Pickup:InvokeServer(A_1, A_2)

  end
  repeat task.wait() until StorageAmount.Text == "0/16 items"
 end
 return "Done"
end

local Amount = 0
for i,v in pairs(WS:GetDescendants()) do
 if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Bloxy Soda" or v.Name == "Burger" or v.Name == "Cookie" or v.Name == "Dr. Bob Soda" or v.Name == "Hotdog" or v.Name == "Ice Cream" or v.Name == "Lemon" or v.Name == "Lemon Slice" or v.Name == "Medkit" or v.Name == "Pizza" or v.Name == "Water" or v.Name == "2 Litre Dr. Bob" then         --trollll
  if v:FindFirstChild(v.Name) or v:FindFirstChild("Root") then
   local Bool, Part = Check(v)
   if Bool then
    Amount = Amount + 1
    if Amount >= TimesToTeleport then
     HumanoidRoot.CFrame = OldCFrame
     return;
    else
     repeat task.wait()
      repeat task.wait() until InvetoryCheck() == "Done"
      Bool, Part = Check(v)
      if Part ~= nil then
       HumanoidRoot.CFrame = Part.CFrame 
       
       local A_1 = "Store"
       local A_2 = 
        {
         ["Model"] = v
        }
     
       Pickup:InvokeServer(A_1, A_2)
      end
     until Part == nil
    end
   end
  end 
 end
end