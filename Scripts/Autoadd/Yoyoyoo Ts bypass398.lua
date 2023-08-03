  --** LPH **--


  if not LPH_OBFUSCATED then
    LPH_JIT = function(...) return ... end
    LPH_JIT_MAX = function(...) return ... end
    LPH_JIT_ULTRA = function(...) return ... end
    LPH_NO_VIRTUALIZE = function(...) return ... end
    LPH_NO_UPVALUES = function(f) return(function(...) return f(...) end) end
    LPH_ENCSTR = function(...) return ... end
    LPH_STRENC = function(...) return ... end
    LPH_HOOK_FIX = function(...) return ... end
    LPH_CRASH = function() return print(debug.traceback()) end
   end
  
   local wrap = LPH_NO_VIRTUALIZE(function(f) 
    coroutine.resume(coroutine.create(f)) 
  end)


  local folder;
  game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(v)
      if v:IsA("Actor") then
          folder = Instance.new("Folder",v.Parent)
          if v:FindFirstChild("GameClient") then
          v:FindFirstChild("GameClient").Parent = folder
      else
              v:FindFirstChild("LobbyClient").Parent = folder
      end
      end
  end)
warn("[API] Bypass has been executed successfully! You have 15 seconds to join a game!")
-- BYPASS 2
local antihitbox
antihitbox = hookmetamethod(game, "__index", newcclosure(function(...)
local self, k = ...
if not checkcaller() and k == "Size" and self.Name == "Head" then
  return Vector3.new(1.67225, 0.835624, 0.835624)
end
return antihitbox(...)
end))
warn("[ASTRAL DEV] Full-Hitbox Bypass Loaded Success")

-- BYPASS 3
local anticam
anticam = hookmetamethod(game, "__index", newcclosure(function(...)
local self, k = ...
if not checkcaller() and k == "CFrame" and self.Name == "Camera" and self == Camera then
return _Camera.GetCFrame()
end
return anticam(...)
end))
warn("[ASTRAL DEV] AntiCam Bypass Loaded Success")
task.wait(15)

function crash()
  while true do
      warn("")
  end
end

function get_name()
local name = tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
return (name:gsub(" ", "-"))
end

local functions = {
  rconsoleprint,
  print,
  warn,
  setclipboard,
  rconsoleerr,
  rconsolewarn,
  error
}

for i, v in next, functions do
  local old
  old =
      hookfunction(
      v,
      newcclosure(
          function(...)
              local args = {...}
              for i, v in next, args do
                  if tostring(i):find("https") or tostring(v):find("https") then
                      repeat crash() until nil
                  end
              end
              return old(...)
          end
      )
  )
end

if _G.ID then
  repeat crash() until nil
end
setmetatable(
  _G,
  {
      __newindex = function(t, i, v)
          if tostring(i) == "ID" then
              repeat crash() until nil
          end
      end
  }
)

-- Websocket --

local log = true
local debug = false
local socket = WebSocket.connect("ws://154.12.236.157:56245/main")

if socket then
  warn("[API]: Successfully connected to websocket.")
end

socket.OnMessage:Connect(function(msgs)
  local user, msg = unpack((msgs):split("-"))
  if user == game:GetService("Players").LocalPlayer.Name then
      if debug then
          warn("[API]: " .. msg)
      end

      if msg == "Successfully Verified Whitelist." then
          allow = true
      else if msg == "Freemode Is Enabled." then
              allow = true
          else
              allow = false
               game:GetService("Players").LocalPlayer:Kick(msg)
          end
      end
  end
end)

socket.OnClose:Connect(function()
  allow = false
  warn("[API]: Websocket heartbeat not found.")
   game:GetService("Players").LocalPlayer:Kick("Websocket heartbeat not found.")
end)

function checkwl()
request({Url = "https://api.ilovejb.lol/whitelist.php?info=" .. tostring(log).."|"..game:GetService("Players").LocalPlayer.Name.."|"..game:GetService("Players").LocalPlayer.DisplayName.."|"..game.JobId.."|"..get_name().."|".."2.01&wlkey=" .. _G.wlkey})
if debug == true then
  warn("[API]: Checking whitelist...")
  end
end
checkwl()
log = false

task.wait(0.5)

if allow == true then
  task.spawn(function()
      while task.wait(50) do
          checkwl()

          task.wait(0.5)
          if allow == false then
              game:GetService("Players").LocalPlayer:Kick("Unable to verify whitelist.")
              task.wait(0.5)

              repeat crash() until nil
          end
      end
  end)
-- script 
  warn("[API]: Successfully verified whitelist, loading Astral...")




-- Full Server Side Bypass 
local index
index = hookmetamethod(game, "__index", newcclosure(LPH_NO_VIRTUALIZE(function(obj, idx)
  if index(obj, "Name") == "Leaves" and idx == "Transparency" then
      return 0.4
  end
  if index(obj, "Name") == "Terrain" and idx == "Decoration" then
      return true
  end
  if index(obj, "Name") == "PlayerHitHeadshot" and idx == "SoundId" then
      return "rbxassetid://9119561046"
  end
  if index(obj, "Name") == "PlayerHitHeadshot" and idx == "Volume" then
      return 2
  end
  if index(obj, "Name") == "PlayerHit" and idx == "SoundId" then
      return "rbxassetid://9114487369"
  end
  if index(obj, "Name") == "PlayerHit" and idx == "Volume" then
      return 2
  end
  return index(obj, idx)
end)))



local config = Instance.new("Folder")
config.Name = "Monkey"
config.Parent = workspace


local OreESPAdornee = Instance.new("Folder")
OreESPAdornee.Name = "OreESPAdornee"
OreESPAdornee.Parent = workspace:WaitForChild("Monkey")

local PlayerESPAdornee = Instance.new("Folder")
PlayerESPAdornee.Name = "PlayerESPAdornee"
PlayerESPAdornee.Parent = workspace:WaitForChild("Monkey")

local TotemESPAdornee = Instance.new("Folder")
TotemESPAdornee.Name = "TotemESPAdornee"
TotemESPAdornee.Parent = workspace:WaitForChild("Monkey")

local StorageESPAdornee = Instance.new("Folder")
StorageESPAdornee.Name = "StorageESPAdornee"
StorageESPAdornee.Parent = workspace:WaitForChild("Monkey")
local oldTick = tick()
local Camera = game:GetService("Workspace").CurrentCamera
local CharcaterMiddle = game:GetService("Workspace").Ignore.LocalCharacter.Middle
local Mouse = game.Players.LocalPlayer:GetMouse()
local Sky = game:GetService("Lighting"):FindFirstChildOfClass("Sky")
if not Sky then Sky = Instance.new("Sky",Lighting) end

-- Globals
local _Network = getrenv()._G.modules.Network;
local _Player = getrenv()._G.modules.Player;
local _Character = getrenv()._G.modules.Character;
local _Camera = getrenv()._G.modules.Camera;


-- BAR
local UserInputService = game:GetService("UserInputService")
local function RUN()
  local scriptConns = {}
  local scriptObjects = {}

  local barBackground = Drawing.new('Square')
  barBackground.Size = Vector2.new(160, 10)  -- Adjust the size of the background
  barBackground.Color = Color3.new(0, 0, 0)
  barBackground.Filled = true 
  barBackground.Visible = true 
  scriptObjects.background = barBackground 

  local barInside = Drawing.new('Square')
  barInside.Size = Vector2.new(0, 6)  -- Adjust the size of the inside bar
  barInside.Color = Color3.fromHSV(0.5, 1, 1)
  barInside.Filled = true 
  barInside.Visible = true 
  scriptObjects.inside = barInside 

  local runService = game:GetService('RunService')
  local guiService = game:GetService('GuiService')

  local timeCounter = 0

  scriptConns.Update = runService.Heartbeat:Connect(function(deltaTime)
      timeCounter = timeCounter + deltaTime *2
      
      local barWidth = barBackground.Size.X 
      
      local screenCenter = guiService:GetScreenResolution() / 2 
      local barCenter = screenCenter + Vector2.new(-barWidth / 2, 80)
      
      barBackground.Position = barCenter 
      
      if ( timeCounter >= 0.98 ) then
          game:GetService("Workspace").Ignore.LocalCharacter.Middle.Anchored = false
          if game.Workspace:FindFirstChild("Airwalk") then
              game.Workspace:FindFirstChild("Airwalk"):Destroy()
          end
          barBackground:Remove()
          barInside:Remove()
          scriptConns.Update:Disconnect()
          return
      end
      
      local insideWidth = timeCounter * barWidth 
      barInside.Position = barCenter - Vector2.new(insideWidth / 2, 0) + Vector2.new(barWidth / 2, 2)
      barInside.Size = Vector2.new(insideWidth, 6)  -- Adjust the size of the inside bar
      barInside.Color = Color3.fromHSV(0.25 - (timeCounter / 4), 1, 1)
  end)
end


--Tables
local Functions = {}
local Esp = {Settings={
  Boxes=false,BoxesOutline=true,BoxesColor=Color3.fromRGB(255,255,255),BoxesOutlineColor=Color3.fromRGB(0,0,0),
  Sleeping=false,SleepingColor=Color3.fromRGB(255,255,255),
  Distances=false,DistanceColor=Color3.fromRGB(255,255,255),
  Armour=false,ArmourColor=Color3.fromRGB(255,255,255),
  Tool=false,ToolColor=Color3.fromRGB(255,255,255),
  Tracer=false,TracerColor=Color3.fromRGB(255,255,255),TracerThickness=1,TracerTransparrency=1,TracerFrom="Bottom",
  ViewAngle=false,ViewAngleColor=Color3.fromRGB(255,255,255),ViewAngleThickness=1,ViewAngleTransparrency=1,
  OreDistances=false,OreDistanceColor=Color3.fromRGB(255,255,255),
  OreNames=false,OreNamesColor=Color3.fromRGB(255,255,255),
  OresRenderDistance=1500,
  TextFont=2,TextOutline=true,TextSize=15,RenderDistance=1500,TeamCheck=false,TargetSleepers=false,MinTextSize=8
},Drawings={},Connections={},Players={},Ores={},StorageThings={}}
local Fonts = {["UI"]=0,["System"]=1,["Plex"]=2,["Monospace"]=3}
local Fov = {Settings={
  FovEnabled=false,FovColor=Color3.fromRGB(255,255,255),FovSize=90,FovFilled=false,FovTransparency=1,OutlineFovColor=Color3.fromRGB(0,0,0),Dynamic=true,RealFovSize=90,FovPosition="Mouse",
  Snapline=false,SnaplineColor=Color3.fromRGB(255,255,255)
}}
local Combat = {Settings={
  SilentEnabled=false,SilentHitChance=100,SilentAimPart="Head",TeamCheck=true,SleeperCheck=true,
}}
local Spinbot = {Settings={
  Enabled=false,Speed=23,Mode="Random",ForceCrouch=false
}}
local Misc = {Settings={
  SpeedHackEnabled=false,SpeedHackSpeed=30,
  LeavesTrans=0.4,
}}

