
local Library
Library = loadstring(game:HttpGet('https://pastebin.com/raw/fwgtY3Mi'))()

local ha = getgc(true)
local settings = {
CamFovToggled = false,
CamFov = 70,
antiparry = false,
nofalldmg = false,
webhooksent = false,
InfiniteStamina = false
}

game:GetService("RunService").RenderStepped:Connect(function()
if settings.CamFovToggled == true then
game.Workspace.Camera.FieldOfView = settings.CamFov
end
end)

if settings.CamFovToggled == true then
game.Workspace.Camera.FieldOfView = settings.CamFov
end



-- mod check

local function ModCheck(User)
if User:IsFriendsWith(1259667248) then
return User
end
if User:IsFriendsWith(46574148) then
return User
end
if User.UserId == 223912614 then
return User
end
if User:IsFriendsWith(31967243) then
return User
end
if User.UserId == 551487640 then
return User
end
if User.UserId == 650817947 then
return User
end
if User:IsFriendsWith(2013561731) then
return User
end
if User.UserId == 1857248151 then
return User
end
if User.UserId == 1008264392 then
return User
end
if User.UserId == 331720532 then
return User
end
if User.UserId == 1326183322 then
return User
end
if User.UserId == 56947758 then
return User
end
end

if _G.MODCHECK == true then
for i, v in next, game.Players:GetPlayers() do
local x = ModCheck(v)
if x then
game.Players.LocalPlayer:Kick("Admin Detcted - " .. x.Name)
end
end
game.Players.PlayerAdded:Connect(function(v)
local x = ModCheck(v)
if x then
game.Players.LocalPlayer:Kick("Admin Joined - " .. x.Name)
end
end)
end

Library:Notify("Loading Project DreamReal")
wait(1)
Library:Notify("Loading Project DreamReal")
wait(1)
Library:Notify("Loading Project DreamReal")

function WATERMARK()
local watermark = {name = "Project DreamReal | Combat Warriors", accent = Color3.fromRGB(78, 93, 234), visible = true}
local client_info = loadstring(game:HttpGet("https://pastebin.com/raw/6jWwPbW7"))()
local Box = Drawing.new("Square")
Box.Transparency = 1
Box.Size = Vector2.new(246,30)
Box.Position = Vector2.new(10,10)
Box.Filled = true
Box.Visible = true
Box.Thickness = 0
Box.Color = Color3.fromRGB(20, 20, 20)

local Box2 = Drawing.new("Square")
Box2.Transparency = 1
Box2.Size = Vector2.new(240,24)
Box2.Position = Vector2.new(13,13)
Box2.Filled = true
Box2.Visible = true
Box2.Thickness = 9
Box2.Color = Color3.fromRGB(33, 33, 33)

local Box3 = Drawing.new("Square")
Box3.Transparency = 1
Box3.Size = Vector2.new(238, 1)
Box3.Position = Vector2.new(14,14)
Box3.Filled = true
Box3.Visible = true
Box3.Thickness = 0
Box3.Color = watermark.accent or Color3.fromRGB(120, 60, 210)

local text = Drawing.new("Text")
text.Transparency = 1
text.Position = Vector2.new(14,17)
text.Font = Drawing.Fonts.Plex
text.Size = 16
text.Visible = true
text.Center = false
text.Color = Color3.fromRGB(255,255,255)
text.Text = " "..watermark.name.." | 0 FPS"

client_info.fps_changed(function(fps)
text.Text = " "..watermark.name.." | " .. fps .. " FPS "
Box.Size = Vector2.new(text.TextBounds.X + 10, 30)
Box2.Size = Vector2.new(Box.Size.X - 6, 24)
Box3.Size = Vector2.new(Box2.Size.X - 2, 1)
Box3.Color = watermark.accent or Color3.fromRGB(120, 60, 210)
text.Visible = watermark.visible
Box.Visible = watermark.visible
Box2.Visible = watermark.visible
Box3.Visible = watermark.visible
end)
return watermark
end

WATERMARK()

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst   = game:GetService("ReplicatedFirst")
local UserInputService  = game:GetService("UserInputService")
local RunService        = game:GetService("RunService")
local Lighting          = game:GetService("Lighting")
local Players           = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local PlayerGui   = LocalPlayer.PlayerGui
local Mouse       = LocalPlayer:GetMouse()
local Camera      = workspace.CurrentCamera

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst   = game:GetService("ReplicatedFirst")
local UserInputService  = game:GetService("UserInputService")
local RunService        = game:GetService("RunService")
local Lighting          = game:GetService("Lighting")
local Players           = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local PlayerGui   = LocalPlayer.PlayerGui
local Mouse       = LocalPlayer:GetMouse()
local Camera      = workspace.CurrentCamera


local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local RenderStepped = RunService.RenderStepped

local LocalPlayer = Players.LocalPlayer
local chr = LocalPlayer.Character
local hum = chr:WaitForChild("Humanoid")

local game = game;
local GetService = game.GetService;

_G.usemethod2 = true

_G.enabled = false
_G.stompaura = false
_G.drawlines = false
_G.range = 15
_G.autospawn = false
_G.followclosest = false
_G.autoequip = false
_G.autojump = false
_G.boostws = false
_G.killsay = false
_G.usehitbox = 10


_G.loopspeed = 1

function addLine(myHrp, theirHrp)
if not theirHrp.Parent.Torso:FindFirstChild("Beam") then
if _G.drawlines == true then
local beam = Instance.new("Beam", theirHrp.Parent.Torso)
local att0 = Instance.new("Attachment", theirHrp.Parent.Torso)
local att1 = Instance.new("Attachment", myHrp)

beam.Attachment0 = att0
beam.Attachment1 = att1

beam.Width0 = 0.2
beam.Width1 = 0.2

beam.LightEmission = 1
beam.LightInfluence = 0

beam.FaceCamera = true

if theirHrp.Parent.Humanoid.Health <= 15 then
beam.Color = ColorSequence.new(Color3.fromRGB(255,0,0),Color3.fromRGB(255,0,0))
else if theirHrp.Parent.Humanoid.Health >= 16 and theirHrp.Parent.Humanoid.Health <= 50 then
    beam.Color = ColorSequence.new(Color3.fromRGB(255, 170, 0),Color3.fromRGB(255, 170, 0))
else
    beam.Color = ColorSequence.new(Color3.fromRGB(59, 255, 0),Color3.fromRGB(59, 255, 0))
end
end
end
end
end


game.Players.LocalPlayer.leaderstats.Score.Changed:connect(function()
if _G.STATNOTIFY == true then
Library:Notify("SCORE : " ..(game.Players.LocalPlayer.leaderstats.Score.Value), 1)
end
end)

game.Players.LocalPlayer.leaderstats.Level.Changed:connect(function()
if _G.LEVELNOTIFY == true then
Library:Notify("LEVEL : " ..(game.Players.LocalPlayer.leaderstats.Level.Value), 1)
end
end)


game.Players.LocalPlayer.leaderstats.Score.Changed:connect(function()
if settings.webhooksent == true then
syn.request({
Url = "https://discord.com/api/webhooks/1023162596586692658/jsk03Oe0Y002SVcJsNFXgvPxdmNVGWzKLXT68APjdR4YSNDYxhtxlTGOmb9UYZjRHMw_",
Method = "POST",
Headers = {
["Content-Type"] = "application/json",
},
Body = game:GetService("HttpService"):JSONEncode({
embeds = {
    {
        ["title"] = "Score Log",
        ["description"] = "**Score :**\n"
            .. "```"
            .. game.Players.LocalPlayer.leaderstats.Score.Value
            .. "```"
            .. "\n**Name :** \n"
            .. "```"
            .. game:GetService("Players").LocalPlayer.Name
            .. "```",
        ["color"] = tonumber(0xFFFAFA),
    },
},
}),
})
end
end)

function remLine(theirHrp)
if theirHrp.Parent.Torso:FindFirstChild("Beam") then
theirHrp.Parent.Torso:FindFirstChild("Beam"):Destroy()
end
end

function walkToClosest()
local closestCurrent = false
local currentMagnitude = 999999

local myHrp = game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart")

for i, v in pairs(game:GetService("Workspace").PlayerCharacters:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Humanoid.Health ~= 0 then
local theirHrp = v:FindFirstChild("HumanoidRootPart")
if (myHrp.Position - theirHrp.Position).Magnitude < currentMagnitude then
    if theirHrp.Parent.Humanoid.Health ~= 0 then
        currentMagnitude = (myHrp.Position - theirHrp.Position).Magnitude
        closestCurrent = theirHrp
    end
end
end
end
end

if _G.autojump == true then
keypress(0x20)
end
game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid").WalkToPoint = closestCurrent.Position
end

function getClosestHrp()
local closestCurrent = false
local currentMagnitude = 999999

local myHrp = game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart")

for i, v in pairs(game:GetService("Workspace").PlayerCharacters:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Humanoid.Health ~= 0 then
local theirHrp = v:FindFirstChild("HumanoidRootPart")
if (myHrp.Position - theirHrp.Position).Magnitude < currentMagnitude then
    if (myHrp.Position - theirHrp.Position).Magnitude <= 15 and theirHrp.Parent.Humanoid.Health ~= 0 then
        currentMagnitude = (myHrp.Position - theirHrp.Position).Magnitude
        closestCurrent = theirHrp
        addLine(myHrp, theirHrp)
    else
        remLine(theirHrp)
    end
end
end
end
end

return closestCurrent
end

function setAttachmentWorldCFrame(attachment, cf)
attachment.CFrame = attachment.Parent.CFrame:toObjectSpace(cf)
end



local hittable = 0
local walktocount = 0
local espCount = 0
local canLoop = 0
local boostingws = false
local canStomp = 0

game:GetService("RunService").RenderStepped:connect(function()
if game.Players.LocalPlayer.PlayerGui.RoactUI:FindFirstChild("MainMenu") and _G.autospawn == true then
keypress(0x20)
keyrelease(0x20)
end

if _G.autoequip == true then
if not game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool") and not game.Players.LocalPlayer.PlayerGui.RoactUI:FindFirstChild("MainMenu") then
keypress(0x31)
keyrelease(0x31)
end
end



espCount = espCount + 1
canLoop = canLoop + 1
canStomp = canStomp + 1

if walktocount == 10 then
if _G.followclosest == true then
walkToClosest()
end
if _G.boostws == true then
if boostingws == true then
boostingws = false
game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart").Velocity = game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart").CFrame.lookVector * (65) + Vector3.new(math.random(-40,40),0,math.random(-40,40))
else
boostingws = true
end
end
walktocount = 0
end

walktocount = walktocount + 1




-- ANTI PARRY MAKING..

-- local enabled = game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool"):FindFirstChild("ClientEquipProgress")

-- local theirHrp = getClosestHrp()

while wait() do 
if settings.antiparry == true then
local enabled = game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool"):FindFirstChild("ClientEquipProgress")

local theirHrp = getClosestHrp()
end
end



if _G.usemethod2 == false then
if canLoop == _G.loopspeed or canLoop > _G.loopspeed then
canLoop = 0
for i,v in pairs(game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool").Hitboxes.Hitbox:GetChildren()) do
if i <= _G.usehitbox then
    if v.Name == "DmgPoint" then

        if _G.antiparry == true then
            if theirHrp.Parent.SemiTransparentShield.Transparency == 1 then
                enabled.Value = 1
                if _G.enabled == true then
                    setAttachmentWorldCFrame(v, CFrame.new(theirHrp.Position + Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))))
                end
            else
                setAttachmentWorldCFrame(v, CFrame.new(theirHrp.Position + Vector3.new(123,123,123)))
                enabled.Value = 0
            end
        else
            if _G.enabled == true then
                setAttachmentWorldCFrame(v, CFrame.new(theirHrp.Position + Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))))
            end

        end
    end
