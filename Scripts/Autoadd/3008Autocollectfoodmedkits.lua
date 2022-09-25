--[[ Settings ]]
local TimesToTeleport = 50
local Radius = 40

--[[ Variables ]]
local PS = game:GetService("Players")
local WS = game:GetService("Workspace")
local Player = PS.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Character = PS.LocalPlayer.Character or PS.LocalPlayer.CharacterAdded:Wait()
local Backpack = Player:WaitForChild("Backpack")
local HumanoidRoot = Character:WaitForChild("HumanoidRootPart")
local ItemsFolder = WS:WaitForChild("GameObjects").Physical.Items
local Storage = PlayerGui:WaitForChild("MainGui").Inventory.Storage

--[[ Remotes ]]
local Pickup  = Character:WaitForChild("server_PickupSystem").MainEvent
local Inventory = Character:WaitForChild("server_PickupSystem").Inventory

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
    local StorageAmount = string.match(Storage.Text, "%d+")
    if StorageAmount == "16" then
        HumanoidRoot.CFrame = OldCFrame
        wait()
        for i,v in pairs(Backpack:GetChildren()) do
            Inventory:InvokeServer({["Action"] = "DropStack", ["Model"] = v})
            StorageAmount = string.match(Storage.Text, "%d+")
        end
        repeat task.wait() until StorageAmount == "0"
    end
    return "Done"
end

local Amount = 0
for i,v in pairs(WS:GetDescendants()) do
    if v:FindFirstChild("InventoryTag") and v:FindFirstChild("PickupTag") then
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
                            Pickup:InvokeServer({["Action"] = "AlternateInteract", ["Model"] = v})
                        end
                until Part == nil
            end
        end
    end
end