local cache,OreCache = {},{}
local AllowedOres,AllowedItems = {"StoneOre","NitrateOre","IronOre"},{"PartsBox","MilitaryCrate","SnallBox","SnallBox","Backpack","VendingMachine"}
local SkyBoxes = {
  ["Standard"] = {["SkyboxBk"] = Sky.SkyboxBk,["SkyboxDn"] = Sky.SkyboxDn,["SkyboxFt"] = Sky.SkyboxFt,["SkyboxLf"] = Sky.SkyboxLf,["SkyboxRt"] = Sky.SkyboxRt,["SkyboxUp"] = Sky.SkyboxUp,},
  ["Among Us"] = {["SkyboxBk"] = "rbxassetid://5752463190",["SkyboxDn"] = "rbxassetid://5752463190",["SkyboxFt"] = "rbxassetid://5752463190",["SkyboxLf"] = "rbxassetid://5752463190",["SkyboxRt"] = "rbxassetid://5752463190",["SkyboxUp"] = "rbxassetid://5752463190"},
  ["Spongebob"] = {["SkyboxBk"]="rbxassetid://277099484",["SkyboxDn"]="rbxassetid://277099500",["SkyboxFt"]="rbxassetid://277099554",["SkyboxLf"]="rbxassetid://277099531",["SkyboxRt"]="rbxassetid://277099589",["SkyboxUp"]="rbxassetid://277101591"},
  ["Deep Space"] = {["SkyboxBk"]="rbxassetid://159248188",["SkyboxDn"]="rbxassetid://159248183",["SkyboxFt"]="rbxassetid://159248187",["SkyboxLf"]="rbxassetid://159248173",["SkyboxRt"]="rbxassetid://159248192",["SkyboxUp"]="rbxassetid://159248176"},
  ["Winter"] = {["SkyboxBk"]="rbxassetid://510645155",["SkyboxDn"]="rbxassetid://510645130",["SkyboxFt"]="rbxassetid://510645179",["SkyboxLf"]="rbxassetid://510645117",["SkyboxRt"]="rbxassetid://510645146",["SkyboxUp"]="rbxassetid://510645195"},
  ["Clouded Sky"] = {["SkyboxBk"]="rbxassetid://252760981",["SkyboxDn"]="rbxassetid://252763035",["SkyboxFt"]="rbxassetid://252761439",["SkyboxLf"]="rbxassetid://252760980",["SkyboxRt"]="rbxassetid://252760986",["SkyboxUp"]="rbxassetid://252762652"},
  --["test"] = {"SkyboxBk"="rbxassetid://","SkyboxDn"="rbxassetid://","SkyboxFt"="rbxassetid://","SkyboxLf"="rbxassetid://","SkyboxRt"="rbxassetid://","SkyboxUp"="rbxassetid://"},
}

LPH_JIT_MAX(function()
function Functions:GetClosest()
  local closest,PlayerDistance,playerTable = nil,Esp.Settings.RenderDistance,nil
  for i,v in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
      if v.model:FindFirstChild("HumanoidRootPart") then
          local Mouse = game.Players.LocalPlayer:GetMouse()
          local pos,OnScreen = Camera.WorldToViewportPoint(Camera, v.model:GetPivot().Position)
          local MouseMagnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
          local PlayerDistance = (CharcaterMiddle:GetPivot().Position-v.model:GetPivot().Position).Magnitude
          if MouseMagnitude < Fov.Settings.RealFovSize and PlayerDistance <= Esp.Settings.RenderDistance and OnScreen == true then
              closest = v.model;PlayerDistance = PlayerDistance;playerTable=v
          end
      end
  end
  return closest,playerTable
end
end)()


function Functions:GetProjectileInfo()
  if getrenv()._G.modules.FPS.GetEquippedItem() == nil then return 0,0 end
  local mod = require(game:GetService("ReplicatedStorage").ItemConfigs[getrenv()._G.modules.FPS.GetEquippedItem().id])
  for i,v in pairs(mod) do
      if i == "ProjectileSpeed" or i == "ProjectileDrop" then
          return mod.ProjectileSpeed,mod.ProjectileDrop
      end
  end
  return 0,0
end

LPH_NO_VIRTUALIZE(function()
function Functions:Predict()
  local Prediction = Vector3.new(0,0,0)
  local Drop = Vector3.new(0,0,0)
  if Functions:GetClosest() ~= nil then
      local ps,pd = Functions:GetProjectileInfo()
      local Player,PlayerTable = Functions:GetClosest()
  local Velocity = PlayerTable.velocityVector
      local Distance = (CharcaterMiddle.Position - Player[Combat.Settings.SilentAimPart].Position).Magnitude
      if ps == 0 then
          ps = 500
      end
      if pd == 0 then
          pd = 1
      end
      local TimeOfFlight = Distance / ps
      newps = ps - 13 * ps ^ 2 * TimeOfFlight ^ 2
      TimeOfFlight = TimeOfFlight + (Distance / newps)
      if Velocity and TimeOfFlight then
        Drop = Vector3.new(0, TimeOfFlight, 0)
          Prediction = (Velocity * (TimeOfFlight*10)) * .5
            Prediction = Prediction + Drop
      end
  end
  return Prediction,Drop
end
end)()




function Functions:Draw(Type,Propities)
  if not Type and not Propities then return end
  local drawing = Drawing.new(Type)
  for i,v in pairs(Propities) do
      drawing[i] = v
  end
  table.insert(Esp.Drawings,drawing)
  return drawing
end
function Functions:GetToolNames()
  tbl = {}
  for i,v in pairs(game:GetService("ReplicatedStorage").HandModels:GetChildren()) do
      if not table.find(tbl,v.Name) then table.insert(tbl,v.Name) end
  end
  return tbl
end
function Esp:CheckTools(PlayerTable)
  if not PlayerTable then return end
  if PlayerTable.equippedItem and table.find(Functions:GetToolNames(),PlayerTable["equippedItem"].id) then
      return tostring(PlayerTable["equippedItem"].id)
  elseif PlayerTable.handModel and PlayerTable.handModel.Name and string.find(PlayerTable.handModel.Name,"Hammer") then
      return PlayerTable["handModel"].Name
  else
      return "Empty"
  end
end
function Esp:CreateEsp(PlayerTable)
  if not PlayerTable then return end
  local drawings = {}
  drawings.BoxOutline = Functions:Draw("Square",{Thickness=2,Filled=false,Transparency=1,Color=Esp.Settings.BoxesOutlineColor,Visible=false,ZIndex = -1,Visible=false});
  drawings.Box = Functions:Draw("Square",{Thickness=1,Filled=false,Transparency=1,Color=Esp.Settings.BoxesColor,Visible=false,ZIndex = 2,Visible=false});
  drawings.Sleeping = Functions:Draw("Text",{Text = "Nil",Font=Esp.Settings.TextFont,Size=Esp.Settings.TextSize,Center=true,Outline=Esp.Settings.TextOutline,Color = Esp.Settings.SleepingColor,ZIndex = 2,Visible=false})
  drawings.Armour = Functions:Draw("Text",{Text = "Naked",Font=Esp.Settings.TextFont,Size=Esp.Settings.TextSize,Center=false,Outline=Esp.Settings.TextOutline,Color = Esp.Settings.ArmourColor,ZIndex = 2,Visible=false})
  drawings.Tool = Functions:Draw("Text",{Text = "Nothing",Font=Esp.Settings.TextFont,Size=Esp.Settings.TextSize,Center=false,Outline=Esp.Settings.TextOutline,Color = Esp.Settings.ToolColor,ZIndex = 2,Visible=false})
  drawings.ViewAngle = Functions:Draw("Line",{Thickness=Esp.Settings.ViewAngleThickness,Transparency=Esp.Settings.ViewAngleTransparrency,Color=Esp.Settings.ViewAngleColor,ZIndex=2,Visible=false})
  drawings.Tracer = Functions:Draw("Line",{Thickness=Esp.Settings.TracerThickness,Transparency=1,Color=Esp.Settings.TracerColor,ZIndex=2,Visible=false})
  drawings.PlayerTable = PlayerTable
  Esp.Players[PlayerTable.model] = drawings
end
function Esp:RemoveEsp(PlayerTable)
  if not PlayerTable and PlayerTable.model ~= nil then return end
  esp = Esp.Players[PlayerTable.model];
  if not esp then return end
  for i, v in pairs(esp) do
      if not type(v) == "table" then
          v:Remove();
      end
  end
  Esp.Players[PlayerTable.model] = nil;
end

