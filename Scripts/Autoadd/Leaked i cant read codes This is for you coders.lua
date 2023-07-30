-- Leaked by ZNX#9391 and ba77o6EGpJK2mv5gfvBaEQSpUAxEdaVK#1281
-- Framework ESP -()

--Locals
local Camera = game:GetService("Workspace").CurrentCamera
local CharcaterMiddle = game:GetService("Workspace").Ignore.LocalCharacter.Middle
local RunService = Game:GetService("RunService")

--Tables
local Framework = {Settings={FullBright=false,Fov=90,LocalChams=false,LocalGunChams=false},SkinChanger={SkinsEnabled=false,SkinChoice="Galaxy",SkinName="Float",SkinRBXAssetId=12319249626}}
local Esp = {Settings={PlayerTool=false,Boxes=false,Distances=false,Armor=false,ItemDistances=false,ItemNames=false,OreDistances=false,OreNames=false,PlayerRenderDistance=1000,ItemRenderDistance=1000,OreRenderDistance=1000,PlayerBoxColor=Color3.fromRGB(120,81,169),PlayerDistanceColor=Color3.fromRGB(120,81,169),PlayerArmorColor=Color3.fromRGB(120,81,169),Sleeping=false,PlayerSleepingColor=Color3.fromRGB(120,81,169),LocalChamsColor=Color3.fromRGB(120,81,169),LocalGunChamsColor=Color3.fromRGB(120,81,169),PlayerToolColor=Color3.fromRGB(120,81,169),LocalChamsMaterial=Enum.Material.ForceField,LocalGunChamsMaterial=Enum.Material.ForceField,TeamCheck=false,TextFont = 2, TextSize = 11},Drawings={},Connections={}}

--Functions
function Framework:CheckSkins()
  local tbl = {}
  for i,v in pairs(game:GetService("ReplicatedStorage").ItemSkins:GetChildren()) do
    table.insert(tbl,v.Name)
  end
  return tbl
end
function Framework:TeamCheck(Model)
  if Model:FindFirstChild("Head") and Model.Head:FindFirstChild("Teamtag") then
    return Model.Head.Teamtag.Enabled
  end
end
function Framework:IsSleeping(Model)
  if Model and Model:FindFirstChild("AnimationController") and Model.AnimationController:FindFirstChild("Animator") then
    for i,v in pairs(Model.AnimationController.Animator:GetPlayingAnimationTracks()) do
      if v.Animation.AnimationId == "rbxassetid://12501841745" then
        return true
      else
        return false
      end
    end
  end
end
function Framework:IsVisible(PlayerModel)
  local parts = Camera:GetPartsObscuringTarget({PlayerModel:GetPivot().Position},game:GetService("Workspace").Ignore:GetDescendants())
  if #parts > 0 then
    return false
  else
    return true
  end
end
function Framework:GetCenterScreen()
  return Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/2)
end
function Framework:CreateConnection(Object,Callback)
  local Connection = Object:Connect(Callback)
  table.insert(Esp.Connections, Connection)
  return Connection
end
function Framework:GetArmor(Model)
  if Model.Armor:FindFirstChildOfClass("Folder") then
    return true
  else
    return false
  end
end
function Framework:GetToolNames()
  tbl = {}
  for i,v in pairs(game:GetService("ReplicatedStorage").HandModels:GetChildren()) do
    if not table.find(tbl,v.Name) then
      table.insert(tbl,v.Name)
    end
  end
  return tbl
end
function Framework:CheckTools(PlayerTable)
  if not PlayerTable then return end
  if PlayerTable.equippedItem and table.find(Framework:GetToolNames(),PlayerTable["equippedItem"].id) then
    return tostring(PlayerTable["equippedItem"].id)
  elseif PlayerTable.handModel and PlayerTable.handModel.Name and string.find(PlayerTable.handModel.Name,"Hammer") then
    return PlayerTable["handModel"].Name
  else
    return "None"
  end
end
function Framework:GetHoldingTool()
  if getrenv()._G.modules.FPS.GetEquippedItem().id == nil then return "None" end
  return getrenv()._G.modules.FPS.GetEquippedItem().id
end
function Framework:GetEntitys()
  return getrenv()._G.modules.Entity.List
end
function Framework:GetPlayers()
  return getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]
end
function Framework:DistanceFromCharacter(Vector3)
  return (CharcaterMiddle:GetPivot().p - Vector3).Magnitude
end
function Framework:IsOnScreen(Model)
  local RandomVar, OnScreen = Camera:WorldToViewportPoint(Model:GetPivot().p)
  return OnScreen