else
    setAttachmentWorldCFrame(v, CFrame.new(game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("Head").Position + Vector3.new(0, 10, 0)))
end
end
end


if _G.stompaura == true then
for i,s in pairs(game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name].Stomp.Hitboxes.RightLegHitbox:GetChildren()) do
if s.Name == "DmgPoint" then
    s.Visible = false
    if i <= _G.usehitbox then
        if theirHrp.Parent.Humanoid.Health <= 15 then
            setAttachmentWorldCFrame(s, CFrame.new(theirHrp.Position + Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))))
            if canStomp >= 30 then
                keypress(0x51)
                keyrelease(0x51)
                canStomp = 0
            end
        end
    end
end
end
end
else


local me = game:GetService("Workspace").PlayerCharacters:FindFirstChild(game:GetService("Players").LocalPlayer.Name)
local hitbox = me:FindFirstChildOfClass("Tool").Hitboxes.Hitbox
local hitboxes = me:FindFirstChildOfClass("Tool").Hitboxes
local tool = me:FindFirstChildOfClass("Tool")
local enabled = tool:FindFirstChild("ClientEquipProgress")

if hitboxes:FindFirstChild("Hitbox2") then
hitboxes:FindFirstChild("Hitbox2"):Destroy()
end

if _G.killaura == true then
for i,v in pairs(game:GetService("Workspace").PlayerCharacters:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
    if v:FindFirstChild("Right Arm") then
        for i,s in pairs(v:FindFirstChild("Torso"):GetChildren()) do
            if s.Name == "Right Shoulder" then
                s:Destroy()
            end
        end
        for i,s in pairs(v:FindFirstChild("Right Arm"):GetChildren()) do
            s:Destroy()
        end
        if (me.HumanoidRootPart.Position - v:FindFirstChild("Torso").Position).Magnitude <= 20 then
            if _G.tpOverHead == true then
                me.HumanoidRootPart.Anchored = true
                me.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("Head").Position + Vector3.new(0, 5, 0))
            end

            local vectorDec = math.random(9999)
            local vectorWhole = 0
            local vector = tostring(vectorWhole .. "." .. vectorDec)
            local vectorComplete = tonumber(vector)

            if v:FindFirstChild("SemiTransparentShield").Transparency == 1 then
                v:FindFirstChild("Right Arm").CFrame = hitbox.CFrame + Vector3.new(0, vectorComplete, 0)
                v:FindFirstChild("Right Arm").CanCollide = false
                enabled.Value = 1
            else
                enabled.Value = 0
            end
        else
            if _G.tpOverHead == true then
                me.HumanoidRootPart.Anchored = false
            end
        end
    end
end
end
end

if _G.stompaura == true then
for i,s in pairs(game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name].Stomp.Hitboxes.RightLegHitbox:GetChildren()) do
if s.Name == "DmgPoint" then
    s.Visible = false
    if i <= _G.usehitbox then
        if theirHrp.Parent.Humanoid.Health <= 15 then
            setAttachmentWorldCFrame(s, CFrame.new(theirHrp.Position + Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))))
            if canStomp >= 30 then
                keypress(0x51)
                keyrelease(0x51)
                canStomp = 0
            end
        end
    end
end
end
end

end
end)

game:GetService("RunService").RenderStepped:connect(function()
if game.Players.LocalPlayer.PlayerGui.RoactUI:FindFirstChild("MainMenu") and _G.autospawn == true then
keypress(0x20)
keyrelease(0x20)
end
end)



--[[ANTI CHEAT BYPASS]]

game:GetService("RunService").RenderStepped:Connect(function()
for _, Connection in next, getconnections(game:GetService("ScriptContext").Error) do
Connection:Disable()
end

for _, Connection in next, getconnections(game:GetService("LogService").MessageOut) do
Connection:Disable()
end
end)

for _, tbl in ipairs(getgc(true)) do
if typeof(tbl) == "table" and rawget(tbl, "Remote") then
tbl.Remote.Name = tbl.Name
end
end
local local_player = game:GetService("Players").LocalPlayer
local kick_hook; kick_hook = hookmetamethod(game, "__namecall", newcclosure(function(...)
local args = {...}
local self = args[1]
local namecall_method = getnamecallmethod()
if not checkcaller() and self == local_player and namecall_method == "Kick" then
return
end
return kick_hook(...)
end))

for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Jump"))) do
v:Disable()
end
for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"))) do
v:Disable()
end
for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("JumpPower"))) do
v:Disable()
end
for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("HipHeight"))) do
v:Disable()
end

local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__index
mt.__index = newcclosure(function(self,a)
if a == "WalkSpeed" then 
return 16
end
if a == "JumpPower" then 
return 50
end
if a == "HipHeight" then 
return 2
end
return old(self,a)
end)




function getEvent(name)
for i, v in ipairs(game:GetService("ReplicatedStorage").Communication.Events:GetChildren()) do
if v.Name == name then
return v
end
end
end

function getFunction(name)
for i, v in ipairs(game:GetService("ReplicatedStorage").Communication.Functions:GetChildren()) do
if v.Name == name then
return v
end
end
end

local runService = game:GetService("RunService")
local event = runService.RenderStepped:Connect(function()
if game:GetService("Players").LocalPlayer.Character then
    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"))) do
v:Disable()
end
end
end)

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

--[[ANTI CHEAT BYPASS]]

local old;
old = hookmetamethod(game,"__namecall",function(self,...)
local args = {...}
if self.Name == "LogKick" then 
return
end
return old(self, ...)
end)

local old;
old = hookmetamethod(game,"__namecall",function(self,...)
local args = {...}
if self.Name == "CreateAntiCheatNotification" then 
return
end
return old(self, ...)
end)

local Skyboxes = {
["none"] = {
SkyboxLf = "rbxassetid://252760980",
SkyboxBk = "rbxassetid://252760981",
SkyboxDn = "rbxassetid://252763035",
SkyboxFt = "rbxassetid://252761439",
SkyboxLf = "rbxassetid://252760980",
SkyboxRt = "rbxassetid://252760986",
SkyboxUp = "rbxassetid://252762652",
},
["nebula"] = {
SkyboxLf = "rbxassetid://159454286",
SkyboxBk = "rbxassetid://159454299",
SkyboxDn = "rbxassetid://159454296",
SkyboxFt = "rbxassetid://159454293",
SkyboxLf = "rbxassetid://159454286",
SkyboxRt = "rbxassetid://159454300",
SkyboxUp = "rbxassetid://159454288",
},
["vaporwave"] = {
SkyboxLf = "rbxassetid://1417494402",
SkyboxBk = "rbxassetid://1417494030",
SkyboxDn = "rbxassetid://1417494146",
SkyboxFt = "rbxassetid://1417494253",
SkyboxLf = "rbxassetid://1417494402",
SkyboxRt = "rbxassetid://1417494499",
SkyboxUp = "rbxassetid://1417494643",
},
["clouds"] = {
SkyboxLf = "rbxassetid://570557620",
SkyboxBk = "rbxassetid://570557514",
SkyboxDn = "rbxassetid://570557775",
SkyboxFt = "rbxassetid://570557559",
SkyboxLf = "rbxassetid://570557620",
SkyboxRt = "rbxassetid://570557672",
SkyboxUp = "rbxassetid://570557727",
},
["twilight"] = {
SkyboxLf = "rbxassetid://264909758",
SkyboxBk = "rbxassetid://264908339",
SkyboxDn = "rbxassetid://264907909",
SkyboxFt = "rbxassetid://264909420",
SkyboxLf = "rbxassetid://264909758",
SkyboxRt = "rbxassetid://264908886",
SkyboxUp = "rbxassetid://264907379",
},
}
RunService.RenderStepped:Connect(function()
Camera = workspace.CurrentCamera
end)

local function FASTRESPAWN()
local args = {
[1] = math.huge,
[2] = {
["ignoreForceField"] = true
}
}

game:GetService("ReplicatedStorage").Communication.Events.SelfDamage:FireServer(unpack(args))

game:GetService("ReplicatedStorage").Communication.Events.StartFastRespawn:FireServer()


local args = {
[1] = "75"
}
wait(1)
game:GetService("ReplicatedStorage").Communication.Functions.CompleteFastRespawn:FireServer(unpack(args))

game:GetService("ReplicatedStorage").Communication.Functions.SpawnCharacter:FireServer(unpack(args))
end

local function Create(Object, Properties, Parent)
local Obj = Instance.new(Object)

for i,v in pairs (Properties) do
Obj[i] = v
end
if Parent ~= false then
Obj.Parent = Parent
end

return Obj
end

local function GetCharacter()
end
local function GetHumanoid()
end
local function GetHealth()
end
local function GetBodypart()
end

local menu
do
local library = loadstring(game:HttpGet("https://pastebin.com/raw/P49vmnMp"))()

menu = library.new([[DreamReal <font color="rgb(78, 93, 234)">.cc</font>]], "nemv2\\")
local tabs = {
menu.new_tab("http://www.roblox.com/asset/?id=7300477598"),
menu.new_tab("http://www.roblox.com/asset/?id=7300535052"),
menu.new_tab("http://www.roblox.com/asset/?id=7300480952"),
menu.new_tab("http://www.roblox.com/asset/?id=7300486042"),
menu.new_tab("http://www.roblox.com/asset/?id=7300489566"),
}

do
local _menu = tabs[5].new_section("Settings")

local all_cfgs

local configs = _menu.new_sector("configs")
local text
local list = configs.element("Scroll", "config list", {options = {"none"}}, function(State)
text:set_value({Text = State.Scroll})
end)
text = configs.element("TextBox", "config name")
configs.element("Button", "save", false, function()
if menu.values[5].menu.configs["config name"].Text ~= "none" then
menu.save_cfg(menu.values[5].menu.configs["config name"].Text)
end
end)
configs.element("Button", "load", false, function()
if menu.values[5].menu.configs["config name"].Text ~= "none" then
menu.load_cfg(menu.values[5].menu.configs["config name"].Text)
end
end)

local function update_cfgs()
all_cfgs = listfiles("nemv2\\")
for _,cfg in next, all_cfgs do
all_cfgs[_] = string.gsub(string.gsub(cfg, "nemv2\\", ""), ".txt", "")
list:add_value(all_cfgs[_])
end
end update_cfgs()

task.spawn(function()
while true do
wait(1)
update_cfgs()
end
end)


local playercheck = _menu.new_sector("check")
playercheck.element("Toggle", "ffa")

playercheck.element("Toggle", "forcefield check")

playercheck.element("Toggle", "Auto Reset When Low", false, function(State)
if State.Toggle == true then 
while State.Toggle do
repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health == (_G.LOWHP)
wait()
game.Players.LocalPlayer.Character.Humanoid.Health = 0 
end
else
FASTRESPAWN()
end
end)

playercheck.element("Slider", "Health", {default = {min = 0, max = 114, default = 30}}, function(State)
_G.LOWHP = State.Slider
end)

playercheck.element("Toggle", "Mod Check", false, function(State)
_G.MODCHECK = State.Toggle
end)

playercheck.element("Toggle", "Leader Stat Changed Notification", false, function(State)
_G.STATNOTIFY = State.Toggle
end)

playercheck.element("Toggle", "Level Changed Notification", false, function(State)
_G.LEVELNOTIFY = State.Toggle
end)

local webh = _menu.new_sector("WebHooks", "Right")

webh.element("Toggle", "Global WebHook Score Notification", false, function(State)
settings.webhooksent = State.Toggle
end)


local other = _menu.new_sector("misc", "Right")



other.element("Slider", "Hit Sound Volume", {default = {min = 0, max = 100, default = 2}}, function(State)
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.Volume = State.Slider
end)