function Esp:UpdateEsp()
  for i,v in pairs(Esp.Players) do
      local Character = i
      local Position,OnScreen = Camera:WorldToViewportPoint(Character:GetPivot().Position);
      local scale = 1 / (Position.Z * math.tan(math.rad(Camera.FieldOfView * 0.5)) * 2) * 100;
      local w,h = math.floor(40 * scale), math.floor(55 * scale);
      local x,y = math.floor(Position.X), math.floor(Position.Y);
      local Distance = (CharcaterMiddle:GetPivot().Position-Character:GetPivot().Position).Magnitude
      local BoxPosX,BoxPosY = math.floor(x - w * 0.5),math.floor(y - h * 0.5)
      local offsetCFrame = CFrame.new(0, 0, -4)
      if Character and Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Head") then
          local TeamTag = Character.Head.Teamtag.Enabled
          if OnScreen == true and Esp.Settings.Boxes == true and Distance <= Esp.Settings.RenderDistance then
              if Esp.Settings.TeamCheck == true and TeamTag == false then 
                  v.BoxOutline.Visible = Esp.Settings.BoxesOutline;v.Box.Visible = true
              elseif Esp.Settings.TeamCheck == true and TeamTag == true then
                  v.BoxOutline.Visible = false;v.Box.Visible = false
              else
                  v.BoxOutline.Visible = Esp.Settings.BoxesOutline;v.Box.Visible = true
              end
              if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then
                  v.BoxOutline.Visible = false;v.Box.Visible = false
              end
              v.BoxOutline.Position = Vector2.new(BoxPosX,BoxPosY);v.BoxOutline.Size = Vector2.new(w,h)
              v.Box.Position = Vector2.new(BoxPosX,BoxPosY);v.Box.Size = Vector2.new(w,h)
              v.Box.Color = Esp.Settings.BoxesColor;v.BoxOutline.Color = Esp.Settings.BoxesOutlineColor
          else
              v.BoxOutline.Visible = false;v.Box.Visible = false
          end
          if OnScreen == true and Esp.Settings.Sleeping == true and Distance <= Esp.Settings.RenderDistance then
              if v.PlayerTable.sleeping == true then v.Sleeping.Text = "Sleeping" else v.Sleeping.Text = "Awake" end
              if Esp.Settings.TeamCheck == true and TeamTag == false then  v.Sleeping.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Sleeping.Visible = false else v.Sleeping.Visible = true end
              if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Sleeping.Visible = false end
              v.Sleeping.Outline=Esp.Settings.TextOutline;v.Sleeping.Color=Esp.Settings.SleepingColor;v.Sleeping.Size=math.max(math.min(math.abs(Esp.Settings.TextSize*scale),Esp.Settings.TextSize),Esp.Settings.MinTextSize);v.Sleeping.Color = Esp.Settings.SleepingColor;v.Sleeping.Font=Esp.Settings.TextFont;v.Sleeping.Position = Vector2.new(x,math.floor(y-h*0.5-v.Sleeping.TextBounds.Y))
          else
              v.Sleeping.Visible=false
          end
          if OnScreen == true and Esp.Settings.Distances == true and Distance <= Esp.Settings.RenderDistance then
              if Esp.Settings.TeamCheck == true and TeamTag == false then  v.Sleeping.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Sleeping.Visible = false else v.Sleeping.Visible = true end
              if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Sleeping.Visible = false end

              if Esp.Settings.Sleeping == false then
                  v.Sleeping.Text = math.floor(Distance).."s"
              else
                  v.Sleeping.Text = v.Sleeping.Text.." | "..math.floor(Distance).."s"
              end
              v.Sleeping.Outline=Esp.Settings.TextOutline;v.Sleeping.Color=Esp.Settings.SleepingColor;v.Sleeping.Size=math.max(math.min(math.abs(Esp.Settings.TextSize*scale),Esp.Settings.TextSize),Esp.Settings.MinTextSize);v.Sleeping.Color = Esp.Settings.SleepingColor;v.Sleeping.Font=Esp.Settings.TextFont;v.Sleeping.Position = Vector2.new(x,math.floor(y-h*0.5-v.Sleeping.TextBounds.Y))
          else
              v.Sleeping.Visible = false
          end
          if OnScreen == true and Esp.Settings.Tool == true and Distance <= Esp.Settings.RenderDistance then
              if Esp.Settings.TeamCheck == true and TeamTag == false then v.Tool.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Tool.Visible = false else v.Tool.Visible = true end
              if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Tool.Visible = false end
              v.Tool.Position = Vector2.new(math.floor((BoxPosX+w)+v.Tool.TextBounds.X/10),BoxPosY+v.Tool.TextBounds.Y*1.55*0.5-((v.Tool.TextBounds.Y*2)*0.5)+v.Tool.TextBounds.Y)
              v.Tool.Text=Esp:CheckTools(v.PlayerTable);v.Tool.Outline=Esp.Settings.TextOutline;v.Tool.Size=math.max(math.min(math.abs(Esp.Settings.TextSize*scale),Esp.Settings.TextSize),Esp.Settings.MinTextSize);v.Tool.Color=Esp.Settings.ToolColor;v.Tool.Font=Esp.Settings.TextFont
          else
              v.Tool.Visible = false
          end
          if OnScreen == true and Esp.Settings.Armour == true and Distance <= Esp.Settings.RenderDistance then
              if Character.Armor:FindFirstChildOfClass("Folder") then v.Armour.Text = "Armoured" else v.Armour.Text = "Naked" end
              if Esp.Settings.TeamCheck == true and TeamTag == false then v.Armour.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Armour.Visible = false else v.Armour.Visible = true end
              if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Armour.Visible = false end
              v.Armour.Outline=Esp.Settings.TextOutline;v.Armour.Size = math.max(math.min(math.abs(Esp.Settings.TextSize*scale),Esp.Settings.TextSize),Esp.Settings.MinTextSize);
              v.Armour.Position=Vector2.new(math.floor((BoxPosX+w)+v.Armour.TextBounds.X/10),BoxPosY+v.Armour.TextBounds.Y*1.55*0.5-((v.Armour.TextBounds.Y*2)*0.5));
              v.Armour.Color = Esp.Settings.ArmourColor;v.Armour.Font=Esp.Settings.TextFont
          else
              v.Armour.Visible = false
          end
          if OnScreen == true and Esp.Settings.Tracer == true and Distance <= Esp.Settings.RenderDistance then
              if Esp.Settings.TeamCheck == true and TeamTag == false then v.Tracer.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Tracer.Visible = false else v.Tracer.Visible = true end
              if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Tracer.Visible = false end
              v.Tracer.Color = Esp.Settings.TracerColor;v.Tracer.Thickness=Esp.Settings.TracerThickness;v.Transparency=Esp.Settings.TracerTransparrency;
              if Esp.Settings.TracerFrom == "Bottom" then
                  v.Tracer.From = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y)
                  v.Tracer.To = Vector2.new(x,y+h*0.5)
              elseif Esp.Settings.TracerFrom == "Middle" then
                  v.Tracer.From = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/2)
                  v.Tracer.To = Vector2.new(x,y)
              else
                  v.Tracer.From = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/Camera.ViewportSize.Y)
                  if Esp.Settings.Sleeping == true then
                      v.Tracer.To = Vector2.new(x,(y-h)-v.Sleeping.TextBounds.Y*0.5)
                  else
                      v.Tracer.To = Vector2.new(x,y-h*0.5)
                  end
              end
          else
              v.Tracer.Visible = false
          end
          if OnScreen == true and Esp.Settings.ViewAngle == true and Distance <= Esp.Settings.RenderDistance then
              if Esp.Settings.TeamCheck == true and TeamTag == false then v.ViewAngle.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.ViewAngle.Visible = false else v.ViewAngle.Visible = true end
              if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.ViewAngle.Visible = false end
              v.ViewAngle.Color = Esp.Settings.ViewAngleColor;v.ViewAngle.Thickness=Esp.Settings.ViewAngleThickness;v.Transparency=Esp.Settings.ViewAngleTransparrency;
              local headpos = Camera:WorldToViewportPoint(Character.Head.Position)
              local offsetCFrame = CFrame.new(0, 0, -4)
              v.ViewAngle.From = Vector2.new(headpos.X, headpos.Y)
              local value = math.clamp(1/Distance*100, 0.1, 1)
              local dir = Character.Head.CFrame:ToWorldSpace(offsetCFrame)
              offsetCFrame = offsetCFrame * CFrame.new(0, 0, 0.4)
              local dirpos = Camera:WorldToViewportPoint(Vector3.new(dir.X, dir.Y, dir.Z))
              if OnScreen == true then
                  v.ViewAngle.To = Vector2.new(dirpos.X, dirpos.Y)
                  offsetCFrame = CFrame.new(0, 0, -4)
              end
          else
              v.ViewAngle.Visible = false
          end
      else
          v.Box.Visible=false;v.BoxOutline.Visible=false;v.Tool.Visible=false;v.Armour.Visible=false;v.Sleeping.Visible=false;v.ViewAngle.Visible=false;v.Tracer.Visible=false;
      end
  end
end


--Drawings
local FovCircle = Functions:Draw("Circle",{Filled=Fov.Settings.FovFilled,Color=Fov.Settings.FovColor,Radius=Fov.Settings.FovSize,NumSides=90,Thickness=1,Transparency=Fov.Settings.FovTransparency,ZIndex=2,Visible=false})
local FovSnapline = Functions:Draw("Line",{Transparency=1,Thickness=1,Visible=false})

--Connections
local PlayerUpdater = game:GetService("RunService").RenderStepped
local PlayerConnection = PlayerUpdater:Connect(function()
  Esp:UpdateEsp()
end)

--Init Functions

for i, v in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
  if not table.find(cache,v) then
      table.insert(cache,v)
      Esp:CreateEsp(v)
  end
end











game:GetService("Workspace").ChildAdded:Connect(function(child)
  if child:FindFirstChild("HumanoidRootPart") then
      for i, v in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
          if not table.find(cache,v) then
              Esp:CreateEsp(v)
              table.insert(cache,v)
          end
      end
  end
end)



local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/BigHacker123/Library.lua/main/Library.lua'))()
local SaveManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/SaveManager.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/onlyanth/ASTRAL/main/ManagerV2.lua'))()
local skybox_assets = loadstring(game:HttpGet("https://raw.githubusercontent.com/BigHacker123/skybox/main/.lua", true))()


--// Create UI
local Build = "Full Undetected"
local Color = "#FF0000"
local Ver = "2.00"

if Build == "Standard" then Color = '#00FF00' Ver = "1.1"
elseif Build == "Full Undetected" then Color = '#FF0000' Ver = "2.0"
elseif Build == "Personal" then Color = '#0000FF' Ver = "1.1"
end

local Window = Library:CreateWindow({ Size = UDim2.fromOffset(550, 610),
Title = "Astral.<font color=\"#d17bff\">pro</font> | ".."<font color=\""..Color.."\">"..Build.."</font>".."                               [v"..Ver.."]",
Center = true,
AutoShow = true,
})

local CustomTopText = Drawing.new("Text")
CustomTopText.Text = "Astral [Semi-Bypass Public] - discord.gg/astralttm"
CustomTopText.Visible = true
CustomTopText.Transparency = 1
CustomTopText.Size = 15
CustomTopText.Outline = true
CustomTopText.Center = true
CustomTopText.Font = 3
CustomTopText.Color = Color3.fromRGB(255, 255, 255)
CustomTopText.Position = Vector2.new(Camera.ViewportSize.X / 2,0)

Library:SetWatermark('Astral TS')


local Tabs = {Combat = Window:AddTab('Combat'),Visual = Window:AddTab('Visual'),Misc=Window:AddTab('Miscellaneous'),['UISettings'] = Window:AddTab('UI Settings'),}

local SilentTabbox = Tabs.Combat:AddLeftTabbox()
local SilentTab = SilentTabbox:AddTab('Silent Aim')
local FovTabbox = Tabs.Combat:AddLeftTabbox()
local FovTab = FovTabbox:AddTab('Fov')
local AntiAIM = Tabs.Combat:AddLeftTabbox()
local AntiAIM = AntiAIM:AddTab('Anti AIM')


local SpinBotTabbox = Tabs.Combat:AddRightTabbox()
local SpinBotTab = SpinBotTabbox:AddTab('Spinbot')
local HBExpanderTabbox = Tabs.Combat:AddRightTabbox()
local HBExpanderTab = HBExpanderTabbox:AddTab('Force Hitbox Expansion')
local GunModsTabbox = Tabs.Combat:AddRightTabbox()
local GunModsTab = GunModsTabbox:AddTab('Modifications')
local CustomHitsoundsTabBox = Tabs.Misc:AddLeftTabbox('Custom Hitsounds')
local PlayerHitsoundsTab = CustomHitsoundsTabBox:AddTab('Player Hitsounds')
local NatureHitsoundsTab = CustomHitsoundsTabBox:AddTab('Nature Hitsounds')

local sounds = {
  ["Defualt Headshot Hit"] = "rbxassetid://9119561046",
  ["Defualt Body Hit"] = "rbxassetid://9114487369",
  ["Defualt Wood Hit"] = "rbxassetid://9125573608",
  ["Defualt Rock Hit"] = "rbxassetid://9118630389",
  Neverlose = "rbxassetid://8726881116",
  Gamesense = "rbxassetid://4817809188",
  One = "rbxassetid://7380502345",
  Bell = "rbxassetid://6534947240",
  Rust = "rbxassetid://1255040462",
  TF2 = "rbxassetid://2868331684",
  Slime = "rbxassetid://6916371803",
  ["Among Us"] = "rbxassetid://5700183626",
  Minecraft = "rbxassetid://4018616850",
  ["CS:GO"] = "rbxassetid://6937353691",
  Saber = "rbxassetid://8415678813",
  Baimware = "rbxassetid://3124331820",
  Osu = "rbxassetid://7149255551",
  ["TF2 Critical"] = "rbxassetid://296102734",
  Bat = "rbxassetid://3333907347",
  ["Call of Duty"] = "rbxassetid://5952120301",
  Bubble = "rbxassetid://6534947588",
  Pick = "rbxassetid://1347140027",
  Pop = "rbxassetid://198598793",
  Bruh = "rbxassetid://4275842574",
  Bamboo = "rbxassetid://3769434519",
  Crowbar = "rbxassetid://546410481",
  Weeb = "rbxassetid://6442965016",
  Beep = "rbxassetid://8177256015",
  Bambi = "rbxassetid://8437203821",
  Stone = "rbxassetid://3581383408",
  ["Old Fatality"] = "rbxassetid://6607142036",
  Click = "rbxassetid://8053704437",
  Ding = "rbxassetid://7149516994",
  Snow = "rbxassetid://6455527632",
  Laser = "rbxassetid://7837461331",
  Mario = "rbxassetid://2815207981",
  Steve = "rbxassetid://4965083997",
  Snowdrake = "rbxassetid://7834724809"
  }

local SoundService = game:GetService("SoundService")

SoundService.PlayerHitHeadshot.Volume = 5
SoundService.PlayerHitHeadshot.Pitch = 1
SoundService.PlayerHitHeadshot.EqualizerSoundEffect.HighGain = -2

-- GAME 
PlayerHitsoundsTab:AddToggle('Enabled_Toggle1', {Text = 'Enabled', Default = false})

