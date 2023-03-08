-- dont dislike this bc it doesnt work on ur executor lmao

local Remotes = {}
local NetworkEnvironment = getmenv(rawget(rawget(require(game.ReplicatedStorage.Framework.Nevermore), '_lookupTable'), 'Network'))
local EventsTable = debug.getupvalue(NetworkEnvironment.GetEventHandler, 1)
local FunctionsTable = debug.getupvalue(NetworkEnvironment.GetFunctionHandler, 1)

local function AddRemotes(StorageTable)
for Name, Info in pairs(StorageTable) do
if rawget(Info, 'Remote') then
Remotes[rawget(Info, 'Remote')] = Name
end
end
end
AddRemotes(EventsTable)
AddRemotes(FunctionsTable)

local Index
Index = hookmetamethod(game, '__index', function(Self, Key)
if checkcaller() and (Key == 'Name' or Key == 'name') and Remotes[Self] then
return Remotes[Self]
end

return Index(Self, Key)
end)

for a,b in next, getgc(true) do
if typeof(b) == 'function' then
if getinfo(b).name == 'punish' then
replaceclosure(b, function() return wait(9e9); end)
end
end
end

local function GetClosest() -- from devforum thanks for this
local Character = game.Players.LocalPlayer.Character
local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
if not (Character or HumanoidRootPart) then return end

local TargetDistance = math.huge
local Target

for i,v in ipairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
    local TargetHRP = v.Character.HumanoidRootPart
    local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TargetHRP.Position).magnitude
    if mag < TargetDistance then
        TargetDistance = mag
        Target = v
    end
end
end

return Target
end

local Killaura = false
_G.LOOL = 25 -- the range

while Killaura do
for i = 1, 2 do
    local target = GetClosest().Character
    local character = game.Players.LocalPlayer.Character
    if character:FindFirstChildOfClass("Tool") and character:FindFirstChildOfClass("Tool"):FindFirstChild("Hitboxes") and target:FindFirstChild("Torso") and (character:FindFirstChildOfClass("Tool").Hitboxes.Hitbox.Position - target.Torso.Position).magnitude <= (_G.LOOL) and target.SemiTransparentShield.Transparency == 1 then
        local tool = character:FindFirstChildOfClass("Tool")
        local targetpart = target.Head or Torso
        local hitbox = tool.Hitboxes.Hitbox
        local pos = tool.Hitboxes.Hitbox.Position
        game:GetService("ReplicatedStorage").Communication.Events.MeleeSwing:FireServer(tool, i)
        game:GetService("ReplicatedStorage").Communication.Events.MeleeDamage:FireServer(tool, targetpart, hitbox, pos, CFrame.new(), Vector3.new(), Vector3.new())
        wait()
    end
end
wait(.2)
end