end
function Framework:PositionToVector2(Vector3)
  local ViewportPosition, onscreen = Camera:WorldToViewportPoint(Vector3)
  return Vector2.new(ViewportPosition.X,ViewportPosition.Y), onscreen
end
function Framework:Draw(Type,Propities)
  Object = Drawing.new(Type)
  for i,v in next,Propities do
    Object[i] = v
  end
  if Object then
    table.insert(Esp.Drawings, Object)
    return Object
  end
end

function Esp:GetBoxPosAndSize(Object)
  cf,size = Object:GetBoundingBox()
  corners = {cf * CFrame.new(size.x/2,size.y/2,size.z/2),cf * CFrame.new(size.x/2,size.y/2,-size.z/2),cf * CFrame.new(-size.x/2,size.y/2,size.z/2),cf * CFrame.new(-size.x/2,size.y/2,-size.z/2),cf * CFrame.new(size.x/2,-size.y/2,size.z/2),cf * CFrame.new(size.x/2,-size.y/2,-size.z/2),cf * CFrame.new(-size.x/2,-size.y/2,size.z/2),cf * CFrame.new(-size.x/2,-size.y/2,-size.z/2),}
  local left,top = Vector2.new(math.huge,0),Vector2.new(0,math.huge)
  local right,bottom = Vector2.new(-math.huge,0),Vector2.new(0,-math.huge)
  for i, v in pairs(corners) do
    local point = Camera:WorldToViewportPoint(v.Position)
    if point.Y < top.Y then top = point end
    if point.Y > bottom.Y then bottom = point end
    if point.X > right.X then right = point end
    if point.X < left.X then left = point end
  end
  if left and right and top and bottom then
    return math.floor(left.X),math.floor(right.X),math.floor(top.Y),math.floor(bottom.Y)
  end
end