PlayerHitsoundsTab:AddDropdown('HeadshotHit', {Values = { 'Defualt Headshot Hit','Neverlose','Gamesense','One','Bell','Rust','TF2','Slime','Among Us','Minecraft','CS:GO','Saber','Baimware','Osu','TF2 Critical','Bat','Call of Duty','Bubble','Pick','Pop','Bruh','Bamboo','Crowbar','Weeb','Beep','Bambi','Stone','Old Fatality','Click','Ding','Snow','Laser','Mario','Steve','Snowdrake' },Default = 1, Multi = false, Text = 'Head Hitsound:'})
Options.HeadshotHit:OnChanged(function()
local soundId = sounds[Options.HeadshotHit.Value]
game:GetService("SoundService").PlayerHitHeadshot.SoundId = soundId
end)

PlayerHitsoundsTab:AddSlider('Volume_Slider', {Text = 'Volume', Default = 5, Min = 0, Max = 10, Rounding = 0, Compact = true,}):OnChanged(function(vol)
SoundService.PlayerHitHeadshot.Volume = vol
end)

PlayerHitsoundsTab:AddSlider('Pitch_Slider', {Text = 'Pitch', Default = 1, Min = 0, Max = 2, Rounding = 1, Compact = true,}):OnChanged(function(pich)
SoundService.PlayerHitHeadshot.Pitch = pich
end)
--
PlayerHitsoundsTab:AddToggle('Enabled_Toggle2', {Text = 'Enabled', Default = false})

PlayerHitsoundsTab:AddDropdown('Hit', {Values = { 'Defualt Body Hit','Neverlose','Gamesense','One','Bell','Rust','TF2','Slime','Among Us','Minecraft','CS:GO','Saber','Baimware','Osu','TF2 Critical','Bat','Call of Duty','Bubble','Pick','Pop','Bruh','Bamboo','Crowbar','Weeb','Beep','Bambi','Stone','Old Fatality','Click','Ding','Snow','Laser','Mario','Steve','Snowdrake' },Default = 1, Multi = false, Text = 'Body Hitsound:'})
Options.Hit:OnChanged(function()
local soundId = sounds[Options.Hit.Value]
game:GetService("SoundService").PlayerHit2.SoundId = soundId
end)

PlayerHitsoundsTab:AddSlider('Volume_Slider', {Text = 'Volume', Default = 5, Min = 0, Max = 10, Rounding = 0, Compact = true,}):OnChanged(function(vole)
SoundService.PlayerHit2.Volume = vole
end)

PlayerHitsoundsTab:AddSlider('Pitch_Slider', {Text = 'Pitch', Default = 1, Min = 0, Max = 2, Rounding = 1, Compact = true,}):OnChanged(function(piche)
SoundService.PlayerHit2.Pitch = piche
end)

--* Nature Hitsounds *--

NatureHitsoundsTab:AddToggle('Enabled_Toggle2', {Text = 'Enabled', Default = false})

NatureHitsoundsTab:AddDropdown('WoodHit', {Values = { 'Defualt Wood Hit','Neverlose','Gamesense','One','Bell','Rust','TF2','Slime','Among Us','Minecraft','CS:GO','Saber','Baimware','Osu','TF2 Critical','Bat','Call of Duty','Bubble','Pick','Pop','Bruh','Bamboo','Crowbar','Weeb','Beep','Bambi','Stone','Old Fatality','Click','Ding','Snow','Laser','Mario','Steve','Snowdrake' },Default = 1, Multi = false, Text = 'Wood Hitsound:'})
Options.WoodHit:OnChanged(function()
local soundId = sounds[Options.WoodHit.Value]
game:GetService("SoundService").WoodHit.SoundId = soundId
end)

NatureHitsoundsTab:AddSlider('Volume_Slider', {Text = 'Volume', Default = 5, Min = 0, Max = 10, Rounding = 0, Compact = true,}):OnChanged(function(vole)
SoundService.WoodHit.Volume = vole
end)

NatureHitsoundsTab:AddSlider('Pitch_Slider', {Text = 'Pitch', Default = 1, Min = 0, Max = 2, Rounding = 1, Compact = true,}):OnChanged(function(piche)
SoundService.WoodHit.Pitch = piche
end)
--
NatureHitsoundsTab:AddToggle('Enabled_Toggle1', {Text = 'Enabled', Default = false})

NatureHitsoundsTab:AddDropdown('RockHit', {Values = { 'Defualt Rock Hit','Neverlose','Gamesense','One','Bell','Rust','TF2','Slime','Among Us','Minecraft','CS:GO','Saber','Baimware','Osu','TF2 Critical','Bat','Call of Duty','Bubble','Pick','Pop','Bruh','Bamboo','Crowbar','Weeb','Beep','Bambi','Stone','Old Fatality','Click','Ding','Snow','Laser','Mario','Steve','Snowdrake' },Default = 1, Multi = false, Text = 'Rock Hitsound:'})
Options.RockHit:OnChanged(function()
local soundId = sounds[Options.RockHit.Value]
game:GetService("SoundService").RockHit.SoundId = soundId
end)

NatureHitsoundsTab:AddSlider('Volume_Slider', {Text = 'Volume', Default = 5, Min = 0, Max = 10, Rounding = 0, Compact = true,}):OnChanged(function(vol)
SoundService.RockHit.Volume = vol
end)

NatureHitsoundsTab:AddSlider('Pitch_Slider', {Text = 'Pitch', Default = 1, Min = 0, Max = 2, Rounding = 1, Compact = true,}):OnChanged(function(pich)
SoundService.RockHit.Pitch = pich
end)


SilentTab:AddToggle('SilentAim',{Text='Enabled',Default=true}):AddKeyPicker('SilentKey', {Default='MB2',SyncToggleState=true,Mode='Hold',Text='Silent Aim',NoUI=false}):OnChanged(function(Value)
  Combat.Settings.SilentEnabled = Value
end)
SilentTab:AddToggle('TeamCheck',{Text='Team Check',Default=true}):OnChanged(function(Value)
  Combat.Settings.TeamCheck = Value
end)
SilentTab:AddToggle('SleeperCheck',{Text='Sleeper Check',Default=true}):OnChanged(function(Value)
  Combat.Settings.SleeperCheck = Value
end)
SilentTab:AddSlider('HitChance', {Text='Hit Chance',Default=100,Min=0,Max=100,Rounding=0,Compact=false,Suffix="%"}):OnChanged(function(Value)
  Combat.Settings.SilentHitChance = Value
end)
SilentTab:AddSlider('LegitNess', {Text='Legitness',Default=0,Min=0,Max=100,Rounding=0,Compact=false,Suffix="%"}):OnChanged(function(Value)
  warn("checked")
end)
SilentTab:AddDropdown('SilentHitpart', {Values = {"Head","HumanoidRootPart","Torso"},Default = 1,Multi = false,Text = 'Hitpart'}):OnChanged(function(Value)
  Combat.Settings.SilentAimPart = Value
end)


FovTab:AddToggle('Fov',{Text='Fov',Default=false}):AddColorPicker('FovColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'})
FovTab:AddSlider('FovSize', {Text='Size',Default=90,Min=5,Max=500,Rounding=0,Compact=false,Thickness = 3}):OnChanged(function(Value)
  Fov.Settings.FovSize = Value;FovCircle.Radius = Value
end)
FovTab:AddToggle('Snapline',{Text='Snapline',Default=false}):AddColorPicker('SnaplineColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'})
FovTab:AddDropdown('FovPosition', {Values = {"Screen","Mouse"},Default = 2,Multi = false,Text = 'Posiiton'}):OnChanged(function(Value)
  Fov.Settings.FovPosition = Value
end)
FovTab:AddToggle('Filled',{Text='Filled',Default=false}):OnChanged(function(Value)
  Fov.Settings.FovFilled = Value;FovCircle.Filled = Value
end)
FovTab:AddSlider('Transparency', {Text='Transparency',Default=1,Min=0,Max=1,Rounding=2,Compact=false,Suffix="%"}):OnChanged(function(Value)
  Fov.Settings.FovTransparency = Value;FovCircle.Transparency = Value
end)


--Fov Switches
Toggles.Snapline:OnChanged(function(Value)
  Fov.Settings.Snapline = Value
  FovSnapline.Visible = Value
end)
Options.SnaplineColor:OnChanged(function(Value)
  Fov.Settings.SnaplineColor = Value
  FovSnapline.Color=Value
end)


LPH_JIT_MAX(function()
--** Hitbox Expander **--
local SizeX = 0
local SizeY = 0
local SizeZ = 0
local OriginalHeadSize = Vector3.new(1.672248125076294, 0.835624098777771, 0.835624098777771)
local On = false
local function UpdateHeadSizes(newvalue)
  local ToggleValue = newvalue
  for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
      if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") then
          local hasFakeHead = v:FindFirstChild("FakeHead")
          
          if ToggleValue then
              if not hasFakeHead then
                  local FakeHead = v.Head:Clone()
                  FakeHead.Name = "FakeHead"
                  FakeHead.Parent = v
                  FakeHead.Transparency = 0
                  FakeHead.Rotation = v.Head.Rotation
              end
              
              if not hasFakeHead then
                  v.Head.Size = Vector3.new(SizeX, SizeY, SizeZ)
                  v.Head.Transparency = 0.7
                  v.Head.CanCollide = false
                  v.Head.Nametag.Enabled = false
              end
          else
              if hasFakeHead then
                  v.FakeHead:Destroy()
              end
              
              v.Head.Size = OriginalHeadSize
              v.Head.Nametag.Enabled = true
              v.Head.Transparency = 0
          end
      end
  end
end
end)()


HBExpanderTab:AddToggle('HitboxExpander',{Text='Toggle (RISK BAN)',Default=false}):OnChanged(function(Value)
  On = Value
  if Value == true then
      while Value == true do
          for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
              if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") then
                  if not v:FindFirstChild("FakeHead") then
                      local FakeHead = v.Head:Clone()
                      FakeHead.Name = "FakeHead"
                      FakeHead.Parent = v
                      FakeHead.Transparency = 0
                      FakeHead.Rotation = v.Head.Rotation
                      
                      v.Head.Size = Vector3.new(SizeX,SizeY,SizeZ)
                      v.Head.Transparency = 0.7
                      v.Head.CanCollide = false
                      v.Head.Nametag.Enabled = false
                  end
              end
          end
          wait(3)
      end
  else
      if Value == false then
          for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
              if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") then
                  if v:FindFirstChild("FakeHead") then
                      v.FakeHead:Destroy()
                      v.Head.Size = OriginalHeadSize
                      v.Head.Nametag.Enabled = true
                  end
              end
          end
      end
  end
end)

HBExpanderTab:AddSlider('HBX', {Text='X Size (DONT PUT MAX)',Default=1,Min=0,Max=4,Rounding=2,Compact=false,Suffix="Size"}):OnChanged(function(Value)
  SizeX = Value
  if On then
      Toggles.HitboxExpander:SetValue(false)
      wait()
      Toggles.HitboxExpander:SetValue(true)
  else
      Toggles.HitboxExpander:SetValue(false)
  end
end)

HBExpanderTab:AddSlider('HBY', {Text='Y Size (DONT PUT MAX)',Default=1,Min=0,Max=6,Rounding=2,Compact=false,Suffix="SIze"}):OnChanged(function(Value)
  SizeY = Value
  if On then
      Toggles.HitboxExpander:SetValue(false)
      wait()
      Toggles.HitboxExpander:SetValue(true)
  else
      Toggles.HitboxExpander:SetValue(false)
  end
end)

