--// Trident Survival v1.1b [Paid]

local requiredPlaceId = 13253735473
if game.PlaceId ~= requiredPlaceId then
  warn(("This script is intended for use in game with place ID %d, but the current game has place ID %d."):format(requiredPlaceId, game.PlaceId))
  return
end
repeat task.wait() until game:IsLoaded()
  rconsoleprint("[*]: System Alert: velocity.cc has been injected.\n")
  setfpscap(999)
  for I,V in pairs(getgc(true)) do
    if type(V) == "function" then
      if debug.getinfo(V).name == "CreateAlert" then
        V("velocity.cc (paid) loaded! - [trident hacked]", Color3.fromRGB(255,0,0))
      end
    end
  end

  --// LPH
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

  --< Bypasses >--------------------------------
  local antihitbox
  antihitbox = hookmetamethod(game, "__newindex", LPH_NO_VIRTUALIZE(function(...)
  local self, k = ...
  if not checkcaller() and k == "Size" and self.Name == "Head" then
    return Vector3.new(1.67225, 0.835624, 0.835624)
  end
  return antihitbox(...)
  end))
  local antixray
  antixray = hookmetamethod(game, "__newindex", LPH_NO_VIRTUALIZE(function(...)
  local self, k = ...
  if not checkcaller() and k == "Hitbox" and self.Name == "Transparency" then
    return 1
  end
  return antixray(...)
  end))

  --// Locals
  local Camera = game:GetService("Workspace").Camera
  local Camera = game:GetService("Workspace").CurrentCamera
  local Cam = game:GetService("Workspace").Camera
  local CharcaterMiddle = game:GetService("Workspace").Ignore.LocalCharacter.Middle
  local Mouse = game.Players.LocalPlayer:GetMouse()
  local lighting = game:GetService("Lighting")
  local UserInputService = game:GetService("UserInputService")
  local SoundService = game:GetService("SoundService")
  local Decimals = 2
  local Clock = os.clock()

  --// Ui
  local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/BigHacker123/Library.lua/main/Library.lua'))()
  local SaveManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/SaveManager.lua'))()
  local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/BigHacker123/Library.lua/main/Theme.lua'))()
  local skybox_assets = loadstring(game:HttpGet("https://raw.githubusercontent.com/BigHacker123/skybox/main/.lua", true))()
  --
  local Build = "paid";local Color = "#FF0000";local Ver = "v1.3b"
  if Build == "paid" then Color = '#FF0000' Ver = "v1.2b" end
  local Window = Library:CreateWindow({ Size = UDim2.fromOffset(550, 610),Title = "velocity.<font color=\"#d17bff\">cc</font> | ".."<font color=\""..Color.."\">"..Build.."</font>".."                                         ["..Ver.."]",Center = true,AutoShow = true})
  local Tabs = {CombatTab = Window:AddTab('combat'),VisualsTab = Window:AddTab('visuals'),MiscellaneousTab = Window:AddTab('miscellaneous'),LocalTab = Window:AddTab('local'),WorldTab = Window:AddTab('world'),UISettings = Window:AddTab('settings')}

  --// Notifications
  Library:Notify(("Welcome thank you for using [velocity.cc] - "..game.Players.LocalPlayer.Name.." 👋"), 6)
  Library:Notify(("Status: 🟢 - Undetected (Safe to use)"), 6)
  local notifyPlayerChange = function(player, message, color)
  local prefix = player:IsFriendsWith(game.Players.LocalPlayer.UserId) and "notification - friend" or "notification - player"
  Library:Notify(("%s | user: %s | %s"):format(prefix, player.DisplayName, message), prefix == "notification - friend" and 6 or 3, color)
end
game.Players.PlayerAdded:Connect(function(player)
notifyPlayerChange(player, "joined", Color3.fromRGB(0, 255, 0))
end)
game.Players.PlayerRemoving:Connect(function(player)
notifyPlayerChange(player, "left", Color3.fromRGB(255, 0, 0))
end)

--
local Functions = {}
local InventoryViewer = {Texts={}}
local Esp = {Settings={
  Boxes=false,BoxesOutline=false,BoxesFilled=false,BoxesFilledColor=Color3.fromRGB(255,255,255),BoxesFilledTransparency=0.25,BoxesColor=Color3.fromRGB(255,255,255),OtherBoxesColor=Color3.fromRGB(255,255,255),OtherBoxesColorTeam=Color3.fromRGB(0, 255, 0),BoxesOutlineColor=Color3.fromRGB(0,0,0),CornerEspThickness=1,CornerBoxes=false,
  Sleeping=false,SleepingColor=Color3.fromRGB(255,255,255),OtherSleepingColor=Color3.fromRGB(255,255,255),OtherSleepingColorTeam=Color3.fromRGB(0, 255, 0),
  Distances=false,DistanceColor=Color3.fromRGB(255,255,255),OtherDistanceColor=Color3.fromRGB(255,255,255),OtherDistanceColorTeam=Color3.fromRGB(0, 255, 0),
  Armour=false,ArmourColor=Color3.fromRGB(255,255,255),OtherArmourColor=Color3.fromRGB(255,255,255),OtherArmourColorTeam=Color3.fromRGB(0, 255, 0),
  Tool=false,ToolColor=Color3.fromRGB(255,255,255),OtherToolColor=Color3.fromRGB(255,255,255),OtherToolColorTeam=Color3.fromRGB(0, 255, 0),
  Tracer=false,TracerColor=Color3.fromRGB(255,255,255),OtherTracerColor=Color3.fromRGB(255,255,255),OtherTracerColorTeam=Color3.fromRGB(0, 255, 0),TracerThickness=1,TracerTransparrency=1,TracerFrom="Bottom",
  ViewAngle=false,ViewAngleColor=Color3.fromRGB(255,255,255),OtherViewAngleColor=Color3.fromRGB(255,255,255),OtherViewAngleColorTeam=Color3.fromRGB(0, 255, 0),ViewAngleThickness=1,ViewAngleTransparrency=1,
  HeadCircles=false,HeadCirclesColor=Color3.fromRGB(255,255,255),OtherHeadCirclesColor=Color3.fromRGB(255,255,255),OtherHeadCirclesTeam=Color3.fromRGB(0, 255, 0),HeadCirclesThickness=1,HeadCirclesTransparrency=1,HeadCirclesRadius=3,HeadCirclesFilled=false,
  HighlightTarget = false,HighlightTargetColor = Color3.fromRGB(255,0,0),
  TextFont=2,TextOutline=true,TextSize=12,RenderDistance=1000,TeamCheck=false,TargetSleepers=true,MinTextSize=11
},Drawings={},Connections={},Players={},Ores={},StorageThings={}}local Fonts = {["UI"]=0,["System"]=1,["Plex"]=2,["Monospace"]=3}
local Fov = {Settings={
  FovEnabled=true,
  FovColor=Color3.fromRGB(255,255,255),
  FovSize=90,
  FovFilled=false,
  FovTransparency=1,
  OutlineFovColor=Color3.fromRGB(0,0,0),
  RealFovSize=90,
  FovPosition="Screen",
  Snapline=true,
  SnaplineColor=Color3.fromRGB(255,255,255)
}}
local Combat = {Settings={
  SilentEnabled=true,
  SilentHitChance=100,
  SilentAimPart="Head",
  TeamCheck=true,
  SleeperCheck=true,
}}
local cache = {}

--// Silent Aim -()
function Functions:GetClosest()
  local closest,PlayerDistance,playerTable = nil,Combat.Settings.RenderDistance,nil
  for i,v in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
    if v.model:FindFirstChild("HumanoidRootPart") and Combat.Settings.SleeperCheck == true and v.sleeping == nil then
      local Mouse = game.Players.LocalPlayer:GetMouse()
      local pos,OnScreen = Camera.WorldToViewportPoint(Camera, v.model:GetPivot().Position)
      local MouseMagnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)).Magnitude
      local PlayerDistance = (CharcaterMiddle:GetPivot().Position-v.model:GetPivot().Position).Magnitude
      if MouseMagnitude < Fov.Settings.FovSize and PlayerDistance <= Combat.Settings.RenderDistance and OnScreen == true then
        closest = v.model;PlayerDistance = PlayerDistance;playerTable=v
      end
    elseif v.model:FindFirstChild("HumanoidRootPart") and Combat.Settings.SleeperCheck == false then
      local Mouse = game.Players.LocalPlayer:GetMouse()
      local pos,OnScreen = Camera.WorldToViewportPoint(Camera, v.model:GetPivot().Position)
      local MouseMagnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)).Magnitude
      local PlayerDistance = (CharcaterMiddle:GetPivot().Position-v.model:GetPivot().Position).Magnitude
      if MouseMagnitude < Fov.Settings.FovSize and PlayerDistance <= Combat.Settings.RenderDistance and OnScreen == true then
        closest = v.model;PlayerDistance = PlayerDistance;playerTable=v
      end
    end
  end
  return closest,playerTable
end
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
    TimeOfFlight += (Distance / newps)
    local dropTime = pd * TimeOfFlight ^ 2
    if Velocity and TimeOfFlight then
      Drop = Vector3.new(0,(dropTime * 18.5)*.4,0)
      Prediction = (Velocity * (TimeOfFlight*7.25)) * .65
    end
    Prediction = Prediction + Drop
  end
  return Prediction,Drop
end

--// Player ESP -()
function Functions:Draw(Type,Propities)
  if not Type and not Propities then return end
  local drawing = Drawing.new(Type)
  for i,v in pairs(Propities) do
    drawing[i] = v
  end
  table.insert(Esp.Drawings,drawing)
  return drawing