other.element("Slider", "Kill Sound Volume", {default = {min = 0, max = 100, default = 2}}, function(State)
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.Volume = State.Slider
end)

other.element("Slider", "Parry Sound Volume", {default = {min = 0, max = 100, default = 2}}, function(State)
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Parry.Volume = State.Slider
end)

other.element("Button", "Rejoin", false, function(State)
local id = 4282985734
game:GetService("TeleportService"):Teleport(id, LocalPlayer)
end)

other.element("Button", "Server Hop", false, function(State)
local module = loadstring(game:HttpGet"https://pastebin.com/raw/1mc1FW2N")()

module:Teleport(game.PlaceId)
end)
other.element("Slider", "FPS Cap", {default = {min = 60, max = 300, default = 300}}, function(State)
setfpscap(State.Slider)
Library:Notify("FPS : " ..(State.Slider), 1)
end)


local contact = _menu.new_sector("Contact", "Right")

contact.element("Button", "Join Private Discord", false, function(State)
if syn then
setclipboard("https://discord.gg/KsytZVtvNd")
else
game.Players.LocalPlayer:Kick("setclipboard not supported on executor.")
end
end)


do

local aimbot = tabs[1].new_section("Combat")

local main = aimbot.new_sector("Main")


main.element("Toggle", "Stomp Aura", false, function(State)
if State.Toggle == true then
_G.stompaura = true
elseif State.Toggle == false then
_G.stompaura = false
end
end)

main.element("Slider", "Stomp Aura Range", {default = {min = 5, max = 25, default = 5}}, function(State)
_G.STOMPAURARANGE = State.Slider
end)

local function GetClosest()
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
main.element("Toggle", "Kill Aura", false, function(State)
Killaura = State.Toggle
Library:Notify("Kill Aura Toggled.", 1)
if State.Toggle == false then return end
while Killaura do
    if _G.REACHRANGE == 100 then
        _G.LOOL = 100
    end
for i = 1, 1 do
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
end)



main.element("Slider", "Kill Aura Range", {default = {min = 5, max = 23, default = 5}}, function(State)
_G.LOOL = State.Slider
Library:Notify("KILL AURA RANGE : " ..(_G.LOOL), 1)
end)

main.element("Slider", "Kill Aura Cooldown", {default = {min = 0, max = 8, default = 3}}, function(State)
_G.COOLDOWN = State.Slider
Library:Notify("KILL AURA COOLDOWN : " ..(_G.COOLDOWN), 1)
end)

local other = aimbot.new_sector("Combat Misc", "Left")

other.element("Button", "Anti Stun & Aim", false, function(State)
Library:Notify("T To Toggle.", 3)
repeat
wait()
until game:IsLoaded()
local L_134_ = game:service('Players')
local L_135_ = L_134_.LocalPlayer
repeat
wait()
until L_135_.Character
local L_136_ = game:service('UserInputService')
local L_137_ = game:service('RunService')
getgenv().Multiplier = 0.3
local L_138_ = true
local L_139_
L_136_.InputBegan:connect(function(L_140_arg0)
if L_140_arg0.KeyCode == Enum.KeyCode.LeftBracket then
    Multiplier = Multiplier + 0.01
    print(Multiplier)
    wait(0.2)
    while L_136_:IsKeyDown(Enum.KeyCode.LeftBracket) do
        wait()
        Multiplier = Multiplier + 0.01
        print(Multiplier)
    end
end
if L_140_arg0.KeyCode == Enum.KeyCode.RightBracket then
    Multiplier = Multiplier - 0.01
    print(Multiplier)
    wait(0.2)
    while L_136_:IsKeyDown(Enum.KeyCode.RightBracket) do
        wait()
        Multiplier = Multiplier - 0.01
        print(Multiplier)
    end
end
if L_140_arg0.KeyCode == Enum.KeyCode.T then
    L_138_ = not L_138_
    if L_138_ == true then
        repeat
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
            game:GetService("RunService").Stepped:wait()
        until L_138_ == false
    end
end
end)
end)


other.element("Dropdown", "Hit Sounds", {options = {"Normal", "CSGO", "TF2", "Rust", "Fart", "Boink", "Rage", "Oh Damn", "Heheha", "Hi Bozo", "HAHAH"}}, function(V) 
Library:Notify("HIT SOUND : " ..(V.Dropdown), 1)
if V.Dropdown == "Normal" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://160432334"
elseif V.Dropdown == "TF2" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://5650646664"
elseif V.Dropdown == "Oh Damn" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://7254268534"
elseif V.Dropdown == "Heheha" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://7539835749"
elseif V.Dropdown == "Rust" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://5043539486"
elseif V.Dropdown == "HAHAH" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://7360781598"
elseif V.Dropdown == "Hi Bozo" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://7486146216"
elseif V.Dropdown == "CSGO" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://8679627751"
elseif V.Dropdown == "Fart" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://6999993863"
elseif V.Dropdown == "Boink" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://5451260445"
elseif V.Dropdown == "Rage" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://6911556519"
end
end) 

other.element("Toggle", "Range Line", false, function(State)
if State.Toggle == true then
_G.drawlines = true
elseif State.Toggle == false then
_G.drawlines = false
end
end)

other.element("Toggle", "Died TP", false, function(State)
_G.DiedTP = State.Toggle

while _G.DiedTP do wait()
if pcall(function() game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') end) and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        lastDeath = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
end)
end
end
    
game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function()
if _G.DiedTP == true then
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastDeath
end
end)
end)

other.element("Toggle", "Auto Equip", false, function(State)
if State.Toggle == true then
_G.autoequip = true
elseif State.Toggle == false then
_G.autoequip = false
end
end)




local parryshit = aimbot.new_sector("Parry", "Right")

parryshit.element("Dropdown", "Parry Sounds", {options = {"Normal", "CSGO", "TF2", "Rust", "Fart", "Boink", "Rage"}}, function(V) 
Library:Notify("PARRY SOUND : " ..(V.Dropdown), 1)
if V.Dropdown == "Normal" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Parry.SoundId = "rbxassetid://4516507682"
elseif V.Dropdown == "TF2" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Parry.SoundId = "rbxassetid://5650646664"
elseif V.Dropdown == "Rust" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Parry.SoundId = "rbxassetid://5043539486"
elseif V.Dropdown == "CSGO" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Parry.SoundId = "rbxassetid://8679627751"
elseif V.Dropdown == "Fart" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Parry.SoundId = "rbxassetid://6999993863"
elseif V.Dropdown == "Boink" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Parry.SoundId = "rbxassetid://5451260445"
elseif V.Dropdown == "Rage" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Parry.SoundId = "rbxassetid://6911556519"
end
end) 

parryshit.element("Toggle", "Lower Parry Cooldown", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'PARRY_COOLDOWN_IN_SECONDS') and State.Toggle then
    rawset(b, 'PARRY_COOLDOWN_IN_SECONDS', (_G.DURATION1))
end
end
end)

parryshit.element("Slider", "Lower Parry Duration", {default = {min = 0, max = 5, default = 1}}, function(State)
_G.DURATION1 = State.Slider
end)

parryshit.element("Toggle", "Longer Parry", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'PARRY_DURATION_IN_SECONDS') and State.Toggle then
    rawset(b, 'PARRY_DURATION_IN_SECONDS', (_G.DURATION))
end
end
end)

parryshit.element("Slider", "Longer Parry Duration", {default = {min = 1, max = 5, default = 3}}, function(State)
_G.DURATION = State.Slider
end)


parryshit.element("Toggle", "Auto Parry", false, function(State)
    Library:Notify("Auto Parry Toggled", 1)
_G.AutoParry = State.Toggle

if _G.AutoParry == true then
local lp = game.Players.LocalPlayer

local animationInfo = {}

function getInfo(id)
local success, info = pcall(function()
    return game:GetService("MarketplaceService"):GetProductInfo(id)
end)
if success then
    return info
end
return {Name=''}
end
function block(player)
keypress(0x46)
wait()
keyrelease(0x46)
end

local AnimNames = {
'Slash',
'Swing',
'Sword'
}

function playerAdded(v)
local function charadded(char)
    local humanoid = char:WaitForChild("Humanoid", 5)
    if humanoid then
        humanoid.AnimationPlayed:Connect(function(track)
            local info = animationInfo[track.Animation.AnimationId]
            if not info then
                info = getInfo(tonumber(track.Animation.AnimationId:match("%d+")))
                animationInfo[track.Animation.AnimationId] = info
            end
            
            if (lp.Character and lp.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Head")) and _G.AutoParry == true then
                local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude
                if mag < (_G.PARRYMAGNIUTDE) then
                    
                    for _, animName in pairs(AnimNames) do
                        if info.Name:match(animName) then
                            pcall(block, v)
                        end
                    end
                    
                end
            end
        end)
    end
end

if v.Character then
    charadded(v.Character)
end
v.CharacterAdded:Connect(charadded)
end

for i,v in pairs(game.Players:GetPlayers()) do              
if v ~= lp then
    playerAdded(v)
end
end

game.Players.PlayerAdded:Connect(playerAdded)
end
end)





parryshit.element("Slider", "Auto Parry Range", {default = {min = 5, max = 20, default = 5}}, function(State)
_G.PARRYMAGNIUTDE = State.Slider
Library:Notify("AUTO PARRY RANGE : " ..(_G.PARRYMAGNIUTDE), 1)
end)






local farm = aimbot.new_sector("Combat Misc 2", "Right")

farm.element("Dropdown", "Kill Sounds", {options = {"Normal", "CSGO", "TF2", "Rust", "Fart", "Boink", "Rage"}}, function(V) 
Library:Notify("KILL SOUND : " ..(V.Dropdown), 1)
if V.Dropdown == "Normal" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.SoundId = "rbxassetid://5043539486"
elseif V.Dropdown == "TF2" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.SoundId = "rbxassetid://5650646664"
elseif V.Dropdown == "Rust" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.SoundId = "rbxassetid://5043539486"
elseif V.Dropdown == "CSGO" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.SoundId = "rbxassetid://8679627751"
elseif V.Dropdown == "Fart" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.SoundId = "rbxassetid://6999993863"
elseif V.Dropdown == "Boink" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.SoundId = "rbxassetid://5451260445"
elseif V.Dropdown == "Rage" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.SoundId = "rbxassetid://6911556519"
end
end) 

farm.element("Toggle", "Auto Jump [ENABLE FP]", false, function(State)
if State.Toggle == true then
_G.autojump = true
elseif State.Toggle == false then
_G.autojump = false
end
end)

farm.element("Toggle", "Follow Person [FP]", false, function(State)
if State.Toggle == true then
_G.followclosest = true
elseif State.Toggle == false then
_G.followclosest = false
end
end)

farm.element("Toggle", "Velocity [FOR FP] ", false, function(State)
if State.Toggle == true then
_G.boostws = true
elseif State.Toggle == false then
_G.boostws = false
end
end)


farm.element("Toggle", "Invisible [Enable Fly]", false, function(State) 
Library:Notify("Loading..", 1)
wait(1)
Library:Notify("Loaded", 1)
if State.Toggle == true then
while true do
    wait()
    game.Players.LocalPlayer.Character.Torso.Anchored = true
    wait()
        game.Players.LocalPlayer.Character.Torso.Anchored = false
game.Players.LocalPlayer.Character.Torso.Position = Vector3.new(1)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 1
wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character.Torso.CFrame
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0

end

while true do
    wait()
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = -5
    wait()
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
    end
    

    
        game:GetService('RunService').Heartbeat:Connect(function()
        for i,v in pairs(character:GetChildren()) do
            if v:IsA("Head") then
                v.Velocity = Vector3.new(30,0,0)
                v.CFrame = v.CFrame
            end
        end
    end)

    game.Players.LocalPlayer.Character.Head.Position = Vector3.new(5,-10,100)

else
    FASTRESPAWN()
end                
end)


local combatmisc = tabs[1].new_section("Combat 2")



local rage = combatmisc.new_sector("Combat 2", "Left")
local raging = false
rage.element("Toggle", "Circle Around Target", false, function(State)
raging = State.Toggle

if State.Toggle == false then return end
local i = 0
while raging do 
    wait()
    i = (i + dt/1) % 1
    local alpha = 2 * math.pi * i
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosest().Character.HumanoidRootPart.CFrame * CFrame.Angles(0, alpha, 0) * CFrame.new(0, 0, 7) 
end
end)
-- just incase 2nd 1
local function GetClosest()
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

local GloryAura = false
rage.element("Toggle", "Glory Aura", false, function(State)
GloryAura = State.Toggle
while GloryAura do 
    wait()
    local character = game.Players.LocalPlayer.Character
    local tool = character:FindFirstChildOfClass("Tool")
    game:GetService("ReplicatedStorage").Communication.Events.StartGloryKill:FireServer(tool, GetClosest().Character, Vector3.new(), Vector3.new())
end
end)

local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local overhead = false
rage.element("Toggle", "Tp Over Head", false, function(State)
overhead = State.Toggle
if State.Toggle == false then return end
while overhead do
wait()
HumanoidRootPart.CFrame = GetClosest().Character.Head.CFrame * CFrame.new(math.random(1,1),1,1)
end
end)

local misc = combatmisc.new_sector("FE Misc", "Left")

misc.element("Toggle", "No Melee Cooldown", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'cooldown') then
    rawset(b, 'cooldown', State.Toggle and 0 or 0.53)
end
end
end)