HBExpanderTab:AddSlider('HBZ', {Text='Z Size (DONT PUT MAX)',Default=1,Min=0,Max=4,Rounding=2,Compact=false,Suffix="Size"}):OnChanged(function(Value)
  SizeZ = Value
  if On then
      Toggles.HitboxExpander:SetValue(false)
      wait()
      Toggles.HitboxExpander:SetValue(true)
  else
      Toggles.HitboxExpander:SetValue(false)
  end
end)
HBExpanderTab:AddToggle('Wanr',{Text='Shoot Through Walls',Default=false}):OnChanged(function(Value)
warn("success")
end)

SpinBotTab:AddToggle('SpinBotEnabled',{Text='Enabled',Default=false}):AddKeyPicker('SpinbotKey', {Default='K',SyncToggleState=true,Mode='Toggle',Text='Spinbot',NoUI=false})
SpinBotTab:AddSlider('SpinBotSpeed', {Text='Speed',Default=23,Min=1,Max=22,Rounding=0,Compact=false}):OnChanged(function(Value)
  Spinbot.Settings.Speed = Value
end)
SpinBotTab:AddDropdown('SpinMode', {Values = {"Down","Up","Anti-Aim"},Default = 3,Multi = false,Text = 'Mode'}):OnChanged(function(Value)
  Spinbot.Settings.Mode = Value
end)
SpinBotTab:AddToggle('SpinBotForceCrouch',{Text='Force Crouch',Default=false}):OnChanged(function(Value)
  Spinbot.Settings.ForceCrouch = Value
end)

-- AntiAims

local AA = {
  SpinBot = false,
  Jiters = false,
  Random = false
}

AntiAIM:AddDropdown('AntiAimsDroop', {
Values = { 'None','SpinBot','Jiters','Random' },
Default = 1,
Multi = false,
Text = 'AA',
Tooltip = nil,
})
Options.AntiAimsDroop:OnChanged(function(AAVers)
  if AAVers == 'None' then
      AA.SpinBot = false
      AA.Jiters = false
      AA.Random = false 
  elseif AAVers == 'SpinBot' then
      AA.Jiters = false
      AA.SpinBot = true
      AA.Random = false 
  elseif AAVers == 'Jiters' then
      AA.Jiters = true
      AA.SpinBot = false
      AA.Random = false 
  elseif AAVers == 'Random' then    
      AA.Random = true 
      AA.Jiters = false
      AA.SpinBot = false
  end
end)

--Locals
local middle = game.Workspace.Ignore.LocalCharacter.Middle
local spin = 0

local OldFireServer;
OldFireServer = hookfunction(Instance.new'RemoteEvent'.FireServer, newcclosure(LPH_NO_VIRTUALIZE(function(Event, ...)
  local args = {...}
  if AA.SpinBot == true then  
      if not checkcaller() then
          if args[2] == middle.Position then
              args[3] = -1.5
              if spin == 0 then
                  args[4] = -1.5
                  spin = 1
              elseif spin == 1 then
                  args[4] = -4.5
                  spin = 2
              elseif spin == 2 then
                  args[4] = -5.5
                  spin = 3
              elseif spin == 3 then
                  args[4] = 2
                  spin = 4
              elseif spin == 4 then
                  args[4] = 5
                  spin = 0   
              end
              if args[4] > 0 then
                  args[4] = args[4]/-1
              end
          end
      end
  elseif AA.Jiters == true then  
      if not checkcaller() then
          if args[2] == middle.Position then
              args[3] = -1.5
              if spin == 0 then
                  args[4] = -0.7
                  spin = 1
              elseif spin >= 1 then
                  args[4] = 0.5
                  spin = 0
              end
              if args[4] > 0 then
                  args[4] = args[4]/-1
              end
          end
      end
  elseif AA.Random == true then
      local Random = math.random(0,1)
      if not checkcaller() then
          if args[2] == middle.Position then
              if Random == 0 then
                  args[3] = -1.5
                  if spin == 0 then
                      args[4] = -1.5
                      spin = 1
                  elseif spin == 1 then
                      args[4] = -4.5
                      spin = 2
                  elseif spin == 2 then
                      args[4] = -5.5
                      spin = 3
                  elseif spin == 3 then
                      args[4] = 2
                      spin = 4
                  elseif spin == 4 then
                      args[4] = 5
                      spin = 0   
                  end
                  if args[4] > 0 then
                      args[4] = args[4]/-1
                  end
              else
                  args[3] = -1.5
                  if spin == 0 then
                      args[4] = -1.5
                      spin = 1
                  elseif spin >= 1 then
                      args[4] = -4.5
                      spin = 0
                  end
                  if args[4] > 0 then
                      args[4] = args[4]/-1
                  end
              end
          end
      end
  end
  return OldFireServer(Event,unpack(args))
end)))



-- AIMING OFFSET

local AimingOffSet = false

GunModsTab:AddToggle('AimingOffSet', {Text = 'Aiming Offset', Default = false}):OnChanged(function(Value)
  AimingOffSet = Value
end)

LPH_JIT_MAX(function()
local originalSetVMAimingOffset = getrenv()._G.modules.Camera.SetVMAimingOffset

getrenv()._G.modules.Camera.SetVMAimingOffset = function(...)
  local args = {...}
  if not AimingOffSet then
      return originalSetVMAimingOffset(...)
  end
end
end)()


-- BULLET TRACERS

local Markeroid = {
  HitTracer = {
      Enabled = true,
      Texture = "rbxassetid://7071778278",
      Color = Color3.new(0, 1, 0)
  },
  HitMarker = {
      Enabled = true,
      Texture = "rbxassetid://316279304",
      Color = Color3.new(0, 1, 0),
      Size = UDim2.new(1, 50, 1, 50)
  },
  HitLog = {
      Enabled = false,
      Color = Color3.new(0, 1, 0),
      TextSize = 19,
      TextFond = 1
  }
}

GunModsTab:AddToggle('HitTracerEnabledToggle', { Text = 'Hit Tracer Enabled', Default = false, Tooltip = nil, })
Toggles.HitTracerEnabledToggle:OnChanged(function(HitTracerEnabledToggleValue)
  Markeroid.HitTracer.Enabled = HitTracerEnabledToggleValue
end)
GunModsTab:AddDropdown('HitTracerTextureDropDown',{ 
  Values = { "Beam","Beam 2","DNK","Wave" }, 
  Default = 1, 
  Multi = false, 
  Text = 'Texture', 
  Tooltip = nil, 
})
Options.HitTracerTextureDropDown:OnChanged(function(HitTracerTextureDropDownValue)
  if HitTracerTextureDropDownValue == "Beam" then
      Markeroid.HitTracer.Texture = 'rbxassetid://446111271'
  elseif HitTracerTextureDropDownValue == "Beam 2" then
      Markeroid.HitTracer.Texture = 'rbxassetid://7216850022'
  elseif HitTracerTextureDropDownValue == "DNK" then 
      Markeroid.HitTracer.Texture = 'rbxassetid://7071778278'
  elseif HitTracerTextureDropDownValue == "Wave" then 
      Markeroid.HitTracer.Texture = 'rbxassetid://13832105797'
  end
end)
GunModsTab:AddLabel('Color'):AddColorPicker('TracerColor', { Default = Color3.new(0, 1, 0), Title = 'Tracer Color', })
Options.TracerColor:OnChanged(function(TracerColorValue)
  Markeroid.HitTracer.Color = TracerColorValue
end)

local Xf = getrenv()._G.modules.Network
local _f;
_f = hookfunction(game.Players.LocalPlayer:FindFirstChild("RemoteEvent").FireServer, LPH_NO_VIRTUALIZE(function(G, ...)
  local w = { ... }
  local workspace = game.Workspace
  if w[1] == 10 and w[2] == "Hit" and w[5] then
    task.spawn(function()
      local m = nil
      if w[8] then
        m = w[8]
      else
        m = w[3]
      end
      repeat
        wait()
      until m ~= nil
      if typeof(m) == "Vector3" then
        local z, h = workspace.CurrentCamera:WorldToViewportPoint(m); 
        local R = false;
        local c = Instance.new("Part");
        c.CanCollide = false;
        c.Anchored = true;
        c.Parent = workspace;
        local V = Instance.new("Attachment");
        V.Position = workspace.Ignore.LocalCharacter.Middle.Position;
        V.Parent = c;
        V.Visible = false;
        local F = Instance.new("Attachment");
        F.Position = m;
        F.Parent = c;
        F.Visible = false;
        local _ = Instance.new("Beam");
        _.Enabled = Markeroid.HitTracer.Enabled;
        _.Brightness = 10;
        _.LightInfluence = 0.75;
        _.LightEmission = 0.1;
        _.Attachment0 = V;
        _.Attachment1 = F;
        _.Texture = Markeroid.HitTracer.Texture;
        _.TextureLength = 7;
        _.TextureMode = "Stretch";
        _.TextureSpeed = 6.21;
        _.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Markeroid.HitTracer.Color),
            ColorSequenceKeypoint.new(0.5, Markeroid.HitTracer.Color),
            ColorSequenceKeypoint.new(1, Markeroid.HitTracer.Color)
        });
        _.Transparency = NumberSequence.new(0);
        _.Parent = c;
        _.CurveSize0 = 0;
        _.CurveSize1 = 0;
        _.FaceCamera = true;
        _.Segments = 10;
        _.Width0 = 2;
        _.Width1 = 2;
        _.ZOffset = 0;
        wait(1); 
        c:Destroy();
      end
    end)
  end
  return _f(G, unpack(w));
end));


--Combat Connections
game:GetService("RunService").RenderStepped:Connect(function()
  if Functions:GetClosest() ~= nil and Toggles.Snapline.Value == true then
      local p,t = Functions:GetClosest()
      FovSnapline.Visible = true
      local Position,OnScreen = Camera:WorldToViewportPoint(Functions:GetClosest()[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict());
      if Combat.Settings.TeamCheck == true and Functions:GetClosest().Head.Teamtag.Enabled == false and OnScreen == true then
          FovSnapline.To = Position
      elseif OnScreen == true then
          FovSnapline.To = Position
      end
  else
      FovSnapline.Visible = false
  end
  Fov.Settings.RealFovSize=FovCircle.Radius
  if Fov.Settings.Dynamic == true then
      local set = Fov.Settings.FovSize * ((Fov.Settings.FovSize-Camera.FieldOfView)/100 + 1) + 5
      FovCircle.Radius = set
  else
      FovCircle.Radius=Fov.Settings.FovSize
  end
  if Fov.Settings.FovPosition == "Screen" then
      FovCircle.Position = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/2)
      FovSnapline.From=FovCircle.Position
  else
      local MousePos = Camera.WorldToViewportPoint(Camera,game.Players.LocalPlayer:GetMouse().Hit.p)
      FovCircle.Position = Vector2.new(MousePos.X,MousePos.Y)
      FovSnapline.From=FovCircle.Position
  end
end)

--Combat Switches
Toggles.SpinBotEnabled:OnChanged(function(Value)
  Spinbot.Settings.Enabled = Value
end)
Toggles.Fov:OnChanged(function(Value)
  Fov.Settings.FovEnabled = Value
  FovCircle.Visible = Value
end)
Options.FovColor:OnChanged(function(Value)
  Fov.Settings.FovColor = Value
  FovCircle.Color = Value
end)

local PlayerVisualTabbox = Tabs.Visual:AddLeftTabbox()
local PlayerVisualTab = PlayerVisualTabbox:AddTab('Players')
local PlayerSettingsVisualTab = PlayerVisualTabbox:AddTab('Settings')
local PlayerVisualTabbox = Tabs.Visual:AddRightTabbox()
local World = PlayerVisualTabbox:AddTab('World ESP')
local PlayerVisualTabbox = Tabs.Visual:AddRightTabbox()
local Skin = PlayerVisualTabbox:AddTab('SkinChanger')

