repeat wait() until game:IsLoaded()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local Pattern = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
Frame.Position = UDim2.new(0.5, 0, 1.5, 0)
Frame.Size = UDim2.new(0, 1000, 0, 500)
Frame.ZIndex = 500

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.163699985, 0)
TextLabel.Size = UDim2.new(0, 656, 0, 164)
TextLabel.ZIndex = 10001
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Nuking..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(0, 656, 0, 164)
TextLabel_2.ZIndex = 10001
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "You don't need to do anything, just sit back, relax, and leave your roblox client open while we nuke the game for you."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 30.000
TextLabel_2.TextWrapped = true

Frame_2.Parent = Frame
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(21, 21, 28)
Frame_2.Position = UDim2.new(0.5, 0, 0.794399977, 0)
Frame_2.Size = UDim2.new(0, 656, 0, 100)
Frame_2.ZIndex = 10001

UICorner.Parent = Frame_2

TextLabel_3.Parent = Frame_2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Size = UDim2.new(0, 656, 0, 100)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Automatically server hopping in 9 seconds."
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 40.000
TextLabel_3.TextWrapped = true

Pattern.Name = "Pattern"
Pattern.Parent = Frame
Pattern.AnchorPoint = Vector2.new(0.5, 0.5)
Pattern.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pattern.BackgroundTransparency = 1.000
Pattern.Position = UDim2.new(0.5, 0, 0.5, 0)
Pattern.Size = UDim2.new(0, 1000, 0, 500)
Pattern.ZIndex = 10000
Pattern.Image = "rbxassetid://2151782136"
Pattern.ImageColor3 = Color3.fromRGB(9, 9, 14)
Pattern.ImageTransparency = 0.600
Pattern.ScaleType = Enum.ScaleType.Tile
Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern.TileSize = UDim2.new(0, 30, 0, 50)

UICorner_2.CornerRadius = UDim.new(0, 30)
UICorner_2.Parent = Pattern

UICorner_3.CornerRadius = UDim.new(0, 30)
UICorner_3.Parent = Frame

-- Scripts:

local function HPXMM_fake_script() -- TextLabel_3.core 
 local script = Instance.new('LocalScript', TextLabel_3)

-- Randomised Messages

 --[[ game.Workspace.FallenPartsDestroyHeight = -math.huge
for v = 1,7 do
    local Messages = {"1", "2, "3", "4", "5", "6", "7", "8", "9"} -- you can change the numbers to words that you want to be randomly spammed
    local Channel = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(Messages[math.random(1, #Messages)], Channel)
    wait(0.01)
end ]]
 local children = workspace:GetDescendants()
 for i = 1, #children do
  local args = {[1] = i, children[i]}
  game:GetService("ReplicatedStorage").DoorOpener:FireServer(unpack(args))
 end
 wait(9)
 script.Parent.Text = "Attempting to serverhop..."
 wait()
 local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
 module:Teleport(game.PlaceId)
end
coroutine.wrap(HPXMM_fake_script)()
local function TFRO_fake_script() -- TextLabel_3.backup1 
 local script = Instance.new('LocalScript', TextLabel_3)

 wait(9)
 script.Parent.Text = "It looks like that didn't work."
 wait(3)
 script.Parent.Text = "Preparing backup serverhop #1"
 wait(3)
 script.Parent.Text = "Attempting to serverhop..."
 wait()
 local PlaceID = game.PlaceId
 local AllIDs = {}
 local foundAnything = ""
 local actualHour = os.date("!*t").hour
 local Deleted = false
 function TPReturner()
  local Site;
  if foundAnything == "" then
   Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
  else
   Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
  end
  local ID = ""
  if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
   foundAnything = Site.nextPageCursor
  end
  local num = 0;
  for i,v in pairs(Site.data) do
   local Possible = true
   ID = tostring(v.id)
   if tonumber(v.maxPlayers) > tonumber(v.playing) then
    for _,Existing in pairs(AllIDs) do
     if num ~= 0 then
      if ID == tostring(Existing) then
       Possible = false
      end
     else
      if tonumber(actualHour) ~= tonumber(Existing) then
       local delFile = pcall(function()
        -- delfile("NotSameServers.json")
        AllIDs = {}
        table.insert(AllIDs, actualHour)
       end)
      end
     end
     num = num + 1
    end
    if Possible == true then
     table.insert(AllIDs, ID)
     wait()
     pcall(function()
      wait()
      game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
     end)
     wait(4)
    end
   end
  end
 end
 function Teleport()
  while wait() do
   pcall(function()
    TPReturner()
    if foundAnything ~= "" then
     TPReturner()
    end
   end)
  end
 end
 Teleport()
end
coroutine.wrap(TFRO_fake_script)()
local function QFKMS_fake_script() -- TextLabel_3.backup2 
 local script = Instance.new('LocalScript', TextLabel_3)

 wait(18)
 script.Parent.Text = "It looks like that didn't work."
 wait(3)
 script.Parent.Text = "Preparing backup serverhop #2"
 wait(3)
 script.Parent.Text = "Attempting to serverhop..."
 wait()
 game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end
coroutine.wrap(QFKMS_fake_script)()
local function FGWWIM_fake_script() -- TextLabel_3.backup3 
 local script = Instance.new('LocalScript', TextLabel_3)

 wait(28)
 script.Parent.Text = "This is tough."
 wait(3)
 script.Parent.Text = "We'll wait a bit before trying again."
 wait(15)
 script.Parent.Text = "Attempting to serverhop..."
 wait()
 local ts = game:GetService("TeleportService")
 ts:Teleport(23578803)
end
coroutine.wrap(FGWWIM_fake_script)()
local function LXEJBQ_fake_script() -- TextLabel_3.backup4 
 local script = Instance.new('LocalScript', TextLabel_3)

 wait(49)
 script.Parent.Text = "Out of luck."
 wait(3)
 script.Parent.Text = "It is suggested that you manually rejoin.."
 wait(3)
 while true do
  script.Parent.Text = "Attempting to serverhop..."
  wait()
  local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
  module:Teleport(game.PlaceId)
  wait(3)
  script.Parent.Text = "Trying again."
  wait(3)
 end
end
coroutine.wrap(LXEJBQ_fake_script)()
local function CJJFQ_fake_script() -- Frame.LocalScript 
 local script = Instance.new('LocalScript', Frame)

 repeat wait() until game:IsLoaded()
 script.Parent:TweenPosition(
  UDim2.new(0.5, 0 ,0.5, 0),
  "Out",
  "Elastic",
  2,
  false
 )
end
coroutine.wrap(CJJFQ_fake_script)()