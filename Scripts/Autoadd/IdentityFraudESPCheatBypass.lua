-->> Loader
repeat wait() until game:IsLoaded()
-->> Library Variables
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local Window = Library:Window("ARK HUB", "Identity Fraud", "A")
local Tab = Window:Tab("General")
local Tab2 = Window:Tab("ESP")
local Tab3 = Window:Tab("Credits")
-->> Actual Variables
local Plrs = game:GetService("Players")
local Run = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character
-->> Settings
local Settings = {
    ESPEnabled = false,
    ChamsEnabled = false,
    ESPLength = 1500,
    ChamsLength = 1500,
    MobChams = true,
    MobESP = true,
    Doors = true,
    CharAddedEvent = {},
    Colors = {
        Player = Color3.fromRGB(0, 194, 224),
        NPC = Color3.fromRGB(210, 29, 29),
        Door = Color3.fromRGB(255, 255, 255)
    }
}
-->> Folders
local ChamsFolder = Instance.new("Folder", CoreGui)
ChamsFolder.Name = "Chams"
local PlayerChams = Instance.new("Folder", ChamsFolder)
PlayerChams.Name = "Player_Chams"
local ItemChams = Instance.new("Folder", ChamsFolder)
ItemChams.Name = "Item_Chams"

local ESPFolder = Instance.new("Folder", CoreGui)
ESPFolder.Name = "ESP"
local PlayerESP = Instance.new("Folder", ESPFolder)
PlayerESP.Name = "PlayerESP"
local ItemESP = Instance.new("Folder", ESPFolder)
ItemESP.Name = "ItemESP"
-->> Get Camera
function GetCamera() return workspace:FindFirstChildOfClass("Camera") end
local MyCam = GetCamera()
if MyCam == nil then error("What the fuck...") return end
-->> Functions
function GetTeamColor(Plr)
 if Plr == nil then return nil end
 if not Plr:IsA("Player") then
  return nil
 end
 local PickedColor = Settings.Colors.Player
 if Plr ~= nil then
  PickedColor = Settings.Colors.Player
 end
 return PickedColor
end

function FindCham(Obj)
 for i, v in next, ItemChams:GetChildren() do
  if v.className == "ObjectValue" then
   if v.Value == Obj then
    return v.Parent
   end
  end
 end
 return nil
end

function FindESP(Obj)
 for i, v in next, ItemESP:GetChildren() do
  if v.className == "ObjectValue" then
   if v.Value == Obj then
    return v.Parent
   end
  end
 end
 return nil
end

function GetSizeOfObject(Obj)
 if Obj:IsA("BasePart") then
  return Obj.Size
 elseif Obj:IsA("Model") then
  return Obj:GetExtentsSize()
 end
end

-- ESP
function UpdateESP(Plr)
 if Plr ~= nil then
  local Find = PlayerESP:FindFirstChild(Plr.Name)
  if Find then
   local PickColor = GetTeamColor(Plr)
   Find.Frame.Names.TextColor3 = PickColor
   Find.Frame.Dist.TextColor3 = PickColor
   local GetChar = Plr.Character
   if MyChar and GetChar then
    local Find2 = MyChar:FindFirstChild("HumanoidRootPart")
    local Find3 = GetChar:FindFirstChild("HumanoidRootPart")
    if Find2 and Find3 then
     local pos = Find3.Position
     local Dist = (Find2.Position - pos).magnitude
     if Dist > Settings.ESPLength then
      Find.Frame.Names.Visible = false
      Find.Frame.Dist.Visible = false
      return
     else
      Find.Frame.Names.Visible = true
      Find.Frame.Dist.Visible = true
     end
     Find.Frame.Dist.Text = "Distance: " .. string.format("%.0f", Dist)
    end
   end
  end
 end
end

function UpdateESPMonsters(Plr)
 if Plr ~= nil then
  local Find = ItemESP:FindFirstChild(Plr.Name)
  if Find then
   local PickColor = Settings.Colors.NPC
   Find.Frame.Names.TextColor3 = PickColor
   Find.Frame.Dist.TextColor3 = PickColor
   local GetChar = Plr
   local Find2 = MyChar:FindFirstChild("HumanoidRootPart")
   local Find3 = GetChar:FindFirstChild("HumanoidRootPart")
   if Find2 and Find3 then
    local pos = Find3.Position
    local Dist = (Find2.Position - pos).magnitude
    if Dist > Settings.ESPLength then
     Find.Frame.Names.Visible = false
     Find.Frame.Dist.Visible = false
     return
    else
     Find.Frame.Names.Visible = true
     Find.Frame.Dist.Visible = true
    end
    Find.Frame.Dist.Text = "Distance: " .. string.format("%.0f", Dist)
   end
  end
 end