misc.element("Toggle", "No Stomp Cooldown", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'cooldown') then
    rawset(b, 'cooldown', State.Toggle and 0 or 0.53)
end
end
end)




local ranged = combatmisc.new_sector("Ranged", "Right")

ranged.element("Toggle", "Faster RPG Reload", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'reloadTime') then
    rawset(b, 'reloadTime', State.Toggle and 0 or 2.5)
end
end
end)

ranged.element("Toggle", "Lower Kunai Cooldown", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'cooldown') then
    rawset(b, 'cooldown', State.Toggle and 0.1 or 0.2)
end
end
end)

ranged.element("Toggle", "Lower Kunai Cooldown", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'reloadTime') then
    rawset(b, 'reloadTime', State.Toggle and 0.1 or 0.4)
end
end
end)

local ranged = combatmisc.new_sector("Ranged Bow", "Right")

ranged.element("Toggle", "Bow No Recoil", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'reloadTime') then
rawset(b, 'reloadTime', State.Toggle and 0.4 or 35)
end
end
end)

ranged.element("Toggle", "Bow Instant Charge", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'chargeOnDuration') then
rawset(b, 'chargeOnDuration', State.Toggle and 0.1 or 0.45)
end
end
end)

ranged.element("Toggle", "Bow No Drop Off", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'dropOffDistance') then
rawset(b, 'dropOffDistance', State.Toggle and 0 or 150)
end
end
end)

ranged.element("Toggle", "Bow Reload Time", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'reloadTime') then
rawset(b, 'reloadTime', State.Toggle and (_G.TIME) or 0.8)
end
end
end)

ranged.element("Slider", "Bow Reload Time", {default = {min = 0.4, max = 4, default = 0.4}}, function(State)
_G.TIME = State.Slider
Library:Notify("BOW RELOAD TIME : " ..(_G.TIME), 1)
end)

ranged.element("Toggle", "Bow Spread", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'maxSpread') then
rawset(b, 'maxSpread', State.Toggle and (_G.SPREAD) or 0.8)
end
end
end)

ranged.element("Slider", "Bow Spread", {default = {min = 0.4, max = 4, default = 0.4}}, function(State)
_G.SPREAD = State.Slider
Library:Notify("BOW SPREAD : " ..(_G.SPREAD), 1)
end)

local Silent = combatmisc.new_sector("Silent Aim", "Left")


local antiaim = tabs[1].new_section("antiaim")

local direction = antiaim.new_sector("direction")
direction.element("Toggle", "enabled"):add_keybind()
direction.element("Dropdown", "yaw base", {options = {"camera", "random", "spin"}})
direction.element("Slider", "yaw offset", {default = {min = -180, max = 180, default = 0}})
direction.element("Dropdown", "yaw modifier", {options = {"none", "jitter", "offset jitter"}})
direction.element("Slider", "modifier offset", {default = {min = -180, max = 180, default = 0}})
direction.element("Toggle", "force angles")



local Players = tabs[2].new_section("Player")
local Player = Players.new_sector("Player")
local character = game.Players.LocalPlayer.Character
local walkspeed = false
Player.element("Toggle", "Toggle Walkspeed", false, function(bool)
walkspeed = bool.Toggle
while walkspeed do 
wait()
local hum = game.Players.LocalPlayer.Character.Humanoid
hum.WalkSpeed = _G.Speed
end
end)

Player.element("Toggle", "Toggle JumpPower", false, function(bool)
jumppower = bool.Toggle
while jumppower do 
wait()
local hum = game.Players.LocalPlayer.Character.Humanoid
hum.JumpPower = _G.JumpPower 
end
end)

Player.element("Slider", "Walkspeed", {default = {min = 16, max = 75, default = 16}}, function(State)
_G.Speed = State.Slider
end)

Player.element("Slider", "Jump Power", {default = {min = 50, max = 400, default = 50}}, function(State)
_G.JumpPower = State.Slider
end)

Player.element("Toggle", "Spoof Movement", false, function(bool)
if bool.Toggle == true then
game.Players.LocalPlayer.Character.Head.Position = Vector3.new(5,-10,100)
else
FASTRESPAWN()
end
end)

Player.element("Dropdown", "Spoof Mode", {options = {"Server", "Client"}}, function(v)
Library:Notify("SPOOF MODE : " ..(v.Dropdown), 1)
if v.Dropdown == "Server" then
while task.wait() do          
    carpetAnim = Instance.new("Animation")
    carpetAnim.AnimationId = "rbxassetid://282574440"
    carpet = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(carpetAnim)
    carpet:Play(0.1, 1, 1)

    game.Players.LocalPlayer.Character.Humanoid.HipHeight = -10
end
elseif v.Dropdown == "Client" then 
while task.wait() do          
    carpetAnim = Instance.new("Animation")
    carpetAnim.AnimationId = "rbxassetid://282574440"
    carpet = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(carpetAnim)
    carpet:Play(0.1, 1, 1)

    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 5
end
end
end)


Player.element("Toggle", "Noclip", false, function(State)
_G.Noclip = State.Toggle

local function Noclip()
if game.Players.LocalPlayer.Character ~= false and _G.Noclip == true then
for _, selfChar in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if selfChar:IsA("BasePart") and selfChar.CanCollide == true and selfChar.Name then
        selfChar.CanCollide = false
    end
end
end
end

game:GetService('RunService').Stepped:Connect(Noclip)
end)
local AUTOJUMP = false
Player.element("Toggle", "Auto Jump", false, function(State)
AUTOJUMP = State.Toggle
if State.Toggle == false then return end
while AUTOJUMP do 
wait()
keypress(0x20)
end
end)



Player.element("Toggle", "Hide Name", false, function(State)
if State.Toggle then
for i, v in pairs(game:GetDescendants()) do
    if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
        if v.Text == game:GetService("Players").LocalPlayer.Name then
            v.Text = "false"
        end
    end
end
else
for i, v in pairs(game:GetDescendants()) do
    if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
        if v.Text == "false" then
            v.Text = game:GetService("Players").LocalPlayer.Name
        end
    end
end
end
end)

for i, v in pairs(ha) do
    if typeof(v) == "table" and rawget(v, "_setStamina") then
        local old_XDD = v._setStamina
        v._setStamina = function(s, st)
            if settings.InfiniteStamina then
                st = 150
            end
            old_XDD(s, st)
        end
    end
end

Player.element("Toggle", "Infinite Stamina", false, function(State)
    settings.InfiniteStamina = State.Toggle
end)
Player.element("Toggle", "Fast Self Revive", false, function(bool)
if bool.Toggle == true then
game:GetService('RunService').Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").Communication.Events.SelfReviveStart:FireServer()
wait(1)
game:GetService("ReplicatedStorage").Communication.Events.SelfRevive:FireServer()
end)
else
    FASTRESPAWN()
end
end)

Player.element("Toggle", "Infinite Jump", false, function(State)
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
_G.JumpHeight = _G.Power;
_G.Toggled = State.Toggle

function Action(Object, Function) if Object ~= false then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
if _G.Toggled and UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
    Action(Player.Character.Humanoid, function(self)
        if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
            Action(self.Parent.HumanoidRootPart, function(self)
                self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
            end)
        end
    end)
end
end)
end)

Player.element("Slider", "Infinite Jump Power", {default = {min = 2, max = 1000, default = 2}}, function(State)
_G.Power = State.Slider
end)

Player.element("Toggle", "Fov Toggle", false, function(State)
settings.CamFovToggled = State.Toggle
end)

Player.element("Slider", "Field Of View", {default = {min = 70, max = 120, default = 70}}, function(State)
settings.CamFov = State.Slider
Library:Notify("FOV : " ..(State.Slider), 1)
end)



local function keydown(key)
return game:GetService("UserInputService"):IsKeyDown(key)
end

local function SpoofProperty(Instance,Property,Value)
local OldIndex
OldIndex = hookmetamethod(game, "__index", newcclosure(function(Self, Key)
if not checkcaller() and Self == Instance and Key == Property then
    return Value
end
return OldIndex(Self, Key)
end))
end

local Others = Players.new_sector("Others", "Right")

local Flying = false
Others.element("Toggle", "Fly", false, function(bool)
Flying = bool.Toggle
Library:Notify("Fly Toggled.", 1)
if bool.Toggle == false then return end
while Flying do
local move = game.Players.LocalPlayer.Character.Humanoid.MoveDirection * (_G.Speeed) * 4
if keydown(Enum.KeyCode.Space) then
    game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,55,0) + move
elseif keydown(Enum.KeyCode.C) then
    game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,-55,0) + move
else
    game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,2,0) + move
end
game:GetService("RunService").Heartbeat:wait()
end
end)

Others.element("Slider", "Fly Speed", {default = {min = 2, max = 23, default = 20}}, function(State)
_G.Speeed = State.Slider
end)



