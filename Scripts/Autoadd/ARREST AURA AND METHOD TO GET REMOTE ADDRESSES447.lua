local cloneref = cloneref or function(...) return ... end
if autoarrest then autoarrest() end

local Run = true
local Players = cloneref(game:GetService("Players"))
local lp = cloneref(Players.LocalPlayer)
local Backpack = cloneref(lp:WaitForChild("Folder"))
local MaxArrest = rawget(require(game:GetService("ReplicatedStorage"):WaitForChild("Game"):WaitForChild("ItemConfig"):WaitForChild("Handcuffs")),"ArrestDistance")

if not type(MaxArrest) == "number" then
   warn("MaxArrest was not a number")
   MaxArrest = 10
end

local CommunicationRemote,EventTable = (function()
for i,v in getgc(false) do
if type(v) == "function" and islclosure(v) and debug.info(v,"n") == "EventFireServer" then
local upvalues = debug.getupvalues(v)
if typeof(upvalues[2]) == "Instance" and type(upvalues[3]) == "table" then
return cloneref(upvalues[2]),upvalues[3]
end
end
end
end)()

if not (CommunicationRemote and EventTable) then
return warn("Failed to fetch Upvalue data")
end

local Ignorelist = OverlapParams.new()
local ArrestRemoteAddress = rawget(EventTable,"zoosvaoh")

EventTable = nil

if not ArrestRemoteAddress then
return warn("Failed to fetch Arrest Remote Address")
end

local function HasHandCuffs(char)
   return char and char:FindFirstChild("Handcuffs") ~= nil
end

local function IsArrestable(plr)
   if not HasHandCuffs(plr.Character) then
       if plr:GetAttribute("HasEscaped") then
           return true
       elseif plr.Team and plr.Team.Name == "Prisoner" then
           local Items = cloneref(plr:FindFirstChild("Folder"))
           if Items then
               if Items:FindFirstChild("MansionInvite") then
                   return #Items:GetChildren() > 1
               end
               return #Items:GetChildren() > 0
           end
       end
   end
end

local function getchar(plr,yield)
   plr = plr or lp
   local char = plr.Character or yield and plr.CharacterAdded:Wait()
   return char and cloneref(char)
end

local function GetPlayers()
   local PlayerList = {}
   for i,v in Players:GetPlayers() do
       if IsArrestable(v) then
           table.insert(PlayerList,getchar(v))
       end
   end
   return PlayerList
end

EventTable = nil
Ignorelist.FilterType = Enum.RaycastFilterType.Include

getgenv().autoarrest = setmetatable({},{__call = function() Run = false end})

while Run do
   local Handcuffs = cloneref(Backpack:FindFirstChild("Handcuffs"))

   if Handcuffs and Handcuffs:GetAttribute("InventoryItemEquipped") then
       local char = getchar(nil,true)
       local Humanoid = char and char:FindFirstChildWhichIsA("Humanoid")
       local RootPart = Humanoid and Humanoid.RootPart
       if RootPart then
           Ignorelist.FilterDescendantsInstances = GetPlayers()

           for i,v in workspace:GetPartBoundsInRadius(RootPart.CFrame.Position,MaxArrest,Ignorelist) do
               local Model = v:FindFirstAncestorWhichIsA("Model")

               if not HasHandCuffs(Model) then
                   local Player = Players:GetPlayerFromCharacter(Model)

                   if Player then
                       CommunicationRemote:FireServer(ArrestRemoteAddress,Player.Name)
                   end
               end
           end
       end
   end
   task.wait()
end