end

function RemoveESP(Obj)
 if Obj ~= nil then
  local IsPlr = Obj:IsA("Player")
  local UseFolder = ItemESP
  if IsPlr then UseFolder = PlayerESP end
  local FindESP = ((IsPlr) and UseFolder:FindFirstChild(Obj.Name)) or FindESP(Obj)
  if FindESP then
   FindESP:Destroy()
  end
 end
end

function CreateESP(Obj)
 if Obj ~= nil then
  local IsPlr = Obj:IsA("Player")
  local UseFolder = ItemESP
  local GetChar = ((IsPlr) and Obj.Character) or Obj
  local Head = GetChar:FindFirstChild("Head")
  local t = tick()
  if IsPlr then UseFolder = PlayerESP end
  if Head == nil then
   repeat
    Head = GetChar:FindFirstChild("Head")
    wait()
   until Head ~= nil or (tick() - t) >= 10
  end
  if Head == nil then return end

  local bb = Instance.new("BillboardGui")
  bb.Adornee = Head
  bb.ExtentsOffset = Vector3.new(0, 1, 0)
  bb.AlwaysOnTop = true
  bb.Size = UDim2.new(0, 5, 0, 5)
  bb.StudsOffset = Vector3.new(0, 3, 0)
  bb.Name = Obj.Name
  bb.Parent = UseFolder

  local frame = Instance.new("Frame", bb)
  frame.ZIndex = 10
  frame.BackgroundTransparency = 1
  frame.Size = UDim2.new(1, 0, 1, 0)

  local TxtName = Instance.new("TextLabel", frame)
  TxtName.Name = "Names"
  TxtName.ZIndex = 10
  TxtName.Text = Obj.Name
  TxtName.BackgroundTransparency = 1
  TxtName.Position = UDim2.new(0, 0, 0, -45)
  TxtName.Size = UDim2.new(1, 0, 10, 0)
  TxtName.Font = "SourceSansBold"
  TxtName.TextSize = 13
  TxtName.TextStrokeTransparency = 0.5

  local TxtDist = Instance.new("TextLabel", frame)
  TxtDist.Name = "Dist"
  TxtDist.ZIndex = 10
  TxtDist.Text = ""
  TxtDist.BackgroundTransparency = 1
  TxtDist.Position = UDim2.new(0, 0, 0, -35)
  TxtDist.Size = UDim2.new(1, 0, 10, 0)
  TxtDist.Font = "SourceSansBold"
  TxtDist.TextSize = 13
  TxtDist.TextStrokeTransparency = 0.5

  local PickColor = GetTeamColor(Obj) or Settings.Colors.NPC
  TxtName.TextColor3 = PickColor

  if IsPlr then
   TxtDist.TextColor3 = PickColor
  end
 end
end


function LoadMonstersESP()
 local mobspawn = { }
 for i, v in next, workspace:GetDescendants() do
  local hum = v:FindFirstChildOfClass("Humanoid")
  if hum and not Plrs:GetPlayerFromCharacter(hum.Parent) and FindCham(v) == nil and FindESP(v) == nil then
   mobspawn[tostring(v.Parent)] = v.Parent
   if Settings.ESPEnabled then
    CreateESP(v)
   end
  end
 end
 for i, v in next, mobspawn do
  v.ChildAdded:connect(function(Obj)
   local t = tick()
   local GetHum = Obj:FindFirstChildOfClass("Humanoid")
   if GetHum == nil then
    repeat
     GetHum = Obj:FindFirstChildOfClass("Humanoid")
     wait()
    until GetHum ~= nil or (tick() - t) >= 10
   end
   if GetHum == nil then return end
   CreateESP(Obj)
  end)
 end
end

-- Chams
function UpdateChams(Obj)
 if Obj == nil then return end

 if Obj:IsA("Player") then
  local Find = PlayerChams:FindFirstChild(Obj.Name)
  local GetChar = Obj.Character

  local Trans = 0
  if GetChar and MyChar then
   local GetHead = GetChar:FindFirstChild("Head")
   local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
   local MyHead = MyChar:FindFirstChild("Head")
   local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
   if GetHead and GetTor and MyHead and MyTor then
    if (MyTor.Position - GetTor.Position).magnitude > Settings.ChamsLength then
     Trans = 1
    else
     local Ray = Ray.new(MyCam.CFrame.p, (GetTor.Position - MyCam.CFrame.p).unit * 2048)
     local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar})
     if part ~= nil then
      if part:IsDescendantOf(GetChar) then
       Trans = 0.9
      else
       Trans = 0
      end
     end
    end
   end
  end

  if Find then
   for i, v in next, Find:GetChildren() do
    if v.className ~= "ObjectValue" then
     v.Color3 = GetTeamColor(Obj) or Settings.Colors.NPC
     v.Transparency = Trans
    end
   end
  end
 end