end
InventoryViewer.Background = Functions:Draw("Square",{Visible=false,Position=Vector2.new((workspace.CurrentCamera.ViewportSize.X-350)/2,10),Size=Vector2.new(355,195),Transparency=.75,Filled=true,Thickness=0,Color=Color3.fromRGB(7.5,7.5,7.5),ZIndex=-1})
InventoryViewer.TopLine = Functions:Draw("Line",{Visible=false,From=Vector2.new(InventoryViewer.Background.Position.X, InventoryViewer.Background.Position.Y),To=Vector2.new(InventoryViewer.Background.Position.X + InventoryViewer.Background.Size.X, InventoryViewer.Background.Position.Y),Thickness=1.5,ZIndex=0,Color=Color3.fromRGB(208,123,255)})
function InventoryViewer:CreateText(IsTitle,String,SlightIndex)
  DrawingText = Functions:Draw("Text",{Visible=false,Position=Vector2.new(InventoryViewer.Background.Position.X+14,(InventoryViewer.Background.Position.Y+28)+((#InventoryViewer.Texts - 1)*18)),Outline=true,Center=false,Font=0,Size=15,Text=String,Color=Color3.fromRGB(255,255,255)})
  if IsTitle == true then
    DrawingText.Position = Vector2.new(InventoryViewer.Background.Position.X+5,(InventoryViewer.Background.Position.Y+28)+((#InventoryViewer.Texts - 1)*18)-4)
    InventoryViewer.DrawingText2 = Functions:Draw("Text",{Visible=false,Position=Vector2.new((InventoryViewer.Background.Position.X+InventoryViewer.Background.Size.X)-92,(InventoryViewer.Background.Position.Y+24)+((#InventoryViewer.Texts - 1)*17.5)-3.5),Outline=true,Center=false,Font=0,Size=15,Text="[velocity.cc]",Color=Color3.fromRGB(208,123,255)})
  elseif SlightIndex == true then
    DrawingText.Position = Vector2.new(InventoryViewer.Background.Position.X+20,(InventoryViewer.Background.Position.Y+28)+((#InventoryViewer.Texts - 1)*18))
  end
  table.insert(InventoryViewer.Texts,DrawingText)
  return DrawingText
end
function InventoryViewer:GetArmour(String,Type)
  if String == "WoodHelmet" or String == "RiotHelmet" or String == "IronHelmet" or String == "SteelHelmet" then
    if Type == "Helmet" then
      return String
    end
  elseif String == "WoodChestplate" or String == "RiotChestplate" or String == "IronChestplate" or String == "SteelChestplate" then
    if Type == "Chestplate" then
      return String
    end
  elseif String == "WoodLeggings" or String == "RiotLeggings" or String == "IronLeggings" or String == "SteelLeggings" then
    if Type == "Leggings" then
      return String
    end
  elseif String == "ShoulderLight" then
    if Type == "Misc" then
      return String
    end
  else
    return ""
  end
end
function InventoryViewer:OnToggle(State)
  InventoryViewer.Background.Visible = State
  InventoryViewer.TopLine.Visible = State
  InventoryViewer.DrawingText2.Visible = State
  for i,v in pairs(InventoryViewer.Texts) do
    v.Visible = State
  end
end
InventoryViewer:CreateText(true,"Inventory Viewer")
local InvTool = InventoryViewer:CreateText(false,"Item -> [NO ITEM]")
local InvArmour = InventoryViewer:CreateText(false,"Armour: ")
local InvHelmet = InventoryViewer:CreateText(false,"Helmet -> ",true)
local InvChestplate = InventoryViewer:CreateText(false,"Chestplate -> ",true)
local InvLeggings = InventoryViewer:CreateText(false,"Leggings -> ",true)
local InvOther = InventoryViewer:CreateText(false,"Misc -> ",true)
local InvDistance = InventoryViewer:CreateText(false,"\nDistance -> [NO PLAYER]",false)
InventoryViewer:OnToggle(false)
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
  drawings.BoxOutline = Functions:Draw("Square",{Thickness=2,Filled=false,Transparency=1,ZIndex = -1,Visible=false});
  drawings.Box = Functions:Draw("Square",{Thickness=1,Filled=false,Transparency=1,Color=Esp.Settings.BoxesColor,Color=Esp.Settings.OtherBoxesColor,Color=Esp.Settings.OtherBoxesColorTeam,ZIndex = 2,Visible=false});
  drawings.BoxFilled = Functions:Draw("Square",{Thickness=1,Filled=true,Transparency=Esp.Settings.BoxesFilledTransparency,Color=Esp.Settings.BoxesFilledColor,ZIndex = 2,Visible=false});
  drawings.Sleeping = Functions:Draw("Text",{Text = "Nil",Font=Esp.Settings.TextFont,Size=Esp.Settings.TextSize,Center=true,Outline=Esp.Settings.TextOutline,Color = Esp.Settings.SleepingColor,Color = Esp.Settings.OtherSleepingColor,Color = Esp.Settings.OtherSleepingColorTeam,ZIndex = 2,Visible=false})
  drawings.Distance = Functions:Draw("Text",{Text = "[nil]",Font=Esp.Settings.TextFont,Size=Esp.Settings.TextSize,Center=true,Outline=Esp.Settings.TextOutline,Color = Esp.Settings.DistanceColor,Color = Esp.Settings.OtherDistanceColor,Color = Esp.Settings.OtherDistanceColorTeam,ZIndex = 2,Visible=false})
  drawings.Armour = Functions:Draw("Text",{Text = "",Font=Esp.Settings.TextFont,Size=Esp.Settings.TextSize,Center=true,Outline=Esp.Settings.TextOutline,Color = Esp.Settings.ArmourColor,Color = Esp.Settings.OtherArmourColor,Color = Esp.Settings.OtherArmourColorTeam,ZIndex = 2,Visible=false})
  drawings.Tool = Functions:Draw("Text",{Text = "Empty",Font=Esp.Settings.TextFont,Size=Esp.Settings.TextSize,Center=true,Outline=Esp.Settings.TextOutline,Color = Esp.Settings.ToolColor,Color = Esp.Settings.OtherToolColor,Color = Esp.Settings.OtherToolColorTeam,ZIndex = 2,Visible=false})
  drawings.ViewAngle = Functions:Draw("Line",{Thickness=Esp.Settings.ViewAngleThickness,Transparency=Esp.Settings.ViewAngleTransparrency,Color=Esp.Settings.ViewAngleColor,Color=Esp.Settings.OtherViewAngleColor,Color=Esp.Settings.OtherViewAngleColorTeam,ZIndex=2,Visible=false})
  drawings.HeadCircles = Functions:Draw("Circle",{Thickness=Esp.Settings.HeadCirclesThickness,Transparency=Esp.Settings.HeadCirclesTransparrency,Color=Esp.Settings.HeadCirclesColor,Color=Esp.Settings.OtherHeadCirclesColor,Color=Esp.Settings.OtherHeadCirclesColorTeam,ZIndex=2,Visible=false})
  drawings.Tracer = Functions:Draw("Line",{Thickness=Esp.Settings.TracerThickness,Transparency=1,Color=Esp.Settings.TracerColor,Color=Esp.Settings.OtherTracerColor,Color=Esp.Settings.OtherTracerColorTeam,ZIndex=2,Visible=false})
  drawings.Line1 = Functions:Draw("Line",{Thickness=Esp.Settings.CornerEspThickness,Transparency=1,Color=Esp.Settings.BoxesColor,ZIndex=2,Visible=false});drawings.Line2 = Functions:Draw("Line",{Thickness=Esp.Settings.CornerEspThickness,Transparency=1,Color=Esp.Settings.BoxesColor,ZIndex=2,Visible=false});drawings.Line3 = Functions:Draw("Line",{Thickness=Esp.Settings.CornerEspThickness,Transparency=1,Color=Esp.Settings.BoxesColor,ZIndex=2,Visible=false});drawings.Line4 = Functions:Draw("Line",{Thickness=Esp.Settings.CornerEspThickness,Transparency=1,Color=Esp.Settings.BoxesColor,ZIndex=2,Visible=false});drawings.Line5 = Functions:Draw("Line",{Thickness=Esp.Settings.CornerEspThickness,Transparency=1,Color=Esp.Settings.BoxesColor,ZIndex=2,Visible=false});drawings.Line6 = Functions:Draw("Line",{Thickness=Esp.Settings.CornerEspThickness,Transparency=1,Color=Esp.Settings.BoxesColor,ZIndex=2,Visible=false});drawings.Line7 = Functions:Draw("Line",{Thickness=Esp.Settings.CornerEspThickness,Transparency=1,Color=Esp.Settings.BoxesColor,ZIndex=2,Visible=false});drawings.Line8 = Functions:Draw("Line",{Thickness=Esp.Settings.CornerEspThickness,Transparency=1,Color=Esp.Settings.BoxesColor,ZIndex=2,Visible=false})
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
    local w,h = math.floor(40 * scale), math.floor(60 * scale);
    local x,y = math.floor(Position.X), math.floor(Position.Y);
    local Distance = (CharcaterMiddle:GetPivot().Position-Character:GetPivot().Position).Magnitude
    local BoxPosX,BoxPosY = math.floor(x - w * 0.5),math.floor(y - h * 0.5)
    local offsetCFrame = CFrame.new(0, 0, -4)
    local IsVisible = false
    if Character and Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Head") and Character.Parent == game.Workspace then
      local TeamTag = Character.Head.Teamtag.Enabled
      local ccc,ttt = Functions:GetClosest()
      if OnScreen == true and Esp.Settings.Boxes == true and Distance <= Esp.Settings.RenderDistance then
        if Esp.Settings.TeamCheck == true and TeamTag == false then
          v.BoxOutline.Visible = Esp.Settings.BoxesOutline;v.Box.Visible = true;v.BoxFilled.Visible=Esp.Settings.BoxesFilled
        elseif Esp.Settings.TeamCheck == true and TeamTag == true then
          v.BoxOutline.Visible = false;v.Box.Visible = false;v.BoxFilled.Visible=false
        else
          v.BoxOutline.Visible = Esp.Settings.BoxesOutline;v.Box.Visible = true;v.BoxFilled.Visible=Esp.Settings.BoxesFilled
        end
        if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then
          v.BoxOutline.Visible = false;v.Box.Visible = false;v.BoxFilled.Visible = false
        end
        v.BoxOutline.Position = Vector2.new(BoxPosX,BoxPosY);v.BoxOutline.Size = Vector2.new(w,h)
        v.Box.Position = Vector2.new(BoxPosX,BoxPosY);v.Box.Size = Vector2.new(w,h)
        v.Box.Color = Esp.Settings.BoxesColor;v.BoxOutline.Color = Color3.fromRGB(0, 0, 0)
        v.BoxOutline.Transparency = 1
        v.BoxFilled.Position=Vector2.new(BoxPosX,BoxPosY);v.BoxFilled.Size=Vector2.new(w,h)
        v.BoxFilled.Transparency = Esp.Settings.BoxesFilledTransparency
        v.BoxFilled.Color = Esp.Settings.BoxesFilledColor
        if IsVisible == true then
          v.Box.Color = Color3.fromRGB(255,0,0);v.BoxOutline.Color=Esp.Settings.BoxesOutlineColor;v.BoxFilled.Color=Color3.fromRGB(0,0,0)
        else
          v.Box.Color = Esp.Settings.BoxesColor;v.BoxOutline.Color = Esp.Settings.BoxesOutlineColor;v.BoxFilled.Color=Esp.Settings.BoxesFilledColor
        end
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.Box.Color = Esp.Settings.HighlightTargetColor
        else
          v.Box.Color = Esp.Settings.BoxesColor;
        end
        if v.PlayerTable.sleeping == true then v.Box.Color = Esp.Settings.OtherBoxesColor end
        if TeamTag == true then v.Sleeping.Text = "Friendly" end
        if TeamTag == true then v.Box.Color = Esp.Settings.OtherBoxesColorTeam end
      else
        v.BoxOutline.Visible = false;v.Box.Visible = false;v.BoxFilled.Visible = false;
      end
      if OnScreen == true and Esp.Settings.CornerBoxes == true and Distance <= Esp.Settings.RenderDistance then
        if Esp.Settings.TeamCheck == true and TeamTag == false then
          v.BoxFilled.Visible=Esp.Settings.BoxesFilled
          v.Line1.Visible=Esp.Settings.CornerBoxes;v.Line2.Visible=Esp.Settings.CornerBoxes;v.Line3.Visible=Esp.Settings.CornerBoxes;v.Line4.Visible=Esp.Settings.CornerBoxes;v.Line5.Visible=Esp.Settings.CornerBoxes;v.Line6.Visible=Esp.Settings.CornerBoxes;v.Line7.Visible=Esp.Settings.CornerBoxes;v.Line8.Visible=Esp.Settings.CornerBoxes
        elseif Esp.Settings.TeamCheck == true and TeamTag == true then
          v.Line1.Visible=false;v.Line2.Visible=false;v.Line3.Visible=false;v.Line4.Visible=false;v.Line5.Visible=false;v.Line6.Visible=false;v.Line7.Visible=false;v.Line8.Visible=false
          v.BoxFilled.Visible=false
        else
          v.BoxFilled.Visible=Esp.Settings.BoxesFilled
          v.Line1.Visible=Esp.Settings.CornerBoxes;v.Line2.Visible=Esp.Settings.CornerBoxes;v.Line3.Visible=Esp.Settings.CornerBoxes;v.Line4.Visible=Esp.Settings.CornerBoxes;v.Line5.Visible=Esp.Settings.CornerBoxes;v.Line6.Visible=Esp.Settings.CornerBoxes;v.Line7.Visible=Esp.Settings.CornerBoxes;v.Line8.Visible=Esp.Settings.CornerBoxes
        end
        if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then
          v.Line1.Visible=false;v.Line2.Visible=false;v.Line3.Visible=false;v.Line4.Visible=false;v.Line5.Visible=false;v.Line6.Visible=false;v.Line7.Visible=false;v.Line8.Visible=false
          v.BoxFilled.Visible = false
        end
        v.Line1.From=Vector2.new(BoxPosX,BoxPosY);v.Line1.To=Vector2.new((BoxPosX+w/4),BoxPosY) --Top Left Top
        v.Line2.From=Vector2.new(BoxPosX+w,BoxPosY);v.Line2.To=Vector2.new((BoxPosX+w)-w/4,BoxPosY) -- Top Right Top
        v.Line3.From=Vector2.new(BoxPosX,BoxPosY+h);v.Line3.To=Vector2.new((BoxPosX+w/4),BoxPosY+h) -- Bottom Left Bottom
        v.Line4.From=Vector2.new(BoxPosX+w,BoxPosY+h);v.Line4.To=Vector2.new((BoxPosX+w)-w/4,BoxPosY+h) --Bottom Right Bottom
        v.Line5.From=Vector2.new(BoxPosX,BoxPosY);v.Line5.To=Vector2.new(BoxPosX,BoxPosY+h/8) --Top Left Down
        v.Line6.From=Vector2.new(BoxPosX,BoxPosY+h);v.Line6.To=Vector2.new(BoxPosX,(BoxPosY+h)-h/8) --Bottom Left Up
        v.Line7.From=Vector2.new(BoxPosX+w,BoxPosY+h);v.Line7.To=Vector2.new(BoxPosX+w,(BoxPosY+h)-h/8) --Bottom Right Up
        v.Line8.From=Vector2.new(BoxPosX+w,BoxPosY);v.Line8.To=Vector2.new(BoxPosX+w,BoxPosY+h/8) --Top Right Down
        v.BoxFilled.Position=Vector2.new(BoxPosX,BoxPosY);v.BoxFilled.Size=Vector2.new(w,h)
        v.BoxFilled.Transparency = Esp.Settings.BoxesFilledTransparency
        if IsVisible == true then
          v.Line1.Color=Color3.fromRGB(255,0,0);v.Line2.Color=Color3.fromRGB(255,0,0);v.Line3.Color=Color3.fromRGB(255,0,0);v.Line4.Color=Color3.fromRGB(255,0,0);v.Line5.Color=Color3.fromRGB(255,0,0);v.Line6.Color=Color3.fromRGB(255,0,0);v.Line7.Color=Color3.fromRGB(255,0,0);v.Line8.Color=Color3.fromRGB(255,0,0)
          v.BoxFilled.Color=Color3.fromRGB(255,0,0)
        else
          v.Line1.Color=Esp.Settings.BoxesColor;v.Line2.Color=Esp.Settings.BoxesColor;v.Line3.Color=Esp.Settings.BoxesColor;v.Line4.Color=Esp.Settings.BoxesColor;v.Line5.Color=Esp.Settings.BoxesColor;v.Line6.Color=Esp.Settings.BoxesColor;v.Line7.Color=Esp.Settings.BoxesColor;v.Line8.Color=Esp.Settings.BoxesColor
          v.BoxFilled.Color=Esp.Settings.BoxesFilledColor
        end
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.Line1.Color = Esp.Settings.HighlightTargetColor
          v.Line2.Color = Esp.Settings.HighlightTargetColor
          v.Line3.Color = Esp.Settings.HighlightTargetColor
          v.Line4.Color = Esp.Settings.HighlightTargetColor
          v.Line5.Color = Esp.Settings.HighlightTargetColor
          v.Line6.Color = Esp.Settings.HighlightTargetColor
          v.Line7.Color = Esp.Settings.HighlightTargetColor
          v.Line8.Color = Esp.Settings.HighlightTargetColor
        else
          v.Line1.Color = Esp.Settings.BoxesColor
          v.Line2.Color = Esp.Settings.BoxesColor
          v.Line3.Color = Esp.Settings.BoxesColor
          v.Line4.Color = Esp.Settings.BoxesColor
          v.Line5.Color = Esp.Settings.BoxesColor
          v.Line6.Color = Esp.Settings.BoxesColor
          v.Line7.Color = Esp.Settings.BoxesColor
          v.Line8.Color = Esp.Settings.BoxesColor
        end
        if v.PlayerTable.sleeping == true then
          v.Line1.Color = Esp.Settings.OtherBoxesColor;v.Line2.Color = Esp.Settings.OtherBoxesColor;v.Line3.Color = Esp.Settings.OtherBoxesColor;v.Line4.Color = Esp.Settings.OtherBoxesColor;v.Line5.Color = Esp.Settings.OtherBoxesColor;v.Line6.Color = Esp.Settings.OtherBoxesColor;v.Line7.Color = Esp.Settings.OtherBoxesColor;v.Line8.Color = Esp.Settings.OtherBoxesColor
        end
        if TeamTag == true then
          v.Line1.Color = Esp.Settings.OtherBoxesColorTeam;v.Line2.Color = Esp.Settings.OtherBoxesColorTeam;v.Line3.Color = Esp.Settings.OtherBoxesColorTeam;v.Line4.Color = Esp.Settings.OtherBoxesColorTeam;v.Line5.Color = Esp.Settings.OtherBoxesColorTeam;v.Line6.Color = Esp.Settings.OtherBoxesColorTeam;v.Line7.Color = Esp.Settings.OtherBoxesColorTeam;v.Line8.Color = Esp.Settings.OtherBoxesColorTeam
        end
      else
        v.Line1.Visible=false;v.Line2.Visible=false;v.Line3.Visible=false;v.Line4.Visible=false;v.Line5.Visible=false;v.Line6.Visible=false;v.Line7.Visible=false;v.Line8.Visible=false;v.BoxFilled.Visible = false
      end
      if OnScreen == true and Esp.Settings.Sleeping == true and Distance <= Esp.Settings.RenderDistance then
        if Character.Head.Nametag.tag.Text ~= "" then
          v.Sleeping.Text = Character:FindFirstChild("Head").Nametag.tag.Text
        else
          v.Sleeping.Text = "Enemy"
          if TeamTag == true then v.Sleeping.Text = "Friendly" end
          if v.PlayerTable.sleeping == true then v.Sleeping.Text = "Sleeping" end
        end
        if Esp.Settings.TeamCheck == true and TeamTag == false then  v.Sleeping.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Sleeping.Visible = false else v.Sleeping.Visible = true end
        if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Sleeping.Visible = false end
        v.Sleeping.Outline=Esp.Settings.TextOutline;v.Sleeping.Color=Esp.Settings.SleepingColor;v.Sleeping.Size=math.max(math.min(math.abs(Esp.Settings.TextSize*scale),Esp.Settings.TextSize),Esp.Settings.MinTextSize);v.Sleeping.Color = Esp.Settings.SleepingColor;v.Sleeping.Font=Esp.Settings.TextFont;v.Sleeping.Position = Vector2.new(x,math.floor(y-h*0.5-v.Sleeping.TextBounds.Y))
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.Sleeping.Color = Esp.Settings.HighlightTargetColor
        else
          v.Sleeping.Color = Esp.Settings.SleepingColor;
        end
        if v.PlayerTable.sleeping == true then v.Sleeping.Color = Esp.Settings.OtherSleepingColor end
        if TeamTag == true then v.Sleeping.Color = Esp.Settings.OtherSleepingColorTeam end
      else
        v.Sleeping.Visible=false
      end
      if OnScreen == true and Esp.Settings.Distances == true and Distance <= Esp.Settings.RenderDistance then
        if Esp.Settings.TeamCheck == true and TeamTag == false then v.Distance.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Distance.Visible = false else v.Distance.Visible = true end
        if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Distance.Visible = false end
        v.Distance.Outline=Esp.Settings.TextOutline;v.Distance.Size = math.max(math.min(math.abs(Esp.Settings.TextSize*scale),Esp.Settings.TextSize),Esp.Settings.MinTextSize);v.Distance.Position=Vector2.new(x,math.floor(y+h*0.5));v.Distance.Color = Esp.Settings.DistanceColor;v.Distance.Text = tostring("["..math.floor(Distance)).."]";v.Distance.Font=Esp.Settings.TextFont
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.Distance.Color = Esp.Settings.HighlightTargetColor
        else
          v.Distance.Color = Esp.Settings.DistanceColor;
        end
        if v.PlayerTable.sleeping == true then v.Distance.Color = Esp.Settings.OtherDistanceColor end
        if TeamTag == true then v.Distance.Color = Esp.Settings.OtherDistanceColorTeam end
      else
        v.Distance.Visible = false
      end
      if OnScreen == true and Esp.Settings.Tool == true and Distance <= Esp.Settings.RenderDistance then
        if Esp.Settings.TeamCheck == true and TeamTag == false then v.Tool.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Tool.Visible = false else v.Tool.Visible = true end
        if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Tool.Visible = false end
        if Esp.Settings.Tool == true then v.Tool.Position=Vector2.new(x, math.floor(y+h*0.5)+v.Tool.TextBounds.Y) else v.Tool.Position=Vector2.new(x,math.floor(y+h*0.5)); end
        v.Tool.Text=Esp:CheckTools(v.PlayerTable);v.Tool.Outline=Esp.Settings.TextOutline;v.Tool.Size=math.max(math.min(math.abs(Esp.Settings.TextSize*scale),Esp.Settings.TextSize),Esp.Settings.MinTextSize);v.Tool.Color=Esp.Settings.ToolColor;v.Tool.Font=Esp.Settings.TextFont
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.Tool.Color = Esp.Settings.HighlightTargetColor
        else
          v.Tool.Color = Esp.Settings.ToolColor;
        end
        if v.PlayerTable.sleeping == true then v.Tool.Color = Esp.Settings.OtherToolColor end
        if TeamTag == true then v.Tool.Color = Esp.Settings.OtherToolColorTeam end
      else
        v.Tool.Visible = false
      end
      local armorFolder = Character.Armor:FindFirstChildOfClass("Folder")
      if OnScreen == true and Esp.Settings.Armour == true and Distance <= Esp.Settings.RenderDistance and armorFolder then
        local armorName = armorFolder.Name
        if armorName == "WoodHelmet" or armorName == "WoodChestplate" or armorName == "WoodLeggings" then
          v.Armour.Text = "Wood Gear"
        elseif armorName == "RiotHelmet" or armorName == "RiotChestplate" or armorName == "RiotLeggings" then
          v.Armour.Text = "Riot Gear"
        elseif armorName == "IronHelmet" or armorName == "IronChestplate" or armorName == "IronLeggings" then
          v.Armour.Text = "Iron Gear"
        elseif armorName == "SteelHelmet" or armorName == "SteelChestplate" or armorName == "SteelLeggings" then
          v.Armour.Text = "Steel Gear"
        else
          v.Armour.Text = ""
        end
        if Esp.Settings.TeamCheck == true and TeamTag == false then v.Armour.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.Armour.Visible = false else v.Armour.Visible = true end
        if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.Armour.Visible = false end
        v.Armour.Outline=Esp.Settings.TextOutline;v.Armour.Size = math.max(math.min(math.abs(Esp.Settings.TextSize*scale),Esp.Settings.TextSize),Esp.Settings.MinTextSize);v.Armour.Position=Vector2.new(math.floor(BoxPosX+w+v.Armour.TextBounds.X*1.30*0.5),BoxPosY+v.Armour.TextBounds.Y*1.85*0.5-((v.Armour.TextBounds.Y*2)*0.5));v.Armour.Color = Esp.Settings.ArmourColor;v.Armour.Font=Esp.Settings.TextFont
        v.Armour.Color = Esp.Settings.HighlightTargetColor
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.Armour.Color = Esp.Settings.HighlightTargetColor
        else
          v.Armour.Color = Esp.Settings.ArmourColor;
        end
        if v.PlayerTable.sleeping == true then v.Armour.Color = Esp.Settings.OtherArmourColor end
        if TeamTag == true then v.Armour.Color = Esp.Settings.OtherArmourColorTeam end
      else
        v.Armour.Visible = false;
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
        elseif Esp.Settings.TracerFrom == "Top" then
          v.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, 0)
          v.Tracer.To = Vector2.new(x,y-h*0.5)
        else
          v.Tracer.From = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/Camera.ViewportSize.Y)
          if Esp.Settings.Sleeping == true then
            v.Tracer.To = Vector2.new(x,(y-h)-v.Sleeping.TextBounds.Y*0.5)
          else
            v.Tracer.From = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y)
            v.Tracer.To = Vector2.new(x,y-h*0.5)
          end
        end
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.Tracer.Color = Esp.Settings.HighlightTargetColor
        else
          v.Tracer.Color = Esp.Settings.TracerColor;
        end
        if v.PlayerTable.sleeping == true then v.Tracer.Color = Esp.Settings.OtherTracerColor end
        if TeamTag == true then v.Tracer.Color = Esp.Settings.OtherTracerColorTeam end
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
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.ViewAngle.Color = Esp.Settings.HighlightTargetColor
        else
          v.ViewAngle.Color = Esp.Settings.ViewAngleColor;
        end
        if v.PlayerTable.sleeping == true then v.ViewAngle.Color = Esp.Settings.OtherViewAngleColor end
        if TeamTag == true then v.ViewAngle.Color = Esp.Settings.OtherViewAngleColorTeam end
      else
        v.ViewAngle.Visible = false
      end
      if OnScreen == true and Esp.Settings.HeadCircles == true and Distance <= Esp.Settings.RenderDistance then
        if Esp.Settings.TeamCheck == true and TeamTag == false then v.HeadCircles.Visible = true elseif Esp.Settings.TeamCheck == true and TeamTag == true then v.HeadCircles.Visible = false else v.HeadCircles.Visible = true end
        if Esp.Settings.TargetSleepers == true and v.PlayerTable.sleeping == true then v.HeadCircles.Visible = false end
        v.HeadCircles.Color = Esp.Settings.HeadCirclesColor;v.HeadCircles.Thickness=Esp.Settings.HeadCirclesThickness;v.Transparency=Esp.Settings.HeadCirclesTransparrency;
        local headpos = Camera:WorldToViewportPoint(Character.Head.Position)
        local Position,OnScreen = Camera:WorldToViewportPoint(Character:FindFirstChild("HumanoidRootPart").Position);
        if OnScreen == true then
          v.HeadCircles.Position = Vector2.new(headpos.X, headpos.Y)
          v.HeadCircles.Radius = 3
          v.HeadCircles.NumSides = 18
        end
        if Esp.Settings.HighlightTarget and Character == ccc then
          v.HeadCircles.Color = Esp.Settings.HighlightTargetColor
        else
          v.HeadCircles.Color = Esp.Settings.HeadCirclesColor;
        end
        if v.PlayerTable.sleeping == true then v.HeadCircles.Color = Esp.Settings.OtherHeadCirclesColor end
        if TeamTag == true then v.HeadCircles.Color = Esp.Settings.OtherHeadCirclesColorTeam end
      else
        v.HeadCircles.Visible = false
      end
    else
      v.Box.Visible=false;
      v.BoxOutline.Visible=false;
      v.BoxFilled.Visible=false;
      v.Tool.Visible=false;
      v.Armour.Visible=false;
      v.Distance.Visible=false;
      v.Sleeping.Visible=false;
      v.ViewAngle.Visible=false;
      v.HeadCircles.Visible=false;
      v.Tracer.Visible=false;
      v.Line1.Visible=false;v.Line2.Visible=false;v.Line3.Visible=false;v.Line4.Visible=false;v.Line5.Visible=false;v.Line6.Visible=false;v.Line7.Visible=false;v.Line8.Visible=false
    end
  end
end
local FovCircle = Functions:Draw("Circle",{Filled=Fov.Settings.FovFilled,Color=Fov.Settings.FovColor,Radius=Fov.Settings.FovSize,NumSides=64,Thickness=1,Transparency=Fov.Settings.FovTransparency,ZIndex=3,Visible=false})
local FovCircleOutline = Functions:Draw("Circle",{Filled=Fov.Settings.FovOutlineFilled,Color=Fov.Settings.FovOutlineColor,Radius=Fov.Settings.FovOutlineSize,NumSides=64,Thickness=2.6,Transparency=0.28,ZIndex=2.98,Visible=false})
local FovSnapline = Functions:Draw("Line",{Transparency=1,Thickness=1,Visible=false})
local CircleLine = Functions:Draw("Circle",{Color=Fov.Settings.CircleLineColor,Radius=6,NumSides=18,Thickness=1,Transparency=Fov.Settings.FovTransparency,Visible=false})
local PlayerUpdater = game:GetService("RunService").RenderStepped
local PlayerConnection = PlayerUpdater:Connect(LPH_NO_VIRTUALIZE(function()
Esp:UpdateEsp()
end))
LPH_NO_VIRTUALIZE(function()
for i, v in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
  if not table.find(cache,v) then
    table.insert(cache,v)
    Esp:CreateEsp(v)
  end
end
end)()
game:GetService("Workspace").ChildAdded:Connect(function(child)
if child:FindFirstChild("HumanoidRootPart") then
  for i, v in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
    if not table.find(cache,v) then
      table.insert(cache,v)
      Esp:CreateEsp(v)
    end
  end
end
end)

-------------------------------------------------------------------------------------------------
--// Combat \\--

--
local SilentTabbox = Tabs.CombatTab:AddLeftTabbox()
local SilentTab = SilentTabbox:AddTab('silent aim')
local FovTab = SilentTabbox:AddTab('fov circle')

--* Silent Aim *--

SilentTab:AddToggle('SilentAim',{Text='enabled',Default=false}):AddKeyPicker('SilentKey', {Default='MB2',SyncToggleState=true,Mode='Hold',Text='Silent Aim',NoUI=false}):OnChanged(function(Value)
Combat.Settings.SilentEnabled = Value
end)
SilentTab:AddSlider('HitChance', {Text='hit chance:',Default=100,Min=0,Max=100,Rounding=0,Compact=false,Suffix="%"}):OnChanged(function(Value)
Combat.Settings.SilentHitChance = Value
end)
SilentTab:AddSlider('HitChance', {Text='distance:',Default=1000,Min=0,Max=2500,Rounding=0,Compact=false,Suffix=" studs"}):OnChanged(function(Value)
Combat.Settings.RenderDistance = Value
end)
SilentTab:AddToggle('HighlightTarget',{Text='highlight target',Default=false}):AddColorPicker('HighlightTargetColor',{Default=Color3.fromRGB(255,0,0),Title='Color'}):OnChanged(function(value)
Esp.Settings.HighlightTarget = value
end)
Options.HighlightTargetColor:OnChanged(function(ValueHighlight)
Esp.Settings.HighlightTargetColor = ValueHighlight
end)
SilentTab:AddToggle('Snapline',{Text='snaplines',Default=false}):AddColorPicker('SnaplineColor',{Default=Color3.fromRGB(208,123,255),Title='Color'})
SilentTab:AddToggle('Snapcircles',{Text='snapcircles',Default=false}):AddColorPicker('SnapcirclesColor',{Default=Color3.fromRGB(208,123,255),Title='Color'}):OnChanged(function(Value)
Fov.Settings.CircleLine = Value
CircleLine.Visible = Value
end)
Options.SnapcirclesColor:OnChanged(function(Value25)
Fov.Settings.CircleLineColor = Value25
CircleLine.Color = Value25
end)

SilentTab:AddDropdown('SnaplinePosition', {Values = {"Bottom","Middle","Top"},Default = 2,Multi = false,Text = 'position:'}):OnChanged(function(Value)
Fov.Settings.SnaplinePosition = Value
end)
SilentTab:AddToggle('SleeperCheck',{Text='sleeper check',Default=true}):OnChanged(function(Value)
Combat.Settings.SleeperCheck = Value
end)

SilentTab:AddDropdown('SilentHitpart', {Values = {"Head", "HumanoidRootPart", "Torso", "LowerTorso", "RightHand", "LeftHand", "RightFoot", "LeftFoot"}, Default = 1, Multi = false, Text = 'hitpart:'}):OnChanged(function(Value)
Combat.Settings.SilentAimPart = Value
end)

--* Fov Circle *--

FovTab:AddToggle('Fov',{Text='enabled',Default=false}):AddColorPicker('FovColor',{Default=Color3.fromRGB(208,123,255),Title='Color'})
FovTab:AddToggle('Dynamic',{Text='dynamic',Default=true})
FovTab:AddToggle('FovHighlight',{Text='highlight',Default=false}):AddColorPicker('FovHighlightColor',{Default=Color3.fromRGB(0,255,0),Title='Color'})
FovTab:AddToggle('Filled',{Text='filled',Default=false}):OnChanged(function(Value)
Fov.Settings.FovFilled = Value;FovCircle.Filled = Value
Fov.Settings.FovOutlineFilled = Value;FovCircleOutline.Filled = Value
end)
FovTab:AddSlider('FovSize', {Text='size:',Default=120,Min=5,Max=500,Rounding=0,Compact=false}):OnChanged(function(Value)
Fov.Settings.FovSize = Value;FovCircle.Radius = Value
Fov.Settings.FovOutlineSize = Value;FovCircleOutline.Radius = Value
end)
FovTab:AddSlider('Transparency', {Text='transparency:',Default=1,Min=0,Max=1,Rounding=2,Compact=false,Suffix="%"}):OnChanged(function(Value)
Fov.Settings.FovTransparency = Value;FovCircle.Transparency = Value
end)
FovTab:AddDropdown('FovPosition', {Values = {"To Screen","To Mouse"},Default = 1,Multi = false,Text = 'position:'}):OnChanged(function(Value)
Fov.Settings.FovPosition = Value
Fov.Settings.FovOutlinePosition = Value
end)

game:GetService("RunService").RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
local Player,PlayerTable = Functions:GetClosest()
if Toggles.InventoryViewerToggle.Value == true and Player ~= nil then
  InventoryViewer:OnToggle(true)
  InvTool.Text = "\nItem -> "..Esp:CheckTools(PlayerTable)
  InvArmour.Text = "\nArmour: "
  for i,v in pairs(Player.Armor:GetChildren()) do
    if InventoryViewer:GetArmour(v.Name,"Helmet") ~= nil then
      InvHelmet.Text = "\nHelmet -> "..InventoryViewer:GetArmour(v.Name,"Helmet")
    end
    if InventoryViewer:GetArmour(v.Name,"Chestplate") ~= nil then
      InvChestplate.Text = "\nChestplate -> "..InventoryViewer:GetArmour(v.Name,"Chestplate")
    end
    if InventoryViewer:GetArmour(v.Name,"Leggings") ~= nil then
      InvLeggings.Text = "\nLeggings -> "..InventoryViewer:GetArmour(v.Name,"Leggings")
    end
    if InventoryViewer:GetArmour(v.Name,"Misc") ~= nil then
      InvOther.Text = "\nMisc -> "..InventoryViewer:GetArmour(v.Name,"Misc")
    end
  end
  InvDistance.Text = "\n\nDistance: ["..math.floor((CharcaterMiddle:GetPivot().Position-Player:GetPivot().Position).Magnitude).."]m"
else
  InvTool.Text = "\nItem -> [Empty]"
  InvArmour.Text = "\nArmour: "
  InvHelmet.Text = "\nHelmet -> "
  InvChestplate.Text = "\nChestplate -> "
  InvLeggings.Text = "\nLeggings -> "
  InvOther.Text = "\nMisc -> "
  InvDistance.Text = "\n\nDistance -> "
  InventoryViewer:OnToggle(false)
end
if Functions:GetClosest() ~= nil and Toggles.FovHighlight.Value == true then
  local p,t = Functions:GetClosest()
  FovCircle.Color = Fov.Settings.FovColor
  local Position,OnScreen = Camera:WorldToViewportPoint(Functions:GetClosest()[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict());
  if Fov.Settings.FovHighlight == true and Functions:GetClosest().Head.Teamtag.Enabled == false and OnScreen == true then
    FovCircle.Color = Fov.Settings.FovHighlightColor
  else
    FovCircle.Color=Color3.fromRGB(255, 0, 0)
  end
else
  FovCircle.Color = Fov.Settings.FovColor
end
if Functions:GetClosest() ~= nil and Toggles.Snapline.Value == true then
  local p,t = Functions:GetClosest()
  FovSnapline.Visible = true
  CircleLine.Visible = true
  local Position,OnScreen = Camera:WorldToViewportPoint(Functions:GetClosest()[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict());
  if Combat.Settings.TeamCheck == true and Functions:GetClosest().Head.Teamtag.Enabled == false and OnScreen == true then
    FovSnapline.To = Position
    CircleLine.Position = Position
  elseif OnScreen == true then
    FovSnapline.To = Position
    CircleLine.Position = Position
  end
else
  FovSnapline.Visible = false
  CircleLine.Visible = false
end
if Functions:GetClosest() ~= nil and Toggles.Snapcircles.Value == true then
  local p,t = Functions:GetClosest()
  CircleLine.Visible = true
  local Position,OnScreen = Camera:WorldToViewportPoint(Functions:GetClosest()[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict());
  if Combat.Settings.TeamCheck == true and Functions:GetClosest().Head.Teamtag.Enabled == false and OnScreen == true then
    CircleLine.Position = Position
  elseif OnScreen == true then
    CircleLine.Position = Position
  end
else
  CircleLine.Visible = false
end
Fov.Settings.RealFovSize=FovCircle.Radius
Fov.Settings.RealFovOutlineSize=FovCircle.Radius
if Fov.Settings.Dynamic == true then
  local set = Fov.Settings.FovSize * ((Fov.Settings.FovSize-Camera.FieldOfView)/70 + 0.14) + 17.5
  local set2 = Fov.Settings.FovOutlineSize * ((Fov.Settings.FovOutlineSize-Camera.FieldOfView)/70 + 0.14) + 17.5
  FovCircle.Radius = set
  FovCircleOutline.Radius = set
else
  FovCircle.Radius=Fov.Settings.FovSize
  FovCircleOutline.Radius=Fov.Settings.FovOutlineSize
end
if Fov.Settings.FovPosition == "To Screen" then
  FovCircle.Position = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/2)
  FovCircleOutline.Position = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/2)
else
  local MousePos = Camera.WorldToViewportPoint(Camera,game.Players.LocalPlayer:GetMouse().Hit.p)
  FovCircle.Position = Vector2.new(MousePos.X,MousePos.Y)
  FovCircleOutline.Position = Vector2.new(MousePos.X,MousePos.Y)
end
if Fov.Settings.SnaplinePosition == "Bottom" then
  FovSnapline.From=Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y)
elseif Fov.Settings.SnaplinePosition == "Middle" then
  FovSnapline.From=Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/2)
elseif Fov.Settings.SnaplinePosition == "Top" then
  FovSnapline.From=Vector2.new(Camera.ViewportSize.X / 2, 0)
end
end))

--// Fov Switches
Toggles.Dynamic:OnChanged(function(Value)
Fov.Settings.Dynamic = Value
Fov.Settings.OutlineDynamic = Value
end)
Toggles.FovHighlight:OnChanged(function(Value)
Fov.Settings.FovHighlight = Value
end)
Options.FovHighlightColor:OnChanged(function(Value)
Fov.Settings.FovHighlightColor = Value
end)
Toggles.Fov:OnChanged(function(Value)
Fov.Settings.FovEnabled = Value
FovCircle.Visible = Value
Fov.Settings.FovOutlineEnabled = Value
FovCircleOutline.Visible = Value
end)
Options.FovColor:OnChanged(function(Value)
Fov.Settings.FovColor = Value
FovCircle.Color = Value
end)

--// Silent Aim Switches
Toggles.Snapline:OnChanged(function(Value)
Fov.Settings.Snapline = Value
FovSnapline.Visible = Value
end)
Options.SnaplineColor:OnChanged(function(Value)
Fov.Settings.SnaplineColor = Value
FovSnapline.Color=Value
end)

--
local WeaponModsTabBox = Tabs.CombatTab:AddRightTabbox('weapon modifications')
local WeaponModsTab = WeaponModsTabBox:AddTab('weapon modifications')

--* Weapon Modifications *--

local gunMods = {
  norecoilTog = false,
  noSpreadTog = false,
}

local GunModsEnabled = false
WeaponModsTab:AddToggle('FireTypeEnabled', {Text = 'enabled', Default = false}):OnChanged(function(EnabledFireType)
GunModsEnabled = EnabledFireType
end)

WeaponModsTab:AddToggle('NoRecoil',{Text='no recoil',Default=false}):OnChanged(function(Value)
gunMods.norecoilTog = Value
end)

WeaponModsTab:AddToggle('NoSpread',{Text='no spread',Default=false}):OnChanged(function(Value)
gunMods.noSpreadTog = Value
end)

local ItemConfigs = game.ReplicatedStorage.ItemConfigs
local weapons = {PipePistol = require(ItemConfigs.PipePistol),Blunderbuss = require(ItemConfigs.Blunderbuss),Crossbow = require(ItemConfigs.Crossbow),Bow = require(ItemConfigs.Bow),USP9 = require(ItemConfigs.USP9),LeverActionRifle = require(ItemConfigs.LeverActionRifle),GaussRifle = require(ItemConfigs.GaussRifle)}
local FireActions = {Semi = "semi",Auto = "auto"}
WeaponModsTab:AddDropdown('FireTypeDropdown', {Values = {"Semi", "Auto"},Default = 1,Multi = false,Text = 'fire type:'}):OnChanged(function(Value)
if GunModsEnabled then
  local fireAction = FireActions[Value]
  for _, weapon in pairs(weapons) do
    weapon.FireAction = fireAction
  end
end
end)

--
local SpinbotTabBox = Tabs.CombatTab:AddRightTabbox('spinbot')
local SpinbotTab = SpinbotTabBox:AddTab('spinbot')

--* Spinbot *--

local spinbot = {
  Spinbot = false,
  SpinbotSpeed = 3,
  SpinbotType = "Normal",
  SpinBotLM = false,
  SpinBotV = false,
  fakeduck = false,
}

SpinbotTab:AddToggle('Spinbot',{Text='enabled',Default=false}):AddKeyPicker('', {Default='Non',SyncToggleState=true,Mode='Toggle',Text='Spinbot',NoUI=false}):OnChanged(function(Value)
spinbot.Spinbot = Value
end)

SpinbotTab:AddSlider('SpinbotSpeed', {Text='speed:',Default=3,Min=1,Max=3,Rounding=0,Compact=false}):OnChanged(function(Value)
spinbot.SpinbotSpeed = Value
end)

SpinbotTab:AddDropdown('SpinbotType', {Values = {"Normal", "Desync", "Random"},Default = 1,Multi = false,Text = 'type:'}):OnChanged(function(Value)
spinbot.SpinbotType = Value
end)

SpinbotTab:AddToggle('FakeCrouch', {Text = 'fake duck',Default = false,Tooltip = 'Makes u crouch for other people also they cant hear your footsteps'}):OnChanged(function(value)
spinbot.fakeduck = value
end)

local value = 1
local OldSpinHook
OldSpinHook = hookfunction(game.Players.LocalPlayer:FindFirstChild("RemoteEvent").FireServer, function(self, ...)
local args = {...}
if args[1] and args[2] and args[1] == 1 and typeof(args[2]) == "Vector3" and args[4] and spinbot.Spinbot == true then
  if spinbot.SpinBotLM == true and spinbot.SpinbotType == "Desync" then
    args[4] = value
    value = value + spinbot.SpinbotSpeed
  elseif spinbot.SpinbotType == "Normal" or spinbot.SpinBotLM == false then
    args[4] = value
    value = value - spinbot.SpinbotSpeed
  end
end
if args[1] and args[2] and args[1] == 1 and typeof(args[2]) == "Vector3" and args[4] and spinbot.Spinbot == true then
  if spinbot.SpinBotV == true and spinbot.SpinbotType == "Desync" then
    args[3] = 1.5000001192092896
  elseif spinbot.SpinbotType == "Normal" or spinbot.SpinBotV == false then
    args[3] = -1.5000001192092896
  elseif spinbot.SpinbotType == "Random" or spinbot.SpinBotV == false then
    args[3] = -1.5000001192092896
  end
end
if spinbot.SpinbotType == "Desync" then
  spinbot.SpinBotV = not spinbot.SpinBotV
end
if spinbot.SpinbotType == "Desync" or spinbot.SpinbotType == "Random" then
  spinbot.SpinBotLM = not spinbot.SpinBotLM
end
if args[1] == 2 and spinbot.fakeduck == true then
  args[2] = true
end
return OldSpinHook(self, unpack(args))
end)
local function onFakeLagToggled(value)
  game:GetService("NetworkClient"):SetOutgoingKBPSLimit(value and 1 or 100)
end
SpinbotTab:AddToggle('FakeLag', {Text = 'fake lag', Default = false}):OnChanged(onFakeLagToggled)

--
local HeadHitboxTabBox = Tabs.CombatTab:AddLeftTabbox('head hitbox')
local HeadHitboxTab = HeadHitboxTabBox:AddTab('head hitbox')

--* Head Hitbox Expander *--

local hbExpander = {
  HeadExtends = false,
  XSize = 5,
  YSize = 5,
  ZSize = 10,
  HitboxTransparency = 50,
}

HeadHitboxTab:AddToggle('HBO',{Text='enabled',Default=false}):OnChanged(function(Value)
hbExpander.HeadExtends = Value
end)

HeadHitboxTab:AddSlider('HitboxXSize_Slider', {Text = 'hitbox width:', Default = 5, Min = 0, Max = 10, Rounding = 2, Suffix = "%", Compact = false}):OnChanged(function(HitboxXSize)
hbExpander.XSize = HitboxXSize
end)

HeadHitboxTab:AddSlider('HitboxYSize_Slider', {Text = 'hitbox height:', Default = 5, Min = 0, Max = 10, Rounding = 2, Suffix = "%", Compact = false}):OnChanged(function(HitboxYSize)
hbExpander.YSize = HitboxYSize
end)

HeadHitboxTab:AddSlider('HitboxXSize_Slider', {Text = 'transparency:', Default = 50, Min = 0, Max = 100, Rounding = 0, Suffix = "%", Compact = false}):OnChanged(function(TransparencyValue)
hbExpander.HitboxTransparency = TransparencyValue / 100
end)

local HedsOn = Instance.new("Part")
HedsOn.Name = "HedsOn"
HedsOn.Anchored = false
HedsOn.CanCollide = false
HedsOn.Transparency = 0
HedsOn.Size = Vector3.new(5, 5, 10)
HedsOn.Parent = game.ReplicatedStorage
task.spawn(function()
while task.wait() do
  if hbExpander.HeadExtends then
    for _, i in ipairs(game:GetService("Workspace"):GetChildren()) do
      if i:FindFirstChild("HumanoidRootPart") and not i:FindFirstChild("HedsOn") then
        local BigHeadsPart = Instance.new("Part");BigHeadsPart.Name = "Head";BigHeadsPart.Anchored = false;BigHeadsPart.CanCollide = false;BigHeadsPart.Transparency = hbExpander.HitboxTransparency;BigHeadsPart.Size = Vector3.new(hbExpander.XSize, hbExpander.YSize, hbExpander.ZSize);BigHeadsPart.Material=Enum.Material.SmoothPlastic
        local DeletePart = Instance.new("Weld");DeletePart.Parent = BigHeadsPart;DeletePart.Name = "FAKEHEAD"
        local HeadsParts = BigHeadsPart:Clone();HeadsParts.Parent = i;HeadsParts.Orientation = i.HumanoidRootPart.Orientation
        local clonedHedsOn = HedsOn:Clone();clonedHedsOn.Parent = i
        local Headswelding = Instance.new("Weld");Headswelding.Parent = HeadsParts;Headswelding.Part0 = i.HumanoidRootPart;Headswelding.Part1 = HeadsParts
        HeadsParts.Position = Vector3.new(i.HumanoidRootPart.Position.X, i.HumanoidRootPart.Position.Y - 0.6, i.HumanoidRootPart.Position.Z)
      end
    end
  else
    for _, i in ipairs(game:GetService("Workspace"):GetChildren()) do
      if i:FindFirstChild("HumanoidRootPart") and i:FindFirstChild("HedsOn") then
        i.HedsOn:Remove()
        for _, a in ipairs(i:GetChildren()) do
          if a.Name == "Head" and a:FindFirstChild("FAKEHEAD") and (not a:FindFirstChild("Nametag") or not a:FindFirstChild("Face")) then
            a:Remove()
          end
        end
      end
    end
  end
end
end)

--
local KillAuraTabBox = Tabs.CombatTab:AddRightTabbox('kill aura')
local KillAuraTab = KillAuraTabBox:AddTab('kill aura')

--* Kill Aura *--

local KAHitPartSelected = "Head"
local Wait = 0.95
local AuraGoodToUse = false
local PlayerID = nil
local killauradistance = 8
function Functions:GetLocalToolName()
  if getrenv()._G.modules.FPS.GetEquippedItem() == nil then return 0,0 end
  local mod = require(game:GetService("ReplicatedStorage").ItemConfigs[getrenv()._G.modules.FPS.GetEquippedItem().id])
  for i,v in pairs(mod) do
    if i == "HandModel" then
      return mod.HandModel
    end
  end
  return 0,0
end
local function GetPlayer()
  local closest,PlayerDistance,playerTable = nil,math.huge,nil
  for i,v in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
    if v.model:FindFirstChild("HumanoidRootPart") then
      local Mouse = game.Players.LocalPlayer:GetMouse()
      local pos,OnScreen = Camera.WorldToViewportPoint(Camera, v.model:GetPivot().Position)
      local PlayerDistance = (CharcaterMiddle:GetPivot().Position-v.model:GetPivot().Position).Magnitude
      Distance = (game.Workspace.Ignore.LocalCharacter.Middle.Position - v.model:GetPivot().Position).Magnitude
      if PlayerDistance <= killauradistance and OnScreen == true then
        closest = v.model;PlayerDistance = PlayerDistance;playerTable=v
      end
    end
  end
  return closest,playerTable
end
KillAuraTab:AddToggle('KillAura',{Text='kill aura',Default=false}):AddKeyPicker('KillAuraKey', {Default='Non',SyncToggleState=true,Mode='Toggle',Text='Kill Aura',NoUI=false})
local Bypass; Bypass = hookfunction(game:GetService("Players").LocalPlayer:FindFirstChild("RemoteEvent").FireServer,function(self, ...)
local args = {...}
if args[1] == 10 and args[2] == "Hit" then
  PlayerID = args[3]
end
return Bypass(self, unpack(args))
end)
task.spawn(function()
while task.wait() do
  local state = Options.KillAuraKey:GetState()
  if state then
    local PlayerHumanoid,fr = GetPlayer()
    if PlayerHumanoid and AuraGoodToUse and PlayerHumanoid ~= nil and fr ~= nil then
      game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(10, "Swing")
      game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(10, "Hit", fr.id, PlayerHumanoid.HumanoidRootPart.Position, KAHitPartSelected, Vector3.new(-0.1275634765625, 0.5433349609375, -0.237548828125))
      wait(Wait)
    end
  end
end
end)
task.spawn(function()
while task.wait() do
  local Weapon = Functions:GetLocalToolName()
  if Weapon == "MiningDrill" then
    Wait = 0.12
  else
    Wait = 0.95
  end
  if Weapon == "Hammer" or "Crowbar" or "StoneHammer" or "SteelHammer" or "MiningDrill" or "IronHammer" then
    AuraGoodToUse = true
  else
    AuraGoodToUse = false
  end
end
end)

KillAuraTab:AddSlider('', {Text = 'distance:', Default = 8, Min = 5, Max = 10, Rounding = 0, Suffix = " studs", Compact = false}):OnChanged(function(Value)
killauradistance = Value
end)

KillAuraTab:AddDropdown('', {Values = {"Head", "HumanoidRootPart", "Torso", "LowerTorso", "RightHand", "LeftHand", "RightFoot", "LeftFoot"}, Default = 1, Multi = false, Text = 'hitpart:'}):OnChanged(function(Value)
KAHitPartSelected = Value
end)

-------------------------------------------------------------------------------------------------
--// Visuals \\--

--
local PlayerVisualTabbox = Tabs.VisualsTab:AddLeftTabbox()
local PlayerVisualTab = PlayerVisualTabbox:AddTab('player visuals')
local PlayerSettingsTab = PlayerVisualTabbox:AddTab('player settings')

--* Player ESP *--

PlayerVisualTab:AddToggle('EnabledToggle',{Text='enabled',Default=false}):OnChanged(function()
end)

PlayerVisualTab:AddSlider('RenderDistance', {Text='distance:',Default=1000,Min=0,Max=2500,Rounding=0,Compact=false,Suffix=" studs"}):OnChanged(function(Value)
Esp.Settings.RenderDistance = Value
end)

--> Onscreen Text
local CustomText = Drawing.new("Text")
CustomText.Visible = false
CustomText.Text = "velocity.cc"
CustomText.Size = 12
CustomText.Outline = true
CustomText.Center = true
CustomText.Font = 2
CustomText.Color = Color3.new(208, 123, 255)
CustomText.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 1.89)
--
PlayerVisualTab:AddToggle('12t2ta22', {Text = 'onscreen',Default = false,Tooltip = 'Onscreen Information',}):AddColorPicker('OnscreenColor', {Default = Color3.fromRGB(208, 123, 255),Title = 'Color',}):OnChanged(function(ONSCREENVALUE)
CustomText.Visible = ONSCREENVALUE
end)
Options.OnscreenColor:OnChanged(function(Color320)
CustomText.Color = Color320
end)

local fadingIn, transparency, FADE_SPEED = true, 0, 0.008
local function updateTransparency()
  CustomText.Transparency = transparency
  transparency = transparency + (fadingIn and FADE_SPEED or -FADE_SPEED)
  if fadingIn and transparency >= 1 then
    fadingIn = false
  elseif not fadingIn and transparency <= 0 then
    fadingIn = true
  end
end
game:GetService("RunService").Heartbeat:Connect(updateTransparency)

PlayerVisualTab:AddToggle('Sleeping',{Text='names',Default=false}):AddColorPicker('SleepingColor',{Default=Color3.fromRGB(208, 123, 255),Title='Color'})
Options.SleepingColor:OnChanged(function(Value)
Esp.Settings.SleepingColor = Value
end)
Toggles.Sleeping:OnChanged(function(Value)
Esp.Settings.Sleeping = Value
end)

PlayerVisualTab:AddToggle('',{Text='boxes',Default=false}):AddColorPicker('BoxesColor',{Default=Color3.fromRGB(208, 123, 255),Title='Color'}):AddColorPicker('BoxesFilledColor',{Default=Color3.fromRGB(0, 0, 0),Title='Color'})
Options.BoxesColor:OnChanged(function(Value)
Esp.Settings.BoxesColor = Value
end)
Options.BoxesFilledColor:OnChanged(function(Value)
Esp.Settings.BoxesFilledColor = Value
end)
PlayerVisualTab:AddToggle('',{Text='fill',Default=true}):OnChanged(function(Value)
Esp.Settings.BoxesFilled = Value
end)
PlayerVisualTab:AddDropdown('',{Values={"none","full","corners"},Default=1,Multi=false,Text='type:'}):OnChanged(function(Value)
if Value == "none" then
  Esp.Settings.Boxes = false
  Esp.Settings.CornerBoxes = false
elseif Value == "full" then
  Esp.Settings.CornerBoxes = false
  Esp.Settings.Boxes = true
elseif Value == "corners" then
  Esp.Settings.Boxes = false
  Esp.Settings.CornerBoxes = true
end
end)

PlayerVisualTab:AddSlider('BoxTransparencySlider', {Text = 'transparency', Default = 0.25, Min = 0, Max = 1, Rounding = 2, Suffix = "%", Compact = false}):OnChanged(function(BoxTransparencyValue)
Esp.Settings.BoxesFilledTransparency = BoxTransparencyValue
end)

PlayerVisualTab:AddToggle('Distances',{Text='distance',Default=false}):AddColorPicker('DistancesColor',{Default=Color3.fromRGB(208, 123, 255),Title='Color'})
Toggles.Distances:OnChanged(function(Value)
Esp.Settings.Distances = Value
end)
Options.DistancesColor:OnChanged(function(Value)
Esp.Settings.DistanceColor = Value
end)

PlayerVisualTab:AddToggle('Tool',{Text='weapon',Default=false}):AddColorPicker('ToolColor',{Default=Color3.fromRGB(208, 123, 255),Title='Color'})
Options.ToolColor:OnChanged(function(Value)
Esp.Settings.ToolColor = Value
end)
Toggles.Tool:OnChanged(function(Value)
Esp.Settings.Tool = Value
end)

PlayerVisualTab:AddToggle('Armour',{Text='armour',Default=false}):AddColorPicker('ArmourColor',{Default=Color3.fromRGB(208, 123, 255),Title='Color'})
Options.ArmourColor:OnChanged(function(Value)
Esp.Settings.ArmourColor = Value
end)
Toggles.Armour:OnChanged(function(Value)
Esp.Settings.Armour = Value
end)

PlayerVisualTab:AddToggle('ViewAngle',{Text='view angle',Default=false}):AddColorPicker('ViewAngleColor',{Default=Color3.fromRGB(208, 123, 255),Title='Color'})
Toggles.ViewAngle:OnChanged(function(Value)
Esp.Settings.ViewAngle = Value
end)
Options.ViewAngleColor:OnChanged(function(Value)
Esp.Settings.ViewAngleColor = Value
end)

PlayerVisualTab:AddToggle('HeadCircles',{Text='head circles',Default=false}):AddColorPicker('HeadCirclesColor',{Default=Color3.fromRGB(208, 123, 255),Title='Color'})
Toggles.HeadCircles:OnChanged(function(Value)
Esp.Settings.HeadCircles = Value
end)
Options.HeadCirclesColor:OnChanged(function(Value)
Esp.Settings.HeadCirclesColor = Value
end)

PlayerVisualTab:AddToggle('Tracer',{Text='tracer',Default=false}):AddColorPicker('TracerColor',{Default=Color3.fromRGB(208, 123, 255),Title='Color'})
Toggles.Tracer:OnChanged(function(Value)
Esp.Settings.Tracer = Value
end)
Options.TracerColor:OnChanged(function(Value)
Esp.Settings.TracerColor = Value
end)

PlayerVisualTab:AddDropdown('TracerPosition',{Values={"Bottom","Middle","Top"},Default=1,Multi=false,Text='tracer position:'}):OnChanged(function(Value)
Esp.Settings.TracerFrom = Value
end)

--* Player Settings *--

PlayerSettingsTab:AddToggle('HighlightFriendlies',{Text='highlight friendlies',Default=true}):AddColorPicker('HighlightFriendliesColor',{Default=Color3.fromRGB(0, 255, 0),Title='Color'})
Options.HighlightFriendliesColor:OnChanged(function(highlight_friendlies_color)
Esp.Settings.OtherSleepingColorTeam = highlight_friendlies_color
Esp.Settings.OtherDistanceColorTeam = highlight_friendlies_color
Esp.Settings.OtherBoxesColorTeam = highlight_friendlies_color
Esp.Settings.OtherViewAngleColorTeam = highlight_friendlies_color
Esp.Settings.OtherArmourColorTeam = highlight_friendlies_color
Esp.Settings.OtherToolColorTeam = highlight_friendlies_color
Esp.Settings.OtherTracerColorTeam = highlight_friendlies_color
Esp.Settings.OtherHeadCirclesColorTeam = highlight_friendlies_color
end)

PlayerSettingsTab:AddToggle('HighlightSleepers',{Text='highlight sleepers',Default=true}):AddColorPicker('HighlightSleepersColor',{Default=Color3.fromRGB(0, 255, 255),Title='Color'})
Options.HighlightSleepersColor:OnChanged(function(highlight_sleepers_color)
Esp.Settings.OtherSleepingColor = highlight_sleepers_color
Esp.Settings.OtherDistanceColor = highlight_sleepers_color
Esp.Settings.OtherBoxesColor = highlight_sleepers_color
Esp.Settings.OtherArmourColor = highlight_sleepers_color
Esp.Settings.OtherToolColor = highlight_sleepers_color
Esp.Settings.OtherViewAngleColor = highlight_sleepers_color
Esp.Settings.OtherTracerColor = highlight_sleepers_color
Esp.Settings.OtherHeadCirclesColor = highlight_sleepers_color
end)

PlayerSettingsTab:AddToggle('TargetSleepers',{Text='sleeper check',Default=true}):OnChanged(function(Value)
Esp.Settings.TargetSleepers = Value
end)

PlayerSettingsTab:AddToggle('TeamCheck',{Text='team check',Default=false}):OnChanged(function(Value)
Esp.Settings.TeamCheck = Value
end)

PlayerSettingsTab:AddToggle('TextOutline',{Text='text outlines',Default=true}):OnChanged(function(Value)
Esp.Settings.TextOutline = Value
end)

PlayerSettingsTab:AddToggle('BoxesOutlines',{Text='box outlines',Default=true}):OnChanged(function(Value)
Esp.Settings.BoxesOutline = Value
end)

PlayerSettingsTab:AddSlider('TextSizeSlider', {Text = 'text size:', Default = 12, Min = 1, Max = 25, Rounding = 0, Suffix = "px", Compact = false}):OnChanged(function(TextSizeValue)
Esp.Settings.TextSize = TextSizeValue
CustomText.Size = TextSizeValue
end)

PlayerSettingsTab:AddDropdown('EspFont',{Values={"UI","System","Plex","Monospace"},Default=3,Multi=false,Text='font:'}):OnChanged(function(Value)
Esp.Settings.TextFont = Fonts[Value]
end)

--
local HitTabBox = Tabs.VisualsTab:AddRightTabbox('hit')
local HitTab = HitTabBox:AddTab('hit')

--* Hit *--

local hit = {
  EnabledHitmarker = false,
  HitMarkerColor = Color3.fromRGB(255, 255, 255),
  HitMarkerLifetime = 2,
  EnabledBulletTracer = false,
  BulletTracerColor = Color3.fromRGB(255, 255, 255),
  BulletTracerLifetime = 1.5,
}

local TracerType = {["Lightning Bolt"] = "rbxassetid://12781806168",["Lightning Bolt2"] = "rbxassetid://7151778302",["Laser"] = "rbxassetid://5864341017",["Red Laser"] = "rbxassetid://6333823534",["DNA"] = "rbxassetid://6511613786"}
local TracerSelected = "Lightning Bolt"
--
LPH_NO_VIRTUALIZE(function()
local Bypass; Bypass = hookfunction(game:GetService("Players").LocalPlayer:FindFirstChild("RemoteEvent").FireServer,function(self, ...)
local args = {...}
if hit.EnabledHitmarker == true then
  if args[1] == 10 and args[2] == "Hit" and args[5] then
    task.spawn(function()
    local HitPos = Vector3.new(0,0,0)
    if args[8] then HitPos = args[8] else HitPos = args[3] end
    if type(HitPos) == "vector" then
      local Vector, onScreen = Camera:WorldToViewportPoint(HitPos)
      local Finished = false
      local Line1 = Functions:Draw("Line",{Visible=onScreen,Thickness=1.5,Color=hit.HitMarkerColor,Transparency=1,From=Vector2.new(Vector.X-12,Vector.Y -12),To=Vector2.new(Vector.X-7,Vector.Y-7),})
      local Line2 = Functions:Draw("Line",{Visible=onScreen,Thickness=1.5,Color=hit.HitMarkerColor,Transparency=1,From=Vector2.new(Vector.X+12,Vector.Y-12),To=Vector2.new(Vector.X+7,Vector.Y-7),})
      local Line3 = Functions:Draw("Line",{Visible=onScreen,Thickness=1.5,Color=hit.HitMarkerColor,Transparency=1,From=Vector2.new(Vector.X-12,Vector.Y+12),To=Vector2.new(Vector.X-7,Vector.Y+7),})
      local Line4 = Functions:Draw("Line",{Visible=onScreen,Thickness=1.5,Color=hit.HitMarkerColor,Transparency=1,From=Vector2.new(Vector.X+12,Vector.Y+12),To=Vector2.new(Vector.X+7,Vector.Y+7),})
      local c; c = game:GetService("RunService").RenderStepped:Connect(function()
      if hit.EnabledHitmarker then
        if not Finished then
          local Vector, onScreen = workspace.CurrentCamera:WorldToViewportPoint(HitPos)
          Line1.Visible = onScreen;Line2.Visible = onScreen;Line3.Visible = onScreen;Line4.Visible = onScreen
          Line1.From = Vector2.new(Vector.X - 12, Vector.Y - 12);Line1.To = Vector2.new(Vector.X - 7, Vector.Y - 7)
          Line2.From = Vector2.new(Vector.X + 12, Vector.Y - 12);Line2.To = Vector2.new(Vector.X + 7, Vector.Y - 7)
          Line3.From = Vector2.new(Vector.X - 12, Vector.Y + 12);Line3.To = Vector2.new(Vector.X - 7, Vector.Y + 7)
          Line4.From = Vector2.new(Vector.X + 12, Vector.Y + 12);Line4.To = Vector2.new(Vector.X + 7, Vector.Y + 7)
        else
          c:Disconnect()
        end
      end
      end)
      local lines = {Line1, Line2, Line3, Line4}
      local duration = hit.HitMarkerLifetime
      local startTime = os.clock()
      while os.clock() - startTime < duration do
        local progress = (os.clock() - startTime) / duration
        for _, line in ipairs(lines) do
          line.Transparency = 1 - progress
        end
        wait()
      end
      Finished = true;Line1:Remove();Line2:Remove();Line3:Remove();Line4:Remove()
    end
    end)
  end
end
if hit.EnabledBulletTracer == true then
  if args[1] == 10 and args[2] == "Hit" and args[5] then
    task.spawn(function()
    local HitPos = Vector3.new(0,0,0)
    if args[8] then HitPos = args[8] else HitPos = args[3] end
    if type(HitPos) == "vector" then
      local Vector, onScreen = Camera:WorldToViewportPoint(HitPos)
      local Finished = false
      local Part = Instance.new("Part");Part.CanCollide = false;Part.Anchored = true;Part.Parent = workspace
      local Attachment = Instance.new("Attachment")
      Attachment.Position = CharcaterMiddle.Position;Attachment.Parent = Part;Attachment.Visible = false
      local Attachment2 = Instance.new("Attachment");Attachment2.Position = HitPos;Attachment2.Parent = Part;Attachment2.Visible = false
      local BulletLine = Instance.new("Beam")
      BulletLine.Enabled = onScreen
      BulletLine.Brightness = 10
      BulletLine.LightInfluence = 0.75
      BulletLine.LightEmission = 0.1
      BulletLine.Attachment0 = Attachment
      BulletLine.Attachment1 = Attachment2
      BulletLine.TextureLength = 4
      if TracerSelected == "Lightning Bolt" then
        BulletLine.Texture = "rbxassetid://12781806168"
      elseif TracerSelected == "Lightning Bolt2" then
        BulletLine.Texture = "rbxassetid://7151778302"
      elseif TracerSelected == "Laser" then
        BulletLine.Texture = "rbxassetid://5864341017"
      elseif TracerSelected == "Red Laser" then
        BulletLine.Texture = "rbxassetid://6333823534"
      elseif TracerSelected == "DNA" then
        BulletLine.Texture = "rbxassetid://6511613786"
      else
        BulletLine.Texture = "rbxassetid://12781806168"
      end
      BulletLine.TextureSpeed = 2
      BulletLine.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, hit.BulletTracerColor),ColorSequenceKeypoint.new(0.5, hit.BulletTracerColor),ColorSequenceKeypoint.new(1, hit.BulletTracerColor)}
      BulletLine.Transparency = NumberSequence.new(0)
      BulletLine.Parent = Part
      BulletLine.CurveSize0 = 0
      BulletLine.CurveSize1 = 0
      BulletLine.FaceCamera = false
      BulletLine.Segments = 10
      BulletLine.Width0 = 1
      BulletLine.Width1 = 1
      BulletLine.ZOffset = 0
      local c; c = game:GetService("RunService").RenderStepped:Connect(function()
      if hit.EnabledBulletTracer then
        if not Finished then
          local Vector, onScreen = workspace.CurrentCamera:WorldToViewportPoint(HitPos)
          BulletLine.Enabled = onScreen
        else
          c:Disconnect()
        end
      end
      end)
      if not Finished then
        wait(hit.BulletTracerLifetime)
        Finished = true
        Part:Destroy()
      end
    end
    end)
  end
end
return Bypass(self, unpack(args))
end)
end)()

HitTab:AddToggle('Bob1231a', {Text = 'bullet tracers', Default = false}):AddColorPicker("Trail_Colors2", {Default = Color3.fromRGB(255,255,255)}):OnChanged(function(BulletTracers)
hit.EnabledBulletTracer = BulletTracers
end)
Options.Trail_Colors2:OnChanged(function(Trail_Colors2)
hit.BulletTracerColor = Trail_Colors2
end)
HitTab:AddSlider('BulletLifetimeSlider', {Text = 'lifetime:',Suffix = "s",Default = hit.BulletTracerLifetime, Min = 1.5, Max = 5, Rounding = 1, Compact = false}):OnChanged(function(Value)
hit.BulletTracerLifetime = Value
end)
HitTab:AddDropdown('', { Values = {'Lightning Bolt','Lightning Bolt2','Laser', 'Red Laser', 'DNA'}, Default = 1, Multi = false, Text = 'bullet tracer type:' }):OnChanged(function(Value)
TracerSelected = Value
end)
--
HitTab:AddToggle('HitMarkers', {Text = 'hit markers', Default = false}):AddColorPicker("HitmarkerLifetime_Color", {Default = Color3.fromRGB(255,255,255)}):OnChanged(function(HitMarkers)
hit.EnabledHitmarker = HitMarkers
end)
Options.HitmarkerLifetime_Color:OnChanged(function(HitMarkerColors)
hit.HitMarkerColor = HitMarkerColors
end)
HitTab:AddSlider('HitMarkerLifetime', {Text = 'lifetime:',Suffix = "s",Default = hit.HitMarkerLifetime, Min = 2, Max = 5, Rounding = 1, Compact = false}):OnChanged(function(Value)
hit.HitMarkerLifetime = Value
end)

--
local VisualsTabBox = Tabs.VisualsTab:AddRightTabbox('crosshair')
local CrosshairXTab = VisualsTabBox:AddTab('crosshair')

--* Crosshair *--

local CrossHairX = Drawing.new("Circle"), Drawing.new("Circle")
--
CrossHairX.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
CrossHairX.Thickness = 1
CrossHairX.ZIndex = 3

do
  CrosshairXTab:AddToggle('zCrosshairX_Toggle', {Text = 'enabled', Default = false}):AddColorPicker("eCrosshairX_Color", {Default = Color3.fromRGB(208, 123, 255)}):OnChanged(function()
  CrossHairX.Visible = Toggles.zCrosshairX_Toggle.Value
  end)

  Options.eCrosshairX_Color:OnChanged(function()
  CrossHairX.Color = Options.eCrosshairX_Color.Value
  end)

  CrosshairXTab:AddToggle('Crosshair_Filled1', {Text = 'filled', Default = false}):OnChanged(function()
  CrossHairX.Filled = Toggles.Crosshair_Filled1.Value
  end)

  CrosshairXTab:AddSlider('Crosshair_Radius', {Text = 'size', Suffix = "°", Default = 2, Min = 0, Max = 100, Rounding = 0, Compact = true}):OnChanged(function(CrosshairXRadius)
  CrossHairX.Radius = CrosshairXRadius
  end)
end

--
local inventoryviewerTabBox = Tabs.VisualsTab:AddRightTabbox('inventory viewer')
local inventoryviewerTab = inventoryviewerTabBox:AddTab('inventory viewer')

--* inventory viewer *--

inventoryviewerTab:AddToggle('InventoryViewerToggle',{Text='inventory viewer',Default=false}):AddColorPicker('inventoryviewercolor',{Default=Color3.fromRGB(208,123,255),Title='Color'})
Options.inventoryviewercolor:OnChanged(function(ColorValue)
InventoryViewer.DrawingText2.Color = ColorValue
InventoryViewer.TopLine.Color = ColorValue
end)

--
local velocityBarTabBox = Tabs.VisualsTab:AddRightTabbox('velocity bar')
local velocityBarTab = velocityBarTabBox:AddTab('velocity bar')

--* velocity bar *--

local velocityThreshold = 22.2
local airTimeThreshold = 6.8
local timeInAir = 0
local airTimeToggle = false
local velocityToggle = false

local screenGui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
screenGui.IgnoreGuiInset = true
local airTimeFrame = Instance.new("Frame", screenGui)
airTimeFrame.Position = UDim2.new(0.35, 0, 0.052, 0)
airTimeFrame.Size = UDim2.new(0.3, 0, 0.006, 0)
airTimeFrame.BackgroundColor3 = Color3.new(0, 0, 0)
airTimeFrame.BackgroundTransparency = 0
airTimeFrame.BorderSizePixel = 0
airTimeFrame.Visible = false
local airTimeBar = Instance.new("Frame", airTimeFrame)
airTimeBar.Size = UDim2.new(0, 0, 0.25, 0)
airTimeBar.BorderSizePixel = 0
local velocityFrame = Instance.new("Frame", screenGui)
velocityFrame.Position = UDim2.new(0.35, 0, 0.03, 0)
velocityFrame.Size = UDim2.new(0.3, 0, 0.006, 0)
velocityFrame.BackgroundColor3 = Color3.new(0, 0, 0)
velocityFrame.BackgroundTransparency = 0
velocityFrame.BorderSizePixel = 0
velocityFrame.Visible = false
local velocityBar = Instance.new("Frame", velocityFrame)
velocityBar.Size = UDim2.new(0, 0, 0.25, 0)
velocityBar.BorderSizePixel = 0

velocityBarTab:AddToggle("", {Text = "fly bar",Default = false,}):OnChanged(function(state)
airTimeToggle = state
end)

velocityBarTab:AddToggle("", {Text = "velocity bar",Default = false,}):OnChanged(function(state)
velocityToggle = state
end)

local function updateBars(deltaTime)
  if workspace.Ignore.LocalCharacter.Bottom.VelocityOverride.MaxForce == Vector3.new(10000, 0, 10000) then
    timeInAir = timeInAir + deltaTime * 5.4
  else
    timeInAir = 0
  end
  if airTimeToggle then
    airTimeFrame.Visible = true
    local airTimeRatio = math.min(timeInAir / airTimeThreshold, 1)
    airTimeBar.Size = UDim2.new(airTimeRatio, 0, 1, 0)
    airTimeBar.BackgroundColor3 = Color3.fromHSV(0.33 * (1 - airTimeRatio), 1, 1)
  else
    airTimeFrame.Visible = false
  end
  if velocityToggle then
    velocityFrame.Visible = true
    local velocityMagnitude = CharcaterMiddle.Velocity.Magnitude
    local velocityRatio = math.min(velocityMagnitude / velocityThreshold, 1)
    velocityBar.Size = UDim2.new(velocityRatio, 0, 1, 0)
    velocityBar.BackgroundColor3 = Color3.fromHSV(0.33 * (1 - velocityRatio), 1, 1)
  else
    velocityFrame.Visible = false
  end
end
game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
pcall(updateBars, deltaTime)
end)

--
local CustomCharTabBox = Tabs.VisualsTab:AddRightTabbox('custom character')
local CustomCharTab = CustomCharTabBox:AddTab('custom character')

--* custom character *--

local function CreateCustomCharacter(Mesh, Texture, Size)
  local part = Instance.new("Part", workspace)
  part.CFrame = workspace.Ignore.FPSArms.HumanoidRootPart.CFrame
  part.CanCollide = false
  part.Name = "DeleteMeForNone"
  local mesh = Instance.new("SpecialMesh", part)
  mesh.MeshType = Enum.MeshType.FileMesh
  mesh.Scale = Size
  mesh.TextureId = "http://www.roblox.com/asset/?id=" .. Texture
  mesh.MeshId = "http://www.roblox.com/asset/?id=" .. Mesh
  local weld = Instance.new("Weld", mesh)
  weld.Part0 = workspace.Ignore.FPSArms.HumanoidRootPart
  weld.Part1 = part
end

local CharacterType = "AmongUs"
local CustomCharacter = false
local function UpdateCharacter()
  for _, child in pairs(workspace:GetChildren()) do
    if child.Name == "DeleteMeForNone" then
      child:Destroy()
    end
  end
  if not CustomCharacter then
    return
  end

  local characterData = {AmongUs = { Mesh = 6686375902, Texture = 6686375937, Size = Vector3.new(0.16, 0.16, 0.16) },BuilderMan = { Mesh = 2711196756, Texture = 2711196829, Size = Vector3.new(1.2, 1.2, 1.2) },Minion = { Mesh = 12009037504, Texture = 12009037612, Size = Vector3.new(5, 4, 5) },LegoCloneTrooper = { Mesh = 9903790031, Texture = 9903790118, Size = Vector3.new(0.16, 0.16, 0.16) },AnimeGirl = { Mesh = 752599066, Texture = 752599541, Size = Vector3.new(0.7, 0.7, 0.7) }}
  local character = characterData[CharacterType]
  if character then
    CreateCustomCharacter(character.Mesh, character.Texture, character.Size)
  end
end
local function ToggleCustomCharacter(value)
  CustomCharacter = value
  UpdateCharacter()
end
local function ChangeCharacterType(value)
  CharacterType = value
  UpdateCharacter()
end

CustomCharTab:AddToggle('CustomCharacter', { Text = 'enabled', Default = false }):OnChanged(ToggleCustomCharacter)
CustomCharTab:AddDropdown('Character', { Values = { 'AmongUs', 'BuilderMan', 'Minion', 'LegoCloneTrooper', 'AnimeGirl' }, Default = 1, Multi = false, Text = 'type:' }):OnChanged(ChangeCharacterType)

-------------------------------------------------------------------------------------------------
--// Miscellaneous \\--

--
local ExploitsTabBox = Tabs.MiscellaneousTab:AddRightTabbox('exploits')
local ExploitsTab = ExploitsTabBox:AddTab('exploits')

--* Exploits *--

local NoSlowDown = false
local old = getrenv()._G.modules.Character.SetSprintBlocked
ExploitsTab:AddToggle('NOSLOWDOWN',{Text='no slowdown',Default=false}):OnChanged(function(Value)
NoSlowDown = Value
getrenv()._G.modules.Character.SetSprintBlocked = function(...)
local args = {...}
if NoSlowDown then
  args[1] = false
  return old(unpack(args))
end
return old(...)
end
end)

local JumpShoot = false
ExploitsTab:AddToggle('JumpShoot',{Text='jump shoot',Default=false}):OnChanged(function(Value)
JumpShoot = Value
end)

local NoSway = false
ExploitsTab:AddToggle('NoSway',{Text='no sway',Default=false}):OnChanged(function(Value)
NoSway = Value
end)

ExploitsTab:AddToggle('sussycrouching', {Text = "instant crouch",Default = false,Tooltip = "Crouch Way Faster",}):OnChanged(function(QuickCrouch1)
if QuickCrouch1 == true then
game:GetService("Workspace").Ignore.LocalCharacter.Top.CrouchForce.Stiffness = 10000
else
game:GetService("Workspace").Ignore.LocalCharacter.Top.CrouchForce.Stiffness = 100
end
end)

local deleteWallsEnabled = false
ExploitsTab:AddToggle('', {Text = "delete walls",Default = false,Tooltip = "Left Click / Mouse Button 2 (MB2)",}):AddKeyPicker('', {Default='MB2',SyncToggleState=true,Mode='Toggle',Text='Delete Walls',NoUI=true}):OnChanged(function(value)
deleteWallsEnabled = value
end)
local Mouse = game.Players.LocalPlayer:GetMouse()
Mouse.Button1Down:connect(function()
if deleteWallsEnabled then
if not Mouse.Target then
  return
end
local targetName = Mouse.Target.Name
local allowedNames = {"Hitbox", "LeftWall", "RightWall", "LeftHinge", "Prim", "RightHinge"}
for _, name in ipairs(allowedNames) do
  if targetName == name then
    Mouse.Target:Destroy()
    break
  end
end
end
end)

ExploitsTab:AddToggle('', {Text = "jump crouch",Default = false,}):AddKeyPicker('JumpCrouchKey', {Default='Q',SyncToggleState=true,Mode='Toggle',Text='Jump Crouch',NoUI=false})
local stoprun = false
task.spawn(function()
while true do
local state = Options.JumpCrouchKey:GetState()
if state then
  keypress(0x57)
  keypress(0x10)
  wait(0.05)
  keypress(0x43)
  keypress(0x20)
  keyrelease(0x20)
  wait(0.5)
  keyrelease(0x43)
  wait(1)
end
if Library.Unloaded then break end
wait()
end
end)
task.spawn(function()
while task.wait() do
local state = Options.JumpCrouchKey:GetState()
if not state then
  if stoprun then
    keyrelease(0x57)
    keyrelease(0x10)
    stoprun = false
  end
else
  stoprun = true
end
end
end)

ExploitsTab:AddToggle('',{Text='freeze',Default=false}):AddKeyPicker('', {Default='Non',SyncToggleState=true,Mode='Toggle',Text='freeze',NoUI=true}):OnChanged(function(Value)
if Value then
CharcaterMiddle.Anchored = true
else
CharcaterMiddle.Anchored = false
end
end)

local longneck = {
LongNeckEnabled = false,
UpperLimitDefault = 3,
LowerLimitDefault = 1.75,
CurrentSliderValue = 1.75,
}

ExploitsTab:AddToggle('LongNeck', {Text = 'long neck', Default = false, Tooltip}):AddKeyPicker('LongNeckKey', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'Long Neck', NoUI = false}):OnChanged(function(value)
longneck.LongNeckEnabled = value
if not longneck.LongNeckEnabled then
game:GetService("Workspace").Ignore.LocalCharacter.Bottom.PrismaticConstraint.UpperLimit = longneck.UpperLimitDefault
game:GetService("Workspace").Ignore.LocalCharacter.Bottom.PrismaticConstraint.LowerLimit = longneck.LowerLimitDefault
else
game:GetService("Workspace").Ignore.LocalCharacter.Bottom.PrismaticConstraint.UpperLimit = longneck.CurrentSliderValue
game:GetService("Workspace").Ignore.LocalCharacter.Bottom.PrismaticConstraint.LowerLimit = longneck.CurrentSliderValue
end
end)

ExploitsTab:AddSlider('HeightChangerSlider', {Text = 'height:', Suffix = "m", Default = 4.25, Min = 3.75, Max = 7.5, Rounding = 2, Compact = false}):OnChanged(function(Value)
longneck.CurrentSliderValue = Value
if longneck.LongNeckEnabled then
game:GetService("Workspace").Ignore.LocalCharacter.Bottom.PrismaticConstraint.LowerLimit = Value
game:GetService("Workspace").Ignore.LocalCharacter.Bottom.PrismaticConstraint.UpperLimit = Value
end
end)

--
local CustomHitsoundsTabBox = Tabs.MiscellaneousTab:AddLeftTabbox('custom hitsounds')
local PlayerHitsoundsTab = CustomHitsoundsTabBox:AddTab('custom hitsounds')

--* Player Hitsounds *--

SoundService.PlayerHitHeadshot.Volume = 5
SoundService.PlayerHitHeadshot.Pitch = 1
SoundService.PlayerHitHeadshot.EqualizerSoundEffect.HighGain = -1.5
local sounds = {["Defualt Headshot"] = "rbxassetid://9119561046",["Defualt Body"] = "rbxassetid://9114487369",Neverlose = "rbxassetid://8726881116",Gamesense = "rbxassetid://4817809188",One = "rbxassetid://7380502345",Bell = "rbxassetid://6534947240",Rust = "rbxassetid://1255040462",TF2 = "rbxassetid://2868331684",Slime = "rbxassetid://6916371803",["Among Us"] = "rbxassetid://5700183626",Minecraft = "rbxassetid://4018616850",["CS:GO"] = "rbxassetid://6937353691",Saber = "rbxassetid://8415678813",Baimware = "rbxassetid://3124331820",Osu = "rbxassetid://7149255551",["TF2 Critical"] = "rbxassetid://296102734",Bat = "rbxassetid://3333907347",["Call of Duty"] = "rbxassetid://5952120301",Bubble = "rbxassetid://6534947588",Pick = "rbxassetid://1347140027",Pop = "rbxassetid://198598793",Bruh = "rbxassetid://4275842574",Bamboo = "rbxassetid://3769434519",Crowbar = "rbxassetid://546410481",Weeb = "rbxassetid://6442965016",Beep = "rbxassetid://8177256015",Bambi = "rbxassetid://8437203821",Stone = "rbxassetid://3581383408",["Old Fatality"] = "rbxassetid://6607142036",Click = "rbxassetid://8053704437",Ding = "rbxassetid://7149516994",Snow = "rbxassetid://6455527632",Laser = "rbxassetid://7837461331",Mario = "rbxassetid://2815207981",Steve = "rbxassetid://4965083997"}

PlayerHitsoundsTab:AddToggle('Enabled_Toggle1', {Text = 'enabled', Default = false})
PlayerHitsoundsTab:AddDropdown('HeadshotHit', {Values = { 'Defualt Headshot','Neverlose','Gamesense','One','Bell','Rust','TF2','Slime','Among Us','Minecraft','CS:GO','Saber','Baimware','Osu','TF2 Critical','Bat','Call of Duty','Bubble','Pick','Pop','Bruh','Bamboo','Crowbar','Weeb','Beep','Bambi','Stone','Old Fatality','Click','Ding','Snow','Laser','Mario','Steve','Snowdrake' },Default = 1, Multi = false, Text = 'Head Hitsound:'})
Options.HeadshotHit:OnChanged(function()
local soundId = sounds[Options.HeadshotHit.Value]
game:GetService("SoundService").PlayerHitHeadshot.SoundId = soundId
game:GetService("SoundService").PlayerHitHeadshot.Playing = true
end)

PlayerHitsoundsTab:AddSlider('Volume_Slider', {Text = 'volume', Default = 5, Min = 0, Max = 10, Rounding = 0, Compact = true,}):OnChanged(function(vol)
SoundService.PlayerHitHeadshot.Volume = vol
end)

PlayerHitsoundsTab:AddSlider('Pitch_Slider', {Text = 'pitch', Default = 1, Min = 0, Max = 2, Rounding = 2, Compact = true,}):OnChanged(function(pich)
SoundService.PlayerHitHeadshot.Pitch = pich
end)

PlayerHitsoundsTab:AddInput('HeadShotHitAssetID', {Default = "rbxassetid://9119561046",Numeric = false,Finished = true,Text = 'custom sound:',Placeholder = "rbxassetid://9119561046",}):OnChanged(function(CustomSoundID)
SoundService.PlayerHitHeadshot.SoundId = CustomSoundID
end)
--

PlayerHitsoundsTab:AddToggle('Enabled_Toggle2', {Text = 'enabled', Default = false})
PlayerHitsoundsTab:AddDropdown('Hit', {Values = { 'Defualt Body','Neverlose','Gamesense','One','Bell','Rust','TF2','Slime','Among Us','Minecraft','CS:GO','Saber','Baimware','Osu','TF2 Critical','Bat','Call of Duty','Bubble','Pick','Pop','Bruh','Bamboo','Crowbar','Weeb','Beep','Bambi','Stone','Old Fatality','Click','Ding','Snow','Laser','Mario','Steve','Snowdrake' },Default = 1, Multi = false, Text = 'Body Hitsound:'})
Options.Hit:OnChanged(function()
local soundId = sounds[Options.Hit.Value]
game:GetService("SoundService").PlayerHit2.SoundId = soundId
game:GetService("SoundService").PlayerHit2.Playing = true
end)

PlayerHitsoundsTab:AddSlider('Volume_Slider', {Text = 'volume', Default = 5, Min = 0, Max = 10, Rounding = 0, Compact = true,}):OnChanged(function(vole)
SoundService.PlayerHit2.Volume = vole
end)

PlayerHitsoundsTab:AddSlider('Pitch_Slider', {Text = 'pitch', Default = 1, Min = 0, Max = 2, Rounding = 2, Compact = true,}):OnChanged(function(piche)
SoundService.PlayerHit2.Pitch = piche
end)

PlayerHitsoundsTab:AddInput('PlayerHitAssetID', {Default = "rbxassetid://9114487369",Numeric = false,Finished = true,Text = 'custom sound:',Placeholder = "rbxassetid://9114487369",}):OnChanged(function(CustomSoundID)
SoundService.PlayerHit2.SoundId = CustomSoundID
end)

--
local XrayTabBox = Tabs.MiscellaneousTab:AddRightTabbox('xray')
local XrayTab = XrayTabBox:AddTab('xray')

--* X-Ray *--

local XRayEnabled = false
local CurrentSliderValue = 50
XrayTab:AddToggle('Xray', {Text = 'enabled', Default = false, Tooltip}):AddKeyPicker('XRayKey', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'X-Ray', NoUI = true}):OnChanged(function(value)
XRayEnabled = value
if XRayEnabled then
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
  if v:FindFirstChild("Hitbox") then
    v.Hitbox.Transparency = CurrentSliderValue
  end
end
else
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
  if v:FindFirstChild("Hitbox") then
    v.Hitbox.Transparency = 0
  end
end
end
end)

XrayTab:AddSlider('XrayChangerSlider', {Text = 'transparency:', Suffix = "%", Default = 50, Min = 0, Max = 100, Rounding = 0, Compact = false}):OnChanged(function(Value)
CurrentSliderValue = Value / 100
if XRayEnabled then
CurrentSliderValue = Value / 100
end
end)

--
local ComExtraTabBox = Tabs.MiscellaneousTab:AddLeftTabbox('extra')
local ComExtraTab = ComExtraTabBox:AddTab('extra')

--* Extra *--

ComExtraTab:AddToggle('GameCrosshair_Value', {Text = 'remove in-game crosshair', Default = false}):AddColorPicker("GameCrosshair_Color", {Default = Color3.fromRGB(255,255,255)}):OnChanged(function(GameCrosshair)
if GameCrosshair == true then
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Crosshair.Visible = false
elseif GameCrosshair == false then
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Crosshair.Visible = true
end
end)

Options.GameCrosshair_Color:OnChanged(function(CrosshairColor_Value)
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Crosshair.BackgroundColor3 = CrosshairColor_Value
end)

ComExtraTab:AddToggle('BloodSplatter', {Text = 'remove blood', Default = false}):OnChanged(function(BloodSplatter_Toggle)
if BloodSplatter_Toggle == false then
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.BloodSplatter.Visible = true
elseif BloodSplatter_Toggle == true then
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.BloodSplatter.Visible = false
end
end)

ComExtraTab:AddLabel('loot all'):AddKeyPicker('gakb', { Default = 'F', SyncToggleState = false, Mode = 'Toggle', Text = 'loot all', NoUI = true })
Options.gakb:OnClick(function()
for i = 1, 20 do
wait(0.03)
local ohNumber1 = 12
local ohNumber2 = i
local ohBoolean3 = true
game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
end
end)

ComExtraTab:AddLabel('deposit all'):AddKeyPicker('gazkb', { Default = 'Non', SyncToggleState = false, Mode = 'Toggle', Text = 'deposit all', NoUI = true })
Options.gazkb:OnClick(function()
for i = 1, 20 do
wait(0.03)
local ohNumber1 = 12
local ohNumber2 = i
local ohBoolean3 = false
game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
end
end)

-------------------------------------------------------------------------------------------------
--// Local \\--

--
local FieldOfViewTabBox = Tabs.LocalTab:AddLeftTabbox('field of view')
local FieldOfViewTab = FieldOfViewTabBox:AddTab('field of view')

--* Field Of View *--

local fieldofview = {
FieldOfViewEnabled = false,
FieldOfViewValue = 70,
CurrentSliderValue3 = 70,
}

local function updateFieldOfView()
local fovFunc = nil
LPH_NO_VIRTUALIZE(function()
for i, v in pairs(getreg()) do
  if type(v) == "function" and getfenv(v).script.Name == "Camera" and #getupvalues(v) >= 18 then
    fovFunc = v
  end
end
end)()
if fovFunc then
  setupvalue(fovFunc, 18, fieldofview.FieldOfViewValue)
end
end
game:GetService("RunService").RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
if fieldofview.FieldOfViewEnabled then
updateFieldOfView()
end
end))

FieldOfViewTab:AddToggle('FieldOfView', { Text = 'enabled', Default = false }):AddKeyPicker('fieldofviewkey', { Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'field of view', NoUI = true }):OnChanged(function(value)
fieldofview.FieldOfViewEnabled = value
if not fieldofview.FieldOfViewEnabled then
fieldofview.FieldOfViewValue = 70
else
fieldofview.FieldOfViewValue = fieldofview.CurrentSliderValue3
end
end)

FieldOfViewTab:AddSlider('FieldOfViewSlider', { Text = 'field of view:', Suffix = "x", Default = 70, Min = 30, Max = 120, Rounding = 0, Compact = false }):OnChanged(function(sliderValue)
fieldofview.CurrentSliderValue3 = sliderValue
if fieldofview.FieldOfViewEnabled then
fieldofview.FieldOfViewValue = sliderValue
updateFieldOfView()
end
end)

--
local CustomViewmodelTabBox = Tabs.LocalTab:AddLeftTabbox('custom viewmodel')
local CustomViewmodelTab = CustomViewmodelTabBox:AddTab('custom viewmodel')

--* Custom Viewmodel *--

local ViewmodelEnabled = false
local ViewmodelPos = Vector3.new(0, 0, 0)
LPH_NO_VIRTUALIZE(function()
local newindex
newindex = hookmetamethod(game, '__newindex', function(obj, idx, val)
if obj == workspace.CurrentCamera and idx == 'CFrame' and ViewmodelEnabled then
val = val + (val.LookVector * ViewmodelPos.Z) + (val.RightVector * ViewmodelPos.X) + (val.UpVector * ViewmodelPos.Y)
end
return newindex(obj, idx, val)
end)
end)()

CustomViewmodelTab:AddToggle('ViewmodelEnabled', {Text = 'enabled', Default = ViewmodelEnabled}):OnChanged(function(Toggle)
ViewmodelEnabled = Toggle
end)

CustomViewmodelTab:AddSlider('ViewmodelX', {Text = 'x-offset:', Default = 0, Min = -5, Max = 5, Rounding = 2, Compact = false}):OnChanged(function(Slider)
ViewmodelPos = Vector3.new(Slider, ViewmodelPos.Y, ViewmodelPos.Z)
end)

CustomViewmodelTab:AddSlider('ViewmodelY', {Text = 'y-offset:', Default = 0, Min = -5, Max = 5, Rounding = 2, Compact = false}):OnChanged(function(Slider)
ViewmodelPos = Vector3.new(ViewmodelPos.X, Slider, ViewmodelPos.Z)
end)

CustomViewmodelTab:AddSlider('ViewmodelZ', {Text = 'z-offset:', Default = 0, Min = -5, Max = 5, Rounding = 2, Compact = false}):OnChanged(function(Slider)
ViewmodelPos = Vector3.new(ViewmodelPos.X, ViewmodelPos.Y, Slider)
end)

--
local ArmVisTabBox = Tabs.LocalTab:AddLeftTabbox('arm visuals')
local ArmVisTab = ArmVisTabBox:AddTab('local chams')

--* Local Chams *--

local Misc2 = {
Settings = {
  LocalChams = false,
  LocalChamsColor = Color3.fromRGB(80, 77, 56),
  LocalChamsMaterial = "SmoothPlastic"
}
}

local DeafultArm = {}
for i,v in pairs(game:GetService("Workspace").Ignore.FPSArms:GetChildren()) do
if v:IsA("MeshPart") then
  DeafultArm[v] = {Color=v.Color,Material=v.Material}
end
end
function Functions:ArmChams()
if Misc2.Settings.LocalChams == true then
  for i,v in pairs(game:GetService("Workspace").Ignore.FPSArms:GetChildren()) do
    if v.ClassName == "MeshPart" then
      v.Color=Misc2.Settings.LocalChamsColor
      v.Material=Enum.Material[Misc2.Settings.LocalChamsMaterial]
    end
  end
else
  for i,v in pairs(DeafultArm) do
    i.Color=v.Color;i.Material=v.Material
  end
end
end
for i,v in pairs(game:GetService("Workspace").Ignore.FPSArms:GetChildren()) do
v.Changed:Connect(function(Change)
if Change ~= "CFrame" then
  if Misc2.Settings.LocalChams == true then
    v.Color=Misc2.Settings.LocalChamsColor
    v.Material=Enum.Material[Misc2.Settings.LocalChamsMaterial]
  else
    for i,v in pairs(DeafultArm) do
      i.Color=v.Color;i.Material=v.Material
    end
  end
end
end)
end
game:GetService("Workspace").Ignore.FPSArms.Changed:Connect(function()
Functions:ArmChams()
end)

ArmVisTab:AddToggle('ArmChams',{Text='enabled',Default=false}):AddColorPicker('ArmChamsColor',{Default=Color3.fromRGB(208,123,255),Title='Color'})
Toggles.ArmChams:OnChanged(function(Value)
Misc2.Settings.LocalChams = Value
Functions:ArmChams()
end)
Options.ArmChamsColor:OnChanged(function(Value)
Misc2.Settings.LocalChamsColor = Value
end)

ArmVisTab:AddDropdown('ArmChamsMaterial',{Values={"ForceField","Neon","Ice","Glass"},Default=1,Multi=false,Text='arm material:'})
Options.ArmChamsMaterial:OnChanged(function(Value)
Misc2.Settings.LocalChamsMaterial = Value
end)

ArmVisTab:AddInput('', {Default = '', Numeric = false, Finished = true, Text = 'Texture ID:', Placeholder = 'rbxassetid://...'}):OnChanged(function(TextureID)
game:GetService("Workspace").Ignore.FPSArms.LeftUpperArm.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.LeftLowerArm.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.LeftHand.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.RightUpperArm.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.RightLowerArm.TextureID = TextureID
game:GetService("Workspace").Ignore.FPSArms.RightHand.TextureID = TextureID
end)

--
local SkinChangerTabBox = Tabs.LocalTab:AddRightTabbox('skinbox')
local SkinChangerTab = SkinChangerTabBox:AddTab('skinbox')

--* Skinbox *--

local SkinChoice = "Galaxy"
local SkinsEnabled = false

function CheckSkins()
local tbl = {}
for i, v in pairs(game:GetService("ReplicatedStorage").ItemSkins:GetChildren()) do
  table.insert(tbl, v.Name)
end
return tbl
end
function SetCammo(SkinName)
if not require(game:GetService("ReplicatedStorage").ItemConfigs[getrenv()._G.modules.FPS.GetEquippedItem().id]).HandModel then
  return
end
local GunName = require(game:GetService("ReplicatedStorage").ItemConfigs[getrenv()._G.modules.FPS.GetEquippedItem().id]).HandModel
if table.find(CheckSkins(), GunName) then
  local SkinFolder = game:GetService("ReplicatedStorage").ItemSkins[GunName]
  local AnimationModule = require(SkinFolder:FindFirstChild("AnimatedSkinPrefab"))
  if SkinName == "Lightning" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://6555500992", 1, 0.3)
  elseif SkinName == "Galaxy" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://9305457875", 1, 0.3)
  elseif SkinName == "Swirl" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://13199296652", 1, 0.3)
  elseif SkinName == "Wavey" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://13898657945", 1, 0.3)
  elseif SkinName == "RedGalaxy" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://1619172543", 1, 0.3)
  elseif SkinName == "Marble" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://8904067198", 1, 0.01)
  elseif SkinName == "Lava" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://7077560268", 1, 0.3)
  elseif SkinName == "Blackout" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://5847588525", 1, 0.3)
  elseif SkinName == "Snake" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://7457460026", 1, 0.3)
  elseif SkinName == "Banana" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://338693178", 2, 0.3)
  elseif SkinName == "Death" then
    AnimationModule.ApplyToModel(workspace.Ignore.FPSArms.HandModel, "rbxassetid://11896030190", 1, 0.3)
  end
end
end
game:GetService("Workspace").Ignore.FPSArms.ChildAdded:Connect(function()
if game:GetService("Workspace").Ignore.FPSArms:WaitForChild("HandModel") and SkinsEnabled == true then
SetCammo(SkinChoice)
end
end)

SkinChangerTab:AddToggle('SkinsEnabled', {Text = 'enabled', Default = false}):OnChanged(function(value)
SkinsEnabled = value
end)
SkinChangerTab:AddDropdown('SkinChoice', {Values = {"Lightning", "Galaxy", "Swirl", "Wavey", "RedGalaxy", "Marble", "Lava", "Blackout", "Snake", "Banana", "Death"}, Default = 1, Multi = false, Text = 'custom skins:'}):OnChanged(function(value)
SkinChoice = value
end)

--
local TrashTalkTabBox = Tabs.LocalTab:AddRightTabbox('trash talk')
local TrashTalkTab = TrashTalkTabBox:AddTab('trash talk')

--* Trash Talk *--

local Trashtalk = false
local Chats = {
["velocity.cc"] = {"start winning with velocity.cc today", "get good, get velocity.cc", "if only you had velocity.cc smh", "velocity.cc, the only way to win", "ur kills would be better if u bought velocity.cc", "velocity.cc owns you", "start beaming get velocity.cc", "beamed u kid u should of had velocity.cc", "this is why u should buy velocity.cc", "stop dying on the job go get velocity.cc"};
}

local _Network = getrenv()._G.modules.Network
local _SendCodes = getrenv()._G.modules.Network.SendCodes
game:GetService("LogService").MessageOut:Connect(function(message)
local extractedName = message:match("->([%w_]+)")
local initialHealth, finalHealth = message:match("(%-?%d+%.?%d*)%D*->(%-?%d+%.?%d*)hp")
local studsValue = message:match("(%d+%.?%d*)s")
if Trashtalk and extractedName and initialHealth and finalHealth and studsValue and extractedName ~= game.Players.LocalPlayer.Name then
if Trashtalk and tonumber(finalHealth) <= 0 then
  _Network.Send(_SendCodes.SEND_CHAT_MESSAGE, extractedName .. " killed from " .. studsValue .. "m, " .. Chats["velocity.cc"][math.random(1, #Chats["velocity.cc"])] .. " [.gg/velocitycc]", "Global")
end
end
end)

local enabledspamchat = false
local chatSpammerText = ""
local WaitTime = 3
local function spamChat()
local args = {[1] = 27, [2] = chatSpammerText, [3] = "Global"}
while enabledspamchat do
  game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
  wait(WaitTime)
end
end

TrashTalkTab:AddToggle('Enabled_Toggle1', {Text = 'enabled', Default = false}):OnChanged(function(value)
Trashtalk = value
enabledspamchat = value
end)

TrashTalkTab:AddDropdown('', {Values = { 'None','Trash Talk', 'Chat Spammer' }, Default = 1, Multi = false, Text = 'type:'}):OnChanged(function(bool2)
if bool2 == "None" then
Trashtalk = false
enabledspamchat = false
elseif bool2 == "Trash Talk" then
Trashtalk = true
elseif bool2 == "Chat Spammer" then
spamChat()
end
end)

TrashTalkTab:AddSlider('SpamChatSpeed', {Text = 'speed:',Suffix = "s", Default = 3, Min = 1, Max = 10, Rounding = 0, Compact = false,}):OnChanged(function(SpamChatSpeedValue)
WaitTime = SpamChatSpeedValue
end)

TrashTalkTab:AddInput('ChatSpammer', {Default = "If you cant beat them join them [.gg/velocitycc] on top!", Numeric = false, Finished = true, Text = 'chat spammer:', Placeholder = "Chat Spam Custom Text [HERE]"}):OnChanged(function(value)
chatSpammerText = value
end)

--
local HudTabBox = Tabs.LocalTab:AddRightTabbox('hud')
local HudTab = HudTabBox:AddTab('hud')

--* Hud *--

HudTab:AddToggle('AWASZnfh', {Text = "remove server info",Default = false,Tooltip = "Hides Server Info",}):OnChanged(function(Chillax1)
if Chillax1 == true then
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerInfo.Visible = false
elseif Chillax1 == false then
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerInfo.Visible = true
end
end)

HudTab:AddToggle('AWAaSZasanfh', {Text = "remove server status",Default = false,Tooltip = "Hides Server Status",}):OnChanged(function(Chillax2)
if Chillax2 == true then
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerStatus.Visible = false
elseif Chillax2 == false then
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerStatus.Visible = true
end
end)

HudTab:AddToggle('GnAf', {Text = "chat visible",Default = true,Tooltip = "Hides chat )",}):OnChanged(function(HideChat)
for I,V in pairs(getgc(true)) do
if type(V) == "function" then
  if debug.getinfo(V).name == "SetChatVisible" then
    V(HideChat)
  end
end
end
end)

HudTab:AddLabel('custom inventory:'):AddColorPicker('Inventory_Color', { Default = Color3.fromRGB(80,80,80)})
Options.Inventory_Color:OnChanged(function(Inventory_Color_Value)
local hotbar = game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter
for i = 26, 29 do
hotbar.Armor["ItemSlot" .. i].BackgroundColor3 = Inventory_Color_Value
end
for i = 6, 25 do
hotbar.Inventory["ItemSlot" .. i].BackgroundColor3 = Inventory_Color_Value
end
end)

HudTab:AddLabel('energy:'):AddColorPicker('Energy_Color_Value', { Default = Color3.fromRGB(197,187,40)})
Options.Energy_Color_Value:OnChanged(function(Energy_Color_Value)
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.EnergyFrame.Energy.BackgroundColor3 = Energy_Color_Value
end)

HudTab:AddLabel('health:'):AddColorPicker('Health_Color_Value', { Default = Color3.fromRGB(78,153,74)})
Options.Health_Color_Value:OnChanged(function(Health_Color_Value)
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.HealthFrame.Health.BackgroundColor3 = Health_Color_Value
end)

HudTab:AddLabel('ammo:'):AddColorPicker('Ammo_Color_Value', { Default = Color3.fromRGB(255,255,255)})
Options.Ammo_Color_Value:OnChanged(function(Ammo_Color_Value)
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Ammo.TextColor3 = Ammo_Color_Value
end)

HudTab:AddSlider('Vitals_Transparency', {Text = 'vitals transparency', Suffix = "%", Default = 10, Min = 0, Max = 100, Rounding = 0, Compact = true}):OnChanged(function(VitalsTransparency)
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.EnergyFrame.Energy.BackgroundTransparency = VitalsTransparency / 100
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.HealthFrame.Health.BackgroundTransparency = VitalsTransparency / 100
end)

HudTab:AddSlider('Background_Transparency', {Text = 'inventory transparency', Suffix = "%", Default = 70, Min = 0, Max = 100, Rounding = 0, Compact = true}):OnChanged(function(InventoryTransparency)
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.BackgroundTransparency = InventoryTransparency / 100
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Hotbar.BackgroundTransparency = InventoryTransparency / 100
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Armor.BackgroundTransparency = InventoryTransparency / 100
end)

--
local GravityTabBox = Tabs.LocalTab:AddLeftTabbox('gravity')
local GravityTab = GravityTabBox:AddTab('gravity')

--* Gravity *--

local GravityEnabled = false
local defaultGravity = 75
local CurrentSliderValue2 = 75

GravityTab:AddToggle('Gravity', {Text = 'enabled', Default = false, Tooltip}):AddKeyPicker('GravityKey', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'Gravity', NoUI = true}):OnChanged(function(value)
GravityEnabled = value
if not GravityEnabled then
sethiddenproperty(game:GetService("Workspace"), "Gravity", defaultGravity)
else
sethiddenproperty(game:GetService("Workspace"), "Gravity", CurrentSliderValue2)
end
end)

GravityTab:AddSlider('GravityChangerSlider', {Text = 'gravity:', Suffix = "x", Default = defaultGravity, Min = 65, Max = 100, Rounding = 0, Compact = false}):OnChanged(function(Value)
CurrentSliderValue2 = Value
if GravityEnabled then
sethiddenproperty(game:GetService("Workspace"), "Gravity", Value)
end
end)

-------------------------------------------------------------------------------------------------
--// World \\--

--
local CustomSkyTabBox = Tabs.WorldTab:AddLeftTabbox('lighting')
local CustomSkyTab = CustomSkyTabBox:AddTab('lighting')

--* Lighting *--

local LightingEnabled = nil
CustomSkyTab:AddToggle('AWASZnfh', {Text = "enabled",Default = false,Tooltip = "Enables SkyTab",}):OnChanged(function(EnabledLighting)
LightingEnabled = EnabledLighting
end)

local GCEN = Color3.fromRGB(95, 100, 49)
local GRCEND = false
CustomSkyTab:AddToggle('CLRG', {Text = 'grass color', Default = false, Tooltip = "Off/On"}):AddColorPicker('ColorGrass', {Default = GCEN, Title = 'Changer Color Grass'})
Toggles.CLRG:OnChanged(function(T)
GRCEND = T
game:GetService("Workspace").Terrain:SetMaterialColor(Enum.Material.Grass, T and GCEN or Color3.fromRGB(95, 100, 49))
end)
Options.ColorGrass:OnChanged(function(Grass1)
if GRCEND then
GCEN = Grass1
game:GetService("Workspace").Terrain:SetMaterialColor(Enum.Material.Grass, Grass1)
end
end)

local CloudsColor = Color3.fromRGB(255, 255, 255)
local EnableCustomColor = false
CustomSkyTab:AddToggle('CLRG1', {Text = 'clouds color', Default = EnableCustomColor, Tooltip = "Off/On"}):AddColorPicker('ColorGrass1', {Default = CloudsColor, Title = 'Change Clouds Color'})
Toggles.CLRG1:OnChanged(function(T)
EnableCustomColor = T
game:GetService("Workspace").Terrain.Clouds.Color = T and CloudsColor or Color3.fromRGB(255, 255, 255)
end)
Options.ColorGrass1:OnChanged(function(NewColor)
if LightingEnabled and EnableCustomColor then
CloudsColor = NewColor
game:GetService("Workspace").Terrain.Clouds.Color = NewColor
end
end)

local Lighting = game:GetService("Lighting")
local ColorCorrection = Lighting:FindFirstChild("ColorCorrection")
if not ColorCorrection then
ColorCorrection = Instance.new("ColorCorrectionEffect")
ColorCorrection.Name = "ColorCorrection"
ColorCorrection.Parent = Lighting
end
CustomSkyTab:AddToggle('CLRG1', {Text = 'ambient', Default = EnableCustomColor, Tooltip = "Off/On"}):AddColorPicker('ColorAmbient1', {Default = Color3.fromRGB(255, 255, 255), Title = 'Change Ambient Color'})
Options.ColorAmbient1:OnChanged(function(NewColor2)
if LightingEnabled then
sethiddenproperty(ColorCorrection, "TintColor", NewColor2)
end
end)
CustomSkyTab:AddSlider('Exposure_sUS', {Text = 'exposure:', Suffix = "%", Default = 0, Min = -5, Max = 5, Rounding = 1, Compact = false}):OnChanged(function(ExposureValue)
if LightingEnabled and sethiddenproperty(game:GetService("Lighting"), "ExposureCompensation", ExposureValue) then
end
end)
CustomSkyTab:AddSlider('Saturation_sUS', {Text = 'saturation:',Suffix = "%",Default = 0,Min = -5,Max = 5,Rounding = 1,Compact = false}):OnChanged(function(SaturationValue)
if LightingEnabled and sethiddenproperty(ColorCorrection, "Saturation", SaturationValue) then
end
end)

--
local EnviromentTabBox = Tabs.WorldTab:AddRightTabbox('enviroment')
local EnviromentTab = EnviromentTabBox:AddTab('enviroment')

--* Enviroment *--

local EnviromentEnabled = nil
EnviromentTab:AddToggle('AWASZnfh', {Text = "enabled",Default = false,Tooltip = "Enables SkyTab",}):OnChanged(function(EnabledEnviroment)
EnviromentEnabled = EnabledEnviroment
end)

EnviromentTab:AddToggle('z1AWASZnfh', {Text = "remove shadows",Default = false,Tooltip = "Global Shadows On/Off",}):OnChanged(function(GlobalShadowsToggle)
if EnviromentEnabled and GlobalShadowsToggle == true then
sethiddenproperty(game:GetService("Lighting"), "GlobalShadows", false)
elseif EnviromentEnabled and GlobalShadowsToggle == false then
sethiddenproperty(game:GetService("Lighting"), "GlobalShadows", true)
end
end)

EnviromentTab:AddToggle('51z1AWASZnfh', {Text = "remove fog",Default = false,Tooltip = "Fog On/Off",}):OnChanged(function(RemoveFogToggle)
if EnviromentEnabled and RemoveFogToggle == true then
sethiddenproperty(game:GetService("Lighting"), "FogStart", math.huge)
elseif EnviromentEnabled and RemoveFogToggle == false then
sethiddenproperty(game:GetService("Lighting"), "FogStart", 150)
end
end)

EnviromentTab:AddToggle('5za1z1AWASZnfh', {Text = "remove clouds",Default = false,Tooltip = "Clouds On/Off",}):OnChanged(function(RemoveCloudsToggle)
if EnviromentEnabled and RemoveCloudsToggle == true then
sethiddenproperty(game:GetService("Workspace").Terrain.Clouds, "Enabled", false)
elseif EnviromentEnabled and RemoveCloudsToggle == false then
sethiddenproperty(game:GetService("Workspace").Terrain.Clouds, "Enabled", true)
end
end)

EnviromentTab:AddToggle('Grass', {Text = 'remove grass',Default = false,Tooltip = "Grass On/Off",}):OnChanged(function(GrassRemove)
if EnviromentEnabled and GrassRemove == true then
sethiddenproperty(game.Workspace.Terrain, "Decoration", false)
elseif EnviromentEnabled and GrassRemove == false then
sethiddenproperty(game.Workspace.Terrain, "Decoration", true)
end
end)

function ToggleLeaves(Trans)
for i,v in pairs(getrenv()._G.modules.Entity.List) do
  if v.typ == "Tree1" or v.typ == "Tree2" then
    v.model.Leaves.Transparency = Trans
  end
end
end
local ToggleLeavesTransparency = 0.4
EnviromentTab:AddToggle('Leaves', {Text = 'remove leaves', Default = false, Tooltip = "Leaves On/Off"})
local function UpdateLeavesTransparency()
if EnviromentEnabled and Toggles.Leaves.Value == true then
  ToggleLeavesTransparency = 1
else
  ToggleLeavesTransparency = 0.4
end
end
Toggles.Leaves:OnChanged(UpdateLeavesTransparency)
game:GetService("RunService").Heartbeat:Connect(function()
wait(3)
ToggleLeaves(ToggleLeavesTransparency)
end)

EnviromentTab:AddSlider('', {Text = 'geographic latitude:', Suffix = "%", Default = 40, Min = 0, Max = 360, Rounding = 0, Compact = false}):OnChanged(function(Value)
if EnviromentEnabled then
sethiddenproperty(game:GetService("Lighting"), "GeographicLatitude", Value)
end
end)

EnviromentTab:AddDropdown('World_Technology', {Values = { 'Technology', 'ShadowMap', 'Voxel', 'Compatibility' },Default = 1,Multi = false,Text = 'technology:',Tooltip = 'Game Technology',}):OnChanged(function(GPHZ)
if EnviromentEnabled and GPHZ == "Technology" then
sethiddenproperty(game.Lighting, "Technology", Enum.Technology.Future)
elseif EnviromentEnabled and GPHZ == "ShadowMap" then
sethiddenproperty(game.Lighting, "Technology", Enum.Technology.ShadowMap)
elseif EnviromentEnabled and GPHZ == "Voxel" then
sethiddenproperty(game.Lighting, "Technology", Enum.Technology.Voxel)
elseif EnviromentEnabled and GPHZ == "Compatibility" then
sethiddenproperty(game.Lighting, "Technology", Enum.Technology.Compatibility)
end
end)

local skybox_assets = {
Default = { "91458024", "91457980", "91458024", "91458024", "91458024", "91458002" },
Neptune = { "218955819", "218953419", "218954524", "218958493", "218957134", "218950090" },
["Among Us"] = { "5752463190", "5752463190", "5752463190", "5752463190", "5752463190", "5752463190" },
Nebula = { "159454299", "159454296", "159454293", "159454286", "159454300", "159454288" },
Vaporwave = { "1417494030", "1417494146", "1417494253", "1417494402", "1417494499", "1417494643" },
Clouds = { "570557514", "570557775", "570557559", "570557620", "570557672", "570557727" },
Twilight = { "264908339", "264907909", "264909420", "264909758", "264908886", "264907379" },
DaBaby = { "7245418472", "7245418472", "7245418472", "7245418472", "7245418472", "7245418472" },
Minecraft = { "1876545003", "1876544331", "1876542941", "1876543392", "1876543764", "1876544642" },
Chill = { "5084575798", "5084575916", "5103949679", "5103948542", "5103948784", "5084576400" },
Redshift = { "401664839", "401664862", "401664960", "401664881", "401664901", "401664936" },
["Deep Space"] = { "149397684", "149397686", "149397688", "149397692", "149397697", "149397702" },
["Winter"] = { "510645155", "510645130", "510645179", "510645117", "510645146", "510645195" },
}

local lighting = game:GetService("Lighting")
local Sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", lighting)
EnviromentTab:AddDropdown('World_Skybox', {Values = {"Default", "Neptune", "Among Us", "Nebula", "Vaporwave", "Clouds", "Twilight", "DaBaby", "Minecraft", "Chill", "Redshift", "Deep Space", "Winter"},Default = 1,Multi = false,Text = 'custom skybox:',}):OnChanged(function(World_Skybox)
if EnviromentEnabled then
local skyboxData = skybox_assets[World_Skybox]
for i, prop in ipairs({"SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp"}) do
  Sky[prop] = "rbxassetid://" .. skyboxData[i]
end
end
end)

-------------------------------------------------------------------------------------------------
--// Loops, Functionality & Other \\--

LPH_NO_VIRTUALIZE(function()
local oldFunctionGun; oldFunctionGun = hookfunction(getupvalues(getrenv()._G.modules.FPS.ToolControllers.RangedWeapon.PlayerFire)[1],function(...)
args = {...}
local Player,PlayerTable = Functions:GetClosest()
if Combat.Settings.SilentEnabled == true and Player ~= nil and (CharcaterMiddle:GetPivot().Position-Player:GetPivot().Position).Magnitude <= Combat.Settings.RenderDistance and math.random(0,100) <= Combat.Settings.SilentHitChance then
if Combat.Settings.TeamCheck == true and Player.Head.Teamtag.Enabled == false then
  if Combat.Settings.SleeperCheck == true and PlayerTable.sleeping == false then
    args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
  else
    args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
  end
else
  if Combat.Settings.SleeperCheck == true and PlayerTable.sleeping == false then
    args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
  else
    args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
  end
end
end
return oldFunctionGun(unpack(args))
end)
local oldFunction; oldFunction = hookfunction(getupvalues(getrenv()._G.modules.FPS.ToolControllers.BowSpecial.PlayerFire)[4],function(...)
args = {...}
local Player,PlayerTable = Functions:GetClosest()
if Combat.Settings.SilentEnabled == true and Player ~= nil and (CharcaterMiddle:GetPivot().Position-Player:GetPivot().Position).Magnitude <= Combat.Settings.RenderDistance and math.random(0,100) <= Combat.Settings.SilentHitChance then
if Combat.Settings.TeamCheck == true and Player.Head.Teamtag.Enabled == false then
  if Combat.Settings.SleeperCheck == true and PlayerTable.sleeping == false then
    args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
  else
    args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
  end
else
  if Combat.Settings.SleeperCheck == true and PlayerTable.sleeping == false then
    args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
  else
    args[1] = CFrame.lookAt(args[1].Position,Player[Combat.Settings.SilentAimPart]:GetPivot().p+Functions:Predict())
  end
end
end
return oldFunction(unpack(args))
end)

local oldNoRecoil;oldNoRecoil = hookfunction(getrenv()._G.modules.Camera.Recoil,function(...)
if GunModsEnabled and gunMods.norecoilTog == true then
return false
else
return oldNoRecoil(...)
end
end)

local oldNoSpread;oldNoSpread = hookfunction(getupvalues(getrenv()._G.modules.FPS.ToolControllers.RangedWeapon.PlayerFire)[1],function(...)
local arg = {...}
if GunModsEnabled and gunMods.noSpreadTog == true then
arg[2]['Accuracy'] = math.huge
return oldNoSpread(unpack(arg))
end
return oldNoSpread(...)
end)

local oldIsGrounded;oldIsGrounded = hookfunction(getrenv()._G.modules.Character.IsGrounded,function(...)
if JumpShoot == true then
return true
else
return oldIsGrounded(...)
end
end)

local NoSwayHook;NoSwayHook = hookfunction(getrenv()._G.modules.Camera.SetSwaySpeed,function(...)
local args = {...}
if NoSway == true then
args[1] = 0
return NoSwayHook(unpack(args))
end
return NoSwayHook(...)
end)
end)()

-------------------------------------------------------------------------------------------------
--// UI Settings \\--

--// Game
local GameID = Tabs.UISettings:AddLeftGroupbox('Game')
GameID:AddInput('GameID_Check', {Default = 'Game ID', Numeric = true, Finished = false, Text = 'Game ID:', Placeholder = 'Game ID Here'})
GameID:AddButton('Join Game', function()
game:GetService("TeleportService"):Teleport(Options.GameID_Check.Value, plr)
end)

--// Menu
local MenuGroup = Tabs.UISettings:AddRightGroupbox('Menu')

MenuGroup:AddLabel(""..game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerInfo.Text.."", true)
local playerCountLabel = MenuGroup:AddLabel("Player Count: 0", nil, true)
local function updatePlayerCount()
local playerCount = #game:GetService("Players"):GetPlayers()
playerCountLabel:SetText("Players Online: " .. playerCount)
end
game:GetService("Players").PlayerAdded:Connect(updatePlayerCount)
game:GetService("Players").PlayerRemoving:Connect(updatePlayerCount)
updatePlayerCount()

MenuGroup:AddLabel(' Made by:<font color="#de6cff"> velocity#9108</font> 👑', true)

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

MenuGroup:AddButton('Copy Discord', function()
if pcall(setclipboard,"https://discord.gg/dWvMFGkT") then
Library:Notify('Successfully copied discord link to your clipboard!', 5)
end
end)

MenuGroup:AddToggle('WatermarkToggle', { Text = 'Watermark', Default = false, Tooltip = nil })
Toggles.WatermarkToggle:OnChanged(function()
while Toggles.WatermarkToggle.Value do
task.wait(1)
local fps = string.format('%.0f', game.Stats.Workspace.Heartbeat:GetValue())
local ping = string.format('%.0f', game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
Library:SetWatermark('velocity.cc - FPS: ' .. fps .. ' | Ping: ' .. ping .. ' | [trident survival]')
Library:SetWatermarkVisibility(true)
end
Library:SetWatermarkVisibility(false)
end)

MenuGroup:AddToggle('UISettings_KeybindFrameVisibility', {Text = 'Keybind', Default = true}):OnChanged(function()
Library.KeybindFrame.Visible = Toggles.UISettings_KeybindFrameVisibility.Value
end)

MenuGroup:AddLabel('Menu Keybind'):AddKeyPicker('MenuKeybind', { Default = 'Insert', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind

--// Manager
SaveManager:SetLibrary(Library)
SaveManager:SetFolder('velocity.cc/folder')
SaveManager:BuildConfigSection(Tabs.UISettings)
SaveManager:IgnoreThemeSettings()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder('velocity.cc/themes')
ThemeManager:ApplyToTab(Tabs.UISettings)

--// Script Loaded
local Time = (string.format("%."..tostring(Decimals).."f", os.clock() - Clock))
Library:Notify(("Script [Loaded] In - "..tostring(Time).."s"), 15)

--Wrapping function - needed to unload(Keep at end of script)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EIOlmqV6v1owgJBEoqj5lK9p01SFE2THpxcOnvX/LinoriaBurnEdition/main/LoaderManager.lua'))

local VelocityText = Drawing.new("Text")
VelocityText.Visible = true
VelocityText.Position = Vector2.new(Camera.ViewportSize.X - 120, 0)
VelocityText.Size = 15
VelocityText.Color = Color3.fromRGB(208, 123, 255)
VelocityText.Outline = true
VelocityText.Center = true
local function getTimeOfDay()
  local time = game.Lighting:GetMinutesAfterMidnight()
  return string.format("Time of Day: %02d:%02d", math.floor(time / 60), time % 60)
end
while true do
  VelocityText.Text = "velocity.cc | Insert to Open/Close\n                " .. getTimeOfDay()
  wait(1)
end