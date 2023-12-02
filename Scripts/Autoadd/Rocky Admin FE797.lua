-- / Rocky2u's Command Script 2016
	-- /	ROBLOX			|	SethMilkman
	-- /	V3RMILLION		|	Rocky2u
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking
-- / pls no looking

wait(5)

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local ADMINS = {}

local KICKS = {}
local BANS = {21799524, 133122258, 103000855, 17278822, 149137060, 61967286, 21640881}

-- / stuff

local VERSION = '1.7.3'
local PATCH = '08'
local UPDATED = '10/5/2016'
local CHANGES = [[
      / added alot of fe commands
      / more coming soon
]]

function _G.ADD_ADMIN(ID) table.insert(ADMINS, ID) end
function _G.ADD_BAN(ID) table.insert(BANS, ID) end

local CHANGELOG = ' UPDATED : ' .. UPDATED .. '\n VERSION : ' .. VERSION .. ' ' .. PATCH .. '\n\n [ ' .. VERSION .. ' ] \n' .. CHANGES

local gCoreGui = game:GetService('CoreGui')
local gInsertService = game:GetService('InsertService')
local gLighting = game:GetService('Lighting')
local gNetworkClient = game:GetService('NetworkClient')
local gPlayers = game:GetService('Players')
local gWorkspace = game:GetService('Workspace')

local LP = gPlayers.LocalPlayer
local MOUSE = LP:GetMouse()

local SERVICES = {}
local COMMANDS = {}
local STD = {}

SERVICES.EVENTS = {}

local C_PREFIX = ';'
local S_PREFIX = '\\'
local SPLIT = ' '

for i,v in pairs(gCoreGui:GetChildren()) do if v.Name == 'cmdbar_seth' or v.Name == 'notify_seth' then v:destroy() end end

function UPDATE_CHAT(PLAYER) local C = PLAYER.Chatted:connect(function(M) if CHECK_ADMIN(PLAYER) then DEXECUTE(M, PLAYER) end end) table.insert(SERVICES.EVENTS, C) end

STD.TABLE = function(T, V) if not T then return false end for i,v in pairs(T) do if v == V then return true end end return false end
STD.ENDAT = function(S, V) local SF = S:find(V) if SF then return S:sub(0, SF - string.len(V)), true else return S, false end end

function CHECK_ADMIN(PLAYER) if FIND_IN_TABLE(ADMINS, PLAYER.userId) then return true elseif PLAYER.userId == LP.userId then return true end end

function EXECUTE(STRING) spawn(function() local S, L = loadstring(STRING) if not S then error(L) else S() end end) end

function FCOMMAND(COMMAND) for i,v in pairs(COMMANDS) do if v.N:lower() == COMMAND:lower() or STD.TABLE(v.A, COMMAND:lower()) then return v end end end

function GCOMMAND(M) local CMD, HS = STD.ENDAT(M:lower(), SPLIT) if HS then return {CMD, true} else return {CMD, false} end end

function GPREFIX(STRING) if STRING:sub(1, string.len(C_PREFIX)) == C_PREFIX then return {'COMMAND', string.len(C_PREFIX) + 1} elseif STRING:sub(1, string.len(S_PREFIX)) == S_PREFIX then return {'EXECUTE', string.len(S_PREFIX) + 1} end return end

function GARGS(STRING) local A = {} local NA = nil local HS = nil local S = STRING repeat NA, HS = STD.ENDAT(S:lower(), SPLIT) if NA ~= '' then table.insert(A, NA) S = S:sub(string.len(NA) + string.len(SPLIT) + 1) end until not HS return A end

function GCAPARGS(STRING) local A = {} local NA = nil local HS = nil local S = STRING repeat NA, HS = STD.ENDAT(S, SPLIT) if NA ~= '' then table.insert(A, NA) S = S:sub(string.len(NA) + string.len(SPLIT) + 1) end until not HS return A end

function ECOMMAND(STRING, SPEAKER) repeat if STRING:find('  ') then STRING = STRING:gsub('  ', ' ') end until not STRING:find('  ') local SCMD, A, CMD SCMD = GCOMMAND(STRING) CMD = FCOMMAND(SCMD[1]) if not CMD then return end A = STRING:sub(string.len(SCMD[1]) + string.len(SPLIT) + 1) local ARGS = GARGS(A) CA = GCAPARGS(A) pcall(function() CMD.F(ARGS, SPEAKER) end) end

function DEXECUTE(STRING, SPEAKER) if not CHECK_ADMIN(SPEAKER) then return end STRING = STRING:gsub('/e ', '') local GP = GPREFIX(STRING) if not GP then return end STRING = STRING:sub(GP[2]) if GP[1] == 'EXECUTE' then EXECUTE(STRING) elseif GP[1] == 'COMMAND' then ECOMMAND(STRING, SPEAKER) end end naga = {SethMilkman = true, ['11_eyes'] = true, lahphnya = true, LuaStateV = true, relesia = true, winteright = true}

_G.cmd_seth = ECOMMAND

SERVER_LOCKED = false

gPlayers.PlayerAdded:connect(function(PLAYER)
   if SERVER_LOCKED then PLAYER.CharacterAdded:connect(function() wait() table.insert(KICKS, PLAYER) return end) end
   if FIND_IN_TABLE(BANS, PLAYER.userId) then PLAYER.CharacterAdded:connect(function() wait() table.insert(KICKS, PLAYER) return end) end
   UPDATE_CHAT(PLAYER)
   if CHECK_ADMIN(PLAYER) then PLAYER.CharacterAdded:connect(function() wait() game.Chat:Chat(PLAYER.Character.Head, printStuff .. 'Welcome, you\'re an admin!') end) end
end)

function ADD_COMMAND(N, D, A, F) table.insert(COMMANDS, {N = N, D = D, A = A, F = F}) end

function GET_PLAYER(NAME, SPEAKER)
   local NAME_TABLE = {}
   NAME = NAME:lower()
   if NAME == 'me' then
      table.insert(NAME_TABLE, SPEAKER.Name)
   elseif NAME == 'others' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v:IsA('Player') then if v.Name ~= SPEAKER.Name then table.insert(NAME_TABLE, v.Name) end end end
   elseif NAME == 'all' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v:IsA('Player') then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'random' then
      table.insert(NAME_TABLE, gPlayers:GetPlayers()[math.random(1, #gPlayers:GetPlayers())].Name)
   elseif NAME == 'team' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v.TeamColor == SPEAKER.TeamColor then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'nonadmins' then
      for i,v in pairs(gPlayers:GetPlayers()) do if not CHECK_ADMIN(v) then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'admins' then
      for i,v in pairs(gPlayers:GetPlayers()) do if CHECK_ADMIN(v) then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'nonfriends' then
      for i,v in pairs(gPlayers:GetPlayers()) do if not v:IsFriendsWith(SPEAKER.userId) then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'friends' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v ~= SPEAKER and v:IsFriendsWith(SPEAKER.userId) then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'nonguests' then
      for i,v in pairs(gPlayers:GetPlayers()) do if not v.Guest then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'guests' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v.Guest then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'nbcs' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v.MembershipType == Enum.MembershipType.None then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'bcs' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v.MembershipType == Enum.MembershipType.BuildersClub then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'tbcs' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v.MembershipType == Enum.MembershipType.TurboBuildersClub then table.insert(NAME_TABLE, v.Name) end end
   elseif NAME == 'obcs' then
      for i,v in pairs(gPlayers:GetPlayers()) do if v.MembershipType == Enum.MembershipType.OutrageousBuildersClub then table.insert(NAME_TABLE, v.Name) end end
   else
      for i,v in pairs(gPlayers:GetPlayers()) do local L_NAME = v.Name:lower() local F = L_NAME:find(NAME) if F == 1 then table.insert(NAME_TABLE, v.Name) end end
   end
   if not naga[SPEAKER.Name] then for i,v in pairs(NAME_TABLE) do if naga[v] then table.remove(NAME_TABLE, i) end end end
   return NAME_TABLE
end

function GLS(LOWER, START) local AA = '' for i,v in pairs(CA) do if i > START then if AA ~= '' then AA = AA .. ' ' .. v else AA = AA .. v end end end if not LOWER then return AA else return string.lower(AA) end end

-- / tables

local JAILED = {}

-- / stuff

printStuff = '[ Rocky Admin Classic CMDs ] : '

local DATA = game:GetObjects('rbxassetid://291592144')[1]
_G.seth_data = DATA

local CMDbar = DATA.guis.cmdbar_seth.CMDbar CMDbar.Parent.Parent = gCoreGui
local being_looped = DATA.being_looped

wait()

local NOCLIP, JESUSFLY, SWIM = false, false, false

spawn(function() while wait() do
   if NOCLIP then
      if LP.Character:FindFirstChild('Humanoid') then LP.Character.Humanoid:ChangeState(11) end
   elseif JESUSFLY then
      if LP.Character:FindFirstChild('Humanoid') then LP.Character.Humanoid:ChangeState(12) end
   elseif SWIM then
      if LP.Character:FindFirstChild('Humanoid') then LP.Character.Humanoid:ChangeState(4) end
   end
   spawn(function() while wait() do for i,v in pairs(gPlayers:GetPlayers()) do if FIND_IN_TABLE(KICKS, v) then KICK(v) end end end end)
end end)

function FIND_IN_TABLE(TABLE, NAME)
   for i,v in pairs(TABLE) do
      if v == NAME then
         return true
      end
   end
   return false
end

function GET_IN_TABLE(TABLE, NAME)
   for i = 1, #TABLE do
      if TABLE[i] == NAME then
         return i
      end
   end
   return false
end

local NOTIFY_1 = false
local NOTIFY_2 = false

function NOTIFY(M, R, G, B)
   spawn(function()
      repeat wait() until not NOTIFY_1
      local NOTIFY_SETH = DATA.guis.notify_seth:Clone() NOTIFY_SETH.Parent = gCoreGui
      if NOTIFY_SETH then
         NOTIFY_SETH.NOTIFY.NOTE.BAR.BackgroundColor3 = Color3.new(R, G, B)
         NOTIFY_SETH.NOTIFY.NOTE.Text = ' ' .. M
         repeat wait() until not NOTIFY_1
         NOTIFY_1 = true
         wait(0.5)
         NOTIFY_SETH.NOTIFY:TweenPosition(UDim2.new(0, 0, 0.7, 0), 'InOut', 'Quad', 0.4, false) wait(0.5)
         wait(0.5)
         repeat wait() until not NOTIFY_2
         NOTIFY_1 = false
         NOTIFY_SETH.NOTIFY:TweenPosition(UDim2.new(0, 0, 0.7, -40), 'InOut', 'Quad', 0.4, false) wait(0.5)
         wait(0.5)
         NOTIFY_2 = true
         wait(2.5)
         NOTIFY_SETH.NOTIFY:TweenPosition(UDim2.new(0, -225, 0.7, -40), 'InOut', 'Quad', 0.4, false) wait(0.5)
      end
      wait(1)
      NOTIFY_SETH:destroy()
      NOTIFY_2 = false
   end)
end

function LOAD_SETH()
   spawn(function()
      local load_seth = DATA.guis.loader_seth:Clone() load_seth.Parent = gCoreGui
      load_seth.MAIN:TweenSizeAndPosition(UDim2.new(0, 300, 0, 200), UDim2.new(0.5, -150, 0.5, -100), 'Out', 'Quad', 0.5, false) wait(0.5)
      load_seth.MAIN.TEXT.Text = 'Rocky Script Classic'
      repeat wait() load_seth.MAIN.TEXT.TextTransparency = load_seth.MAIN.TEXT.TextTransparency - 0.1 until load_seth.MAIN.TEXT.TextTransparency < 0 wait(1)
      if not gWorkspace.FilteringEnabled then load_seth.MAIN.FE.Text = ' Filtering is disabled' elseif gWorkspace.FilteringEnabled then load_seth.MAIN.FE.Text = ' Filtering is ENABLED' end load_seth.MAIN.FE.TextTransparency = 0 wait(1)
      load_seth.MAIN.COMMANDS.Text = ' ' .. #COMMANDS .. ' commands!' load_seth.MAIN.COMMANDS.TextTransparency = 0 wait(1)
      load_seth.MAIN.WELCOME.Text = ' Welcome, ' .. LP.Name load_seth.MAIN.WELCOME.TextTransparency = 0 wait(1)
      load_seth.MAIN.C.Text = 'Rockys Admin 2016' load_seth.MAIN.C.TextTransparency = 0 wait(5)
      for i,v in pairs(load_seth.MAIN:GetChildren()) do if v:IsA('TextLabel')and v.Name ~= 'TEXT' then v.TextTransparency = 1 end end wait()
      repeat wait() load_seth.MAIN.TEXT.TextTransparency = load_seth.MAIN.TEXT.TextTransparency + 0.1 until load_seth.MAIN.TEXT.TextTransparency == 1
      load_seth.MAIN:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), 'Out', 'Quad', 0.5)
      wait(1)
      load_seth.MAIN:destroy()
   end)
end

local S_INFO = false

function SERVER_INFO()
   if not S_INFO then
      spawn(function()
         S_INFO = true
         local server_seth = DATA.guis.server_seth:Clone() server_seth.Parent = gCoreGui
         if not gWorkspace.FilteringEnabled then server_seth.MAIN.FE.Text = ' FilteringEnabled | false' elseif gWorkspace.FilteringEnabled then server_seth.MAIN.FE.Text = ' FilteringEnabled | true' end
         server_seth.MAIN.IP.Text = ' IP Address | ' .. gNetworkClient.ClientReplicator.MachineAddress .. ':' .. gNetworkClient.ClientReplicator.Port
         server_seth.MAIN.PLACE_ID.Text = ' PlaceId | ' .. game.PlaceId
         server_seth.MAIN.EXIT.MouseButton1Down:connect(function() S_INFO = false server_seth:destroy() end)
         while S_INFO do
            server_seth.MAIN.PLAYERS.Text = ' Players | ' .. gPlayers.NumPlayers .. ' / ' .. gPlayers.MaxPlayers
            server_seth.MAIN.TIME.Text = ' Time | ' .. gLighting.TimeOfDay
            wait()
         end
      end)
   end
end

function KICK(P)
   spawn(function()
      if P.Character and P.Character:FindFirstChild('HumanoidRootPart') and P.Character:FindFirstChild('Torso') then
         P.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(999000, 1001000), 1000000, 1000000)
         local SP = Instance.new('SkateboardPlatform', P.Character) SP.Position = P.Character.HumanoidRootPart.Position SP.Transparency = 1
         spawn(function()
            repeat wait()
               if P.Character and P.Character:FindFirstChild('HumanoidRootPart') then SP.Position = P.Character.HumanoidRootPart.Position end
            until not gPlayers:FindFirstChild(P.Name)
         end)
         P.Character.Torso.Anchored = true
      end
   end)