end

function RemoveChams(Obj)
 if Obj ~= nil then
  local IsPlr = Obj:IsA("Player")
  local UseFolder = ItemChams
  if IsPlr then UseFolder = PlayerChams end

  local FindC = UseFolder:FindFirstChild(tostring(Obj)) or FindCham(Obj)
  if FindC then
   FindC:Destroy()
  end
 end
end

function CreateChams(Obj, ForDoors)
 if Obj ~= nil and ForDoors == true then
  local UseFolder = ItemChams
  local Box = Instance.new("BoxHandleAdornment")
  Box.Size = Obj.Size
  Box.Name = "Doorso"
  Box.Adornee = Obj
  Box.AlwaysOnTop = true
  Box.ZIndex = 5
  Box.Transparency = 0
  Box.Color3 = Settings.Colors.Door
  Box.Parent = UseFolder
 else if Obj ~= nil then
   local IsPlr = Obj:IsA("Player")
   local UseFolder = ItemChams
   local Crap = nil
   local GetTor = nil
   local t = tick()
   if IsPlr then
    Obj = Obj.Character
    UseFolder = PlayerChams
   end
   if Obj == nil then return end
   GetTor = Obj:FindFirstChild("HumanoidRootPart") or Obj:WaitForChild("HumanoidRootPart")
   if IsPlr then Crap = Obj:GetChildren() else Crap = Obj:GetDescendants() end

   local FindC = ((IsPlr) and UseFolder:FindFirstChild(Obj.Name)) or FindCham(Obj)
   if not FindC then
    FindC = Instance.new("Folder", UseFolder)
    FindC.Name = Obj.Name
    local ObjVal = Instance.new("ObjectValue", FindC)
    ObjVal.Value = Obj
   end

   for _, P in next, Crap do
    if P:IsA("PVInstance") and P.Name ~= "HumanoidRootPart" then
     local Box = Instance.new("BoxHandleAdornment")
     Box.Size = GetSizeOfObject(P)
     Box.Name = "Cham"
     Box.Adornee = P
     Box.AlwaysOnTop = true
     Box.ZIndex = 5
     Box.Transparency = 0
     Box.Color3 = ((IsPlr) and GetTeamColor(Plrs:GetPlayerFromCharacter(Obj))) or Settings.Colors.NPC
     Box.Parent = FindC
    end
   end
  end
 end
end

function LoadMonstersChams()
 local mobspawn = { }
 for i, v in next, workspace:GetDescendants() do
  local hum = v:FindFirstChildOfClass("Humanoid")
  if hum and not Plrs:GetPlayerFromCharacter(hum.Parent) and FindCham(v) == nil and FindESP(v) == nil then
   mobspawn[tostring(v.Parent)] = v.Parent
   if Settings.ChamsEnabled then
    CreateChams(v)
   end
  end
 end
 for i, v in next, mobspawn do
  v.ChildAdded:connect(function(Obj)
   local t = tick()
   local GetHum = Obj:FindFirstChildOfClass("Humanoid")
   if GetHum == nil then
    repeat
     GetHum = Obj:FindFirstChildOfClass("Humanoid")
     wait()
    until GetHum ~= nil or (tick() - t) >= 10
   end
   if GetHum == nil then return end
   CreateChams(Obj)
  end)
 end
end

function LoadDoorsChams()
 for i, v in next, workspace:GetDescendants() do
  if v.Name == "Door1" or v.Name == "Door2" and v:IsA("Part") then
   if Settings.DoorsChams then
    CreateChams(v, true)
   end
  end
 end
end

Plrs.PlayerAdded:connect(function(Plr)
 if Settings.CharAddedEvent[Plr.Name] == nil then
  Settings.CharAddedEvent[Plr.Name] = Plr.CharacterAdded:connect(function(Char)
   if Settings.ESPEnabled then
    RemoveESP(Plr)
    CreateESP(Plr)
   end
   if Settings.ChamsEnabled then
    RemoveChams(Plr)
    CreateChams(Plr)
   end
   repeat wait() until Char:FindFirstChild("HumanoidRootPart")
  end)
 end
end)

