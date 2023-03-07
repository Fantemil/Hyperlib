local Client        = require(game:GetService("ReplicatedFirst").Client)
local CachedRemotes = Client.CachedRemotes -- so u can get remote names and stuff
local SwingyRemote  = game:GetService("ReplicatedStorage").REM:FindFirstChild(CachedRemotes["InventoryAction"])

local function GetClosestTree()
 local tree, dist = nil, math.huge
 for i, v in next, game:GetService("Workspace").World.TreeRegions.Island:GetChildren() do
  if v:IsA("Model") then
   if v:FindFirstChild("HeptagonPart") then
    local mag = game.Players.LocalPlayer:DistanceFromCharacter(v:GetPivot().Position)
    if mag < dist then
     dist = mag
     tree = v
    end
   end
  end
 end
 return tree
end

local function GetOwnedTrees() -- do sum with this idk
    local trees = {}
    for i,v in next, game:GetService("Workspace").World.LooseItems:GetChildren() do
        if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
            if v:FindFirstChildWhichIsA("BasePart") then
                table.insert(trees, v)
            end
        end
    end
    return trees
end

local tree = GetClosestTree()
local part = tree:GetChildren()[1]

-- have axe out ofc

repeat
    local args = {
        [1] = {
            ["ActionSlot"] = -1,
            ["ActionType"] = "ServerCommunication",
            ["ActionInformation"] = {
                ["Name"] = "SwingStartAttempt",
                ["Data"] = {}
            }
        }
    }
    SwingyRemote:InvokeServer(unpack(args))
    local args = {
        [1] = {
            ["ActionSlot"] = -1,
            ["ActionType"] = "ServerCommunication",
            ["ActionInformation"] = {
                ["Name"] = "AttemptChop",
                ["Data"] = {
                    ["HitPosition"] = part.Position,
                    ["HitPart"]     = part
                }
            }
        }
    }
    SwingyRemote:InvokeServer(unpack(args))
until true == false