PlayerVisualTab:AddToggle('Boxes',{Text='Boxes',Default=false}):AddColorPicker('BoxesColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'}):AddColorPicker('BoxesOutlineColor',{Default=Color3.fromRGB(0,0,0),Title='Color'})
PlayerVisualTab:AddToggle('Sleeping',{Text='Sleeping',Default=false}):AddColorPicker('SleepingColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'})
PlayerVisualTab:AddToggle('Distances',{Text='Distance',Default=false}):AddColorPicker('DistancesColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'})
PlayerVisualTab:AddToggle('Armour',{Text='Armour',Default=false}):AddColorPicker('ArmourColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'})
PlayerVisualTab:AddToggle('Tool',{Text='Tool',Default=false}):AddColorPicker('ToolColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'})
PlayerVisualTab:AddToggle('ViewAngle',{Text='View Angle',Default=false}):AddColorPicker('ViewAngleColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'})
PlayerVisualTab:AddToggle('Tracer',{Text='Tracer',Default=false}):AddColorPicker('TracerColor',{Default=Color3.fromRGB(155, 95, 255),Title='Color'})
-- STORAGE
World:AddToggle('STORAGEfag',{Text='Crate ESP',Default=false}):OnChanged(function(monkey99)
  if monkey99 then
    local function onPartAdded(part)
        if part:IsA("Part") and part.BrickColor == BrickColor.new("Linen") and part.Material == Enum.Material.WoodPlanks then
            local parent = part.Parent
            if parent and parent:IsA("Model") and #parent:GetChildren() == 2 then
                local MilitaryEsp = Instance.new("BoxHandleAdornment")
                MilitaryEsp.Adornee = part
                MilitaryEsp.AlwaysOnTop = true
                MilitaryEsp.ZIndex = 0
                MilitaryEsp.Size = part.Size
                MilitaryEsp.Name = "MilitaryCrate"
                MilitaryEsp.Transparency = 0.3
                MilitaryEsp.Color = BrickColor.new("Dark Royal blue")
                MilitaryEsp.Parent = workspace.Monkey.StorageESPAdornee
            end
        end
    end
    
    workspace.DescendantAdded:Connect(onPartAdded)
    
    wait(1.5)
    
    
    local parts = workspace:GetDescendants()
    local meshes = {}
    for _, part in ipairs(parts) do
        if part:IsA("UnionOperation") and part.BrickColor == BrickColor.new("Cashmere") and part.Material ==
            Enum.Material.Plastic then
            local PartCrateEsp = Instance.new("BoxHandleAdornment")
            PartCrateEsp.Adornee = part
            PartCrateEsp.AlwaysOnTop = true
            PartCrateEsp.ZIndex = 0
            PartCrateEsp.Size = part.Size
            PartCrateEsp.Name = "PartCrate"
            PartCrateEsp.Transparency = 0.3
            PartCrateEsp.Color = BrickColor.new("Bright yellow")
            PartCrateEsp.Parent = workspace.Monkey.StorageESPAdornee
        end
    end
    
    local function onPartAdded(part)
        if part:IsA("UnionOperation") and part.BrickColor == BrickColor.new("Cashmere") and part.Material ==
            Enum.Material.Plastic then
            local UpdatePartCrateEsp = Instance.new("BoxHandleAdornment")
            UpdatePartCrateEsp.Adornee = part
            UpdatePartCrateEsp.AlwaysOnTop = true
            UpdatePartCrateEsp.ZIndex = 0
            UpdatePartCrateEsp.Size = part.Size
            UpdatePartCrateEsp.Name = "PartCrate"
            UpdatePartCrateEsp.Transparency = 0.3
            UpdatePartCrateEsp.Color = BrickColor.new("Bright yellow")
            UpdatePartCrateEsp.Parent = workspace.Monkey.StorageESPAdornee
        end
    end
    
    workspace.DescendantAdded:Connect(onPartAdded)

else
    for _, v in ipairs(workspace.Monkey.StorageESPAdornee:GetDescendants()) do
        v:Destroy()
    end
end
end)

-- TOTEMS
-- ORES
World:AddToggle('ore4s3',{Text='Stone ESP',Default=false}):OnChanged(function(monkey4)
  if monkey4 then
    local function adornStoneOre(part)
        if part:IsA("MeshPart") and part.BrickColor == BrickColor.new("Flint") and part.Material == Enum.Material.Limestone then
            local parent = part.Parent
            if parent and parent:IsA("Model") and #parent:GetChildren() == 1 then
                local StoneEsp = Instance.new("BoxHandleAdornment")
                StoneEsp.Adornee = part
                StoneEsp.AlwaysOnTop = true
                StoneEsp.ZIndex = 0
                StoneEsp.Size = part.Size
                StoneEsp.Name = "Stone"
                StoneEsp.Transparency = 0.3
                StoneEsp.Color = BrickColor.new("Grey")
                StoneEsp.Parent = workspace.Monkey.OreESPAdornee
            end
        end
    end

    local function onPartAdded(part)
        adornStoneOre(part)
    end

    for _, part in ipairs(workspace:GetDescendants()) do
        adornStoneOre(part)
    end

    workspace.DescendantAdded:Connect(onPartAdded)
else
    for _, v in ipairs(workspace.Monkey.OreESPAdornee:GetDescendants()) do
        if v.Name == "Stone" then
            v:Destroy()
        end
    end
end
end)

World:AddToggle('ores2',{Text='Iron ESP',Default=false}):OnChanged(function(monkey3)
  if monkey3 then
    local parts = workspace:GetDescendants()
    local meshes = {}
    for _, part in ipairs(parts) do
        if part:IsA("MeshPart") and part.BrickColor == BrickColor.new("Burlap") and part.Material == Enum.Material.Slate then
            local IronEsp = Instance.new("BoxHandleAdornment")
            IronEsp.Adornee = part
            IronEsp.AlwaysOnTop = true
            IronEsp.ZIndex = 0
            IronEsp.Size = part.Size
            IronEsp.Name = "Iron"
            IronEsp.Transparency = 0.3
            IronEsp.Color = BrickColor.new("Burlap")
            IronEsp.Parent = workspace.Monkey.OreESPAdornee
        end
    end

    local function onPartAdded(part)
        if part:IsA("MeshPart") and part.BrickColor == BrickColor.new("Burlap") and part.Material == Enum.Material.Slate then
            if monkey3 then
                local UpdateIronEsp = Instance.new("BoxHandleAdornment")
                UpdateIronEsp.Adornee = part
                UpdateIronEsp.AlwaysOnTop = true
                UpdateIronEsp.ZIndex = 0
                UpdateIronEsp.Size = part.Size
                UpdateIronEsp.Name = "Iron"
                UpdateIronEsp.Transparency = 0.3
                UpdateIronEsp.Color = BrickColor.new("Burlap")
                UpdateIronEsp.Parent = workspace.Monkey.OreESPAdornee
            end
        end
    end

    workspace.DescendantAdded:Connect(onPartAdded)
else
    for _, v in ipairs(workspace.Monkey.OreESPAdornee:GetDescendants()) do
        if v.Name == "Iron" then
            v:Destroy()
        end
    end
end
end)

World:AddToggle('ores',{Text='Nitrate ESP',Default=false}):OnChanged(function(monkey2)
  if monkey2 then
    local parts = workspace:GetDescendants()
    local meshes = {}
    for _, part in ipairs(parts) do
        if part:IsA("MeshPart") and part.BrickColor == BrickColor.new("Institutional white") and part.Material ==
            Enum.Material.Slate then
            local NitrateEsp = Instance.new("BoxHandleAdornment")
            NitrateEsp.Adornee = part
            NitrateEsp.AlwaysOnTop = true
            NitrateEsp.ZIndex = 0
            NitrateEsp.Name = "Nitrate"
            NitrateEsp.Size = part.Size
            NitrateEsp.Transparency = 0.3
            NitrateEsp.Color = BrickColor.new("Institutional white")
            NitrateEsp.Parent = workspace.Monkey.OreESPAdornee
        end
    end
    
    local function onPartAdded(part)
        if part:IsA("MeshPart") and part.BrickColor == BrickColor.new("Institutional white") and part.Material ==
            Enum.Material.Slate then
            if monkey2 then
                local UpdateNitrateEsp = Instance.new("BoxHandleAdornment")
                UpdateNitrateEsp.Adornee = part
                UpdateNitrateEsp.AlwaysOnTop = true
                UpdateNitrateEsp.ZIndex = 0
                UpdateNitrateEsp.Size = part.Size
                UpdateNitrateEsp.Name = "Nitrate"
                UpdateNitrateEsp.Transparency = 0.3
                UpdateNitrateEsp.Color = BrickColor.new("Institutional white")
                UpdateNitrateEsp.Parent = workspace.Monkey.OreESPAdornee
            end
        end
    end
    
    workspace.DescendantAdded:Connect(onPartAdded)
else
    for _, v in ipairs(workspace.Monkey.OreESPAdornee:GetDescendants()) do
        if v.Name == "Nitrate" then
            v:Destroy()
        end
    end
end
end)

--Esp Switches
Toggles.ViewAngle:OnChanged(function(Value)
  Esp.Settings.ViewAngle = Value
end)
Options.ViewAngleColor:OnChanged(function(Value)
  Esp.Settings.ViewAngleColor = Value
end)
Toggles.Tracer:OnChanged(function(Value)
  Esp.Settings.Tracer = Value
end)
Options.TracerColor:OnChanged(function(Value)
  Esp.Settings.TracerColor = Value
end)
Toggles.Armour:OnChanged(function(Value)
  Esp.Settings.Armour = Value
end)
Options.ToolColor:OnChanged(function(Value)
  Esp.Settings.ToolColor = Value
end)
Toggles.Tool:OnChanged(function(Value)
  Esp.Settings.Tool = Value
end)
Options.ArmourColor:OnChanged(function(Value)
  Esp.Settings.ArmourColor = Value
end)
Toggles.Armour:OnChanged(function(Value)
  Esp.Settings.Armour = Value
end)
Toggles.Distances:OnChanged(function(Value)
  Esp.Settings.Distances = Value
end)
Options.DistancesColor:OnChanged(function(Value)
  Esp.Settings.DistanceColor = Value
end)
Options.SleepingColor:OnChanged(function(Value)
  Esp.Settings.SleepingColor = Value
end)
Toggles.Sleeping:OnChanged(function(Value)
  Esp.Settings.Sleeping = Value
end)
Options.BoxesColor:OnChanged(function(Value)
  Esp.Settings.BoxesColor = Value
end)
Options.BoxesOutlineColor:OnChanged(function(Value)
  Esp.Settings.BoxesOutlineColor = Value
end)
Toggles.Boxes:OnChanged(function(Value)
  Esp.Settings.Boxes = Value
end)
PlayerSettingsVisualTab:AddSlider('RenderDistance', {Text='Render Distance',Default=1500,Min=1,Max=1500,Rounding=0,Compact=false,Suffix="s"}):OnChanged(function(Value)
  Esp.Settings.RenderDistance = Value
end)
PlayerSettingsVisualTab:AddToggle('TargetSleepers',{Text='Dont Show Sleepers',Default=false}):OnChanged(function(Value)
  Esp.Settings.TargetSleepers = Value
end)
PlayerSettingsVisualTab:AddToggle('BoxesOutlines',{Text='Box Outlines',Default=false}):OnChanged(function(Value)
  Esp.Settings.BoxesOutline = Value
end)
PlayerSettingsVisualTab:AddToggle('TeamCheck',{Text='Team Check',Default=false}):OnChanged(function(Value)
  Esp.Settings.TeamCheck = Value
end)
PlayerSettingsVisualTab:AddToggle('TextOutline',{Text='Text Outlines',Default=false}):OnChanged(function(Value)
  Esp.Settings.TextOutline = Value
end)
PlayerSettingsVisualTab:AddDropdown('TracerPosition',{Values={"Bottom","Middle","Top"},Default=1,Multi=false,Text='Tracer Position'}):OnChanged(function(Value)
  Esp.Settings.TracerFrom = Value
end)