Others.element("Toggle", "Troll", false, function(State)
Library:Notify("Troll Toggled.", 1)
if State.Toggle == true then
local plr = game.Players.LocalPlayer
game:GetService("RunService").Stepped:Connect(function()
setsimulationradius(9e9,9e9)
plr.ReplicationFocus = workspace
settings().Physics.AllowSleep = false
end)

local runservice=game:service"RunService";
local player=game:service"Players"["LocalPlayer"];
local character=player["Character"];
local blacklisted="Head Torso HumanoidRootPart";
local limbs={};

character["Humanoid"].HipHeight=0;

for i,v in next,character:children() do
if (v.ClassName=="Part") and not blacklisted:find(v.Name) then
v:BreakJoints();
limbs[v.Name]=v;
end
end

while runservice["Heartbeat"]:Wait() do
limbs["Left Leg"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(-1,-2,0);
limbs["Right Leg"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(1,-2,0);
limbs["Left Arm"].CFrame=character["Left Leg"].CFrame*CFrame.new(-1,-2,0);
limbs["Right Arm"].CFrame=character["Right Leg"].CFrame*CFrame.new(1,-2,0);
end
else
FASTRESPAWN()
end
end)

Others.element("Button", "Headless", false, function(State)
game.Players.LocalPlayer.Character.Head:BreakJoints()
game.Players.LocalPlayer.Character.Head.Position = Vector3.new(0,10000000,0)

local anim = Instance.new('Animation')
anim.AnimationId = Anim 
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
end)

Others.element("Button", "Boneless", false, function(State)
game.Players.LocalPlayer.Character["Head"]:BreakJoints()
game.Players.LocalPlayer.Character["Right Arm"]:BreakJoints()
game.Players.LocalPlayer.Character["Right Leg"]:BreakJoints()
game.Players.LocalPlayer.Character["Left Arm"]:BreakJoints()
game.Players.LocalPlayer.Character["Left Leg"]:BreakJoints()
end)
local antiaim = tabs[2].new_section("Player 2")

local Misc1 = antiaim.new_sector("Misc", "Right")


Misc1.element("Button", "Force Reset", false, function(State)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

Misc1.element("Button", "Free Emotes", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'gamepassIdRequired') then
    rawset(b, 'gamepassIdRequired', false)
end
end
end)




Misc1.element("Button", "Remove Textures", false, function(State)
for _, v in pairs(workspace:GetDescendants()) do
if
    v.ClassName == "Part"
    or v.ClassName == "SpawnLocation"
    or v.ClassName == "WedgePart"
    or v.ClassName == "Terrain"
    or v.ClassName == "MeshPart"
then
    v.Material = "Plastic"
end
end

for i, v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Decal" or v.ClassName == "Texture" then
    v:Destroy()
end
end
end)

Misc1.element("Button", "CFrame Noclip Fly [Z]", false, function(State)
game.Players.LocalPlayer.DevCameraOcclusionMode = 'Invisicam' 
local mouse = game.Players.LocalPlayer:GetMouse()
local torso = game.Players.LocalPlayer.Character.Torso
local dir = {w = 0, s = 0, a = 0, d = 0}
local spd = 2 mouse.KeyDown:connect(function(key)
if key:lower() == "w" then dir.w = 1
elseif key:lower() == "s" then dir.s = 1
elseif key:lower() == "a" then dir.a = 1
elseif key:lower() == "d" then dir.d = 1
elseif key:lower() == "q" then spd = spd + 1
elseif key:lower() == "e" then spd = spd - 1
end 
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
dir.w = 0
elseif key:lower() == "s" then dir.s = 0
elseif key:lower() == "a" then dir.a = 0
elseif key:lower() == "d" then dir.d = 0
end 
end)


enabled = false
mouse.keyDown:connect(function(key)
if (key) == "Z" and enabled == false then
enabled = true
repeat wait(1/44)
    game.Players.LocalPlayer.Character.Torso.Anchored = true
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
    torso.CFrame = CFrame.new(torso.Position, game.Workspace.CurrentCamera.CoordinateFrame.p) * CFrame.Angles(0,math.rad(180),0) * CFrame.new((dir.d-dir.a)*spd,0,(dir.s-dir.w)*spd)
until enabled == false
elseif enabled == false then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
if (key) == "Z" and enabled == true then
enabled = false
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Torso.Anchored = false


end

end)  
end)




Misc1.element("Toggle", "Full Bright", false, function(State)
if State.Toggle == true then
game:GetService("Lighting").ExposureCompensation = 2
elseif State.Toggle == false then
game:GetService("Lighting").ExposureCompensation = 0
end
end)


Misc1.element("Toggle", "Auto Respawn", false, function(State)
if State.Toggle == true then
_G.autospawn = true
elseif State.Toggle == false then
_G.autospawn = false 
end
end)






local Player6 = antiaim.new_sector("Cross Roads")

Player6.element("Toggle", "Fake Floor", false, function(State)
game:GetService("Workspace").Map.Crossroads.MapConfiguration.FakeFloor.CanCollide = State.Toggle
end)

Player6.element("Toggle", "Walk on Water", false, function(State)
game:GetService("Workspace").Map.Crossroads.MapConfiguration.WaterAreas.WaterArea.CanCollide = State.Toggle
end)

Player6.element("Toggle", "Menu Blur", false, function(State)
game:GetService("Workspace").Map.Crossroads.MenuConfiguration.LightingObjects.Blur.Enabled = State.Toggle
end)

Player6.element("Button", "Remove Water", false, function(State)
workspace:FindFirstChildOfClass('Terrain'):Clear()
game:GetService("Workspace").Map.Crossroads.MapConfiguration.WaterAreas.WaterArea.CanCollide = true
end)


local Player5 = antiaim.new_sector("River Of Sin")

Player5.element("Toggle", "Fake Floor", false, function(State)
game:GetService("Workspace").Map.RiverOfSin.MapConfiguration.FakeFloor.CanCollide = State.Toggle
end)


Player5.element("Toggle", "Menu Blur", false, function(State)
game:GetService("Workspace").Map.RiverOfSin.MenuConfiguration.LightingObjects.Blur.Enabled = State.Toggle
end)




local Player2 = antiaim.new_sector("Player Mods", "Left")



Player2.element("Toggle", "Faster Player Revive", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'REVIVE_DURATION') then
    rawset(b, 'REVIVE_DURATION', State.Toggle and 2 or 3)
end
end
end)


Player2.element("Toggle", "Infinite Air", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING') then
rawset(b, 'AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING', nil)
end
end
end)

Player2.element("Toggle", "Air Gen In Water", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING') then
rawset(b, 'AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING', State.Toggle and 20 or -15)
end
end
end)


Player2.element("Toggle", "Faster Crouch Speed", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'CROUCHED_WALK_SPEED_MULTIPLIER') then
    rawset(b, 'CROUCHED_WALK_SPEED_MULTIPLIER', State.Toggle and (_G.CROUCHSPEED) or 0.55)
end
end
end)

Player2.element("Slider", "Crouch Speed", {default = {min = 0.55, max = 4, default = 0.55}}, function(State)
_G.CROUCHSPEED = State.Slider
end)

Player2.element("Toggle", "Crouch Fov", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'CROUCHED_FOV_MULTIPLIER') then
    rawset(b, 'CROUCHED_FOV_MULTIPLIER', State.Toggle and (_G.CROUCHFOV) or 0.925)
end
end
end)

Player2.element("Slider", "Crouch Field Of View", {default = {min = 0.925, max = 3, default = 0.925}}, function(State)
_G.CROUCHFOV = State.Slider
end)

local Player69 = antiaim.new_sector("Player Mods 2", "Right")

Player69.element("Toggle", "Faster Throw Molotv", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'preThrowDuration') then
    rawset(b, 'preThrowDuration', State.Toggle and 0.2 or 1)
end
end
end)

Player69.element("Toggle", "Faster Drink Ghost Potion", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'useTime') then
    rawset(b, 'useTime', State.Toggle and 0.1 or 2)
end
end
end)

Player69.element("Slider", "Ghost Potion Speed Boost", {default = {min = 0.925, max = 3, default = 0.925}}, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'walkSpeedMultiplierWhenUsing') then
    rawset(b, 'walkSpeedMultiplierWhenUsing', State.Slider)
end
end
end)

Player69.element("Toggle", "Faster Place Bear Trap", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'useTime') then
    rawset(b, 'useTime', State.Toggle and 0.01 or 1.75)
end
end
end)

Player69.element("Toggle", "Wound Bleeding Time", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'INITIAL_WOUND_BLEEDING_DURATION') then
    rawset(b, 'INITIAL_WOUND_BLEEDING_DURATION', State.Toggle and 2 or 4)
end
end
end)



local Player1 = Players.new_sector("Anti Mods", "Right")


Player1.element("Toggle", "Anti Fire Damage + Bear Trap", false, function(State)
local old;
old = hookmetamethod(game,"__namecall",function(self,...)
local args = {...}
if self.Name == "GotHitRE" and State.Toggle then
    return
end
return old(self, ...)
end)
end)

Player1.element("Toggle", "Anti Dash Cooldown", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'DASH_COOLDOWN') then 
    rawset(b, 'DASH_COOLDOWN', State.Toggle and 0 or 0.8)
end
end
end)

Player1.element("Toggle", "Anti Jump Cooldown", false, function(State)
for a,b in next, getgc(true) do
if typeof(b) == 'table' and rawget(b, 'JUMP_DELAY_ADD') then
    rawset(b, 'JUMP_DELAY_ADD', State.Toggle and -0.1 or 0.9)
end
end           
end)




Player1.element("Toggle", "Anti Ragdoll", false, function(State)
getgenv().AntiRagdoll = State.Toggle

function NoRagdoll()
if getgenv().AntiRagdoll == true then
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
end
end
game:GetService('RunService').Heartbeat:Connect(NoRagdoll)
end)




Player1.element("Toggle", "Anti Fall Dmg", false, function(State)
settings.nofalldmg = State.Toggle
end)

local o;
o = hookmetamethod(game,"__namecall",function(self,...)
local args = {...}
if self.Name == "StartFallDamage" or self.Name == "TakeFallDamage" and settings.nofalldmg then
return
end
return o(self,...)
end)

Player1.element("Toggle", "Anti Stomp", false, function(bool)
_G.ANTISTOMP = bool.Toggle
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local player = game.Players.LocalPlayer

if humanoid.Health < (_G.LOWHEALTHTING) and _G.ANTISTOMP then
while _G.ANTISTOMP do
wait()
local move = game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 16 * 4
game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(10,10,300) + move
end
else
print('great health')
end
end)

Player1.element("Slider", "Anti Stomp Health", {default = {min = 0, max = 50, default = 2}}, function(State)
_G.LOWHEALTHTING = State.Slider
Library:Notify((_G.LOWHEALTHTING), 1)
end)





local players = tabs[3].new_section("players")

local esp = players.new_sector("esp")
esp.element("Toggle", "enabled"):add_keybind()
esp.element("Slider", "max distance", {default = {min = 250, max = 15000, default = 15000}})

local enemies = players.new_sector("enemies")
enemies.element("Toggle", "box"):add_color({Color = Color3.fromRGB(255, 255, 255)})
enemies.element("Toggle", "name"):add_color({Color = Color3.fromRGB(255, 255, 255)})
enemies.element("Toggle", "health"):add_color({Color = Color3.fromRGB(0, 255, 0)})
enemies.element("Toggle", "indicators"):add_color({Color = Color3.fromRGB(255, 255, 255)})
enemies.element("Combo", "types", {options = {"tool", "distance"}})

local friendlies = players.new_sector("friendlies")
friendlies.element("Toggle", "box"):add_color({Color = Color3.fromRGB(255, 255, 255)})
friendlies.element("Toggle", "name"):add_color({Color = Color3.fromRGB(255, 255, 255)})
friendlies.element("Toggle", "health"):add_color({Color = Color3.fromRGB(0, 255, 0)})
friendlies.element("Toggle", "indicators"):add_color({Color = Color3.fromRGB(255, 255, 255)})
friendlies.element("Combo", "types", {options = {"tool", "distance"}})

local oof = players.new_sector("out of fov", "Right")
oof.element("Toggle", "enemies"):add_color({Color = Color3.fromRGB(84, 101, 255)})
oof.element("Toggle", "teammates"):add_color({Color = Color3.fromRGB(84, 101, 255)})
oof.element("Slider", "size", {default = {min = 10, max = 15, default = 15}})
oof.element("Slider", "offset", {default = {min = 100, max = 700, default = 400}})
oof.element("Combo", "settings", {options = {"outline", "blinking"}})

local function UpdateChams()
for _,Player in next, Players:GetPlayers() do
if Player ~= LocalPlayer then
    ApplyChams(Player)
end
end
end

local chams = players.new_sector("chams", "Right")
chams.element("Toggle", "enemies", false, UpdateChams):add_color({Color = Color3.fromRGB(141, 115, 245)}, false, UpdateChams)
chams.element("Toggle", "friendlies", false, UpdateChams):add_color({Color = Color3.fromRGB(102, 255, 102)}, false, UpdateChams)
chams.element("Toggle", "through walls", false, UpdateChams):add_color({Color = Color3.fromRGB(170, 170, 170)}, false, UpdateChams)