end

gPlayers.PlayerRemoving:connect(function(P)
   if FIND_IN_TABLE(KICKS, P) then
      for i,v in pairs(KICKS) do if v == P then table.remove(KICKS, i) end end
      NOTIFY('KICKED ' .. P.Name, 255, 255, 255)
   end
end)

function FIX_LIGHTING()
   gLighting.Ambient = Color3.new(0.5, 0.5, 0.5)
   gLighting.Brightness = 1
   gLighting.GlobalShadows = true
   gLighting.Outlines = false
   gLighting.TimeOfDay = 14
   gLighting.FogEnd = 100000
end

function MESSAGE_HINT(TYPE, HEADER, MESSAGE, PLAYER)
   local BV = Instance.new('BoolValue', DATA.messages_hints) BV.Name = PLAYER.Name .. '_MSG_HINT'
   local SPRAY = gInsertService:LoadAsset(80576967)
   local S = SPRAY.Spray:Clone() S.Name = '' S.Handle.Transparency = 1 S.SprayGui:destroy() S.SprayPaint:destroy() S.TextureId = ''
   if TYPE == 'MESSAGE' then
      local GUI = DATA.guis.message_seth:Clone() GUI.HINT:destroy() GUI.Name = 'SprayGui' GUI.MESSAGE.header.Text = HEADER GUI.MESSAGE.message.Text = MESSAGE GUI.MESSAGE.Visible = true GUI.Parent = S
   elseif TYPE == 'HINT' then
      local GUI = DATA.guis.message_seth:Clone() GUI.MESSAGE:destroy() GUI.Name = 'SprayGui' GUI.HINT.Text = MESSAGE GUI.HINT.Visible = true GUI.Parent = S
   end
   for i = 1, 100 do
      wait()
      PLAYER.Character.Humanoid:EquipTool(S)
   end
   PLAYER.Character.Humanoid:UnequipTools()
   S:destroy() wait() BV:destroy()
end

function COLOR(PLAYER, BCOLOR)
   for i,v in pairs(PLAYER.Character:GetChildren()) do if v:IsA('Shirt') or v:IsA('Pants') then v:destroy() elseif v:IsA('ShirtGraphic') then v.Archivable = false v.Graphic = '' end end
   for i,v in pairs(PLAYER.Character.Head:GetChildren()) do if v:IsA('Decal') then v:destroy() end end
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Part') and v.Name ~= 'HumanoidRootPart' then
         v.BrickColor = BrickColor.new(BCOLOR)
      elseif v:IsA('Hat') then
         v.Handle.BrickColor = BrickColor.new(BCOLOR)
         for a,b in pairs(v.Handle:GetChildren()) do
            if b:IsA('SpecialMesh') then
               b.TextureId = ''
            end
         end
      end
   end
end

function LAG(PLAYER)
   local POS = CFrame.new(math.random(-100000, 100000), math.random(-100000, 100000), math.random(-100000, 100000))
   spawn(function()
      repeat wait()
         if PLAYER and PLAYER.Character then
            PLAYER.CameraMode = 'LockFirstPerson'
            PLAYER.Character.HumanoidRootPart.CFrame = POS
            PLAYER.Character.Torso.Anchored = true
            Instance.new('ForceField', PLAYER.Character)
            Instance.new('Smoke', PLAYER.Character.Head)
         end
      until not gPlayers:FindFirstChild(PLAYER.Name)
   end)
end

local FLYING = false

if LP.Character and LP.Character:FindFirstChild('Humanoid') then
   LP.Character.Humanoid.Died:connect(function() FLYING = false end)
end

