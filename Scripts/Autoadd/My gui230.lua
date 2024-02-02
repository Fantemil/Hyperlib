local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Boss_JKLO HAX", "BloodTheme")

local Tab = Window:NewTab("Script")
local Section = Tab:NewSection("Destroy")


Section:NewButton("Skybox", "ButtonInfo", function()
    s = Instance.new("Sky")
s.Name = "SKY"
s.SkyboxBk = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxDn = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxFt = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxLf = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxRt = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxUp = "http://www.roblox.com/asset/?id=13784335227"
s.Parent = game.Lighting
end)

Section:NewButton("Particle", "ButtonInfo", function()
    t1 = "http://www.roblox.com/asset/?id=13784335227"
t2 = "http://www.roblox.com/asset/?id=13784335227"
t3 = "http://www.roblox.com/asset/?id=13784335227"
 
local p = game.Players:GetChildren()
local w = game.Workspace:GetChildren()
 
for i,v in pairs(p) do
pe = Instance.new("ParticleEmitter", v.Character.Torso)
pe.Texture = t3
pe.VelocitySpread = 100
end
 
for i= 1,#w do
if w[i]:isA("BasePart") then
pe = Instance.new("ParticleEmitter", w[i])
pe.Texture = t3
pe.VelocitySpread = 5
end
end
end)