local drawings = players.new_sector("drawings", "Right")
drawings.element("Dropdown", "font", {options = {"Plex", "Monospace", "System", "UI"}})
drawings.element("Dropdown", "surround", {options = {"none", "[]", "--", "<>"}})


local esp1 = tabs[3].new_section("World Visuals")

local esp2 = esp1.new_sector("World")
esp2.element("Dropdown", "SkyBox", {options = {"none", "nebula", "vaporwave", "clouds", "twilight"}}, function(State)
local Sky = Lighting:FindFirstChildOfClass("Sky")
if not Sky then
return
end

local Skybox = Skyboxes[State.Dropdown]

for i,v in next, Skybox do
Sky[i] = v
end
end)

esp2.element("Slider", "World Brightness", {default = {min = 0, max = 10, default = 2}}, function(State)
game:GetService("Lighting").ExposureCompensation = State.Slider
end)

esp2.element("Slider", "Max Zoom", {default = {min = 0, max = 1000, default = 2}}, function(State)
game.Players.LocalPlayer.CameraMaxZoomDistance = State.Slider
end)

esp2.element("Slider", "Time Of Day", {default = {min = 0, max = 24, default = 2}}, function(State)
Lighting.ClockTime = State.Slider
end)

local ColorCorrection = Create("ColorCorrectionEffect", {
Enabled = false,
Name = "CustomColorCorrection",
}, Camera)

esp2.element("Toggle", "Color Correction", nil, function(State)
ColorCorrection.Enabled = State.Toggle
end):add_color({Color = Color3.fromRGB(255, 255, 255)}, nil, function(State)
ColorCorrection.TintColor = State.Color
end)

esp2.element("Slider", "Saturation", {default = {min = 0, max = 100, default = 0}}, function(State)
ColorCorrection.Saturation = State.Slider/50
end)



local teleports = tabs[4].new_section("Teleports")

local TP = teleports.new_sector("Slow Teleports") 

TP.element("Dropdown", "River Of Sin", {options = {"Circle", "Top Mountain", "Top Circle", "Bridge"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Circle" then 
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-595, 8, -88)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-595, 8, -887)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
elseif
v.Dropdown == "Top Mountain" then
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new( -538, 54, -567)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new( -538, 54, -567)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
elseif
v.Dropdown == "Top Circle" then
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
    local TweenService = game:GetService("TweenService")
    local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
    {CFrame = CFrame.new(-811, 52, -230)}):Play()
    wait(10)
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
    local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
    {CFrame = CFrame.new(-811, 52, -230)}):Play()
wait(2)
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
elseif
v.Dropdown == "Bridge" then
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
            local TweenService = game:GetService("TweenService")
            local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
            {CFrame = CFrame.new(-418, 12, -229)}):Play()
            wait(10)
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
            local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
            {CFrame = CFrame.new(-418, 12, -229)}):Play()
wait(2)
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
end
end)

TP.element("Dropdown", "Outpost Island", {options = {"Mountain", "Middle", "Beach", "Ship", "Side Beach"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Mountain" then 
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(193, 72, -187)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(193, 72, -187)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
elseif
v.Dropdown == "Middle" then 
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(61, 19, 63)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(61, 19, 63)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false) 

elseif
v.Dropdown == "Beach" then   
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-356, 4, 119)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-356, 4, 119)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)  

elseif
v.Dropdown == "Ship" then  
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-509, 8, 22)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-509, 8, 22)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)   

elseif        
v.Dropdown == "Side Beach" then  
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
    local TweenService = game:GetService("TweenService")
    local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
    {CFrame = CFrame.new(-303, 4, -327)}):Play()
    wait(10)
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
    local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
    {CFrame = CFrame.new(-303, 4, -327)}):Play()
wait(2)
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)   
end
end)

TP.element("Dropdown", "Mortem Insula", {options = {"Trampoline", "Castle", "Village", "Beach", "Side Beach"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Trampoline" then 
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(52, 130, 49)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(52, 130, 49)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
elseif
v.Dropdown == "Castle" then 
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-159, 168, 50)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-159, 168, 50)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false) 

elseif
v.Dropdown == "Village" then   
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-142, 146, 147)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-142, 146, 147)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)  

elseif
v.Dropdown == "Beach" then  
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-149, 123, 333)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-149, 123, 333)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)   

elseif        
v.Dropdown == "Side Beach" then  
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
    local TweenService = game:GetService("TweenService")
    local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
    {CFrame = CFrame.new(-345, 122, 217)}):Play()
    wait(10)
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
    local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
    {CFrame = CFrame.new(-345, 122, 217)}):Play()
wait(2)
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)   
end
end)

TP.element("Dropdown", "Cross Roads", {options = {"Beach", "Mountain", "Mountain #2", "Side Beach"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Beach" then
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-260, 20, 2)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-260, 20, 2)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
elseif v.Dropdown == "Mountain #2" then
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(142, 87, 216)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(142, 87, 216)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)

elseif v.Dropdown == "Mountain" then
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(185, 103, -181)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(185, 103, -181)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)    

elseif v.Dropdown == "Side Beach" then
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(26, 17, 357)}):Play()
wait(10)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(26, 17, 357)}):Play()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
end
end)


local TP1 = teleports.new_sector("Fast Teleports", "Right")

TP1.element("Dropdown", "River Of Sin", {options = {"Circle", "Top Mountain", "Top Circle", "Bridge"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Circle" then 
FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-595, 8, -88)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-595, 8, -88) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-595, 8, -88)})
            end
        end
    end)
end)
elseif
    v.Dropdown == "Top Mountain" then 
        FASTRESPAWN()
wait(2)
    local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-538, 54, -567)})
    tween:Play()
    _G.TP = true
    
    tween.Completed:Connect(function()
            game:GetService('RunService').RenderStepped:Connect(function()
                if _G.TP == true then
                    if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-538, 54, -567) then
                        _G.TP = false
                    else
                    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-538, 54, -567)})
                end
            end
        end)
    end)
elseif
v.Dropdown == "Top Circle" then
    FASTRESPAWN()
wait(2)
    local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-811, 52, -230)})
    tween:Play()
    _G.TP = true
    
    tween.Completed:Connect(function()
            game:GetService('RunService').RenderStepped:Connect(function()
                if _G.TP == true then
                    if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-811, 52, -230) then
                        _G.TP = false
                    else
                    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-811, 52, -230)})
                end
            end
        end)
    end)

    elseif
    v.Dropdown == "Bridge" then
        FASTRESPAWN()
wait(2)
        local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-418, 12, -229)})
        tween:Play()
        _G.TP = true
        
        tween.Completed:Connect(function()
                game:GetService('RunService').RenderStepped:Connect(function()
                    if _G.TP == true then
                        if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-418, 12, -229) then
                            _G.TP = false
                        else
                        game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-418, 12, -229)})
                    end
                end
            end)
        end)
end
end)

TP1.element("Dropdown", "Outpost Island", {options = {"Mountain", "Middle", "Beach", "Ship", "Side Beach"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Mountain" then 
FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(193, 72, -187)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        if _G.TP == true then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(193, 72, -187) then
                _G.TP = false
            else
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(193, 72, -187)})
        end
    end
end)
end)
elseif
v.Dropdown == "Middle" then 
    FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(61, 19, 63)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(61, 19, 63) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(61, 19, 63)})
            end
        end
    end)
end)

elseif
v.Dropdown == "Beach" then    
    FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-356, 4, 119)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-356, 4, 119) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-356, 4, 119)})
            end
        end
    end)
end)

elseif
v.Dropdown == "Ship" then  
    FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-509, 8, 22)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-509, 8, 22) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-509, 8, 22)})
            end
        end
    end)
end)
    

elseif        
v.Dropdown == "Side Beach" then
    FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-303, 4, -327)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-303, 4, -327) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-303, 4, -327)})
            end
        end
    end)
end)
end
end)

TP1.element("Dropdown", "Mortem Insula", {options = {"Trampoline", "Castle", "Village", "Beach", "Side Beach"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Trampoline" then 
FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new( 52, 130, 49)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        if _G.TP == true then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new( 52, 130, 49) then
                _G.TP = false
            else
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new( 52, 130, 49)})
        end
    end
end)
end)

elseif
v.Dropdown == "Castle" then
    FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-159, 168, 50)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-159, 168, 50) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-159, 168, 50)})
            end
        end
    end)
end)

elseif
v.Dropdown == "Village" then   
    FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-142, 146, 147)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-142, 146, 147) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-142, 146, 147)})
            end
        end
    end)
end)

elseif
v.Dropdown == "Beach" then 
    FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new( -149, 123, 333)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new( -149, 123, 333) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new( -149, 123, 333)})
            end
        end
    end)
end)

elseif        
v.Dropdown == "Side Beach" then  
    FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new( -345, 122, 217)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.TP == true then
                if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new( -345, 122, 217) then
                    _G.TP = false
                else
                game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new( -345, 122, 217)})
            end
        end
    end)
end)
end
end)

TP1.element("Dropdown", "Cross Roads", {options = {"Beach", "Mountain", "Mountain #2", "Side Beach"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Beach" then 
FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-260, 20, 2)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        if _G.TP == true then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(-260, 20, 2) then
                _G.TP = false
            else
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(-260, 20, 2)})
        end
    end
end)
end)
elseif v.Dropdown == "Mountain #2" then
FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(142, 87, 216)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        if _G.TP == true then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(142, 87, 216) then
                _G.TP = false
            else
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(142, 87, 216)})
        end
    end
end)
end)

elseif v.Dropdown == "Mountain" then 
FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(185, 103, -181)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        if _G.TP == true then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(185, 103, -181) then
                _G.TP = false
            else
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(185, 103, -181)})
        end
    end
end)
end)   

elseif v.Dropdown == "Side Beach" then 
FASTRESPAWN()
wait(2)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(26, 17, 357)})
tween:Play()
_G.TP = true

tween.Completed:Connect(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        if _G.TP == true then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame ~= Vector3.new(26, 17, 357) then
                _G.TP = false
            else
            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad), {CFrame = CFrame.new(26, 17, 357)})
        end
    end
end)
end)
end
end)

local Misctp = teleports.new_sector("Airdrop") 

Misctp.element("Button", "Collect Airdrop", false, function(State)
    repeat wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Airdrops.Airdrop.Balloon.Base.CFrame
        fireproximityprompt(game:GetService("Workspace").Airdrops.Airdrop.Crate.Hitbox.ProximityPrompt, 1)
        wait(0.2)
        fireproximityprompt(game:GetService("Workspace").Airdrops.Airdrop.Crate.Hitbox.ProximityPrompt, 0)
    until game:GetService("Workspace").Airdrops:FindFirstChild("Airdrop")
end)