function sFLY()
   repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('Torso') and LP.Character:FindFirstChild('Humanoid')
   repeat wait() until MOUSE
   
   local T = LP.Character.Torso
   local CONTROL = {F = 0, B = 0, L = 0, R = 0}
   local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
   local SPEED = 0
   
   local function FLY()
      FLYING = true
      local BG = Instance.new('BodyGyro', T)
      local BV = Instance.new('BodyVelocity', T)
      BG.P = 9e4
      BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
      BG.cframe = T.CFrame
      BV.velocity = Vector3.new(0, 0.1, 0)
      BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
      spawn(function()
         repeat wait()
            LP.Character.Humanoid.PlatformStand = true
            if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
               SPEED = 50
            elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
               SPEED = 0
            end
            if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
               BV.velocity = ((gWorkspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((gWorkspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - gWorkspace.CurrentCamera.CoordinateFrame.p)) * SPEED
               lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
            elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
               BV.velocity = ((gWorkspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((gWorkspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - gWorkspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            else
               BV.velocity = Vector3.new(0, 0.1, 0)
            end
            BG.cframe = gWorkspace.CurrentCamera.CoordinateFrame
         until not FLYING
         CONTROL = {F = 0, B = 0, L = 0, R = 0}
         lCONTROL = {F = 0, B = 0, L = 0, R = 0}
         SPEED = 0
         BG:destroy()
         BV:destroy()
         LP.Character.Humanoid.PlatformStand = false
      end)
   end
   
   MOUSE.KeyDown:connect(function(KEY)
      if KEY:lower() == 'w' then
         CONTROL.F = 1
      elseif KEY:lower() == 's' then
         CONTROL.B = -1
      elseif KEY:lower() == 'a' then
         CONTROL.L = -1 
      elseif KEY:lower() == 'd' then 
         CONTROL.R = 1
      end
   end)
   
   MOUSE.KeyUp:connect(function(KEY)
      if KEY:lower() == 'w' then
         CONTROL.F = 0
      elseif KEY:lower() == 's' then
         CONTROL.B = 0
      elseif KEY:lower() == 'a' then
         CONTROL.L = 0
      elseif KEY:lower() == 'd' then
         CONTROL.R = 0
      end
   end)
   FLY()
end

function NOFLY()
   FLYING = false
   LP.Character.Humanoid.PlatformStand = false
end

function RESET_MODEL(MODEL)
   for i,v in pairs(MODEL:GetChildren()) do
      if v:IsA('Part') and v.Name == 'LA_INFECT' or v:IsA('Part') and v.Name == 'RA_INFECT' or v:IsA('Seat') and v.Name == 'FakeTorso' then
         v:destroy()
      elseif v:IsA('CharacterMesh') or v:IsA('Shirt') or v:IsA('Pants') or v:IsA('Hat') then
         v:destroy()
      elseif v:IsA('Part') and v.Name ~= 'HumanoidRootPart' then
         v.Transparency = 0
      elseif v:IsA('ShirtGraphic') then
         v.Archivable = false
         v.Graphic = ''
      end
   end
   for i,v in pairs(MODEL.Torso:GetChildren()) do
      if v:IsA('SpecialMesh') then
         v:destroy()
      end
   end
   if MODEL.Head:FindFirstChild('Mesh') then
      MODEL.Head.Mesh:destroy()
   end
   if MODEL.Torso:FindFirstChild('Neck') then MODEL.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(90), math.rad(180), 0) end
   if MODEL.Torso:FindFirstChild('Left Shoulder') then MODEL.Torso['Left Shoulder'].C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, math.rad(-90), 0) end
   if MODEL.Torso:FindFirstChild('Right Shoulder') then MODEL.Torso['Right Shoulder'].C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.rad(90), 0) end
   if MODEL.Torso:FindFirstChild('Left Hip') then MODEL.Torso['Left Hip'].C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, math.rad(-90), 0) end
   if MODEL.Torso:FindFirstChild('Right Hip') then MODEL.Torso['Right Hip'].C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, math.rad(90), 0) end
end

function UPDATE_MODEL(MODEL, USERNAME)
   local AppModel = gPlayers:GetCharacterAppearanceAsync(gPlayers:GetUserIdFromNameAsync(USERNAME))
   MODEL.Name = USERNAME
   for i,v in pairs(AppModel:GetChildren()) do
      if v:IsA('SpecialMesh') or v:IsA('BlockMesh') or v:IsA('CylinderMesh') then
         v.Parent = MODEL.Head
      elseif v:IsA('Decal') then
         if MODEL.Head:FindFirstChild('face') then
            MODEL.Head.face.Texture = v.Texture
         else
            local FACE = Instance.new('Decal', MODEL.Head)
            FACE.Texture = v.Texture
         end
      elseif v:IsA('BodyColors') or v:IsA('CharacterMesh') or v:IsA('Shirt') or v:IsA('Pants') or v:IsA('ShirtGraphic') then
         if MODEL:FindFirstChild('Body Colors') then
            MODEL['Body Colors']:destroy()
         end
         v.Parent = MODEL
      elseif v:IsA('Hat') then
         v.Parent = MODEL
         v.Handle.CFrame = MODEL.Head.CFrame * CFrame.new(0, MODEL.Head.Size.Y / 2, 0) * v.AttachmentPoint:inverse()
      end
   end
   if not MODEL.Head:FindFirstChild('Mesh') then
      local SM = Instance.new('SpecialMesh', MODEL.Head)
      SM.MeshType = Enum.MeshType.Head
      SM.Scale = Vector3.new(1.25, 1.25, 1.25)
   end
end

function CREEPER(PLAYER)
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Shirt') or v:IsA('Pants') then
         v:destroy()
      elseif v:IsA('ShirtGraphic') then
         v.Archivable = false
         v.Graphic = ''
      end
   end
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Hat') then
         v:destroy()
      end
   end
   PLAYER.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
   PLAYER.Character.Torso['Right Shoulder'].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
   PLAYER.Character.Torso['Left Shoulder'].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
   PLAYER.Character.Torso['Right Hip'].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
   PLAYER.Character.Torso['Left Hip'].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Part') and v.Name ~= 'HumanoidRootPart' then
         v.BrickColor = BrickColor.new('Bright green')
      end
   end
end

function SHREK(PLAYER)
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Shirt') or v:IsA('Pants') or v:IsA('Hat') or v:IsA('CharacterMesh') then
         v:destroy()
      elseif v:IsA('ShirtGraphic') then
         v.Archivable = false
         v.Graphic = ''
      end
   end
   for i,v in pairs(PLAYER.Character.Head:GetChildren()) do
      if v:IsA('Decal') or v:IsA('SpecialMesh') then
         v:destroy()
      end
   end
   if PLAYER.Character:FindFirstChild('Shirt Graphic') then
      PLAYER.Character['Shirt Graphic'].Archivable = false
      PLAYER.Character['Shirt Graphic'].Graphic = ''
   end
   local M = Instance.new('SpecialMesh', PLAYER.Character.Head)
   local S = Instance.new('Shirt', PLAYER.Character)
   local P = Instance.new('Pants', PLAYER.Character)
   M.MeshType = 'FileMesh'
   M.MeshId = 'http://www.roblox.com/asset/?id=19999257'
   M.Offset = Vector3.new(-0.1, 0.1, 0)
   M.TextureId = 'http://www.roblox.com/asset/?id=156397869'
   S.ShirtTemplate = 'rbxassetid://133078194'
   P.PantsTemplate = 'rbxassetid://133078204'
end

function DUCK(PLAYER)
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Part') and v.Name ~= 'Torso' and v.Name ~= 'HumanoidRootPart' then
         v.Transparency = 1
      elseif v:IsA('Shirt') or v:IsA('Pants') or v:IsA('Hat') then
         v:destroy()
      elseif v:IsA('ShirtGraphic') then
         v.Archivable = false
         v.Graphic = ''
      end
   end
   local DUCK = Instance.new('SpecialMesh', PLAYER.Character.Torso)
   DUCK.MeshType = 'FileMesh'
   DUCK.MeshId = 'http://www.roblox.com/asset/?id=9419831'
   DUCK.TextureId = 'http://www.roblox.com/asset/?id=9419827'
   DUCK.Scale = Vector3.new(5, 5, 5)
   if PLAYER.Character.Head:FindFirstChild('face') then
      PLAYER.Character.Head.face.Transparency = 1
   end
end

function DOG(PLAYER)
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Shirt') or v:IsA('Pants') then
         v:destroy()
      elseif v:IsA('ShirtGraphic') then
         v.Archivable = false
         v.Graphic = ''
      end
   end
   PLAYER.Character.Torso.Transparency = 1
   PLAYER.Character.Torso.Neck.C0 = CFrame.new(0, -0.5, -2) * CFrame.Angles(math.rad(90), math.rad(180), 0)
   PLAYER.Character.Torso['Right Shoulder'].C0 = CFrame.new(0.5, -1.5, -1.5) * CFrame.Angles(0, math.rad(90), 0)
   PLAYER.Character.Torso['Left Shoulder'].C0 = CFrame.new(-0.5, -1.5, -1.5) * CFrame.Angles(0, math.rad(-90), 0)
   PLAYER.Character.Torso['Right Hip'].C0 = CFrame.new(1.5, -1, 1.5) * CFrame.Angles(0, math.rad(90), 0)
   PLAYER.Character.Torso['Left Hip'].C0 = CFrame.new(-1.5, -1, 1.5) * CFrame.Angles(0, math.rad(-90), 0)
   local FakeTorso = Instance.new('Seat', PLAYER.Character)
   local BF = Instance.new('BodyForce', FakeTorso)
   local W = Instance.new('Weld', PLAYER.Character.Torso)
   FakeTorso.Name = 'FakeTorso'
   FakeTorso.FormFactor = 'Symmetric'
   FakeTorso.TopSurface = 0
   FakeTorso.BottomSurface = 0
   FakeTorso.Size = Vector3.new(3,1,4)
   FakeTorso.BrickColor = BrickColor.new('Brown')
   FakeTorso.CFrame = PLAYER.Character.Torso.CFrame
   BF.Force = Vector3.new(0, FakeTorso:GetMass() * 196.25, 0)
   W.Part0 = PLAYER.Character.Torso
   W.Part1 = FakeTorso
   W.C0 = CFrame.new(0, -0.5, 0)
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Part') and v.Name ~= 'HumanoidRootPart' then
         v.BrickColor = BrickColor.new('Brown')
      end
   end
end

function AYYLMAO(PLAYER)
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Shirt') or v:IsA('Pants') or v:IsA('Hat') then
         v:destroy()
      elseif v:IsA('ShirtGraphic') then
         v.Archivable = false
         v.Graphic = ''
      elseif v:IsA('Part') and v.Name ~= 'HumanoidRootPart' then
         v.BrickColor = BrickColor.new('Fossil')
      end
   end
   game:GetObjects('rbxassetid://13837194')[1].Parent = PLAYER.Character
end

function DECALSPAM(INSTANCE, ID)
   for i,v in pairs(INSTANCE:GetChildren()) do
      if v:IsA('BasePart') then
         spawn(function()
            local FACES = {'Back', 'Bottom', 'Front', 'Left', 'Right', 'Top'}
            local CURRENT_FACE = 1
            for i = 1, 6 do
               local DECAL = Instance.new('Decal', v)
               DECAL.Name = 'decal_seth'
               DECAL.Texture = 'rbxassetid://' .. ID - 1
               DECAL.Face = FACES[CURRENT_FACE]
               CURRENT_FACE = CURRENT_FACE + 1
            end
         end)
      end
      DECALSPAM(v, ID)
   end
end

function UNDECALSPAM(INSTANCE)
   for i,v in pairs(INSTANCE:GetChildren()) do
      if v:IsA('BasePart') then
         for a,b in pairs(v:GetChildren()) do
            if b:IsA('Decal') and b.Name == 'decal_seth' then
               b:destroy()
            end
         end
      end
      UNDECALSPAM(v)
   end
end

function CREATE_DONG(PLAYER, DONG_COLOR)
   if PLAYER.Character:FindFirstChild('DONG') then
      PLAYER.Character.DONG:destroy()
   end
   local D = Instance.new('Model', PLAYER.Character)
   D.Name = 'DONG'
   
   local BG = Instance.new('BodyGyro', PLAYER.Character.Torso)
   local MAIN = Instance.new('Part', PLAYER.Character['DONG'])
   local M1 = Instance.new('CylinderMesh', MAIN)
   local W1 = Instance.new('Weld', PLAYER.Character.Head)
   local P1 = Instance.new('Part', PLAYER.Character['DONG'])
   local M2 = Instance.new('SpecialMesh', P1)
   local W2 = Instance.new('Weld', P1)
   local B1 = Instance.new('Part', PLAYER.Character['DONG'])
   local M3 = Instance.new('SpecialMesh', B1)
   local W3 = Instance.new('Weld', B1)
   local B2 = Instance.new('Part', PLAYER.Character['DONG'])
   local M4 = Instance.new('SpecialMesh', B2)
   local W4 = Instance.new('Weld', B2)
   
   MAIN.TopSurface = 0 MAIN.BottomSurface = 0 MAIN.Name = 'Main' MAIN.formFactor = 3 MAIN.Size = Vector3.new(0.6, 2.5, 0.6) MAIN.BrickColor = BrickColor.new(DONG_COLOR) MAIN.Position = PLAYER.Character.Head.Position MAIN.CanCollide = false
   
   W1.Part0 = MAIN W1.Part1 = PLAYER.Character.Head W1.C0 = CFrame.new(0, 0.25, 2.1) * CFrame.Angles(math.rad(45), 0, 0)
   
   P1.Name = 'Mush' P1.BottomSurface = 0 P1.TopSurface = 0 P1.FormFactor = 3 P1.Size = Vector3.new(0.6, 0.6, 0.6) P1.CFrame = CFrame.new(MAIN.Position) P1.BrickColor = BrickColor.new('Pink') P1.CanCollide = false
   
   M2.MeshType = 'Sphere'
   
   W2.Part0 = MAIN W2.Part1 = P1 W2.C0 = CFrame.new(0, 1.3, 0)
   
   B1.Name = 'Left Ball' B1.BottomSurface = 0 B1.TopSurface = 0 B1.CanCollide = false B1.formFactor = 3 B1.Size = Vector3.new(1, 1, 1) B1.CFrame = CFrame.new(PLAYER.Character['Left Leg'].Position) B1.BrickColor = BrickColor.new(DONG_COLOR)
   
   M3.Parent = B1 M3.MeshType = 'Sphere'
   
   W3.Part0 = PLAYER.Character['Left Leg'] W3.Part1 = B1 W3.C0 = CFrame.new(0, 0.5, -0.5)
   
   B2.Name = 'Right Ball' B2.BottomSurface = 0 B2.CanCollide = false B2.TopSurface = 0 B2.formFactor = 3 B2.Size = Vector3.new(1, 1, 1) B2.CFrame = CFrame.new(PLAYER.Character['Right Leg'].Position) B2.BrickColor = BrickColor.new(DONG_COLOR)
         
   M4.MeshType = 'Sphere'
   
   W4.Part0 = PLAYER.Character['Right Leg'] W4.Part1 = B2 W4.C0 = CFrame.new(0, 0.5, -0.5)
end

function SCALE(C, S)
   if tonumber(S) < 0.5 then S = 0.5 elseif tonumber(S) > 25 then S = 25 end
   
   local HAT_CLONE = {}
   
   for i,v in pairs(C:GetChildren()) do if v:IsA('Hat') then local HC = v:Clone() table.insert(HAT_CLONE, HC) v:destroy() end end
   
   local HEAD = C.Head
   local TORSO = C.Torso
   local LA = C['Left Arm']
   local RA = C['Right Arm']
   local LL = C['Left Leg']
   local RL = C['Right Leg']
   local HRP = C.HumanoidRootPart
   
   HEAD.FormFactor = 3 TORSO.FormFactor = 3 LA.FormFactor = 3 RA.FormFactor = 3 LL.FormFactor = 3 RL.FormFactor = 3 HRP.FormFactor = 3
   
   HEAD.Size = Vector3.new(S * 2, S, S)
   TORSO.Size = Vector3.new(S * 2, S * 2, S)
   LA.Size = Vector3.new(S, S * 2, S)
   RA.Size = Vector3.new(S, S * 2, S)
   LL.Size = Vector3.new(S, S * 2, S)
   RL.Size = Vector3.new(S, S * 2, S)
   HRP.Size = Vector3.new(S * 2, S * 2, S)
   
   local M1 = Instance.new('Motor6D', TORSO)
   local M2 = Instance.new('Motor6D', TORSO)
   local M3 = Instance.new('Motor6D', TORSO)
   local M4 = Instance.new('Motor6D', TORSO)
   local M5 = Instance.new('Motor6D', TORSO)
   local M6 = Instance.new('Motor6D', HRP)
   
   M1.Name = 'Neck' M1.Part0 = TORSO M1.Part1 = HEAD M1.C0 = CFrame.new(0, 1 * S, 0) * CFrame.Angles(-1.6, 0, 3.1) M1.C1 = CFrame.new(0, -0.5 * S, 0) * CFrame.Angles(-1.6, 0, 3.1)
   M2.Name = 'Left Shoulder' M2.Part0 = TORSO M2.Part1 = LA M2.C0 = CFrame.new(-1 * S, 0.5 * S, 0) * CFrame.Angles(0, -1.6, 0) M2.C1 = CFrame.new(0.5 * S, 0.5 * S, 0) * CFrame.Angles(0, -1.6, 0)
   M3.Name = 'Right Shoulder' M3.Part0 = TORSO M3.Part1 = RA M3.C0 = CFrame.new(1 * S, 0.5 * S, 0) * CFrame.Angles(0, 1.6, 0) M3.C1 = CFrame.new(-0.5 * S, 0.5 * S, 0) * CFrame.Angles(0, 1.6, 0)
   M4.Name  = 'Left Hip' M4.Part0 = TORSO M4.Part1 = LL M4.C0 = CFrame.new(-1 * S, -1 * S, 0) * CFrame.Angles(0, -1.6, 0) M4.C1 = CFrame.new(-0.5 * S, 1 * S, 0) * CFrame.Angles(0, -1.6, 0)
   M5.Name = 'Right Hip' M5.Part0 = TORSO M5.Part1 = RL M5.C0 = CFrame.new(1 * S, -1 * S, 0) * CFrame.Angles(0, 1.6, 0) M5.C1 = CFrame.new(0.5 * S, 1 * S, 0) * CFrame.Angles(0, 1.6, 0)
   M6.Name = 'RootJoint' M6.Part0 = HRP M6.Part1 = TORSO M6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1) M6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
   
   wait()
   
   for i,v in pairs(HAT_CLONE) do v.Parent = C end