Section:NewButton("Decal", "ButtonInfo", function()
    local ID =13784335227 --id here
function spamDecal(v)
    if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "MYDECALHUE"
            D.Face = i
            D.Parent = v
            D.Texture = ("http://www.roblox.com/asset/?id="..Id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
function decalspam(id) --use this function, not the one on top
    Id = id
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "MYDECALHUE"
            D.Face = i
            D.Parent = v
            D.Texture = ("http://www.roblox.com/asset/?id="..id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
end
 
decalspam(ID)
end)

Section:NewButton("Night", "ButtonInfo", function()
    while true do 
		print ("Loop cycle start")
		game.Lighting.TimeOfDay = "23:00:00"
		wait(0.5)
	end
end)

Section:NewButton("Disco", "ButtonInfo", function()
    while true do
 wait(0.5)
 game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
 game.Lighting.ColorShift_Top = Color3.new(math.random(), math.random(), math.random())
 game.Lighting.ColorShift_Bottom = Color3.new(math.random(), math.random(), math.random())
 game.Lighting.ShadowColor = Color3.new(math.random(), math.random(), math.random())
 end
end)

Section:NewButton("Hint", "ButtonInfo", function()
    local H = Instance.new("Hint", game.Workspace)
H.Parent = game.Workspace
H.Text = ("JKLO TEAM join today!")

local music = Instance.new("Sound", game.Workspace)
music.SoundId = "rbxassetid://1847661783"
music.Volume = 99999999999999999999999999999999999999999
music.Looped = true
music.PlayOnRemove = true
music:Play()
end)

Section:NewButton("666", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/d56eg7r9"))()
end)

Section:NewButton("666²", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BcB1x3D0"))()
end)

Section:NewButton("666³", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/H5td8jx4"))()
end)

Section:NewButton("dragon 🐉", "ButtonInfo", function()
  
--[[
Made by Rouxhaver
Netlibary made by 4eyes
Currently works with Celery executor and Fluxus

Note: Hat network ownership has been weird recently so expect a few resets
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

if not getgenv().Network then
 getgenv().Network = {
  BaseParts = {};
  FakeConnections = {};
  Connections = {};
  Output = {
   Enabled = true;
   Prefix = "[NETWORK] ";
   Send = function(Type,Output,BypassOutput)
    if typeof(Type) == "function" and (Type == print or Type == warn or Type == error) and typeof(Output) == "string" and (typeof(BypassOutput) == "nil" or typeof(BypassOutput) == "boolean") then
     if Network["Output"].Enabled or BypassOutput then
      Type(Network["Output"].Prefix..Output);
     end;
    elseif Network["Output"].Enabled then
     error(Network["Output"].Prefix.."Output Send Error : Invalid syntax.");
    end;
   end;
  };
  LostParts = {};
  CharacterRelative = true;
  LastCharacter = nil;
  TryKeep = true; --loop attempts to
  PartOwnership = {
   PreMethodSettings = {};
   Enabled = false;
  };
 }

 Network["Output"].Send(print,": Loading.")

 Network["RetainPart"] = function(Part,Silent,ReturnFakePart) --function for retaining ownership of unanchored parts
  assert(Network["PartOwnership"]["Enabled"], Network["Output"].Prefix.." RetainPart Error : PartOwnership is Disabled.")
  assert(typeof(Part) == "Instance" and Part:IsA("BasePart") and not Part:IsGrounded(),Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg1 (Part) must be an ungrounded BasePart which is a descendant of workspace.")
  if not Part:IsDescendantOf(workspace) then
   Network["Output"].Send(error,"RetainPart Error : Invalid syntax: Arg1 (Part) must be an ungrounded BasePart which is a descendant of workspace.")
   local Index = table.find(Network["LostParts"],Part)
   if Index then
    table.remove(Network["LostParts"],Index)
   end
   return false
  end
  assert(typeof(Silent) == "boolean" or typeof(Silent) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg2 (Silent) must be a boolean or nil.")
  assert(typeof(ReturnFakePart) == "boolean" or typeof(ReturnFakePart) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg3 (ReturnFakePart) must be a boolean or nil.")
  if not table.find(Network["BaseParts"],Part) and not table.find(Network["LostParts"],Part) then
   table.insert(Network["BaseParts"],Part)
   Part.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
   if not Silent then
    Network["Output"].Send(print,"PartOwnership Output : PartOwnership applied to BasePart "..Part:GetFullName()..".")
   end
   if ReturnFakePart then
    local workspaceParts = {}
    return FakePart
   end
  else
   Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it already active.")
   return false
  end
 end

 Network["RemovePart"] = function(Part,Silent) --function for removing ownership of unanchored part
  assert(typeof(Part) == "Instance" and Part:IsA("BasePart"),Network["Output"].Prefix.."RemovePart Error : Invalid syntax: Arg1 (Part) must be a BasePart.")
  local Index1 = table.find(Network["BaseParts"],Part)
  local Index2 = table.find(Network["LostParts"],Part)
  if Index1 then
   table.remove(Network["BaseParts"],Index1)
  else
   if not Silent then
    Network["Output"].Send(warn,"RemovePart Warning : BasePart "..Part:GetFullName().." not found in BaseParts table.")
   end
   return
  end
  if Index2 then
   table.remove(Network["LostParts"],Index2)
  end
  if not Silent then
   Network["Output"].Send(print,"RemovePart Output: PartOwnership removed from BasePart "..Part:GetFullName()..".")
  end
 end

 Network["PartOwnership"]["PartCoroutine"] = coroutine.create(function(Part)
  if Part:IsDescendantOf(workspace) then
   if Network.CharacterRelative then
    local Character = Network["LastCharacter"];
    if not Character.PrimaryPart then
     for _,Inst in pairs(Character:GetDescendants()) do
      if Inst:IsA("BasePart") then
       Character.PrimaryPart = Inst
       break
      end
     end
    end
    if Character and Character.PrimaryPart then
     local Distance = (Character.PrimaryPart.Position - Part.Position).Magnitude
     if Distance > gethiddenproperty(LocalPlayer,"MaximumSimulationRadius") and not isnetworkowner(Part) then
      Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
      Network["RemovePart"](Part)
      if not Part:IsGrounded() then
       table.insert(Network["LostParts"],Part)
      else
       Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is grounded.")
      end
     end
    else
     Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
    end
   end
   Part.AssemblyLinearVelocity = (Part.AssemblyLinearVelocity.Unit+Vector3.new(.01,.01,.01))*(50+math.cos(tick()*10))
  else
   Network["RemovePart"](Part)
  end
 end)

 Network["PartOwnership"]["Enable"] = coroutine.create(function() --creating a thread for network stuff
  if not Network["PartOwnership"]["Enabled"] then
   Network["PartOwnership"]["Enabled"] = true
   Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus = LocalPlayer.ReplicationFocus
   LocalPlayer.ReplicationFocus = workspace
   Network["PartOwnership"]["PreMethodSettings"].SimulationRadius = gethiddenproperty(LocalPlayer,"SimulationRadius")
   Network["PartOwnership"]["Connection"] = RunService.Stepped:Connect(function()
    Network["LastCharacter"] = pcall(function() return LocalPlayer.Character end) or Network["LastCharacter"]
    sethiddenproperty(LocalPlayer,"SimulationRadius",1/0)
    coroutine.wrap(function()
     for _,Part in pairs(Network["BaseParts"]) do --loop through parts and do network stuff
      coroutine.resume(Network["PartOwnership"]["PartCoroutine"],Part)
      --[==[ [[by 4eyes btw]] ]==]--
     end
    end)()
    coroutine.wrap(function()
     for _,Part in pairs(Network["LostParts"]) do
      Network.RetainPart(Part,true)
     end
    end)()
   end)
   Network["Output"].Send(print,"PartOwnership Output : PartOwnership enabled.")
  else
   Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already enabled.")
  end
 end)

 Network["PartOwnership"]["Disable"] = coroutine.create(function()
  if Network["PartOwnership"]["Connection"] then
   Network["PartOwnership"]["Connection"]:Disconnect()
   LocalPlayer.ReplicationFocus = Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus
   sethiddenproperty(LocalPlayer,"SimulationRadius",Network["PartOwnership"]["PreMethodSettings"].SimulationRadius)
   Network["PartOwnership"]["PreMethodSettings"] = {}
   for _,Part in pairs(Network["BaseParts"]) do
    Network["RemovePart"](Part)
   end
   for Index,Part in pairs(Network["LostParts"]) do
    table.remove(Network["LostParts"],Index)
   end
   Network["PartOwnership"]["Enabled"] = false
   Network["Output"].Send(print,"PartOwnership Output : PartOwnership disabled.")
  else
   Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already disabled.")
  end
 end)

 Network["Output"].Send(print,": Loaded.")
end
coroutine.resume(Network["PartOwnership"]["Enable"])


player = game:GetService("Players").LocalPlayer
camera = workspace.CurrentCamera
character = player.Character
local vbreak = false
character.Archivable = true

player.Character = nil
player.Character = character:Clone()

wait(game:GetService("Players").RespawnTime+.3)

character.Humanoid.Health = 0


stuff = Instance.new("Folder",workspace)
center = Instance.new("Part",stuff)
input = game:GetService("UserInputService")

center.Anchored = true
center.Size = Vector3.new(1,1,1)
center.Position = character.Head.Position
center.CanCollide = false
center.Transparency = 1

camera.CameraSubject = center

points = {}

last_pos = character.Head.Position
coroutine.wrap(function()
 while task.wait() do
  if vbreak == true then break end
  center.CFrame = CFrame.new(center.Position) * camera.CFrame.Rotation
  if (last_pos - center.Position).magnitude > 1 then
   local marker = Instance.new("Part",stuff)
   marker.Anchored = true
   marker.Size = Vector3.new(1,1,1)
   marker.CFrame = CFrame.lookAt(last_pos,center.Position)
   marker.CanCollide = false
   marker.Transparency = 1
   last_pos = center.Position
   table.insert(points,marker)
  end
  if points[#points-9] then
   points[#points-9]:Destroy()
   table.remove(points,#points-9)
  end
 end
end)()

handles = {}

for i,v in pairs(character:GetChildren()) do
 if v:IsA("Accessory") then
  table.insert(handles,v.Handle)
 end
end

for i,handle in pairs(handles) do
 local number = i-1
 handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
 Network.RetainPart(handle)
 coroutine.wrap(function()
  while handle:FindFirstAncestor("Game") do
   if points[#points-number] then do
     handle.CFrame = points[#points-number].CFrame
    end else
    handle.CFrame = center.CFrame
   end
   task.wait()
  end
  vbreak = true
  player.Character = character
 end)()
end


current_position = character.Head.Position
wait(.5)
while wait() do
 if vbreak == true then break end
 if input:IsKeyDown(Enum.KeyCode.D) then
  current_position += camera.CFrame.RightVector * speed
 end
 if input:IsKeyDown(Enum.KeyCode.A) then
  current_position += camera.CFrame.RightVector * -speed
 end
 if input:IsKeyDown(Enum.KeyCode.W) then
  current_position += camera.CFrame.LookVector * speed
 end
 if input:IsKeyDown(Enum.KeyCode.S) then
  current_position += camera.CFrame.LookVector * -speed
 end
 if input:IsKeyDown(Enum.KeyCode.E) then
  current_position += camera.CFrame.UpVector * speed
 end
 if input:IsKeyDown(Enum.KeyCode.Q) then
  current_position += camera.CFrame.UpVector * -speed
 end
 if input:IsKeyDown(Enum.KeyCode.LeftShift) then do
   speed = 1.5
  end else
  speed = 0.75
 end
 center.Position = current_position
end
end)

Section:NewButton("c00l4l4n Decal Spam & Particles", "ButtonInfo", function()
    -- !!!Note!!!:only work on server side executor or backdoor executor
local msg = Instance.new("Message",workspace)
msg.Text = "Made By They_are666 [subs to Alan chiel] --team c00lkidd and team skrubl0rdz"
wait(5.8)
msg:Destroy()
s = Instance.new("Sky")
s.Name = "SKY"
s.SkyboxBk = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxDn = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxFt = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxLf = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxRt = "http://www.roblox.com/asset/?id=13784335227"
s.SkyboxUp = "http://www.roblox.com/asset/?id=13784335227"
s.Parent = game.Lighting
Spooky = Instance.new("Sound", game.Workspace)
Spooky.Name = "Spooky"
Spooky.SoundId = "rbxassetid://13784335227"
Spooky.Volume = 20
Spooky.Looped = true
Spooky:Play()
local ID =358313209 --id here
function spamDecal(v)
	if v:IsA("Part") then
		for i=0, 5 do
			D = Instance.new("Decal")
			D.Name = "MYDECALHUE"
			D.Face = i
			D.Parent = v
			D.Texture = ("http://www.roblox.com/asset/?id="..Id)
		end
	else
		if v:IsA("Model") then
			for a,b in pairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
end
function decalspam(id) --use this function, not the one on top
	Id = id
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
		for i=0, 5 do
			D = Instance.new("Decal")
			D.Name = "MYDECALHUE"
			D.Face = i
			D.Parent = v
			D.Texture = ("http://www.roblox.com/asset/?id="..id)
		end
	else
		if v:IsA("Model") then
			for a,b in pairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
end
end

decalspam(ID)
end)

Section:NewButton("infiniteyield FE🚨", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section:NewButton("BossHAXnormalFE🚨", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BOSSJKLO/BossHAXnormal/main/BossHAXnormal"))()
end)

Section:NewButton("Boss2v FE🚨", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/wfqWb6Lr"))()
end)

Section:NewButton("Skeleton Decal Spam", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/M7PxunKp"))()
end)

Section:NewButton("Doritus Particles", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KWmEQMkq"))()
end)

Section:NewButton("Mlg Particles", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/nriGxMtT"))()
end)

Section:NewButton("Illuminati Particles", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/UPAA82Fk"))()
end)

Section:NewButton("Anonymous Particles", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ryand56/Scripts/Scripts/anonymous%20all.txt"))()
end)

Section:NewButton("Donald Trump Particles", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/PJx5RP5F"))()
end)

Section:NewButton("Rc7 Particles", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cwvCvJ2g"))()
end)

Section:NewButton("Music", "ButtonInfo", function()
    local music = Instance.new("Sound", game.Workspace)
music.SoundId = "rbxassetid://6038276929"
music.Volume = 99999999999999999999999999999999999999999
music.Looped = true
music.PlayOnRemove = true
music:Play()
end)

Section:NewButton("Extra Disco", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AEhFRTNU"))()
end)

Section:NewButton("While", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/3MAUYqDv"))()
end)

Section:NewButton("Shedletskyify", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AZjLpdEp"))()
end)

--gui

local Tab = Window:NewTab("GUI")
local GUISection = Tab:NewSection("Scripts")


GUISection:NewButton("c00lgui Revival", "by jointeamCK for team c00lkidd 2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/theawesomari0/c00lgui-revival-public/main/c00lgui%20revival", true))()
end)

GUISection:NewButton("c00lgui Revival v2", "ButtonInfo", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/theawesomari0/c00lgui/main/c00lgui"), true))()
end)

GUISection:NewButton("1x1x1x1 Gui by Hidden", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/CYye6uA4"))()
end)

GUISection:NewButton("1x1x1x1 Gui² by Alan Chiel", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JipYNCht"))()
end)

GUISection:NewButton("c00lgui Reborn Rc7 by v3rx", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MiRw3b/c00lgui-v3rx/main/c00lguiv3rx.lua"))()
end)

GUISection:NewButton("c00lgui Reborn v0.5 by 007n7", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XQbGdCgW"))()
end)

GUISection:NewButton("c00lgui2 Remake", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ckid", true))()
end)

GUISection:NewButton("c00lgui2 Admin Panel Reborn v0.6 by 0O7m7", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/apanel", true))()
end)

GUISection:NewButton("legacy", "ButtonInfo", function()
    loadstring(game:GetObjects("rbxassetid://1683559539")[1].Source)()
end)

GUISection:NewButton("c00lgui Reawakened by JUK", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheOfficialPrivate/c00lkiddgui/main/C00lgui_REAWAKENED-1.txt"))()
end)

GUISection:NewButton("Mini c00lgui by c00lkidd, 14anz", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/UPZCQ31W"))()
end)

GUISection:NewButton("Boss_HAX 2v FE", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/wfqWb6Lr"))()
end)

GUISection:NewButton("c00lhub by LordMuhamad", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/PpdkLWnE"))()
end)

GUISection:NewButton("1x3x5x6 v2 by Team 1x3x5x6", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/172cdwzY"))()
end)

GUISection:NewButton("Server Curser Gui", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xN3i89wY"))()
end)

GUISection:NewButton("Lord Server Curser Gui by 16anz", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/x29MNaHd"))()
end)

GUISection:NewButton("1x1x1x1 Gui by Krnkidssus", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4V5qA9Wf"))()
end)

GUISection:NewButton("1x1x1x1 Gui Remake by 3x9x9x8", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zpjuEefG"))()
end)

GUISection:NewButton("1x1x1x1 Gui Remake 2 by 1x1x1x1 & c00lkidd", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/NVKQT0d7"))()
end)

GUISection:NewButton("1x1x1x1 Gui v1 by Servano", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6QjADBx8"))()
end)

GUISection:NewButton("1x1x1x1 Was Here Gui by tr0llskidd", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/3p1A81p1"))()
end)

GUISection:NewButton("1x1x1x1 Gui by c00lbykidzz", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/abbkgxut"))()
end)

GUISection:NewButton("Mini c00lgui by c00lbykidzz", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/M8zNv5bF"))()
end)

GUISection:NewButton("tr0ll Gui by LordMuhamad & debby", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/601SkA66"))()
end)

GUISection:NewButton("k00pgui v2 by team k00pkidd", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Lv3Z9RBh"))()
end)

GUISection:NewButton("k00pgui v6 by team k00pkidd", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/210Bw1Vv"))()
end)

GUISection:NewButton("Ep1c Gui Reborn by mmfv7 & k00pkidd", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/igxNevKu"))()
end)

GUISection:NewButton("Server Cruser Gui by Team_Null & Stupid Diego", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/g2Ccpr4N"))()
end)

GUISection:NewButton("k00p Reborn v1.0 by SlashCoders", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/aMtQRfDA",true))()
end)

GUISection:NewButton("FLY HAX GUI", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4XZptZCh"))()
end)

--server destruction

local Tab = Window:NewTab("Server Destruction")
local DestructionSection = Tab:NewSection("Scripts")

DestructionSection:NewButton("SPAM Server", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mgYfyaHU"))()
end)

DestructionSection:NewButton("1x1x1x1 Server Destruction v2", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/PySePRNM"))()
end)

DestructionSection:NewButton("1x1x1x1 Server Destruction v1", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/VvZKhtmD"))()
end)

DestructionSection:NewButton("Nuke Server Destruction", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/r4Laf2gh"))()
end)

--tools

local Tab = Window:NewTab("Tools")
local toolSection = Tab:NewSection("Scripts")

toolSection:NewButton("WTF Bomb Tool", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/TbfGQE3Y"))()
end)

toolSection:NewButton("Ball Bomb Tool", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5MMWBpcF"))()
end)

--fe bypass

local Tab = Window:NewTab("FE BYPASS")
local FeSection = Tab:NewSection("Scripts")

FeSection:NewButton("RC7 Remakes V2", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/gJmpy1rV"))()
end)

FeSection:NewButton("RC7", "ButtonInfo", function()
    loadstring(game:HttpGet(("https://pastebin.com/raw/Ywc4AWP2"), true))()
end)

FeSection:NewButton("RC7 BOSS 🚨", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/qDpcjCvL"))()
end)

FeSection:NewButton("k00pguiv3Beta", "ButtonInfo", function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/BOSSJKL2/Skid/main/S"))()
end)

FeSection:NewButton("bossgui", "ButtonInfo", function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/BOSSJKL2/UPDBOSJKLSO/main/UPDBOSJKLSORANKS"))()
end)

FeSection:NewButton("Restore Skybox", "ButtonInfo", function()

for i,v in pairs(game.Lighting:GetChildren()) do
v:Remove()
end
end)