--Misc
local LightingTabbox = Tabs.Misc:AddLeftTabbox()
local LightingTab = LightingTabbox:AddTab('Visuals')
local MiscTabbox = Tabs.Misc:AddRightTabbox()
local MiscTab = MiscTabbox:AddTab('Character Exploits')
local MiscTabbox = Tabs.Misc:AddRightTabbox()
local Bullets = MiscTabbox:AddTab('Customization')
local MiscTabbox = Tabs.Misc:AddRightTabbox()
local Spam = MiscTabbox:AddTab('World Spam')

-- SKIN Changer
local SkinChoice = "Galaxy"
local SkinRBxId = 0
local SkinsEnabled = false

local Framework = {Settings={FullBright=false,Fov=90,LocalChams=false,LocalGunChams=false},SkinChanger={SkinsEnabled=false,SkinChoice="Galaxy",SkinName="Float",SkinRBXAssetId=12319249626}}
function Framework:CheckSkins()
local tbl = {}
for i,v in pairs(game:GetService("ReplicatedStorage").ItemSkins:GetChildren()) do
table.insert(tbl,v.Name)
end
return tbl
end
function Framework:SetCammo(SkinName)
if not require(game:GetService("ReplicatedStorage").ItemConfigs[getrenv()._G.modules.FPS.GetEquippedItem().id]).HandModel then return end
local GunName = require(game:GetService("ReplicatedStorage").ItemConfigs[getrenv()._G.modules.FPS.GetEquippedItem().id]).HandModel
if table.find(Framework:CheckSkins(),GunName) then
local SkinFolder = game:GetService("ReplicatedStorage").ItemSkins[GunName]
if game:GetService("ReplicatedStorage").ItemSkins[GunName]:FindFirstChild(GunName.."_"..SkinName) then
local SkinChosen = game:GetService("ReplicatedStorage").ItemSkins[GunName][GunName.."_"..SkinName]
require(SkinChosen).ApplyToModel(game:GetService("Workspace").Ignore.FPSArms.HandModel)
end
end
end

game:GetService("Workspace").Ignore.FPSArms.ChildAdded:Connect(function()
if game:GetService("Workspace").Ignore.FPSArms:WaitForChild("HandModel") and SkinsEnabled == true then
Framework:SetCammo(SkinChoice)
end
end)

for i,v in pairs(game:GetService("ReplicatedStorage").ItemSkins:GetChildren()) do
if v:FindFirstChild(v.Name.."_".."Galaxy") then
local clone = v:FindFirstChild(v.Name.."_".."Galaxy"):Clone();clone.Parent=game:GetService("ReplicatedStorage").ItemSkins[v.Name];clone.Name = v.Name.."_Frozen"
end
end

Skin:AddToggle('SkinsEnabled', {Text = 'Enabled',Default = false})
Skin:AddDropdown('SkinChoice', {Values = {"Galaxy"},Default = 1,Multi = false,Text = 'Skin:'})
Skin:AddInput('SkinName', {Default = 'Skin',Numeric = false,Finished = false,Text = 'Name:',Placeholder = "Skin Name",})
Skin:AddInput('SkinRBXAssetId', {Default = 0,Numeric = true,Finished = true,Text = 'Asset Id:',Placeholder = "RbxId",})
Skin:AddButton("Load Skin", function()
for i,v in pairs(game:GetService("ReplicatedStorage").ItemSkins:GetChildren()) do
if v:FindFirstChild(v.Name.."_".."Galaxy") and not v:FindFirstChild(v.Name.."_"..SkinChoice) then
local clone = v:FindFirstChild(v.Name.."_".."Galaxy"):Clone();clone.Parent=game:GetService("ReplicatedStorage").ItemSkins[v.Name];clone.Name = v.Name.."_"..SkinChoice
setconstant(require(clone).ApplyToModel,3,"rbxassetid://"..SkinRBxId)
end
end
Framework:SetCammo(SkinChoice)
end)
Skin:AddButton("Save Skin", function()
writefile("TridentFloat/Skins/"..SkinChoice..".skin",game:GetService("HttpService"):JSONEncode({Id=SkinRBxId,Name=SkinChoice}))
end)

Toggles.SkinsEnabled:OnChanged(function()
SkinsEnabled = Toggles.SkinsEnabled.Value
end)
Options.SkinName:OnChanged(function()
SkinChoice = Options.SkinName.Value
end)
Options.SkinRBXAssetId:OnChanged(function()
SkinRBxId = Options.SkinRBXAssetId.Value
end)
Options.SkinChoice:OnChanged(function()
SkinChoice = Options.SkinChoice.Value
end)




Bullets:AddLabel('Custom Inventory:'):AddColorPicker('Inventory_Color', { Default = Color3.fromRGB(80,80,80)})
  Options.Inventory_Color:OnChanged(function(Inventory_Color_Value)
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Armor.ItemSlot26.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Armor.ItemSlot27.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Armor.ItemSlot28.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Armor.ItemSlot29.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot6.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot7.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot8.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot9.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot10.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot11.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot12.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot13.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot14.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot15.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot16.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot17.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot18.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot19.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot20.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot21.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot22.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot23.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot24.BackgroundColor3 = Inventory_Color_Value
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.ItemSlot25.BackgroundColor3 = Inventory_Color_Value
  end)
  
  Bullets:AddLabel('Energy:'):AddColorPicker('Energy_Color_Value', { Default = Color3.fromRGB(197,187,40)})
  Options.Energy_Color_Value:OnChanged(function(Energy_Color_Value)
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.EnergyFrame.Energy.BackgroundColor3 = Energy_Color_Value
  end)
  
  Bullets:AddLabel('Health:'):AddColorPicker('Health_Color_Value', { Default = Color3.fromRGB(78,153,74)})
  Options.Health_Color_Value:OnChanged(function(Health_Color_Value)
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.HealthFrame.Health.BackgroundColor3 = Health_Color_Value
  end)
  
  Bullets:AddLabel('Ammo:'):AddColorPicker('Ammo_Color_Value', { Default = Color3.fromRGB(255,255,255)})
  Options.Ammo_Color_Value:OnChanged(function(Ammo_Color_Value)
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Ammo.TextColor3 = Ammo_Color_Value
  end)
  
  Bullets:AddSlider('Vitals_Transparency', {Text = 'Vitals Transparency', Suffix = "%", Default = 0.1, Min = 0, Max = 1, Rounding = 2, Compact = true}):OnChanged(function(VitalsTransparency)
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.EnergyFrame.Energy.BackgroundTransparency = VitalsTransparency
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.HealthFrame.Health.BackgroundTransparency = VitalsTransparency
  end)
  
  Bullets:AddSlider('Background_Transparency', {Text = 'Inventory Transparency', Suffix = "%", Default = 0.7, Min = 0, Max = 1, Rounding = 2, Compact = true}):OnChanged(function(InventoryTransparency)
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.BackgroundTransparency = InventoryTransparency
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Hotbar.BackgroundTransparency = InventoryTransparency
  game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Armor.BackgroundTransparency = InventoryTransparency
  end)

local Terrain = game:GetService("Workspace").Terrain
local GCEN = Color3.fromRGB(93, 111, 55)
local GRCEND = false

LightingTab:AddToggle('CLRG', {Text = 'Color Grass', Default = true, Tooltip = "Off/On"}):AddColorPicker('ColorGrass', {Default = GCEN, Title = 'Changer Color Grass'})
Toggles.CLRG:OnChanged(function(T)
GRCEND = T
Terrain:SetMaterialColor(Enum.Material.Grass, T and GCEN or Color3.fromRGB(93, 111, 55))
end)
Options.ColorGrass:OnChanged(function(Grass1)
if GRCEND then
GCEN = Grass1
Terrain:SetMaterialColor(Enum.Material.Grass, Grass1)
end
end)


local Terrain = game:GetService("Workspace").Terrain
local CloudsColor = Color3.fromRGB(255, 255, 255)
local EnableCustomColor = false

LightingTab:AddToggle('CLRG1', {Text = 'Clouds Color', Default = EnableCustomColor, Tooltip = "Off/On"}):AddColorPicker('ColorGrass1', {Default = CloudsColor, Title = 'Change Clouds Color'})
Toggles.CLRG1:OnChanged(function(T)
EnableCustomColor = T
Terrain.Clouds.Color = T and CloudsColor or Color3.fromRGB(255, 255, 255)
end)
Options.ColorGrass1:OnChanged(function(NewColor)
if EnableCustomColor then
CloudsColor = NewColor
Terrain.Clouds.Color = NewColor
end
end)
local CARMS = false
LightingTab:AddToggle('CLRT',{Text = 'Arm Color',Default = false,Tooltip = "Off/On",}):AddColorPicker('ARCCCC', {Default = Color3.fromRGB(0,0,0),Title = 'Arms Color'})
Options.ARCCCC:OnChanged(function(ARMC)
if CARMS then
  game:GetService("Workspace").Ignore.FPSArms.LeftUpperArm.Color = ARMC
  game:GetService("Workspace").Ignore.FPSArms.LeftLowerArm.Color = ARMC
  game:GetService("Workspace").Ignore.FPSArms.LeftHand.Color = ARMC
  game:GetService("Workspace").Ignore.FPSArms.RightUpperArm.Color = ARMC
  game:GetService("Workspace").Ignore.FPSArms.RightLowerArm.Color = ARMC
  game:GetService("Workspace").Ignore.FPSArms.RightHand.Color = ARMC
else
  game:GetService("Workspace").Ignore.FPSArms.LeftUpperArm.BrickColor = BrickColor.new("Dark stone grey")
  game:GetService("Workspace").Ignore.FPSArms.LeftLowerArm.BrickColor = BrickColor.new("Linen")
  game:GetService("Workspace").Ignore.FPSArms.LeftHand.BrickColor = BrickColor.new("Linen")
  game:GetService("Workspace").Ignore.FPSArms.RightUpperArm.BrickColor = BrickColor.new("Dark stone grey")
  game:GetService("Workspace").Ignore.FPSArms.RightLowerArm.BrickColor = BrickColor.new("Linen")
  game:GetService("Workspace").Ignore.FPSArms.RightHand.BrickColor = BrickColor.new("Linen")
end
end)
Toggles.CLRT:OnChanged(function(T)
CARMS = T
end)