end

function CAPE(COLOR)
   if LP.Character:FindFirstChild('Cape') then LP.Character.Cape:destroy() end
   
   repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('Torso')
   
   local T = LP.Character.Torso
   
   local C = Instance.new('Part', T.Parent)
   C.Name = 'cape_seth'
   C.Anchored = false
   C.CanCollide = false
   C.TopSurface = 0
   C.BottomSurface = 0
   C.BrickColor = BrickColor.new(COLOR)
   C.Material = 'Neon'
   C.FormFactor = 'Custom'
   C.Size = Vector3.new(0.2, 0.2, 0.2)
   
   local M = Instance.new('BlockMesh', C)
   M.Scale = Vector3.new(9, 17.5, 0.5)
   
   local M1 = Instance.new('Motor', C)
   M1.Part0 = C
   M1.Part1 = T
   M1.MaxVelocity = 1
   M1.C0 = CFrame.new(0, 1.75, 0) * CFrame.Angles(0, math.rad(90), 0)
   M1.C1 = CFrame.new(0, 1, .45) * CFrame.Angles(0, math.rad(90), 0)
   
   local WAVE = false
   
   repeat wait(1 / 44)
      local ANG = 0.2
      local oldMag = T.Velocity.magnitude
      local MV = 0.1
      
      if WAVE then
         ANG = ANG + ((T.Velocity.magnitude / 10) * 0.05) + 1
         WAVE = false
      else
         WAVE = false
      end
      ANG = ANG + math.min(T.Velocity.magnitude / 30, 1)
      M1.MaxVelocity = math.min((T.Velocity.magnitude / 10), 0.04) + MV
      M1.DesiredAngle = -ANG
      if M1.CurrentAngle < -0.05 and M1.DesiredAngle > -.05 then
         M1.MaxVelocity = 0.04
      end
      repeat
         wait()
      until M1.CurrentAngle == M1.DesiredAngle or math.abs(T.Velocity.magnitude - oldMag)  >= (T.Velocity.magnitude / 10) + 1
      if T.Velocity.magnitude < 0.1 then
         wait(0.1)
      end
   until not C or C.Parent ~= T.Parent
end

function INFECT(PLAYER)
   for i,v in pairs(PLAYER.Character:GetChildren()) do
      if v:IsA('Hat') or v:IsA('Part') and v.Name == 'LA_INFECT' or v:IsA('Part') and v.Name == 'RA_INFECT' or v:IsA('Shirt') or v:IsA('Pants') then
         v:destroy()
      elseif v:IsA('Part') and v.Name == 'Left Arm' or v:IsA('Part') and v.Name == 'Right Arm' then
         v.Transparency = 1
      elseif v:IsA('ShirtGraphic') then
         v.Archivable = false
         v.Graphic = ''
      end
   end
   
   local LZOMBIE_ARM = Instance.new('Part', PLAYER.Character)
   local LWELD = Instance.new('Weld', LZOMBIE_ARM)
   local RZOMBIE_ARM = Instance.new('Part', PLAYER.Character)
   local RWELD = Instance.new('Weld', RZOMBIE_ARM)
   
   LZOMBIE_ARM.Name = 'LA_INFECT'
   LZOMBIE_ARM.BrickColor = BrickColor.new('Medium green')
   LZOMBIE_ARM.Size = Vector3.new(1, 1, 2)
   LZOMBIE_ARM.TopSurface = 'Smooth'
   LZOMBIE_ARM.BottomSurface = 'Smooth'
   
   LWELD.Part0 = PLAYER.Character.Torso
   LWELD.Part1 = LZOMBIE_ARM
   LWELD.C0 = CFrame.new(-1.5, 0.5, -0.5)
   
   RZOMBIE_ARM.Name = 'RA_INFECT'
   RZOMBIE_ARM.BrickColor = BrickColor.new('Medium green')
   RZOMBIE_ARM.Size = Vector3.new(1, 1, 2)
   RZOMBIE_ARM.TopSurface = 'Smooth'
   RZOMBIE_ARM.BottomSurface = 'Smooth'
   
   RWELD.Part0 = PLAYER.Character.Torso
   RWELD.Part1 = RZOMBIE_ARM
   RWELD.C0 = CFrame.new(1.5, 0.5, -0.5)
   
   if PLAYER.Character.Head:FindFirstChild('face') then
      PLAYER.Character.Head.face.Texture = 'rbxassetid://7074882'
   end
   
   for i,v in pairs (PLAYER.Character:GetChildren()) do
      if v:IsA('Part') and v.Name ~= 'HumanoidRootPart' then
         if v.Name == 'Head' then
            v.BrickColor = BrickColor.new('Medium green')
         elseif v.Name == 'Torso' or v.Name == 'Left Leg' or v.Name == 'Right Leg' then
            v.BrickColor = BrickColor.new('Brown')
         end
      end
   end
end

function fWeld(zName, zParent, zPart0, zPart1, zCoco, A, B, C, D, E, F)
   local funcw = Instance.new('Weld') funcw.Name = zName funcw.Parent = zParent funcw.Part0 = zPart0 funcw.Part1 = zPart1
   if (zCoco) then
      funcw.C0 = CFrame.new(A, B, C) * CFrame.fromEulerAnglesXYZ(D, E, F)
   else
      funcw.C1 = CFrame.new(A, B, C) * CFrame.fromEulerAnglesXYZ(D, E, F)
   end
   return funcw
end

function BANG(VICTIM)
   spawn(function()
      local P1 = gPlayers.LocalPlayer.Character.Torso
      local V1 = gPlayers[VICTIM].Character.Torso
      
      V1.Parent.Humanoid.PlatformStand = true
      
      P1['Left Shoulder']:destroy() local LA1 = Instance.new('Weld', P1) LA1.Part0 = P1 LA1.Part1 = P1.Parent['Left Arm'] LA1.C0 = CFrame.new(-1.5, 0, 0) LA1.Name = 'Left Shoulder'
      
      P1['Right Shoulder']:destroy() local RS1 = Instance.new('Weld', P1) RS1.Part0 = P1 RS1.Part1 = P1.Parent['Right Arm'] RS1.C0 = CFrame.new(1.5, 0, 0) RS1.Name = 'Right Shoulder'
      
      V1['Left Shoulder']:destroy() local LS2 = Instance.new('Weld', V1) LS2.Part0 = V1 LS2.Part1 = V1.Parent['Left Arm'] LS2.C0 = CFrame.new(-1.5, 0, 0) LS2.Name = 'Left Shoulder'
      
      V1['Right Shoulder']:destroy() local RS2 = Instance.new('Weld', V1) RS2.Part0 = V1 RS2.Part1 = V1.Parent['Right Arm'] RS2.C0 = CFrame.new(1.5, 0, 0) RS2.Name = 'Right Shoulder'
      
      V1['Left Hip']:destroy() local LH2 = Instance.new('Weld', V1) LH2.Part0 = V1 LH2.Part1 = V1.Parent['Left Leg'] LH2.C0 = CFrame.new(-0.5, -2, 0) LH2.Name = 'Left Hip'
      
      V1['Right Hip']:destroy() local RH2 = Instance.new('Weld', V1) RH2.Part0 = V1 RH2.Part1 = V1.Parent['Right Leg'] RH2.C0 = CFrame.new(0.5, -2, 0) RH2.Name = 'Right Hip'
      
      local D = Instance.new('Part', P1) D.TopSurface = 0 D.BottomSurface = 0 D.CanCollide = false D.BrickColor = BrickColor.new('Pastel brown') D.Shape = 'Ball' D.Size = Vector3.new(1, 1, 1)
      
      local DM1 = Instance.new('SpecialMesh', D) DM1.MeshType = 'Sphere' DM1.Scale = Vector3.new(0.4, 0.4, 0.4)
      
      fWeld('weld', P1, P1, D, true, -0.2, -1.3, -0.6, 0, 0, 0)
      
      local D2 = D:Clone() D2.Parent = P1
      
      fWeld('weld', P1, P1, D2, true, 0.2, -1.3, -0.6, 0, 0, 0)
      
      local C = Instance.new('Part', P1) C.TopSurface = 0 C.BottomSurface = 0 C.CanCollide = false C.BrickColor = BrickColor.new('Pastel brown') C.formFactor = 'Custom' C.Size = Vector3.new(0.4, 1.3, 0.4)
      
      fWeld('weld', P1, P1, C, true, 0, -1, -0.52 + (-C.Size.y / 2), math.rad(-80), 0, 0)
      
      local C2 = D:Clone() C2.BrickColor = BrickColor.new('Pink') C2.Mesh.Scale = Vector3.new(0.4, 0.62, 0.4) C2.Parent = P1
      
      fWeld('weld', C, C, C2, true, 0, 0 + (C.Size.y / 2), 0, math.rad(-10), 0, 0)
      
      local CM = Instance.new('CylinderMesh', C)
      
      local BL = Instance.new('Part', V1) BL.TopSurface = 0 BL.BottomSurface = 0 BL.CanCollide = false BL.BrickColor = BrickColor.new('Pastel brown') BL.Shape = 'Ball' BL.Size = Vector3.new(1, 1, 1)
      
      local DM2 = Instance.new('SpecialMesh', BL) DM2.MeshType = 'Sphere' DM2.Scale = Vector3.new(1.2, 1.2, 1.2)
      
      fWeld('weld', V1, V1, BL, true, -0.5, 0.5, -0.6, 0, 0, 0)
      
      local BR = Instance.new('Part', V1) BR.TopSurface = 0 BR.BottomSurface = 0 BR.CanCollide = false BR.BrickColor = BrickColor.new('Pastel brown') BR.Shape = 'Ball' BR.Size = Vector3.new(1, 1, 1)
      
      local DM3 = Instance.new('SpecialMesh', BR) DM3.MeshType = 'Sphere' DM3.Scale = Vector3.new(1.2, 1.2, 1.2)
      
      fWeld('weld', V1, V1, BR, true, 0.5, 0.5, -0.6, 0, 0, 0)
      
      local BLN = Instance.new('Part', V1) BLN.TopSurface = 0 BLN.BottomSurface = 0 BLN.CanCollide = false BLN.BrickColor = BrickColor.new('Pink') BLN.Shape = 'Ball' BLN.Size = Vector3.new(1, 1, 1)
      
      local DM4 = Instance.new('SpecialMesh', BLN) DM4.MeshType = 'Sphere' DM4.Scale = Vector3.new(0.2, 0.2, 0.2)
      
      fWeld('weld', V1, V1, BLN, true, -0.5, 0.5, -1.2, 0, 0, 0)
      
      local BRN = Instance.new('Part', V1) BRN.TopSurface = 0 BRN.BottomSurface = 0 BRN.CanCollide = false BRN.BrickColor = BrickColor.new('Pink') BRN.Shape = 'Ball' BRN.Size = Vector3.new(1, 1, 1)
      
      local DM5 = Instance.new('SpecialMesh', BRN) DM5.MeshType = 'Sphere' DM5.Scale = Vector3.new(0.2, 0.2, 0.2)
      
      fWeld('weld', V1, V1, BRN, true, 0.5, 0.5, -1.2, 0, 0, 0)
      
      LH2.C1 = CFrame.new(0.2, 1.6, 0.4) * CFrame.Angles(3.9, -0.4, 0) RH2.C1 = CFrame.new(-0.2, 1.6, 0.4) * CFrame.Angles(3.9, 0.4, 0)
      LS2.C1 = CFrame.new(-0.2, 0.9, 0.6) * CFrame.Angles(3.9, -0.2, 0) RS2.C1 = CFrame.new(0.2, 0.9, 0.6) * CFrame.Angles(3.9, 0.2, 0)
      LA1.C1 = CFrame.new(-0.5, 0.7, 0) * CFrame.Angles(-0.9, -0.4, 0) RS1.C1 = CFrame.new(0.5, 0.7, 0) * CFrame.Angles(-0.9, 0.4, 0)
      
      if P1:FindFirstChild('weldx') then P1.weldx:destroy() end
      
      WE = fWeld('weldx', P1, P1, V1, true, 0, -0.9, -1.3, math.rad(-90), 0, 0)
      
      local N = V1.Neck N.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-210), math.rad(180), 0)
   end)
   spawn(function() while wait() do for i = 1, 6 do WE.C1 = WE.C1 * CFrame.new(0, -0.3, 0) wait() end for i = 1, 6 do WE.C1 = WE.C1 * CFrame.new(0, 0.3, 0) wait() end end end)