Plrs.PlayerRemoving:connect(function(Plr)
 if Settings.CharAddedEvent[Plr.Name] ~= nil then
  Settings.CharAddedEvent[Plr.Name]:Disconnect()
  Settings.CharAddedEvent[Plr.Name] = nil
 end
 RemoveESP(Plr)
 RemoveChams(Plr)
end)

Toggle = function(Mode)
    if Mode == "ESP" then
        if not Settings.ESPEnabled then
            Settings.ESPEnabled = true
            for _,v in next, Plrs:GetPlayers() do
                if v ~= MyPlr then
                    if Settings.CharAddedEvent[v.Name] == nil then
                        Settings.CharAddedEvent[v.Name] = v.CharacterAdded:Connect(function(Char)
                            if Settings.ESPEnabled then
                                RemoveESP(v)
                                CreateESP(v)
                            end
                            if Settings.ChamsEnabled then
                                RemoveChams(v)
                                CreateChams(v)
                            end
                            repeat wait() until Char:FindFirstChild("HumanoidRootPart")
                        end)
                    end
                    RemoveESP(v)
                    CreateESP(v)
                end
            end
            LoadMonstersESP()
        else
            Settings.ESPEnabled = false
            PlayerESP:ClearAllChildren()
            ItemESP:ClearAllChildren()
        end
    elseif Mode == "Chams" then
        if not Settings.ChamsEnabled then
            Settings.ChamsEnabled = true
            for _,v in next, Plrs:GetPlayers() do
                if v ~= MyPlr then
                    if Settings.CharAddedEvent[v.Name] == nil then
                        Settings.CharAddedEvent[v.Name] = v.CharacterAdded:Connect(function(Char)
                            if Settings.ESPEnabled then
                                RemoveESP(v)
                                CreateESP(v)
                            end
                            if Settings.ChamsEnabled then
                                RemoveChams(v)
                                CreateChams(v)
                            end
                            repeat wait() until Char:FindFirstChild("HumanoidRootPart")
                        end)
                    end
                    RemoveChams(v)
                    CreateChams(v)
                end
            end
            LoadMonstersChams()
            LoadDoorsChams()
        else
            Settings.ChamsEnabled = false
            PlayerChams:ClearAllChildren()
            ItemChams:ClearAllChildren()
        end
    end
end

-->> Updates
Run:BindToRenderStep("UpdateESP", Enum.RenderPriority.Character.Value, function()
 for _, v in next, Plrs:GetPlayers() do
  if v ~= MyPlr then
   UpdateESP(v)
  end
 end
end)

Run:BindToRenderStep("UpdateESPMonsters", Enum.RenderPriority.Character.Value, function()
 for _, a in pairs(workspace.NPCs:GetChildren()) do
  UpdateESPMonsters(a)
 end
end)

coroutine.resume(coroutine.create(function()
 while true do
  for _, v in next, Plrs:GetPlayers() do
   UpdateChams(v)
   Run.RenderStepped:wait()
  end
 end
end))
-->> UI Stuff
-- General Tab
Tab:Label("General")
Tab:Button("Rejoin Game", function()
    TeleportService:Teleport(game.PlaceId, MyPlr)
end)
Tab:Button("Bypass Anti-Cheat", function()
    MyChar.Frigid:Destroy()
end)
Tab:Slider("WalkSpeed", 17, 50, 17, function(Value)
    MyChar.Humanoid.WalkSpeed = Value
end)
-- ESP Tab
Tab2:Label("ESP")
Tab2:Toggle("ESP", function(Bool)
    Toggle("ESP")
end)
Tab2:Slider("ESP Distance", 0, 2048, 1500, function(Value)
    Settings.ESPLength = Value
end)
Tab2:Label("Chams")
Tab2:Toggle("Chams", function(Bool)
    Toggle("Chams")
end)
Tab2:Slider("Chams Distance", 0, 2048, 1500, function(Value)
    Settings.ChamsLength = Value
end)
Tab2:Label("Colors")
Tab2:Colorpicker("Player Color", Color3.fromRGB(0, 194, 224), function(Color)
    Settings.Colors.Player = Color
end)
Tab2:Colorpicker("Monster Color", Color3.fromRGB(210, 29, 29), function(Color)
    Settings.Colors.NPC = Color
end)
-- Credits Tab
Tab3:Label("Script by arcranes.")
Tab3:Label("Identity Fraud ESP is made by Pistol on forums.")
Tab3:Button("Copy Discord Link", function()
    setclipboard("korra#1111")
end)
Tab3:Label("The original ESP is Project Bullshit made by Racist Dolphin")
Tab3:Label("Enjoy.")