wait(8) -- change higher or lower (seconds) depending how long it takes to load in the game

local bool = false
print("executed")
for _,v in pairs(game.Workspace:GetDescendants()) do
if v.Name == "Interact" and v.Parent.Name == "Leaf" then
bool = true
---
local ServerScriptService = game:GetService("ServerScriptService") -- sound plays when found, run in background until u hear it
local SoundService = game:GetService("SoundService")
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://4954030642"
SoundService:PlayLocalSound(sound)
----
local BillboardGui = Instance.new("BillboardGui") --stolen code not mine
local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = v.Parent
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = "Purple tree here"
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
end
end
wait(1.5)

if not bool then
   
local Player = game.Players.LocalPlayer    -- stolen code not mine
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
function ListServers(cursor)
  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
  return Http:JSONDecode(Raw)
end

local Next; repeat
  local Servers = ListServers(Next)
  for i,v in next, Servers.data do
      if v.playing < v.maxPlayers and v.id ~= _id then
          local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
          if s then break end
      end
  end
 
  Next = Servers.nextPageCursor
until not Next
end