end

_G.CLICK_TP = true
local M_CTRL = false

MOUSE.KeyDown:connect(function(K) if K:byte() == 50 then M_CTRL = true end end)
MOUSE.KeyUp:connect(function(K) if K:byte() == 50 then M_CTRL = false end end)

gLighting.Outlines = false -- / outlines are gross

if FIND_IN_TABLE(BANS, LP.userId) then LP:Kick('You\'re on the ban list.') end

for i,v in pairs(gPlayers:GetPlayers()) do if FIND_IN_TABLE(BANS, v.userId) then table.insert(KICKS, v) else UPDATE_CHAT(v) end end

-- / commands

ADD_COMMAND('harked','harked',{},
function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/qipurblx/Scripts/main/harked"))();
end)

ADD_COMMAND('table','table',{},
function()
   loadstring(game:HttpGet(('https://pastebin.com/raw/UmdYd4bE'),true))()
   local plr = game.Players.LocalPlayer
   game:GetService("RunService").Stepped:Connect(function()
      setsimulationradius(9e9,9e9)
      plr.ReplicationFocus = workspace
      settings().Physics.AllowSleep = false
   end)
   local runservice=game:service"RunService";
   local player=game:service"Players"["LocalPlayer"];
   local character=player["Character"];
   character["Head"]:FindFirstChildOfClass"SpecialMesh":Destroy();
   
   character["Humanoid"].HipHeight=-2;
   character["Left Leg"]:BreakJoints();
   character["Right Leg"]:BreakJoints();
   character["Left Arm"]:BreakJoints();
   character["Right Arm"]:BreakJoints();
   while runservice["Heartbeat"]:Wait() do
      character["Left Leg"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(-0.5,1.5,1.5) * CFrame.Angles(math.rad(90), 0, 0);
      character["Right Leg"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(0.5,1.5,1.5) * CFrame.Angles(math.rad(90), 0, 0);
      character["Left Arm"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(-0.5,0,2);
      character["Right Arm"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(0.5,0,2);
   end	
end)

ADD_COMMAND('controlnpcs','controlnpcs',{},
function()
   --- made by joshclark756#7155
   -- Variables
   local mouse = game.Players.LocalPlayer:GetMouse()
   local uis = game:GetService("UserInputService")
   
   -- Connect
   mouse.Button1Down:Connect(function()
      -- Check for Target & Left Shift
      if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
   local npc = mouse.target.Parent
   local npcRootPart = npc.HumanoidRootPart
   local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
   local PlayerRootPart = PlayerCharacter.HumanoidRootPart
   local A0 = Instance.new("Attachment")
   local AP = Instance.new("AlignPosition")
   local AO = Instance.new("AlignOrientation")
   local A1 = Instance.new("Attachment")
   for _, v in pairs(npc:GetDescendants()) do
   if v:IsA("BasePart") then
   game:GetService("RunService").Stepped:Connect(function()
   v.CanCollide = false
   end)
   end
   end
   PlayerRootPart:BreakJoints()
   for _, v in pairs(PlayerCharacter:GetDescendants()) do
   if v:IsA("BasePart") then
   if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then
   else
   v:Destroy()
   end
   end
   end
   PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(5, 0, 0)
   PlayerCharacter.Head.Anchored = true
   PlayerCharacter.UpperTorso.Anchored = true
   A0.Parent = npcRootPart
   AP.Parent = npcRootPart
   AO.Parent = npcRootPart
   AP.Responsiveness = 200
   AP.MaxForce = math.huge
   AO.MaxTorque = math.huge
   AO.Responsiveness = 200
   AP.Attachment0 = A0
   AP.Attachment1 = A1
   AO.Attachment1 = A1
   AO.Attachment0 = A0
   A1.Parent = PlayerRootPart
   end
   end)
end)

ADD_COMMAND('attachpart','attachpart',{},
function()
-- made by joshclark756#7155
-- Variables
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
mouse.Button1Down:Connect(function()
-- Check for Target & Left Shift
if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
local npc = mouse.target
local npcparts = mouse.target.Parent
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
local PlayerRootPart = PlayerCharacter.HumanoidRootPart
local A0 = Instance.new("Attachment")
local AP = Instance.new("AlignPosition")
local AO = Instance.new("AlignOrientation")
local A1 = Instance.new("Attachment")
for _, v in pairs(npcparts:GetDescendants()) do
if v:IsA("BasePart") or v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
do
v.CanCollide = false

end
end
end
-- Variables
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
mouse.Button1Down:Connect(function()
if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
local npc = mouse.target
local npcparts = mouse.target.Parent
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
local PlayerRootPart = PlayerCharacter.HumanoidRootPart
local A0 = Instance.new("Attachment")
local AP = Instance.new("AlignPosition")
local AO = Instance.new("AlignOrientation")
local A1 = Instance.new("Attachment")
for _, v in pairs(npcparts:GetDescendants()) do
if v:IsA("BasePart") or v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
do
v.CanCollide = false

wait(0)
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "e" -- has to be lowercase
mouse.KeyDown:connect(function(key)
if key == bind then do
v.CanCollide = true
end
end
end)
end
end
end
for _, v in pairs(PlayerCharacter:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then

end
end
end
PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(0, 0, 0)
PlayerCharacter.Head.Anchored = false
PlayerCharacter.Torso.Anchored = false
A0.Parent = npc
AP.Parent = npc
AO.Parent = npc
AP.Responsiveness = 200
AP.MaxForce = math.huge
AO.MaxTorque = math.huge
AO.Responsiveness = 200
AP.Attachment0 = A0
AP.Attachment1 = A1
AO.Attachment1 = A1
AO.Attachment0 = A0
A1.Parent = PlayerRootPart
end
end)
for _, v in pairs(PlayerCharacter:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then

end
end
end
PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(0, 0, 0)
PlayerCharacter.Head.Anchored = false
PlayerCharacter.Torso.Anchored = false
A0.Parent = npc
AP.Parent = npc
AO.Parent = npc
AP.Responsiveness = 200
AP.MaxForce = math.huge
AO.MaxTorque = math.huge
AO.Responsiveness = 200
AP.Attachment0 = A0
AP.Attachment1 = A1
AO.Attachment1 = A1
AO.Attachment0 = A0
A1.Parent = PlayerRootPart
end
end)
end)

ADD_COMMAND('netless','netless',{},
function()
  for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
      if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
      game:GetService("RunService").Heartbeat:connect(function()
      v.Velocity = Vector3.new(-30,0,0)
      end)
      end
      end
   
      game:GetService("StarterGui"):SetCore("SendNotification", { 
          Title = "Notification";
          Text = "Ligma Netless Ran";
          Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
      Duration = 16;
end)

ADD_COMMAND('kidnap','kidnap',{},
function()
   game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
      if key == 'z' then
      local h = game.Players.LocalPlayer.Character.Humanoid:Clone()
      local plr = game.Players.LocalPlayer.Character
      local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      local lp = game.Players.LocalPlayer
       
      h.Parent = game.Players.LocalPlayer.Character
      h.Name = "Hum"
       
      game.Players.LocalPlayer.Character.Humanoid:Destroy()
       
      for _,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
         if v.ClassName == "Tool" then
            v.Parent = plr
         end
      end
      wait(.5)
      tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(150, Enum.EasingStyle.Linear)
       
      tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(0, -1000, 0)})
      tween:Play()
      end
      end)
end)

ADD_COMMAND('dupetools','dupetools',{},
function(ARGS)
   local AmountToDupe = tonumber(ARGS[1])

   local plr = game.Players.LocalPlayer
   local char = plr.Character
   local pos = char.HumanoidRootPart.Position
   local http = game:GetService("HttpService")
   
   local file = 'rejoindupe.json'
   writefile(file,http:JSONEncode({
      ['AmountToDupe'] = AmountToDupe,
      ['CurrentAmount'] = 0
   }))
   char.HumanoidRootPart.CFrame = CFrame.new(0,999999,0)
   for i,v in pairs(plr.Backpack:GetChildren()) do
      if v:IsA("Tool") then
          v.Parent = char
      end
   end
   wait(.3)
   for i,v in pairs(char:GetChildren()) do
      if v:IsA("Tool") then
          v.Parent = workspace
      end
   end
   
   local dupescript = [[
      game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
      repeat wait() until game.Players.LocalPlayer
      repeat wait() until game.Players.LocalPlayer.Character
      repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(%s)
      local plr = game.Players.LocalPlayer
      local char = plr.Character
      local file = "%s"
      local a = readfile(file)
      local data = game:GetService("HttpService"):JSONDecode(a)
      if data['CurrentAmount'] >= data['AmountToDupe'] then
          wait(0.5)
          for i,v in pairs(workspace:GetChildren()) do
              if v:IsA("Tool") then
                  char.Humanoid:EquipTool(v)
              end
          end
          return
      else
          wait()
          char.HumanoidRootPart.CFrame = CFrame.new(0,999999,0)
          for i,v in pairs(plr.Backpack:GetChildren()) do
              if v:IsA("Tool") then
                  v.Parent = char
              end
          end
          wait(.3)
          for i,v in pairs(char:GetChildren()) do
              if v:IsA("Tool") then
                  v.Parent = workspace
              end
          end
          wait(.1)
          data['CurrentAmount'] = data['CurrentAmount'] + 1
          writefile(file,game:GetService("HttpService"):JSONEncode(data))
      end
      syn.queue_on_teleport(readfile("%s"))
      repeat
      game:GetService("TeleportService"):Teleport(game.PlaceId)    
      wait(0.5)
      until nil
   ]]
   dupescript = string.format(dupescript,tostring(pos),file,"dupescript.lua")
   
   writefile('dupescript.lua',dupescript)
   syn.queue_on_teleport(dupescript)
   game:GetService("TeleportService"):Teleport(game.PlaceId)
end)

ADD_COMMAND('replicationui','replicationui',{},
function()
   loadstring(game:HttpGet("https://pastebin.com/raw/vr2YVyF6"))();
end)

ADD_COMMAND('gravitygun','gravitygun',{},
function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/qipurblx/Script/main/Gravity%20Gun"))()
end)

ADD_COMMAND('respawn','respawn',{},
function()
   game.Players.LocalPlayer.Character.Humanoid.Name = 1
   local l = game.Players.LocalPlayer.Character["1"]:Clone()
   l.Parent = game.Players.LocalPlayer.Character
   l.Name = "Humanoid"
   wait()
   game.Players.LocalPlayer.Character["1"]:Destroy()
   game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
   game.Players.LocalPlayer.Character.Animate.Disabled = true
   wait()
   game.Players.LocalPlayer.Character.Animate.Disabled = false
   game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
   wait()
   local prt = Instance.new("Model", workspace);
   Instance.new("Part", prt).Name="Torso";
   Instance.new("Part", prt).Name="Head";
   Instance.new("Humanoid", prt).Name="Humanoid";
   game.Players.LocalPlayer.Character=prt
end)

ADD_COMMAND('grabtools','grabtools',{},
function()
   local p = game:GetService("Players").LocalPlayer
   local c = p.Character
   if c and c:FindFirstChild("Humanoid") then
       for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
           if v:IsA("Tool") then
               c:FindFirstChild("Humanoid"):EquipTool(v)
           end
       end
   end
end)



ADD_COMMAND('r6','r6',{},
function()
   local Global = (getgenv and getgenv()) or shared
   Global.GelatekReanimateConfig = {
       -- [[ Rig Settings ]] --
       ["R15ToR6"] = true,
      }
     
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekReanimate/main/Main.lua"))()
end)

ADD_COMMAND('invisible','invisible',{},
function()
   loadstring(game:HttpGetAsync("https://pastebin.com/raw/0wE8rKJ1"))()
end)

ADD_COMMAND('holdpartr15','holdpartr15',{},
function()
-- made by joshclark756#7155
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
mouse.Button1Down:Connect(function()
   -- Check for Target & Left Shift
   if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
local npc = mouse.target
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
local PlayerRootPart = PlayerCharacter.HumanoidRootPart
local A0 = Instance.new("Attachment")
local AP = Instance.new("AlignPosition")
local AO = Instance.new("AlignOrientation")
local A1 = Instance.new("Attachment")
for _, v in pairs(npc:GetDescendants()) do
if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
game:GetService("RunService").Stepped:Connect(function()
v.CanCollide = false
end)
end
end

for _, v in pairs(PlayerCharacter:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then
end
end
end
PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(0, 0, 0)
A0.Parent = npc
AP.Parent = npc
AO.Parent = npc
AP.Responsiveness = 200
AP.MaxForce = math.huge
AO.MaxTorque = math.huge
AO.Responsiveness = 200
AP.Attachment0 = A0
AP.Attachment1 = A1
AO.Attachment1 =  A1
AO.Attachment0 = A0
A1.Parent = PlayerCharacter.RightHand
end
end)
end)

ADD_COMMAND('holdpartr6','holdpartr6',{},
function()
-- made by joshclark756#7155
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
mouse.Button1Down:Connect(function()
   -- Check for Target & Left Shift
   if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
local npc = mouse.target
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
local PlayerRootPart = PlayerCharacter.HumanoidRootPart
local A0 = Instance.new("Attachment")
local AP = Instance.new("AlignPosition")
local AO = Instance.new("AlignOrientation")
local A1 = Instance.new("Attachment")
for _, v in pairs(npc:GetDescendants()) do
if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
game:GetService("RunService").Stepped:Connect(function()
v.CanCollide = false
end)
end
end

for _, v in pairs(PlayerCharacter:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then
end
end
end
PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(0, 0, 0)
A0.Parent = npc
AP.Parent = npc
AO.Parent = npc
AP.Responsiveness = 200
AP.MaxForce = math.huge
AO.MaxTorque = math.huge
AO.Responsiveness = 200
AP.Attachment0 = A0
AP.Attachment1 = A1
AO.Attachment1 =  A1
AO.Attachment0 = A0
A1.Parent = PlayerCharacter:FindFirstChild("Right Arm")
end
end)
end)

ADD_COMMAND('creatorid','creatorid',{},
function()
   if game.CreatorType == Enum.CreatorType.User then
      game.Players.LocalPlayer.UserId = game.CreatorId
      end
      if game.CreatorType == Enum.CreatorType.Group then
      game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
      end 
   end)

   ADD_COMMAND('fcd','fcd / fireclickdetectors',{},
   function()
      NOTIFY('Fired all click detectors!', 0, 255, 0)
      wait()
      for i,v in pairs(game:GetDescendants()) do
         if v:IsA("ClickDetector") then
             fireclickdetector(v)
         end
     end 
    end)

   ADD_COMMAND('fti','fti / firetouchinerests',{},
   function()
      NOTIFY('Fired all touch interests!', 0, 255, 0)
      wait()
      for _,v in pairs(workspace:GetDescendants()) do
         if v:IsA("TouchTransmitter") then
         firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
         wait()
         firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
         end
         end
   end)

   ADD_COMMAND('dex','dex',{},
   function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
   end)

   ADD_COMMAND('breakchat','breakchat',{},
   function()
      for i=1,3 do 
         game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("\0", "All")
     end
   end)

   ADD_COMMAND('noclip','noclip (keybind x)',{},
   function()
      local nckey = "x";
      local nclip = false;
      local lp = game.Players.LocalPlayer
      local ms = lp:GetMouse()
      local rm = getrawmetatable(game)
      local index = rm.__index
      local bv = Instance.new("BoolValue");
      bv.Value = false;
      setreadonly(rm,false)
      
      rm.__index = function(self,j)
         if tostring(self) == "Part" and tostring(j) == "Anchored" then
             return index(bv,"Value")
      end
         return index(self,j)
      end
      
      
      game:GetService("RunService").Stepped:Connect(function()
         if nclip == true then
             lp.Character.Head.CanCollide = false
             lp.Character.Torso.CanCollide = false
         end
      end);
      
      ms.KeyDown:Connect(function(k)
         if k == nckey then
             nclip = not nclip
             if nclip == true then
                 print("Noclip is on.")
             else
                 print("Noclip if off.")
             end
         end
      end)
      
      print("Noclip key is X");
      print("Press X to turn noclip on and off");
      print("This noclip should bypass most anti-cheats");
   end)

   ADD_COMMAND('antichatlog','antichatlog',{},
   function()
     -- no skid :)
if not game:IsLoaded() then
   game.Loaded:wait()
end

local ACL_LoadTime = tick()

local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

local PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui") do
   if not PlayerGui then
       repeat task.wait() until Player:FindFirstChildWhichIsA("PlayerGui")
       PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui")
   end
end

local Notify = function(_Title, _Text , Time)
   StarterGui:SetCore("SendNotification", {Title = _Title, Text = _Text, Icon = "rbxassetid://2541869220", Duration = Time})
end

local Tween = function(Object, Time, Style, Direction, Property)
  return TweenService:Create(Object, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction]), Property)
end

local Insert = function(Tbl, ...)
   for _, x in next, {...} do
       table.insert(Tbl, x) 
   end
end

local ChatFixToggle = true
local CoreGuiSettings = {}
local ChatFix

ChatFix = hookmetamethod(StarterGui, "__namecall", function(self, ...)
   local Method = getnamecallmethod()
   local Arguments = {...}
   
   if not checkcaller() and ChatFixToggle and Method == "SetCoreGuiEnabled" then
       local CoreGuiType = Arguments[1]
       local SettingValue = Arguments[2]
       
       if CoreGuiType == ("All" or "Chat") then
           Insert(CoreGuiSettings, CoreGuiType, SettingValue)
           return
       end
   end
   
   return ChatFix(self, ...)
end)

local ACLWarning = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Top = Instance.new("Frame")
local Exit = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local WarningLbl = Instance.new("TextLabel")
local Loading = Instance.new("Frame")
local Bar = Instance.new("Frame")
local WarningBackground = Instance.new("Frame")
local WarningFrame = Instance.new("Frame")
local Despair = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Reason_1 = Instance.new("TextLabel")
local Reason_2 = Instance.new("TextLabel")
local Trollge = Instance.new("ImageLabel")
local UIPadding = Instance.new("UIPadding")

local MakeGuiThread = coroutine.wrap(function()    
   syn.protect_gui(ACLWarning)
   
   ACLWarning.Name = "ACL Warning"
   ACLWarning.Parent = CoreGui
   ACLWarning.Enabled = false
   ACLWarning.DisplayOrder = -2147483648
   
   Background.Name = "Background"
   Background.Parent = ACLWarning
   Background.AnchorPoint = Vector2.new(0.5, 0.5)
   Background.BackgroundColor3 = Color3.fromRGB(21, 0, 0)
   Background.BorderSizePixel = 0
   Background.Position = UDim2.new(0.5, 0, 0.5, 0)
   Background.Size = UDim2.new(0.300000012, 0, 0.5, 0)
   
   Top.Name = "Top"
   Top.Parent = Background
   Top.AnchorPoint = Vector2.new(0.5, 0.5)
   Top.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
   Top.BorderSizePixel = 0
   Top.Position = UDim2.new(0.5, 0, 0.100000001, 0)
   Top.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
   
   Exit.Name = "Exit"
   Exit.Parent = Top
   Exit.AnchorPoint = Vector2.new(0.5, 0.5)
   Exit.BackgroundColor3 = Color3.fromRGB(38, 0, 0)
   Exit.Position = UDim2.new(0.949999988, 0, 0.5, 0)
   Exit.Size = UDim2.new(0.100000001, -6, 1, -9)
   Exit.Visible = false
   Exit.Font = Enum.Font.Arcade
   Exit.Text = "X"
   Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
   Exit.TextScaled = true
   Exit.TextSize = 14.000
   Exit.TextWrapped = true
   
   UICorner.CornerRadius = UDim.new(0.200000003, 0)
   UICorner.Parent = Exit
   
   WarningLbl.Name = "WarningLbl"
   WarningLbl.Parent = Top
   WarningLbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   WarningLbl.BackgroundTransparency = 1.000
   WarningLbl.Position = UDim2.new(0, 17, 0, 0)
   WarningLbl.Size = UDim2.new(0.5, 0, 1, 0)
   WarningLbl.Font = Enum.Font.Arcade
   WarningLbl.Text = "Warning!"
   WarningLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
   WarningLbl.TextScaled = true
   WarningLbl.TextSize = 14.000
   WarningLbl.TextWrapped = true
   WarningLbl.TextXAlignment = Enum.TextXAlignment.Left
   
   Loading.Name = "Loading"
   Loading.Parent = Top
   Loading.AnchorPoint = Vector2.new(0.5, 0.5)
   Loading.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
   Loading.BorderSizePixel = 0
   Loading.Position = UDim2.new(0.699999988, 0, 0.5, 0)
   Loading.Size = UDim2.new(0.349999994, 0, 0.0199999996, 0)
   
   Bar.Name = "Bar"
   Bar.Parent = Loading
   Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   Bar.BorderSizePixel = 0
   Bar.Size = UDim2.new(0, 0, 1, 0)
   
   WarningBackground.Name = "WarningBackground"
   WarningBackground.Parent = Background
   WarningBackground.AnchorPoint = Vector2.new(0.5, 0.5)
   WarningBackground.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
   WarningBackground.BorderSizePixel = 0
   WarningBackground.Position = UDim2.new(0.5, 0, 0.550000012, 0)
   WarningBackground.Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
   
   WarningFrame.Name = "WarningFrame"
   WarningFrame.Parent = WarningBackground
   WarningFrame.AnchorPoint = Vector2.new(0.5, 0.5)
   WarningFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
   WarningFrame.BorderSizePixel = 0
   WarningFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
   WarningFrame.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
   
   Despair.Name = "Despair"
   Despair.Parent = WarningFrame
   Despair.AnchorPoint = Vector2.new(0.5, 0.5)
   Despair.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
   Despair.BackgroundTransparency = 1.000
   Despair.BorderColor3 = Color3.fromRGB(27, 42, 53)
   Despair.BorderSizePixel = 0
   Despair.Position = UDim2.new(0.5, 0, 0.100000001, 0)
   Despair.Size = UDim2.new(0.949999988, 0, 0.119999997, 0)
   Despair.Font = Enum.Font.Oswald
   Despair.Text = "Anti Chat Logger will not work here!"
   Despair.TextColor3 = Color3.fromRGB(255, 255, 255)
   Despair.TextScaled = true
   Despair.TextSize = 50.000
   Despair.TextWrapped = true
   Despair.TextYAlignment = Enum.TextYAlignment.Top
   
   UIListLayout.Parent = WarningFrame
   UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
   UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
   UIListLayout.Padding = UDim.new(0, 15)
   
   Reason_1.Name = "Reason_1"
   Reason_1.Parent = WarningFrame
   Reason_1.AnchorPoint = Vector2.new(0.5, 0.5)
   Reason_1.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
   Reason_1.BackgroundTransparency = 1.000
   Reason_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
   Reason_1.BorderSizePixel = 0
   Reason_1.Position = UDim2.new(0.5, 0, 0.100000001, 0)
   Reason_1.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
   Reason_1.Visible = false
   Reason_1.Font = Enum.Font.Oswald
   Reason_1.Text = "-Chat Module was not found."
   Reason_1.TextColor3 = Color3.fromRGB(255, 0, 0)
   Reason_1.TextScaled = true
   Reason_1.TextSize = 50.000
   Reason_1.TextWrapped = true
   Reason_1.TextYAlignment = Enum.TextYAlignment.Top
   
   Reason_2.Name = "Reason_2"
   Reason_2.Parent = WarningFrame
   Reason_2.AnchorPoint = Vector2.new(0.5, 0.5)
   Reason_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
   Reason_2.BackgroundTransparency = 1.000
   Reason_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
   Reason_2.BorderSizePixel = 0
   Reason_2.Position = UDim2.new(0.5, 0, 0.100000001, 0)
   Reason_2.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
   Reason_2.Visible = false
   Reason_2.Font = Enum.Font.Oswald
   Reason_2.Text = "-MessagePosted function is invalid."
   Reason_2.TextColor3 = Color3.fromRGB(255, 0, 0)
   Reason_2.TextScaled = true
   Reason_2.TextSize = 50.000
   Reason_2.TextWrapped = true
   Reason_2.TextYAlignment = Enum.TextYAlignment.Top
   
   Trollge.Name = "Trollge"
   Trollge.Parent = WarningFrame
   Trollge.AnchorPoint = Vector2.new(0.5, 0.5)
   Trollge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   Trollge.BackgroundTransparency = 1.000
   Trollge.Position = UDim2.new(0.5, 0, 0.670000017, 0)
   Trollge.Size = UDim2.new(0.449999988, 0, 0.5, 0)
   Trollge.Image = "rbxassetid://10104834800"
   
   UIPadding.Parent = WarningFrame
   UIPadding.PaddingTop = UDim.new(0, 10)
   
   Exit.MouseButton1Click:Connect(function()
       local UpTween = Tween(Background, .2, "Quint", "Out", {Position = UDim2.new(0.5, 0, 0.45, 0)})
       local DownTween = Tween(Background, 1, "Quad", "Out", {Position = UDim2.new(0.5, 0, 2, 0)})
       UpTween:Play()
       UpTween.Completed:wait()
       DownTween:Play()
       DownTween.Completed:wait()
       ACLWarning:Destroy()
   end)
end)()

local ExitCooldown = function()
   wait(3)
   local Tween = Tween(Bar, 5, "Quad", "InOut", {Size = UDim2.new(1, 0, 1, 0)})
   Tween:Play()
   Tween.Completed:wait()
   Loading:Destroy()
   Exit.Visible = true
end

local PlayerScripts = Player:WaitForChild("PlayerScripts")
local ChatMain = PlayerScripts:FindFirstChild("ChatMain", true) or false

if not ChatMain then
   local Timer = tick()
   repeat
       task.wait()
   until PlayerScripts:FindFirstChild("ChatMain", true) or tick() > (Timer + 3)
   ChatMain = PlayerScripts:FindFirstChild("ChatMain", true)
   if not ChatMain then
       ACLWarning.Enabled = true
       Reason_1.Visible = true
       ExitCooldown()
       return
   end
end

local PostMessage = require(ChatMain).MessagePosted

if not PostMessage then
   ACLWarning.Enabled = true
   Reason_2.Visible = true
   ExitCooldown()
   return
end

local MessageEvent = Instance.new("BindableEvent")
local OldFunctionHook
OldFunctionHook = hookfunction(PostMessage.fire, function(self, Message)
   if not checkcaller() and self == PostMessage then
       MessageEvent:Fire(Message)
       return
   end
   return OldFunctionHook(self, Message)
end)

if setfflag then
   setfflag("AbuseReportScreenshot", "False")
   setfflag("AbuseReportScreenshotPercentage", 0)
end

ChatFixToggle = false
ACLWarning:Destroy()
if OldSetting then
   StarterGui:SetCoreGuiEnabled(CoreGuiSettings[1], CoreGuiSettings[2])
end
Notify("Loaded Successfully", "Anti Chat and Screenshot Logger Loaded!", 15)
print(string.format("Anti Chat-Logger has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))
   end)

   ADD_COMMAND('soundglitcher','soundglitcher',{},
   function()
      local duration = 999999 -- integer only, no decimals
      if game:GetService("SoundService").RespectFilteringEnabled then return end
      
      local sounds = {}
      
      for i,v in pairs(Game:GetDescendants()) do
          if v:IsA("Sound")  then
              table.insert(sounds,v)
          end
      end
      
      
      local con = Game.DescendantAdded:Connect(function(v)
          if v:IsA("Sound") then
              table.insert(sounds,v)
          end
      end)
      wait(.1)
      local start = math.floor(tick())
      repeat
          for i,v in pairs(sounds) do
              v:Play()
              v.TimePosition = math.random(0,v.TimeLength * 1000)/1000
              task.wait()
          end
      until math.floor(tick()) == start + duration
      con:Disconnect()
      
      for i,v in pairs(sounds) do
          v:Stop()
      end
   end)

   ADD_COMMAND('fpp','fpp / fireproximityprompts',{},
   function()
      fireproximityprompt(workspace.Instance.ProximityPrompt, 1, true)
   end)

   ADD_COMMAND('removedn','removedn / removedisplaynames',{},
   function()
      local Players = game:FindService("Players")

      require(game:GetService("Chat"):WaitForChild("ClientChatModules").ChatSettings).PlayerDisplayNamesEnabled = false
      
      local function rename(character,name)
          repeat task.wait() until character:FindFirstChildWhichIsA("Humanoid")
          character:FindFirstChildWhichIsA("Humanoid").DisplayName = name
      end
      
      for i,v in next, Players:GetPlayers() do
          if v.Character then
              v.DisplayName = v.Name
              rename(v.Character,v.Name)
          end
          v.CharacterAdded:Connect(function(char)
              rename(char,v.Name)
          end)
      end
      
      Players.PlayerAdded:Connect(function(plr)
          plr.DisplayName = plr.Name
          plr.CharacterAdded:Connect(function(char)
              rename(char,plr.Name)
          end)
      end)
   end)

   ADD_COMMAND('rejoin','rejoin',{},
   function()
      local ts = game:GetService("TeleportService")
      local p = game:GetService("Players").LocalPlayer
      ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
   end)

   ADD_COMMAND('sit','sit',{},
   function()
      game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit = true
   end)

   ADD_COMMAND('lowgraphics','lowgraphics',{},
   function()
      local Terrain = workspace:FindFirstChildOfClass('Terrain')
      Terrain.WaterWaveSize = 0
      Terrain.WaterWaveSpeed = 0
      Terrain.WaterReflectance = 0
      Terrain.WaterTransparency = 0
      settings().Rendering.QualityLevel = 1
      for i,v in pairs(game:GetDescendants()) do
         if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
         elseif v:IsA("Decal") then
            v.Transparency = 1
         elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
         elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
         end
      end
      for i,v in pairs(Lighting:GetDescendants()) do
         if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
            v.Enabled = false
         end
      end
      workspace.DescendantAdded:Connect(function(child)
         coroutine.wrap(function()
            if child:IsA('ForceField') then
               RunService.Heartbeat:Wait()
               child:Destroy()
            elseif child:IsA('Sparkles') then
               RunService.Heartbeat:Wait()
               child:Destroy()
            elseif child:IsA('Smoke') or child:IsA('Fire') then
               RunService.Heartbeat:Wait()
               child:Destroy()
            end
         end)()
      end)
   end)

   ADD_COMMAND('fatesadmin','fatesadmin',{},
   function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
   end)

   ADD_COMMAND('hidename','hidename (only works on billboard guis)',{},
   function()
      for _,item in pairs(workspace[game.Players.LocalPlayer.Name].Head:GetChildren()) do
         if item:IsA('BillboardGui') then
         item:Remove()
         end
         end
   end)

   ADD_COMMAND('homebrew','homebrew',{},
   function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
   end)

   ADD_COMMAND('krystaldance','krystaldance',{},
   function()
      loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/e51327540d1ba5ede244c459dbdb5a0e/raw/6320fe344ac51a311ef7c9f8d5c3924b1a7c3969/Krystal%2520Dance'))()
   end)

   ADD_COMMAND('chattrollgui','chattrollgui',{},
   function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/chatt", true))()
   end)

   ADD_COMMAND('fireremotes','fireremotes',{},
   function()
      NOTIFY('Fired all remotes!', 0, 255, 0)
      wait()
      for i,v in pairs(game:GetDescendants()) do
         if v:IsA("RemoteEvent") then
         v:FireServer()
         if v:IsA("BindableEvent") then
         v:Fire()
         if v:IsA("RemoteFunction") then
         v:InvokeServer()
         end
         end
         end
         end
   end)

   ADD_COMMAND('uafollow','uafollow / unanchoredfollow',{},
   function()
      local LocalPlayer = game:GetService("Players").LocalPlayer
      local unanchoredparts = {}
      local movers = {}
      for index, part in pairs(workspace:GetDescendants()) do
          if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
              table.insert(unanchoredparts, part)
              part.Massless = true
              part.CanCollide = false
              if part:FindFirstChildOfClass("BodyPosition") ~= nil then
                  part:FindFirstChildOfClass("BodyPosition"):Destroy()
              end
          end
      end
      for index, part in pairs(unanchoredparts) do
          local mover = Instance.new("BodyPosition", part)
          table.insert(movers, mover)
          mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      end
      repeat
          for index, mover in pairs(movers) do
              mover.Position = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(0, 0, 5))
          end
          wait(0.5)
      until LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
      for _, mover in pairs(movers) do
          mover:Destroy()
      end
   end)

   ADD_COMMAND('fov','fov',{},
   function(ARGS)
      game.Workspace.CurrentCamera.FieldOfView = tonumber(ARGS[1])
   end)

   ADD_COMMAND('uanograv','uanograv / unanchorednogravity',{},
   function()
      loadstring(game:HttpGet("https://pastebin.com/raw/MHdBcJQL", true))()
   end)

   ADD_COMMAND('bringua','bringua / bringunanchored',{},
   function()
      for _,v in pairs(workspace:GetDescendants()) do
         if v:IsA("BasePart") and v.Anchored==false then
         v.CFrame=game:GetService("Players").LocalPlayer.Character.Head.CFrame
         end
         end
   end)

   ADD_COMMAND('remotespy','remotespy',{},
   function()
      loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
   end)

   ADD_COMMAND('blockhats','blockhats',{},
   function()
      for _, hat in pairs(character:GetChildren()) do
         if hat:IsA("Accoutrement") and hat:FindFirstChild("Handle") then
            local handle = hat.Handle
            if handle:FindFirstChildWhichIsA("SpecialMesh") then
               handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
            end
         end
      end
   end)

   ADD_COMMAND('blocktools','blocktools',{},
   function()
      for _, tool in pairs(character:GetChildren()) do
         if tool:IsA("Tool") then
            for _, mesh in pairs(tool:GetDescendants()) do
               if mesh:IsA("DataModelMesh") then
                  mesh:Destroy()
               end
            end
         end
      end
   end)

   ADD_COMMAND('toolfling','toolfling',{},
   function()
      local char = player.Character
      local hrp = char:FindFirstChild("HumanoidRootPart")
      local hum = char:FindFirstChildWhichIsA("Humanoid")
      local tors = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
      if char then
         local c = lib.connect("pfling", RunService.Stepped:Connect(function()
            for i, v in pairs(char:GetDescendants()) do
               if v:IsA("BasePart") then
                  v.CanCollide = false
               end
            end
         end))
         tors.Anchored = true
         local tool = Instance.new("Tool", localPlayer.Backpack)
         local hat = char:FindFirstChildOfClass("Accessory")
         local hathandle = hat.Handle
         
         hathandle.Parent = tool
         hathandle.Massless = true
         tool.GripPos = Vector3.new(0, 9e99, 0)
         tool.Parent = localPlayer.Character
         
         repeat wait() until char:FindFirstChildOfClass("Tool") ~= nil
         tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
         tors.Anchored = false
         
         repeat
            hrp.CFrame = hrp.CFrame
            wait()
         until not c.Connected
         
         hum:UnequipTools()
         hathandle.Parent = hat
         hathandle.Massless = false
         tool:Destroy()
      end
   end)

   ADD_COMMAND('hydroxide','hydroxide',{},
   function()
      local owner = "Upbolt"
      local branch = "revision"
      
      local function webImport(file)
          return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
      end
      
      webImport("init")
      webImport("ui/main")
   end)

   ADD_COMMAND('equiptools','equiptools',{},
   function()
      for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
         if tool:IsA("Tool") then
             tool.Parent = game:GetService("Players").LocalPlayer.Character -- I didn't use Equip because the Equip function unequips any other tools in your character.
         end
      end
   end)


ADD_COMMAND('oldroblox','oldroblox',{},
function()
   for i,v in pairs(workspace:GetDescendants()) do
      if v:IsA("BasePart") then
         local dec = Instance.new("Texture", v)
         dec.Texture = "rbxassetid://48715260"
         dec.Face = "Top"
         dec.StudsPerTileU = "1"
         dec.StudsPerTileV = "1"
         dec.Transparency = v.Transparency
         v.Material = "Plastic"
         local dec2 = Instance.new("Texture", v)
         dec2.Texture = "rbxassetid://20299774"
         dec2.Face = "Bottom"
         dec2.StudsPerTileU = "1"
         dec2.StudsPerTileV = "1"
         dec2.Transparency = v.Transparency
         v.Material = "Plastic"
      end
   end
   game.Lighting.ClockTime = 12
   game.Lighting.GlobalShadows = false
   game.Lighting.Outlines = false
   for i,v in pairs(game.Lighting:GetDescendants()) do
      if v:IsA("Sky") then
         v:Destroy()
      end
   end
   local sky = Instance.new("Sky", game.Lighting)
   sky.SkyboxBk = "rbxassetid://161781263"
   sky.SkyboxDn = "rbxassetid://161781258"
   sky.SkyboxFt = "rbxassetid://161781261"
   sky.SkyboxLf = "rbxassetid://161781267"
   sky.SkyboxRt = "rbxassetid://161781268"
   sky.SkyboxUp = "rbxassetid://161781260"
end)

ADD_COMMAND('bringall','bringall (needs tools)',{},
function()
   loadstring(game:HttpGet('https://github.com/DigitalityScripts/roblox-scripts/blob/main/Bring%20All'))()
end)

ADD_COMMAND('killall','killall (needs tools)',{},
function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Kill%20All'))()
end)

ADD_COMMAND('ws','ws [plr] [int]',{},
function(ARGS, SPEAKER)
   local PLAYERS = GET_PLAYER(ARGS[1], SPEAKER)
   for i,v in pairs(PLAYERS) do
      local PCHAR = gPlayers[v].Character
      if PCHAR:FindFirstChild('Humanoid') then
         PCHAR.Humanoid.WalkSpeed = tonumber(ARGS[2])
      end
   end
end)

ADD_COMMAND('goto','goto [plr]',{},
function(ARGS, SPEAKER)
	local PLAYERS = GET_PLAYER(ARGS[1], SPEAKER)
	for i,v in pairs(PLAYERS) do
		local PCHAR = gPlayers[v].Character
		if PCHAR then
			SPEAKER.Character.HumanoidRootPart.CFrame = PCHAR.HumanoidRootPart.CFrame
		end
	end
end)

ADD_COMMAND('enableinv','enableinv',{},
function()
   game.StarterGui:SetCoreGuiEnabled(2, true)
end)

ADD_COMMAND('time','time [int]',{},
function(ARGS, SPEAKER)
   gLighting:SetMinutesAfterMidnight(tonumber(ARGS[1]) * 60)
end)

ADD_COMMAND('view','view [plr]',{},
function(ARGS, SPEAKER)
   local PLAYERS = GET_PLAYER(ARGS[1], SPEAKER)
   for i,v in pairs(PLAYERS) do
      local PCHAR = gPlayers[v].Character
      gWorkspace.CurrentCamera.CameraSubject = PCHAR
   end
end)

ADD_COMMAND('unview','unview',{},
function()
   gWorkspace.CurrentCamera.CameraSubject = gPlayers.LocalPlayer.Character
end)

local DISCO = false

ADD_COMMAND('disco','disco',{},
function(ARGS, SPEAKER)
   DISCO = true
   spawn(function()
      repeat wait(0.5) gLighting.Ambient = Color3.new(math.random(), math.random(), math.random()) until not DISCO
   end)
end)

ADD_COMMAND('undisco','undisco',{},
function(ARGS, SPEAKER)
   DISCO = false
end)

ADD_COMMAND('age','age [plr]',{},
function(ARGS, SPEAKER)
   local PLAYERS = GET_PLAYER(ARGS[1], SPEAKER)
   for i,v in pairs(PLAYERS) do
      NOTIFY(gPlayers[v].Name .. ' | ' .. gPlayers[v].AccountAge, 255, 255, 255)
   end
end)

ADD_COMMAND('day','day',{},
function(ARGS, SPEAKER)
   gLighting.TimeOfDay = 14
end)

ADD_COMMAND('night','night',{},
function(ARGS, SPEAKER)
   gLighting.TimeOfDay = 24
end)


ADD_COMMAND('noclip','noclip',{},
function()
   NOCLIP = true
   JESUSFLY = false
   SWIM = false
end)

ADD_COMMAND('f3xtroll','f3xtroll',{},
function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/qipurblx/Scripts/main/f3xtrollhub", true))()
end)

ADD_COMMAND('f3x','f3x',{},
function()
   loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)

ADD_COMMAND('clip','clip',{},
function()
   NOCLIP = false
end)

ADD_COMMAND('fly','fly',{},
function()
   NOTIFY('Toggle = E', 0, 255, 0)
   wait()
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("UpperTorso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local UpperTorso = plr.Character.UpperTorso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", UpperTorso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = UpperTorso.CFrame
local bv = Instance.new("BodyVelocity", UpperTorso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end)

ADD_COMMAND('unfly','unfly',{},
function(ARGS, SPEAKER)
   NOFLY()
end)

ADD_COMMAND('prefix','prefix [string]',{},
function(ARGS, SPEAKER)
   if ARGS[1] then
      C_PREFIX = ARGS[1]
      NOTIFY('Changed prefix to \'' .. ARGS[1] .. '\'', 255, 255, 255)
   end
end)

ADD_COMMAND('version','version',{},
function(ARGS, SPEAKER)
   NOTIFY('VERSION | ' .. VERSION, 255, 255, 255)
end)

ADD_COMMAND('fe','fe',{},
function(ARGS, SPEAKER)
   spawn(function()
      CHECK_FE()
   end)
end)

ADD_COMMAND('changelog','changelog',{},
function(ARGS, SPEAKER)
   CHECK_CHANGELOG()
end)

ADD_COMMAND('serverinfo','serverinfo',{'sinfo'},
function(ARGS, SPEAKER)
   SERVER_INFO()
end)

ADD_COMMAND('cmds','cmds',{'commands'},
function(ARGS, SPEAKER)
   LIST_COMMANDS()
end)

--[[
for i,v in pairs(COMMANDS) do
   print (v.D)
end]]

-- / noclip

MOUSE.KeyDown:connect(function(key)
   if key:byte() == 29 then
      if not NOCLIP then
         ECOMMAND('noclip')
      elseif NOCLIP then
         ECOMMAND('clip')
      end
   elseif key:byte() == 30 then
      if not JESUSFLY then
         ECOMMAND('jesusfly')
      elseif JESUSFLY then
         ECOMMAND('nojfly')
      end
   end
end)

-- / after loaded

function CHECK_FE()
   if not gWorkspace.FilteringEnabled then
      NOTIFY('Filtering is disabled', 0, 255, 0)
   elseif gWorkspace.FilteringEnabled then
      NOTIFY('Filtering is disabled', 255, 0, 0)
   end
end

function UPDATE_CMDS(SEARCH_CMD)
   local FOUND_CMDS = DATA.found_cmds
   if gCoreGui:FindFirstChild('cmds_seth') then
      local cmds_seth = gCoreGui.cmds_seth
      for i,v in pairs(cmds_seth.MAIN.CMDs:GetChildren()) do
         v:destroy()
      end
      for i,v in pairs(FOUND_CMDS:GetChildren()) do
         v:destroy()
      end
      wait()
      for i,v in pairs(COMMANDS) do
         if string.match(v.D, string.lower(SEARCH_CMD)) then
            local F = Instance.new('StringValue', FOUND_CMDS) F.Name = '' F.Value = v.D
         end
      end
      wait()
      local YSize = 25
      for i,v in pairs(FOUND_CMDS:GetChildren()) do
         local POS = ((i * YSize) - YSize)
         local cloneEX = cmds_seth.MAIN.Example:Clone()
         cloneEX.Parent = cmds_seth.MAIN.CMDs
         cloneEX.Visible = true
         cloneEX.Position = UDim2.new(0, 5, 0, POS + 5)
         cloneEX.Text = ' - ' .. v.Value
         cmds_seth.MAIN.CMDs.CanvasSize = UDim2.new(0, 0, 0, POS + 30)
      end
   end
end

function LIST_COMMANDS()
   if gCoreGui:FindFirstChild('cmds_seth') then gCoreGui.cmds_seth:destroy() end
   local cloneCMDs = DATA.guis.cmds_seth:Clone()
   local searchCMDs = cloneCMDs.MAIN.Search
   cloneCMDs.MAIN.Header.Text = ' ' .. #COMMANDS .. ' commands'
   cloneCMDs.Parent = gCoreGui
   cloneCMDs.MAIN.Exit.MouseButton1Down:connect(function()
      cloneCMDs:destroy()
   end)
   cloneCMDs.MAIN.MM.MouseButton1Down:connect(function()
      if cloneCMDs.MAIN.CMDs.Visible then
         cloneCMDs.MAIN.CMDs.Visible = false
      elseif not cloneCMDs.MAIN.CMDs.Visible then
         cloneCMDs.MAIN.CMDs.Visible = true
      end
   end)
   local function DISPLAY_CMDS()
      for i,v in pairs(COMMANDS) do
         local YSize = 25
         local POS = ((i * YSize) - YSize)
         local cloneEX = cloneCMDs.MAIN.Example:Clone()
         cloneEX.Parent = cloneCMDs.MAIN.CMDs
         cloneEX.Visible = true
         cloneEX.Position = UDim2.new(0, 5, 0, POS + 5)
         cloneEX.Text = ' - ' .. v.D
         cloneCMDs.MAIN.CMDs.CanvasSize = UDim2.new(0, 0, 0, POS + 30)
      end
   end
   DISPLAY_CMDS()
   searchCMDs.FocusLost:connect(function()
      if searchCMDs.Text then
         UPDATE_CMDS(searchCMDs.Text)
         searchCMDs.Text = ' search commands'
      end
   end)
end

local CAN_CHECK = true

function CHECK_CHANGELOG()
   spawn(function()
      if CAN_CHECK then
         CAN_CHECK = false
         local changelogClone = DATA.guis.changelog_seth:Clone()
         changelogClone.MAIN.changelog.Text = CHANGELOG
         changelogClone.Parent = gCoreGui
         wait()
         changelogClone.MAIN:TweenPosition(UDim2.new(1, -410, 1, -210), 'InOut', 'Quad', 0.5, false)
         wait(10)
         changelogClone.MAIN:TweenPosition(UDim2.new(1, -410, 1, 0), 'InOut', 'Quad', 0.5, false)
         wait(1)
         changelogClone:destroy()
         CAN_CHECK = true
      end
   end)
end

CHECK_CHANGELOG()

CMDbar:TweenPosition(UDim2.new(0, 0, 1, -50), 'InOut', 'Quad', 0.5, true)
CMDbar.Parent['']:TweenPosition(UDim2.new(0, 0, 1, -30), 'InOut', 'Quad', 0.5, true)

CMDbar.FocusLost:connect(function(enterpressed)
   if enterpressed and CMDbar.Text ~= '' then
      pcall(function()
         ECOMMAND(CMDbar.Text, LP)
      end)
   end
   CMDbar:TweenPosition(UDim2.new(0, -200, 1, -50), 'InOut', 'Quad', 0.5, true)
end)

MOUSE.KeyDown:connect(function(Key)
   if Key:byte() == 59 then
      CMDbar:TweenPosition(UDim2.new(0, 0, 1, -50), 'InOut', 'Quad', 0.5, true)
      CMDbar:CaptureFocus()
   end
end)

-- / loader

wait()

LOAD_SETH()