do
  function Esp:AddPlayer(Model,PlayerTable)
    local Box,BoxOutline,ArmorText,DistanceText,SleepingText,ToolName = 
    Framework:Draw("Square",{Transparency = 1,Thickness=1,Filled=false,Color = Esp.Settings.PlayerBoxColor,ZIndex = -9}),
    Framework:Draw("Square",{Transparency = 1,Thickness=2,Filled=false,Color = Color3.fromRGB(0,0,0),ZIndex = -10}),
    Framework:Draw("Text",{Text = "Nil",Font=2,Size=Esp.Settings.TextSize,Center=true,Outline=true,Color = Esp.Settings.PlayerArmorColor,ZIndex = -9}),
    Framework:Draw("Text",{Text ="",Font=2,Size=Esp.Settings.TextSize,Center=true,Outline=true,Color = Esp.Settings.PlayerDistanceColor,ZIndex = -9}),
    Framework:Draw("Text",{Text ="",Font=2,Size=Esp.Settings.TextSize,Center=true,Outline=true,Color = Esp.Settings.PlayerSleepingColor,ZIndex = -9}),
    Framework:Draw("Text",{Text ="",Font=2,Size=Esp.Settings.TextSize,Center=true,Outline=true,Color = Esp.Settings.PlayerToolColor,ZIndex = -9})
    local Render = game:GetService("RunService").RenderStepped:Connect(function()
    if Model and Model:FindFirstChild("HumanoidRootPart") then
      local Position,Visible = Camera:WorldToViewportPoint(Model:GetPivot().p)
      local scale = 1 / (Position.Z * math.tan(math.rad(Camera.FieldOfView * 0.5)) * 2) * 100;
      local w,h = math.floor(40 * scale), math.floor(55 * scale);
      local x,y = math.floor(Position.X), math.floor(Position.Y);
      if Visible == true and Esp.Settings.Boxes == true and Framework:DistanceFromCharacter(Model:GetPivot().p) <= Esp.Settings.PlayerRenderDistance then
        if Esp.TeamCheck == true and Framework:TeamCheck(Model) == false then
          BoxOutline.Visible = true
          Box.Visible = true
        elseif Esp.TeamCheck == true and Framework:TeamCheck(Model) == true then
          BoxOutline.Visible = false
          Box.Visible = false
        else
          BoxOutline.Visible = true
          Box.Visible = true
        end
        BoxOutline.Position = Vector2.new(math.floor(x-w* 0.5),math.floor(y-h*0.5))
        BoxOutline.Size = Vector2.new(w,h)
        Box.Position = Vector2.new(math.floor(x-w* 0.5),math.floor(y-h*0.5))
        Box.Size = Vector2.new(w,h)
      else
        BoxOutline.Visible = false
        Box.Visible = false
      end
      if Visible == true and Esp.Settings.Distances == true and Framework:DistanceFromCharacter(Model:GetPivot().p) <= Esp.Settings.PlayerRenderDistance then
        if Esp.TeamCheck == true and Framework:TeamCheck(Model) == false then
          DistanceText.Visible = true
        elseif Esp.TeamCheck == true and Framework:TeamCheck(Model) == true then
          DistanceText.Visible = false
        else
          DistanceText.Visible = true
        end
        DistanceText.Position = Vector2.new(x, math.floor(y+h*0.5))
        DistanceText.Size = Esp.Settings.TextSize
        DistanceText.Color = Esp.Settings.PlayerDistanceColor
        DistanceText.Text = "["..tostring(math.floor(Framework:DistanceFromCharacter(Model:GetPivot().p))).."m]"
      else
        DistanceText.Visible = false
      end
      if Visible == true and Esp.Settings.Sleeping == true and Framework:DistanceFromCharacter(Model:GetPivot().p) <= Esp.Settings.PlayerRenderDistance then
        if PlayerTable.sleeping == true then SleepingText.Text = "Sleeping" else SleepingText.Text = "Awake" end
        if Esp.TeamCheck == true and Framework:TeamCheck(Model) == false then
          SleepingText.Visible = true
        elseif Esp.TeamCheck == true and Framework:TeamCheck(Model) == true then
          SleepingText.Visible = false
        else
          SleepingText.Visible = true
        end
        SleepingText.Color = Esp.Settings.PlayerSleepingColor
        SleepingText.Position = Vector2.new(x, math.floor(y-h*0.5-SleepingText.TextBounds.Y))
        SleepingText.Font = 2
        SleepingText.Size = Esp.Settings.TextSize
      else
        SleepingText.Visible = false
      end
      if Visible == true and Esp.Settings.Armor == true and Framework:DistanceFromCharacter(Model:GetPivot().p) <= Esp.Settings.PlayerRenderDistance then
        if Framework:GetArmor(Model) == true then ArmorText.Text = "Armoured" else ArmorText.Text = "" end
        if Esp.TeamCheck == true and Framework:TeamCheck(Model) == false then
          ArmorText.Visible = true
          ArmorText.Size = Esp.Settings.TextSize
        elseif Esp.TeamCheck == true and Framework:TeamCheck(Model) == true then
          ArmorText.Visible = false
          ArmorText.Size = Esp.Settings.TextSize
        else
          ArmorText.Visible = true
          ArmorText.Size = Esp.Settings.TextSize
        end
        ArmorText.Color = Esp.Settings.PlayerArmorColor
        if DistanceText.Visible == true then
          ArmorText.Position = Vector2.new(x, math.floor(y-h*0.5-ArmorText.TextBounds.Y*2))
          ArmorText.Size = Esp.Settings.TextSize
        else
          ArmorText.Position = Vector2.new(x, math.floor(y-h*0.5-ArmorText.TextBounds.Y))
          ArmorText.Size = Esp.Settings.TextSize
        end
      else
        ArmorText.Visible = false
      end
      if Visible == true and Esp.Settings.PlayerTool == true and Framework:DistanceFromCharacter(Model:GetPivot().p) <= Esp.Settings.PlayerRenderDistance then
        ToolName.Text = Framework:CheckTools(PlayerTable)
        if Esp.TeamCheck == true and Framework:TeamCheck(Model) == false then
          ToolName.Visible = true
          ToolName.Size = Esp.Settings.TextSize
        elseif Esp.TeamCheck == true and Framework:TeamCheck(Model) == true then
          ToolName.Visible = false
          ToolName.Size = Esp.Settings.TextSize
        else
          ToolName.Visible = true
          ToolName.Size = Esp.Settings.TextSize
        end
        ToolName.Color = Esp.Settings.PlayerToolColor
        if SleepingText.Visible == true then
          ToolName.Position = Vector2.new(x, math.floor(y+h*0.5)+ToolName.TextBounds.Y)
          ToolName.Size = Esp.Settings.TextSize
        else
          ToolName.Position = Vector2.new(x, math.floor(y+h*0.5))
          ToolName.Size = Esp.Settings.TextSize
        end
      else
        ToolName.Visible = false
      end
    else
      Box.Visible = false
      BoxOutline.Visible = false
      ArmorText.Visible = false
      DistanceText.Visible = false
      SleepingText.Visible = false
      ToolName.Visible = false
      if not Model then
        SleepingText:Remove()
        Box:Remove()
        DistanceText:Remove()
        BoxOutline:Remove()
        ArmorText:Remove()
        ToolName:Remove()
        Render:Disconnect()
      end
    end
    end)
  end
end

return Framework, Esp, Aimbot, Crosshair