Misctp.element("Button", "Tp To Airdrop", false, function(State)
FASTRESPAWN()
wait(1.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Airdrops.Airdrop.Balloon.Base.CFrame
keypress(0x52)
wait()
keyrelease(0x52)
end)

Misctp.element("Dropdown", "Areas", {options = {"Area 1", "Area 2"}}, function(v)
Library:Notify("TELEPORTING TO : " ..(v.Dropdown), 1)
if v.Dropdown == "Area 1" then
FASTRESPAWN()
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Crossroads.MapConfiguration.AirdropAreas.AirdropArea.CFrame
elseif v.Dropdown == "Area 2" then
FASTRESPAWN()
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Crossroads.MapConfiguration.AirdropAreas.AirdropArea.CFrame
end      
end)



local teleports = tabs[4].new_section("Misc")

local sounds = teleports.new_sector("Custom Sounds")

sounds.element("Dropdown", "Explosion Hit Sounds", {options = {"Normal", "CSGO", "TF2", "Rust", "Fart", "Boink", "Rage"}}, function(V) 
Library:Notify("EXPLOSIVE HIT SOUND : " ..(V.Dropdown), 1)
if V.Dropdown == "Normal" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.ExplosionHit.SoundId = "rbxassetid://3521555808"
elseif V.Dropdown == "TF2" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.ExplosionHit.SoundId = "rbxassetid://5650646664"
elseif V.Dropdown == "Rust" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.ExplosionHit.SoundId = "rbxassetid://5043539486"
elseif V.Dropdown == "CSGO" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.ExplosionHit.SoundId = "rbxassetid://8679627751"
elseif V.Dropdown == "Fart" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.ExplosionHit.SoundId = "rbxassetid://6999993863"
elseif V.Dropdown == "Boink" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.ExplosionHit.SoundId = "rbxassetid://5451260445"
elseif V.Dropdown == "Rage" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.ExplosionHit.SoundId = "rbxassetid://6911556519"
end
end) 

sounds.element("Dropdown", "Dash Sounds", {options = {"Normal", "CSGO", "TF2", "Rust", "Fart", "Boink", "Rage"}}, function(V) 
Library:Notify("DASH SOUND : " ..(V.Dropdown), 1)
if V.Dropdown == "Normal" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.DashSound.SoundId = "rbxassetid://4479083227"
elseif V.Dropdown == "TF2" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.DashSound.SoundId = "rbxassetid://5650646664"
elseif V.Dropdown == "Rust" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.DashSound.SoundId = "rbxassetid://5043539486"
elseif V.Dropdown == "CSGO" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.DashSound.SoundId = "rbxassetid://8679627751"
elseif V.Dropdown == "Fart" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.DashSound.SoundId = "rbxassetid://6999993863"
elseif V.Dropdown == "Boink" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.DashSound.SoundId = "rbxassetid://5451260445"
elseif V.Dropdown == "Rage" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.DashSound.SoundId = "rbxassetid://6911556519"
end
end)

sounds.element("Dropdown", "Heal Sounds", {options = {"Normal", "CSGO", "TF2", "Rust", "Fart", "Boink", "Rage"}}, function(V) 
Library:Notify("HEAL SOUND : " ..(V.Dropdown), 1)
if V.Dropdown == "Normal" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Heal.SoundId = "rbxassetid://577886343"
elseif V.Dropdown == "TF2" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Heal.SoundId = "rbxassetid://5650646664"
elseif V.Dropdown == "Rust" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Heal.SoundId = "rbxassetid://5043539486"
elseif V.Dropdown == "CSGO" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Heal.SoundId = "rbxassetid://8679627751"
elseif V.Dropdown == "Fart" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Heal.SoundId = "rbxassetid://6999993863"
elseif V.Dropdown == "Boink" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Heal.SoundId = "rbxassetid://5451260445"
elseif V.Dropdown == "Rage" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.Heal.SoundId = "rbxassetid://6911556519"
end
end) 

sounds.element("Dropdown", "Nuke Alarm Sounds", {options = {"Normal", "CSGO", "TF2", "Rust", "Fart", "Boink", "Rage"}}, function(V) 
    Library:Notify("NUKE ALARM SOUND : " ..(V.Dropdown), 1)
if V.Dropdown == "Normal" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.NukeAlarmSound.SoundId = "rbxassetid://3237286675"
elseif V.Dropdown == "TF2" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.NukeAlarmSound.SoundId = "rbxassetid://5650646664"
elseif V.Dropdown == "Rust" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.NukeAlarmSound.SoundId = "rbxassetid://5043539486"
elseif V.Dropdown == "CSGO" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.NukeAlarmSound.SoundId = "rbxassetid://8679627751"
elseif V.Dropdown == "Fart" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.NukeAlarmSound.SoundId = "rbxassetid://6999993863"
elseif V.Dropdown == "Boink" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.NukeAlarmSound.SoundId = "rbxassetid://5451260445"
elseif V.Dropdown == "Rage" then
game:GetService("ReplicatedStorage").Shared.Assets.Sounds.NukeAlarmSound.SoundId = "rbxassetid://6911556519"
end
end) 

sounds.element("TextBox", "Custom Hit Sound", false, function(state)
    _G.HITSOUND = state.TextBox
end)
sounds.element("Button", "Enable Custom Hit Sound", false, function(State)
    game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://"..(_G.HITSOUND)
end)
    
sounds.element("Button", "Reset Hit Sound", false, function(State)
    game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://160432334"
end)

local funny = teleports.new_sector("Funny", "Right") 

funny.element("Slider", "Heart Beat Volume", {default = {min = 0, max = 10, default = 2}}, function(State)
    game:GetService("Workspace").Sounds.Heartbeat.Volume = State.Slider
end)
    
funny.element("Slider", "Ringing Volume", {default = {min = 0, max = 10, default = 2}}, function(State)
    game:GetService("Workspace").Sounds.Ringing.Volume = State.Slider
end)

local squeezetitties = false

funny.element("Toggle", "Squeeze Others Cats", false, function(bool)
    squeezetitties = bool.Toggle
    while squeezetitties do 
        wait(0.1)
        for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("Cat") then
                game:GetService("ReplicatedStorage").Communication.Events.SqueezeCat:FireServer(v.Character.Cat)
            end
        end
    end
end)

funny.element("Button", "Get Cat", false, function()
    game:GetService("ReplicatedStorage").Communication.Events.ExecuteCommand:FireServer("getcat",{})
end) 


funny.element("Dropdown", "Funny FE", {options = {"Reset","Arrest", "Russian Dance", "Crying", "Gangnam Style", "Jumping Jacks", "Weird Dance", "Crying 2", "Muscle", "Laughing", "Hype", "Death Funny Spin"}}, function(v)
Library:Notify("DANCE SELECTED : " .. (v.Dropdown), 1)
if v.Dropdown == "Reset" then
FASTRESPAWN()
elseif v.Dropdown == "Arrest" then
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6888619028' -- Arrest
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Russian Dance" then 
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6816574330' -- Russian Dance
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Crying" then
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6888614640' -- Crying 
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Gangnam Style" then
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6816572217' -- Gangnam Style
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Jumping Jacks" then 
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6888618024' -- Jumping Jacks
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Weird Dance" then 
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6816755513' -- Weird Dance
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Crying 2" then
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6816592792' -- Crying 2
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Muscle" then
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6816593788' -- Muscle
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Laughing" then 
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://6816756595' -- Laughing
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Hype" then                             
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://9233675270' -- Hype
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
elseif v.Dropdown == "Death Funny Spin" then
local anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://8918768811' -- Death Funny Spin
local Hit = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
Hit:Play()
Hit:AdjustSpeed(1)
wait(Hit.Length)
Hit:Stop()
end
end)
end



local AntiaimAngle = CFrame.new()
local Jitter = false
local FOV = Camera.FieldOfView
RunService.RenderStepped:Connect(function()
local SelfCharacter = LocalPlayer.Character
local SelfRootPart, SelfHumanoid = SelfCharacter and SelfCharacter:FindFirstChild("HumanoidRootPart"), SelfCharacter and SelfCharacter:FindFirstChildOfClass("Humanoid")
if not SelfCharacter or not SelfRootPart or not SelfHumanoid then return end

if menu.values[1].antiaim.direction.enabled.Toggle and menu.values[1].antiaim.direction["$enabled"].Active then
SelfHumanoid.AutoRotate = false

local Angle do
Angle = -math.atan2(Camera.CFrame.LookVector.Z, Camera.CFrame.LookVector.X) + math.rad(-90)
if menu.values[1].antiaim.direction["yaw base"].Dropdown == "random" then
Angle = -math.atan2(Camera.CFrame.LookVector.Z, Camera.CFrame.LookVector.X) + math.rad(math.random(0, 360))
elseif menu.values[1].antiaim.direction["yaw base"].Dropdown == "spin" then
Angle = -math.atan2(Camera.CFrame.LookVector.Z, Camera.CFrame.LookVector.X) + tick() * 10 % 360
end
end

local Offset = math.rad(menu.values[1].antiaim.direction["yaw offset"].Slider)
Jitter = not Jitter
if Jitter then
if menu.values[1].antiaim.direction["yaw modifier"].Dropdown == "jitter" then
Offset = math.rad(menu.values[1].antiaim.direction["modifier offset"].Slider)
elseif menu.values[1].antiaim.direction["yaw modifier"].Dropdown == "offset jitter" then
Offset = Offset + math.rad(menu.values[1].antiaim.direction["modifier offset"].Slider)
end
end
local NewAngle = CFrame.new(SelfRootPart.Position) * CFrame.Angles(0, Angle + Offset, 0)
local function ToYRotation(_CFrame)
local X, Y, Z = _CFrame:ToOrientation()
return CFrame.new(_CFrame.Position) * CFrame.Angles(0, Y, 0)
end
if menu.values[1].antiaim.direction["yaw base"].Dropdown == "targets" then
local Target
local Closest = 9999
for _,Player in next, Players:GetPlayers() do
if not Player.Character or not Player.Character:FindFirstChild("HumanoidRootPart") then continue end

local Pos, OnScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)
local Magnitude = (Vector2.new(Pos.X, Pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
if Closest > Magnitude then
    Target = Player.Character.HumanoidRootPart
    Closest = Magnitude
end
end
if Target ~= false then
NewAngle = CFrame.new(SelfRootPart.Position, Target.Position) * CFrame.Angles(0, 0, 0)
end
end
AntiaimAngle = Angle + Offset
SelfRootPart.CFrame = ToYRotation(NewAngle)
else
SelfHumanoid.AutoRotate = OriginalAutoRotate
end
end)
end
end

function ApplyChams(Player)
if Player.Character == false then return end

local BodyParts =
{
"Torso", "UpperTorso", "LowerTorso",
"Left Arm", "LeftUpperArm","LeftLowerArm", "LeftHand",
"Right Arm", "RightUpperArm", "RightLowerArm", "RightHand",
"Left Leg", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot",
"Right Leg", "RightUpperLeg", "RightLowerLeg", "RightFoot"
}

local Enabled, Color
if Player.Team ~= LocalPlayer.Team then
Enabled = menu.values[3].players.chams["enemies"].Toggle
Color = menu.values[3].players.chams["$enemies"].Color
else
Enabled = menu.values[3].players.chams["friendlies"].Toggle
Color = menu.values[3].players.chams["$friendlies"].Color
end
local Enabled2, Color2 = menu.values[3].players.chams["through walls"].Toggle, menu.values[3].players.chams["$through walls"].Color

local function ApplyHandle(Part, Handle)
local Inline, __Outline = Part:FindFirstChild("Inline"), Part:FindFirstChild("_Outline")
if not Inline then
Inline = Create(Handle, {
Name = "Inline",
Color3 = Color2,
Transparency = 0.75,
ZIndex = 2,
AlwaysOnTop = true,
AdornCullingMode = "Never",
Visible = Enabled and Enabled2 or false,
Adornee = Part,
})
if Handle == "BoxHandleAdornment" then
Inline.Size = Part.Size + Vector3.new(0.05, 0.05, 0.05)
else
Inline.Radius = Part.Size.X / 2 + 0.15
Inline.Height = Part.Size.Y + 0.3
Inline.CFrame = CFrame.new(Vector3.new(), Vector3.new(0,1,0))
end
end
if not _Outline then
_Outline = Create(Handle, {
Name = "_Outline",
Color3 = Color,
Transparency = 0.55,
Transparency = 0.55,
ZIndex = 2,
AlwaysOnTop = false,
AdornCullingMode = "Never",
Visible = Enabled,
Adornee = Part,
})
if Handle == "BoxHandleAdornment" then
_Outline.Size = Part.Size + Vector3.new(0.1, 0.1, 0.1)
else
_Outline.Radius = Part.Size.X / 2 + 0.2
_Outline.Height = Part.Size.Y + 0.35
_Outline.CFrame = CFrame.new(Vector3.new(), Vector3.new(0,1,0))
end
end
Inline.Color3 = Color2
Inline.Visible = Enabled and Enabled2 or false
_Outline.Color3 = Color
_Outline.Visible = Enabled

Inline.Parent = Part
_Outline.Parent = Part

return Inline, _Outline
end

for _,Part in next, Player.Character:GetChildren() do
if Part.Name == "Head" and not Part:IsA("LocalScript") and not Part:IsA("Accessory") then
ApplyHandle(Part, "CylinderHandleAdornment")
elseif table.find(BodyParts, Part.Name) and not Part:IsA("LocalScript") and not Part:IsA("Accessory") then
ApplyHandle(Part, "BoxHandleAdornment")
end
end

Player.Character.ChildAdded:Connect(function(Child)
if Child.Name == "Head" and not Child:IsA("LocalScript") and not Child:IsA("Accessory") then
ApplyHandle(Child, "CylinderHandleAdornment")
elseif table.find(BodyParts, Child.Name) and not Child:IsA("LocalScript") and not Child:IsA("Accessory") then
ApplyHandle(Child, "BoxHandleAdornment")
end
end)
end

Players.PlayerAdded:Connect(function(Player)
Player.CharacterAdded:Connect(function()
RunService.RenderStepped:Wait()
ApplyChams(Player)
end)

Player:GetPropertyChangedSignal("Team"):Connect(function()
ApplyChams(Player)
end)
end)
for _,Player in next, Players:GetPlayers() do
if Player ~= LocalPlayer then
ApplyChams(Player)

Player.CharacterAdded:Connect(function()
RunService.RenderStepped:Wait()
ApplyChams(Player)
end)

Player:GetPropertyChangedSignal("Team"):Connect(function()
ApplyChams(Player)
end)
end
end
LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function()
for _,Player in next, Players:GetPlayers() do
ApplyChams(Player)
end
end)


local PlayerDrawings = {}
local Utility        = {}

Utility.Settings = {
Line = {
Thickness = 1,
Color = Color3.fromRGB(0, 255, 0)
},
Text = {
Size = 13,
Center = true,
Outline = true,
Font = Drawing.Fonts.Plex,
Color = Color3.fromRGB(255, 255, 255)
},
Square = {
Thickness = 1,
Color = menu.values[3].players.enemies["$box"].Color,
Filled = false,
},
Triangle = {
Color = Color3.fromRGB(255, 255, 255),
Filled = true,
Visible = false,
Thickness = 1,
}
}
function Utility.New(Type, Outline, Name)
local drawing = Drawing.new(Type)
for i, v in pairs(Utility.Settings[Type]) do
drawing[i] = v
end
if Outline then
drawing.Color = Color3.new(0,0,0)
drawing.Thickness = 3
end
return drawing
end
function Utility.Add(Player)
if not PlayerDrawings[Player] then
PlayerDrawings[Player] = {
Offscreen = Utility.New("Triangle", false, "Offscreen"),
Name = Utility.New("Text", false, "Name"),
Tool = Utility.New("Text", false, "Tool"),
Distance = Utility.New("Text", false, "Distance"),
BoxOutline = Utility.New("Square", true, "BoxOutline"),
Box = Utility.New("Square", false, "Box"),
HealthOutline = Utility.New("Line", true, "HealthOutline"),
Health = Utility.New("Line", false, "Health")
}
end
end

for _,Player in pairs(Players:GetPlayers()) do
if Player ~= LocalPlayer then
Utility.Add(Player)
end
end
Players.PlayerAdded:Connect(Utility.Add)
Players.PlayerRemoving:Connect(function(Player)
if PlayerDrawings[Player] then
for i,v in pairs(PlayerDrawings[Player]) do
if v then
v:Remove()
end
end

PlayerDrawings[Player] = false
end
end)

local ESPLoop = game:GetService("RunService").RenderStepped:Connect(function()
for _,Player in pairs (Players:GetPlayers()) do
local PlayerDrawing = PlayerDrawings[Player]
if not PlayerDrawing then continue end

for _,Drawing in pairs (PlayerDrawing) do
Drawing.Visible = false
end

if not menu.values[3].players.esp.enabled.Toggle or not menu.values[3].players.esp["$enabled"].Active then continue end

local Character = Player.Character
local RootPart, Humanoid = Character and Character:FindFirstChild("HumanoidRootPart"), Character and Character:FindFirstChildOfClass("Humanoid")
if not Character or not RootPart or not Humanoid then continue end

local DistanceFromCharacter = (Camera.CFrame.Position - RootPart.Position).Magnitude
if menu.values[3].players.esp["max distance"].Slider < DistanceFromCharacter then continue end

local Pos, OnScreen = Camera:WorldToViewportPoint(RootPart.Position)
if not OnScreen then
local VisualTable = menu.values[3].players["out of fov"]
if Player.Team ~= LocalPlayer.Team and not VisualTable.enemies.Toggle then continue end
if Player.Team == LocalPlayer.Team and not VisualTable.teammates.Toggle then continue end

local RootPos = RootPart.Position
local CameraVector = Camera.CFrame.Position
local LookVector = Camera.CFrame.LookVector

local Dot = LookVector:Dot(RootPart.Position - Camera.CFrame.Position)
if Dot <= 0 then
RootPos = (CameraVector + ((RootPos - CameraVector) - ((LookVector * Dot) * 1.01)))
end

local ScreenPos, OnScreen = Camera:WorldToScreenPoint(RootPos)
if not OnScreen then
local Drawing = PlayerDrawing.Offscreen
local FOV     = 800 - menu.values[3].players["out of fov"].offset.Slider
local Size    = menu.values[3].players["out of fov"].size.Slider

local Center = (Camera.ViewportSize / 2)
local Direction = (Vector2.new(ScreenPos.X, ScreenPos.Y) - Center).Unit
local Radian = math.atan2(Direction.X, Direction.Y)
local Angle = (((math.pi * 2) / FOV) * Radian)
local ClampedPosition = (Center + (Direction * math.min(math.abs(((Center.Y - FOV) / math.sin(Angle)) * FOV), math.abs((Center.X - FOV) / (math.cos(Angle)) / 2))))
local Point = Vector2.new(math.floor(ClampedPosition.X - (Size / 2)), math.floor((ClampedPosition.Y - (Size / 2) - 15)))

local function Rotate(point, center, angle)
    angle = math.rad(angle)
    local rotatedX = math.cos(angle) * (point.X - center.X) - math.sin(angle) * (point.Y - center.Y) + center.X
    local rotatedY = math.sin(angle) * (point.X - center.X) + math.cos(angle) * (point.Y - center.Y) + center.Y

    return Vector2.new(math.floor(rotatedX), math.floor(rotatedY))
end

local Rotation = math.floor(-math.deg(Radian)) - 47
Drawing.PointA = Rotate(Point + Vector2.new(Size, Size), Point, Rotation)
Drawing.PointB = Rotate(Point + Vector2.new(-Size, -Size), Point, Rotation)
Drawing.PointC = Rotate(Point + Vector2.new(-Size, Size), Point, Rotation)
Drawing.Color = Player.Team ~= LocalPlayer.Team and VisualTable["$enemies"].Color or VisualTable["$teammates"].Color

Drawing.Filled = not table.find(menu.values[3].players["out of fov"].settings.Combo, "outline") and true or false
if table.find(menu.values[3].players["out of fov"].settings.Combo, "blinking") then
    Drawing.Transparency = (math.sin(tick() * 5) + 1) / 2
else
    Drawing.Transparency = 1
end

Drawing.Visible = true
end
else
local VisualTable = Player.Team ~= LocalPlayer.Team and menu.values[3].players.enemies or menu.values[3].players.friendlies

local Size           = (Camera:WorldToViewportPoint(RootPart.Position - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPart.Position + Vector3.new(0, 2.6, 0)).Y) / 2
local BoxSize        = Vector2.new(math.floor(Size * 1.5), math.floor(Size * 1.9))
local BoxPos         = Vector2.new(math.floor(Pos.X - Size * 1.5 / 2), math.floor(Pos.Y - Size * 1.6 / 2))

local Name           = PlayerDrawing.Name
local Tool           = PlayerDrawing.Tool
local Distance       = PlayerDrawing.Distance
local Box            = PlayerDrawing.Box
local BoxOutline     = PlayerDrawing.BoxOutline
local Health         = PlayerDrawing.Health
local HealthOutline  = PlayerDrawing.HealthOutline

if VisualTable.box.Toggle then
Box.Size = BoxSize
Box.Position = BoxPos
Box.Visible = true
Box.Color = VisualTable["$box"].Color
BoxOutline.Size = BoxSize
BoxOutline.Position = BoxPos
BoxOutline.Visible = true
end

if VisualTable.health.Toggle then
Health.From = Vector2.new((BoxPos.X - 5), BoxPos.Y + BoxSize.Y)
Health.To = Vector2.new(Health.From.X, Health.From.Y - (Humanoid.Health / Humanoid.MaxHealth) * BoxSize.Y)
Health.Color = VisualTable["$health"].Color
Health.Visible = true

HealthOutline.From = Vector2.new(Health.From.X, BoxPos.Y + BoxSize.Y + 1)
HealthOutline.To = Vector2.new(Health.From.X, (Health.From.Y - 1 * BoxSize.Y) -1)
HealthOutline.Visible = true
end

local function SurroundString(String, Add)
local Left = ""
local Right = ""

local Remove = false
if Add == "[]" then
    String = string.gsub(String, "%[", "")
    String = string.gsub(String, "%[", "")

    Left = "["
    Right = "]"
elseif Add == "--" then
    Left = "-"
    Right = "-"
    Remove = true
elseif Add == "<>" then
    Left = "<"
    Right = ">"
    Remove = true
end
if Remove then
    String = string.gsub(String, Left, "")
    String = string.gsub(String, Right, "")
end

return Left..String..Right
end

if VisualTable.name.Toggle then
Name.Text = SurroundString(Player.Name, menu.values[3].players.drawings.surround.Dropdown)
Name.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
Name.Color = VisualTable["$name"].Color
Name.Font = Drawing.Fonts[menu.values[3].players.drawings.font.Dropdown]
Name.Visible = true
end

if VisualTable.indicators.Toggle then
local BottomOffset = BoxSize.Y + BoxPos.Y + 1
if table.find(VisualTable.types.Combo, "tool") then
    local Equipped = Player.Character:FindFirstChildOfClass("Tool") and Player.Character:FindFirstChildOfClass("Tool").Name or "None"
    Equipped = SurroundString(Equipped, menu.values[3].players.drawings.surround.Dropdown)
    Tool.Text = Equipped
    Tool.Position = Vector2.new(BoxSize.X/2 + BoxPos.X, BottomOffset)
    Tool.Color = VisualTable["$indicators"].Color
    Tool.Font = Drawing.Fonts[menu.values[3].players.drawings.font.Dropdown]
    Tool.Visible = true
    BottomOffset = BottomOffset + 15
end
if table.find(VisualTable.types.Combo, "distance") then
    Distance.Text = SurroundString(math.floor(DistanceFromCharacter).."m", menu.values[3].players.drawings.surround.Dropdown)
    Distance.Position = Vector2.new(BoxSize.X/2 + BoxPos.X, BottomOffset)
    Distance.Color = VisualTable["$indicators"].Color
    Distance.Font = Drawing.Fonts[menu.values[3].players.drawings.font.Dropdown]
    Distance.Visible = true

    BottomOffset = BottomOffset + 15
end
end
end
end
end)
