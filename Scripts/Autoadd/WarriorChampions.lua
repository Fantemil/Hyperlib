local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
local Meta = getrawmetatable(game)
local NewIndex = Meta.__newindex
setreadonly(Meta, false)

Meta.__newindex = newcclosure(function(t, k, ...)
    
   if not checkcaller() and (k == "WalkSpeed" or k == "JumpPower") then
       return
   end
   NewIndex(t, k, ...)
end)
setreadonly(Meta, true)

local blur = Instance.new("BlurEffect", game.Lighting)
blur.Size = 0
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
ScreenGui.Parent = game.CoreGui
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.5, -(303 / 2), 0.5, -(263 / 2))
ImageLabel.Rotation = 0
ImageLabel.Size = UDim2.new(0, 303,0, 263)
ImageLabel.Image = "rbxassetid://6587457747"
ImageLabel.ImageTransparency = 1
 
for i = 1, 50, 2 do
    blur.Size = i
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency - 0.1
    wait()
end
wait(0.1)
 
for i = 1, 50, 2 do
    blur.Size = 50 - i
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency + 0.1
    wait()
end
blur:Destroy()
ScreenGui:Destroy()
game:GetService('RunService').Stepped:connect(function()
if game:GetService("CoreGui"):FindFirstChild('PurchasePromptApp') then
game:GetService("CoreGui").PurchasePromptApp:remove()
end end)
local Lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/IMRETARDED'))()
local CategoryVariableHere= Lib:Category("Warrior Champions")
CategoryVariableHere:Toggle("Auto Swing",function(State)
g = State
game:GetService('RunService').Stepped:connect(function()
if g then
game:GetService("ReplicatedStorage").Knit.Services.CharacterService.RF.Swing:InvokeServer()

print('hi')
 end end) end)
CategoryVariableHere:Toggle("Auto Sell",function(State)
ga = State
game:GetService('RunService').Stepped:connect(function()
if ga then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-315, 5, -366)

end end) end)
CategoryVariableHere:Toggle("Auto Buy Blades",function(State)
bla = State
while bla do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.ShopService.RF.BuyBest:InvokeServer("Blades") end)
end end)       
CategoryVariableHere:Toggle("Auto Buy DNA",function(State)
bla1 = State
while bla1 do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.ShopService.RF.BuyBest:InvokeServer("DNA") end)
end end)  

CategoryVariableHere:Toggle("Auto Buy Classes",function(State)
bla3 = State
while bla3 do wait()
pcall(function()
tab={'Beginner','Apprentice','Knight','Warrior','Ninja','Warlord','Shadow','Lord','Overlord','God','Immortal God','All Mighty'}
for i = 1, #tab do
game:GetService("ReplicatedStorage").Knit.Services.ShopService.RF.BuyItem:InvokeServer(tab[i]) 
end end)
end end)  
CategoryVariableHere:Toggle("InfiniteJump",function(State)
InfiniteJumpEnabled = State
game:GetService("UserInputService").JumpRequest:connect(function()
 if InfiniteJumpEnabled then
  game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
 end
end) end)

CategoryVariableHere:Toggle("Auto Buy Egg1",function(State)
egg = State
while egg do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.PurchaseEgg:InvokeServer("Egg1",1,false) end)
end end)
CategoryVariableHere:Toggle("Auto Buy Egg2",function(State)
egg1 = State
while egg1 do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.PurchaseEgg:InvokeServer("Egg2",1,false) end)
end end)
CategoryVariableHere:Toggle("Auto Buy Egg3",function(State)
egg2 = State
while egg2 do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.PurchaseEgg:InvokeServer("Egg3",1,false) end)
end end)
CategoryVariableHere:Toggle("Auto Buy Ninja",function(State)
egg3 = State
while egg3 do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.PurchaseEgg:InvokeServer("Ninja",1,false) end)
end end)
CategoryVariableHere:Toggle("Auto Buy Heaven",function(State)
egg4 = State
while egg4 do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.PurchaseEgg:InvokeServer("Heaven",1,false) end)
end end)
CategoryVariableHere:Toggle("Auto Buy Youtube",function(State)
egg5 = State
while egg5 do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.PurchaseEgg:InvokeServer("Youtube",1,false) end)
end end)
CategoryVariableHere:Toggle("Auto Buy Mythical",function(State)
egg6 = State
while egg6 do wait()
pcall(function()
game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.PurchaseEgg:InvokeServer("Mythical",1,false) end)
end end)
CategoryVariableHere:Button("Equip Best Pets",function()
game:GetService("ReplicatedStorage").Knit.Services.PetService.RF.EquipBest:InvokeServer()
end)

CategoryVariableHere:Slider("WalkSpeed",16,16,100,function(Val) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Val end)
CategoryVariableHere:Slider("JumpPower",16,16,100,function(Val) game.Players.LocalPlayer.Character.Humanoid.JumpPower = Val end)
CategoryVariableHere:Button("BTools",function() 
game.StarterGui:SetCoreGuiEnabled(2, true)
a = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
a.BinType = 2
b = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
b.BinType = 3
c = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
c.BinType = 4 end)
CategoryVariableHere:Button("G NoClip",function() 
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "g" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end) end)
CategoryVariableHere:Button("B Fly",function()
local gogo1000 = 0
local LP = game:service('Players').LocalPlayer
local MOUSE = LP:GetMouse()
MOUSE.KeyDown:connect(function(KEY)
if KEY:lower() == 'b' then
local LP = game:service('Players').LocalPlayer
local MOUSE = LP:GetMouse()
gogo1000 = gogo1000 + 1
_G.FLYING = false
local T = LP.Character.UpperTorso
local CONTROL = {F = 0, B = 0, L = 0, R = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
local SPEED = 5
local function FLY()
_G.FLYING = true
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
BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0.1, 0)
end
BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
until not _G.FLYING
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
if gogo1000 == 2 then
_G.FLYING = false
gogo1000 = 0
end
end
end) end)

CategoryVariableHere:Button("teleport to Random Player",function()
local randomPlayer = game.Players:GetPlayers()
[math.random(1,#game.Players:GetPlayers())]

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(randomPlayer.Character.Head.Position.X, randomPlayer.Character.Head.Position.Y, randomPlayer.Character.Head.Position.Z)) end)
CategoryVariableHere:Button("Lag Switch F3",function()
local a = false
local b = settings()

game:service'UserInputService'.InputEnded:connect(function(i)
if i.KeyCode == Enum.KeyCode.F3 then
a = not a
b.Network.IncomingReplicationLag = a and 10 or 0
end
end) end) 
CategoryVariableHere:Button("ServerHop",function()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
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
                            delfile("NotSameServers.json")
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
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport()
end)
CategoryVariableHere:Button("Rejoin",function()
    local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p) end)
local CategoryVariableHere= Lib:Category("Credits and info")
CategoryVariableHere:Label("Credits to a r q for ui liba")
CategoryVariableHere:Label("Credits to DekuDimz#7960 aka me lol")
Lib:Reload()
game.StarterGui:SetCore("SendNotification", {
Title = "Warning";
Text = "RightControl to toggle";
})
game.StarterGui:SetCore("SendNotification", {
Title = "Credits";
Text = "CharWar Serverhops";
})