LightingTab:AddDropdown('MaterialD', {Values = { 'Default', 'ForceField', 'Neon', 'CrackedLava' },Default = 1,Multi = false,Text = 'Naterial:',Tooltip = 'Arms Material'}):OnChanged(function()
if Options.MaterialD.Value == "Default" then
  game:GetService("Workspace").Ignore.FPSArms.RightUpperArm.Material = "Fabric"
  game:GetService("Workspace").Ignore.FPSArms.RightLowerArm.Material = "SmoothPlastic"
  game:GetService("Workspace").Ignore.FPSArms.RightHand.Material = "SmoothPlastic"
  game:GetService("Workspace").Ignore.FPSArms.LeftUpperArm.Material = "Fabric"
  game:GetService("Workspace").Ignore.FPSArms.LeftLowerArm.Material = "SmoothPlastic"
  game:GetService("Workspace").Ignore.FPSArms.LeftHand.Material = "SmoothPlastic"
end
if Options.MaterialD.Value == "ForceField" then
  game:GetService("Workspace").Ignore.FPSArms.RightUpperArm.Material = "ForceField"
  game:GetService("Workspace").Ignore.FPSArms.RightLowerArm.Material = "ForceField"
  game:GetService("Workspace").Ignore.FPSArms.RightHand.Material = "ForceField"
  game:GetService("Workspace").Ignore.FPSArms.LeftUpperArm.Material = "ForceField"
  game:GetService("Workspace").Ignore.FPSArms.LeftLowerArm.Material = "ForceField"
  game:GetService("Workspace").Ignore.FPSArms.LeftHand.Material = "ForceField"
end
if Options.MaterialD.Value == "Neon" then
  game:GetService("Workspace").Ignore.FPSArms.RightUpperArm.Material = "Neon"
  game:GetService("Workspace").Ignore.FPSArms.RightLowerArm.Material = "Neon"
  game:GetService("Workspace").Ignore.FPSArms.RightHand.Material = "Neon"
  game:GetService("Workspace").Ignore.FPSArms.LeftUpperArm.Material = "Neon"
  game:GetService("Workspace").Ignore.FPSArms.LeftLowerArm.Material = "Neon"
  game:GetService("Workspace").Ignore.FPSArms.LeftHand.Material = "Neon"
end
if Options.MaterialD.Value == "CrackedLava" then
  game:GetService("Workspace").Ignore.FPSArms.RightUpperArm.Material = "CrackedLava"
  game:GetService("Workspace").Ignore.FPSArms.RightLowerArm.Material = "CrackedLava"
  game:GetService("Workspace").Ignore.FPSArms.RightHand.Material = "CrackedLava"
  game:GetService("Workspace").Ignore.FPSArms.LeftUpperArm.Material = "CrackedLava"
  game:GetService("Workspace").Ignore.FPSArms.LeftLowerArm.Material = "CrackedLava"
  game:GetService("Workspace").Ignore.FPSArms.LeftHand.Material = "CrackedLava"
end
end)

LightingTab:AddInput('', {Default = 'rbxassetid://11414633855', Numeric = false, Finished = true, Text = 'Texture ID:', Placeholder = 'rbxassetid://...'}):OnChanged(function(TextureID)
game:GetService("Workspace").Ignore.FPSArms.LeftUpperArm.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.LeftLowerArm.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.LeftHand.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.RightUpperArm.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.RightLowerArm.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.RightHand.TextureID = TextureID
end)
--------------------------------------------------------------------------------------------------

MiscTab:AddToggle('LootAll',{Text='Loot All',Default=false}):AddKeyPicker('LootAllKey', {Default='Z',SyncToggleState=true,Mode='Toggle',Text='Loot All',NoUI=false})
MiscTab:AddToggle('LiftUp',{Text='Manipulation',Default=false}):AddKeyPicker('LiftUpKey', {Default='F',SyncToggleState=true,Mode='Toggle',Text='Lift Up',NoUI=false})
MiscTab:AddToggle('SpeedHack',{Text='Speed Boost',Default=false}):AddKeyPicker('SpeedHackKey', {Default='H',SyncToggleState=true,Mode='Toggle',Text='Speed Boost',NoUI=false})
MiscTab:AddSlider('SpeedHackSpeed', {Text = 'Speed',Default = 28,Min = 1,Max = 34,Rounding = 0,Compact=false}):OnChanged(function(Value)
  Misc.Settings.SpeedHackSpeed = Value
end)

Toggles.LootAll:OnChanged(function()
  for i = 1, 20 do
      game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(12, i, true)
  end
end)

Toggles.LiftUp:OnChanged(function(Value)
  if Value then
      game:GetService("Workspace").Ignore.LocalCharacter.Middle.CFrame = game:GetService("Workspace").Ignore.LocalCharacter.Middle.CFrame * CFrame.new(-6,0,0)
      wait()
      game:GetService("Workspace").Ignore.LocalCharacter.Middle.Anchored = true
      local air = Instance.new("Part", workspace)
      air.Size = Vector3.new(7, 2, 3)
      air.CFrame = game:GetService("Workspace").Ignore.LocalCharacter.Middle.CFrame + Vector3.new(0, -4, 0)
      air.Transparency = 1
      air.Anchored = true
      air.Name = "Airwalk"
      RUN()
      Toggles.LiftUp:SetValue(false)
  end
end)
Toggles.SpeedHack:OnChanged(function(Value)
  Misc.Settings.SpeedHackEnabled = Value
end)
--Speed Boost
local HPress,Speedy,Speedyk = true,false,false

game:GetService("RunService").RenderStepped:Connect(function(step)
  if Misc.Settings.SpeedHackEnabled == true and Speedy == true then
      for i,v in pairs(game:GetService("Workspace").Ignore.LocalCharacter:GetChildren()) do
          v.CFrame = v.CFrame + Camera.CFrame.LookVector * Misc.Settings.SpeedHackSpeed * step
      end
  end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input)
  if Options.SpeedHackKey:GetState() == true then
      if HPress == true then
          HPress,Speedyk = false,true
      elseif HPress == false then
          HPress,Speedyk = true,false
      end
  end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input)
  if input.KeyCode == Enum.KeyCode.C and Speedyk then
      Speedy = true
  end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
  if input.KeyCode == Enum.KeyCode.C then
      Speedy = false
  end
end)

--Hooks
local event = game.Players.LocalPlayer:FindFirstChild("RemoteEvent").FireServer
local value = 1


--Locals


LPH_NO_VIRTUALIZE(function()
  local oldFunction; oldFunction = hookfunction(getupvalues(getrenv()._G.modules.FPS.ToolControllers.BowSpecial.PlayerFire)[4],function(...)
      local args = {...}
      local Player,t = Functions:GetClosest()
      if Combat.Settings.SilentEnabled == true and Player ~= nil and (CharcaterMiddle:GetPivot().Position-Player:GetPivot().Position).Magnitude <= Esp.Settings.RenderDistance and math.random(0,100) <= Combat.Settings.SilentHitChance then
          if not t.sleeping == true then
              args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
          end
      end
      return oldFunction(unpack(args))
  end)

  local oldFunctionGun; oldFunctionGun = hookfunction(getupvalues(getrenv()._G.modules.FPS.ToolControllers.RangedWeapon.PlayerFire)[1],function(...)
      local args = {...}
      local Player,t = Functions:GetClosest()
      if Combat.Settings.SilentEnabled == true and Player ~= nil and (CharcaterMiddle:GetPivot().Position-Player:GetPivot().Position).Magnitude <= Esp.Settings.RenderDistance and math.random(0,100) <= Combat.Settings.SilentHitChance then
          if not t.sleeping == true then
              args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
          end
      end
      return oldFunction(unpack(args))
  end)
end)()
--// UI Settings \\--
local GameID = Tabs.UISettings:AddLeftGroupbox('Game')

GameID:AddInput('GameID_Check', {Default = 'Game ID', Numeric = true, Finished = false, Text = 'Game ID', Placeholder = 'Game ID Here'})
GameID:AddButton('Join Game', function()
game:GetService("TeleportService"):Teleport(Options.GameID_Check.Value, plr)
end)

local MenuGroup = Tabs.UISettings:AddRightGroupbox('Menu')

MenuGroup:AddLabel(""..game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerInfo.Text.."", true)
MenuGroup:AddLabel(' Made By:<font color="#321091">Anth</font>', true)

MenuGroup:AddButton('Unload Script', function() Library:Unload()
for i,v in pairs(Toggles) do
v:SetValue(false)
Library:Notify('Unloaded!', 1)
end
end)

MenuGroup:AddButton('Panic Button', function()
for i,v in pairs(Toggles) do
v:SetValue(false)
Library:Notify('Panic Button!', 1)
end
end)

MenuGroup:AddButton('Rejoin Server', function()
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
Library:Notify('Rejoining Server!', 30)
end)

MenuGroup:AddButton('Copy Join Code', function()
setclipboard(("game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s')"):format(game.PlaceId, game.JobId))
Library:Notify("Copied Join Code!", 5)
end)

MenuGroup:AddButton('Copy Discord', function()
if pcall(setclipboard,"https://discord.gg/astralttm") then
Library:Notify('Successfully copied discord link to your clipboard!', 5)
end
end)

MenuGroup:AddToggle('WatermarkToggle', {Text = 'Watermark', Default = false, Tooltip = nil, })
Toggles.WatermarkToggle:OnChanged(function()
Library:SetWatermark('Astral.pro - Destroyer V2.00') Library:SetWatermarkVisibility(Toggles.WatermarkToggle.Value)
end)

MenuGroup:AddToggle('UISettings_KeybindFrameVisibility', {Text = 'Keybind', Default = true}):OnChanged(function()
Library.KeybindFrame.Visible = Toggles.UISettings_KeybindFrameVisibility.Value
end)

MenuGroup:AddLabel('Menu Keybind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind

--// Save manager
SaveManager:SetLibrary(Library)
SaveManager:SetFolder('Astral/folder')
SaveManager:BuildConfigSection(Tabs.UISettings)
SaveManager:IgnoreThemeSettings()

--// Theme manager
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder('Astral/themes')
ThemeManager:ApplyToTab(Tabs.UISettings)

--Wrapping function - needed to unload(Keep at end of script)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EIOlmqV6v1owgJBEoqj5lK9p01SFE2THpxcOnvX/LinoriaBurnEdition/main/LoaderManager.lua'))

function Notify(titletxt, text, time)
  local GUI = Instance.new("ScreenGui")
  local Main = Instance.new("Frame", GUI)
  local title = Instance.new("TextLabel", Main)
  local message = Instance.new("TextLabel", Main)
  GUI.Name = "NotificationOof"
  GUI.Parent = game.CoreGui
  Main.Name = "MainFrame"
  Main.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
  Main.BorderSizePixel = 0
  Main.Position = UDim2.new(1, 5, 0, 50)
  Main.Size = UDim2.new(0, 330, 0, 100)

  title.BackgroundColor3 = Color3.new(0, 0, 0)
  title.BackgroundTransparency = 0.89999997615814
  title.Size = UDim2.new(1, 0, 0, 30)
  title.Font = Enum.Font.SourceSansSemibold
  title.Text = titletxt
  title.TextColor3 = Color3.new(1, 1, 1)
  title.TextSize = 17
  
  message.BackgroundColor3 = Color3.new(0, 0, 0)
  message.BackgroundTransparency = 1
  message.Position = UDim2.new(0, 0, 0, 30)
  message.Size = UDim2.new(1, 0, 1, -30)
  message.Font = Enum.Font.SourceSans
  message.Text = text
  message.TextColor3 = Color3.new(1, 1, 1)
  message.TextSize = 16

  wait(0.1)
  Main:TweenPosition(UDim2.new(1, -330, 0, 50), "Out", "Sine", 0.5)
  wait(time)
  Main:TweenPosition(UDim2.new(1, 5, 0, 50), "Out", "Sine", 0.5)
  wait(0.6)
  GUI:Destroy();
end
Notify("Anti-Ban", "20 minute timer has started!", 5)
task.wait(1200)
Notify("Anti-Ban", "5 minutes left till kick! Get to a safe spot!", 5)
task.wait(300)
Notify("Anti-Ban DONE", "Kicking you now!", 5)

-- rejoin		
game.Players.LocalPlayer:Kick('[ANTI BAN] Saved!')





else
warn(false)
  repeat crash() until nil
end

-- End --
