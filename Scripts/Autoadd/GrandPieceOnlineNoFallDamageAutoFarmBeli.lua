repeat wait() until game.Players.LocalPlayer
if not getgenv().tvk then getgenv().tvk={} end
for k,v in pairs(getgenv().tvk) do v.On=false end
local plr = game.Players.LocalPlayer
local queue_on_teleport = queue_on_teleport
if syn then queue_on_teleport = syn.queue_on_teleport end
queue_on_teleport([[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CFA-HUB/CFAHub-Free/main/cfahubfree.lua"))()
]])
local NguyHiem=false
local Settings = {
    AutoStat = {
        Strength = false,
        Stamina = false,
        Defense = false,
        GunMastery = false,
        SwordMastery = false
    }
}
local Temp = {
    Nodrown = {},
    Noclip = {},
    DashNoStam = {},
    NoFallDame = {},
    Drown={}
}
function TableToSave(tb) 
    local cac = {}
    for k,v in pairs(tb) do
        if type(v)=="vector" then 
            cac[k]={v.X,v.Y,v.Z,"Vector3"}
        else
            cac[k]=v
        end
    end
    return cac
end
function SaveToTable(tb) 
    local cac = {}
    for k,v in pairs(tb) do
        if type(v)=="table" and #v==4 and v[4]=="Vector3" then 
            cac[k]=Vector3.new(v[1],v[2],v[3])
        else
            cac[k]=v
        end
    end
    return cac
end 
local SaveFileName = plr.Name.."_GPO.json"

function SaveSettings()
    local HttpService = game:GetService("HttpService")
    if not isfolder("CFA HUB") then
        makefolder("CFA HUB")
    end
    writefile("CFA HUB/" .. SaveFileName, HttpService:JSONEncode(TableToSave(Settings)))
end

function ReadSetting() 
    local s,e = pcall(function() 
        local HttpService = game:GetService("HttpService")
        if not isfolder("CFA HUB") then
            makefolder("CFA HUB")
        end
        return HttpService:JSONDecode(readfile("CFA HUB/" .. SaveFileName))
    end)
    if s then return e 
    else
        SaveSettings()
        return ReadSetting()
    end
end
local tvkdumb = {On=true}
function tvkdumb:cac(self) 
    spawn(function() 
        while wait(1) and self.On do SaveSettings() end
        print("Stoped")
        end)
end
tvkdumb:cac(tvkdumb)
table.insert(getgenv().tvk,tvkdumb)
Settings = SaveToTable(ReadSetting())
repeat wait() until game:IsLoaded()

repeat wait(.25)
until plr:FindFirstChild("Loaded")
and plr.Loaded.Value == true
and plr.Character
and plr:FindFirstChild("Backpack")
and plr.Character:FindFirstChild("Humanoid")
and plr:FindFirstChild("PlayerGui")
and plr.PlayerGui:FindFirstChild("Notifications")
and #plr.Backpack:GetChildren() ~= 0 and pcall(function() 
    return game.Players.LocalPlayer.Idled
end)
local function FireButton(x)
    for i, v in pairs(getconnections(x.MouseButton1Click)) do 
        v:Function()
    end
end
if game.PlaceId==1730877806 then
    repeat wait() until game:GetService("ReplicatedStorage").Events:FindFirstChild("reserved")
    if Settings.PSCode and Settings.PSCode~="" then 
        local clicked = false
        while wait(2) do 
            game:GetService("ReplicatedStorage").Events.reserved:InvokeServer(Settings.PSCode)
            pcall(function() 
                FireButton(game:GetService("Players").LocalPlayer.PlayerGui.chooseType.Frame.regular)
                clicked=true
            end)
        end
    else
        while wait(2) do 
            game:GetService("ReplicatedStorage").Events.playgame:FireServer()
        end
    end
    return
end
local plr = game.Players.LocalPlayer

local rnd = tostring(math.random(1,100000))

local request=request
if syn then request=syn.request end
local StoringDF = false
for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable()
end
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)
local SwordPos = CFrame.new(5410.0478515625, 155.58578491210938, -5168.189453125)
function BuyKatana() 
    fireclickdetector(game:GetService("Workspace").BuyableItems.Katana.ShopPart.ClickDetector)
end
local FindNearest
for k, v in pairs(getgc()) do
    if debug.getinfo(v).name == "FindNearest" and tostring(getfenv(v).script) == "Hitbox" then
        FindNearest = v
        break
    end
end
if not FindNearest then
    game.Players.LocalPlayer:Kick("Script error when loading, rejoin and try again")
end
MucTieu = {}
MucTieu.old =
    hookfunction(
    FindNearest,
    function(a, b)
        if MucTieu.MucTieu then
            return MucTieu.MucTieu
        end
        return MucTieu.old(a, b)
    end
)
local secure_call = (syn and syn.secure_call) or function(f)
        setthreadcontext(2)
        f()
        setthreadcontext(7)
    end



local old = getrenv()._G.hitbox.start
getrenv()._G.hitbox.start = function(...)
    local arg = {...}
    arg[3] = Vector3.new(30, 30, 30)
    return old(unpack(arg))
end
local data = game.ReplicatedStorage["Stats" .. game.Players.LocalPlayer.Name]
print(data.Stats.SpawnPoint.Value)

local FarmPath = {
    Buso =  {
        [1] = {
            Mob = "Yeti",
            RiflePos = CFrame.new(-6770.1044921875, 96.480255126953, 2113.1389160156),
            Mobpos = CFrame.new(-6684.44, 10, 1828.623),
            Questpos = CFrame.new(-6566.0034179688, 169.4822845459, 1995.3051757813),
            Quest = "Road to Armament",
            Spawn = CFrame.new(-1314.5081787109, 10.434856414795, 1113.4360351563),
            Island = "Sandora",
            LevelReq = 80,
            CooldownY = 52.4,
            SwordY = 68,
            LevelRequest = 80,
            RapidY = 70
        }
    },
    Melee = {
        Normal = {
            [1] = {
                Mob = "Fishman Karate User",
                Mobpos = CFrame.new(7670.65137, -2189.93994, -17322.8379, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                Questpos = CFrame.new(
                    7730.92773,
                    -2175.83203,
                    -17222.5781,
                    0.0217917003,
                    -7.93145247e-08,
                    0.999762535,
                    -3.60022554e-08,
                    1,
                    8.01180988e-08,
                    -0.999762535,
                    -3.77396141e-08,
                    0.0217917003
                ),
                Quest = "Help becky",
                Spawn = CFrame.new(
                    7976.84131,
                    -2152.8313,
                    -17073.9063,
                    0.647454381,
                    1.1295689e-07,
                    0.762104213,
                    -4.50578455e-08,
                    1,
                    -1.09937709e-07,
                    -0.762104213,
                    3.68408735e-08,
                    0.647454381
                ),
                Island = "Fishman Island",
                LevelReq = 190,
                SwordY = -2182.94,
                BlackLegY = -2182.94,
                CooldownY=-2189.94,
                RapidY=-2182.94
            }
        },
        Advance = {
            [160] = {
                Mob = "Gravito's Undermen",
                Mobpos = CFrame.new(2718.87573, 60.1180725, -15689.9375, -0.965884089, -1.76300429e-19, 0.25897485, -1.13688492e-19, 1, 2.56745101e-19, -0.25897485, 2.18543522e-19, -0.965884089),
                Questpos = CFrame.new(2510.30103, 41.4681244, -15541.5859, 0.996558726, -4.13273469e-08, 0.0828894675, 3.50337892e-08, 1, 7.73815572e-08, -0.0828894675, -7.42113357e-08, 0.996558726),
                Quest = "Help Miska",
                Spawn = CFrame.new(2585.16138, 7.64981413, -15364.9072, 0.999508381, 4.34313142e-06, 0.0313485563, -5.47222771e-06, 0.99999994, 3.59315163e-05, -0.0313485563, -3.60853955e-05, 0.999508381),
                Island = "Gravito's Fort",
                LevelReq = 160,
                SwordY = 31.861898422241,
                BlackLegY = 34.6,
                CooldownY=7.6498141288757,
                RapidY=35.39432144165,
                BlackLegPos = CFrame.new(2604.27148, 37.3680725, -15549.2383, 0.999779046, -3.19521938e-08, -0.0210261438, 3.2335997e-08, 1, 1.79135871e-08, 0.0210261438, -1.85895299e-08, 0.999779046)
            },
        }
    },
    Rifle = {
        Normal = {
            [1] = {
                Mob = "Fishman Karate User",
                Mobpos = CFrame.new(
                    7824.5166,
                    -2138.18994,
                    -17138.4766,
                    0.916648865,
                    0,
                    0.399693429,
                    0,
                    1,
                    0,
                    -0.399693429,
                    0,
                    0.916648865
                ),
                Questpos = CFrame.new(
                    7730.92773,
                    -2175.83203,
                    -17222.5781,
                    0.0217917003,
                    -7.93145247e-08,
                    0.999762535,
                    -3.60022554e-08,
                    1,
                    8.01180988e-08,
                    -0.999762535,
                    -3.77396141e-08,
                    0.0217917003
                ),
                Quest = "Help becky",
                LevelRequest = 190,
                Spawn = CFrame.new(
                    7976.84131,
                    -2152.8313,
                    -17073.9063,
                    0.647454381,
                    1.1295689e-07,
                    0.762104213,
                    -4.50578455e-08,
                    1,
                    -1.09937709e-07,
                    -0.762104213,
                    3.68408735e-08,
                    0.647454381
                ),
                Island = "Fishman Island"
            }
        },
        Advance = {
            [160] = {
                Mob = "Gravito's Undermen",
                Mobpos = CFrame.new(2718.87573, 60.1180725, -15689.9375, -0.965884089, -1.76300429e-19, 0.25897485, -1.13688492e-19, 1, 2.56745101e-19, -0.25897485, 2.18543522e-19, -0.965884089),
                Questpos = CFrame.new(2510.30103, 41.4681244, -15541.5859, 0.996558726, -4.13273469e-08, 0.0828894675, 3.50337892e-08, 1, 7.73815572e-08, -0.0828894675, -7.42113357e-08, 0.996558726),
                Quest = "Help Miska",
                LevelRequest = 160,
                Spawn = CFrame.new(2585.16138, 7.64981413, -15364.9072, 0.999508381, 4.34313142e-06, 0.0313485563, -5.47222771e-06, 0.99999994, 3.59315163e-05, -0.0313485563, -3.60853955e-05, 0.999508381),
                Island = "Gravito's Fort"
            }
        }
    }

}

FarmPath.Rifle.Advance[1]=FarmPath.Rifle.Normal[1]
FarmPath.Melee.Advance[1]=FarmPath.Melee.Normal[1]

local lvadd=190
FarmPath.Rifle.Advance[lvadd]=FarmPath.Rifle.Advance[1]
FarmPath.Melee.Advance[lvadd]=FarmPath.Melee.Advance[1]


function CheckQuest(a, b, d)
    if d == "Buso" then
        return FarmPath.Buso[1]
    end
    
    local index = math.huge
    local questchecker
    local level = data.Stats.Level.Value
    local path = FarmPath.Melee
    if a == "Rifle" then
        path = FarmPath.Rifle
    end
    if b then 
        path=path.Advance
    else
        path=path.Normal
    end
    for i, v in pairs(path) do
        if (level - i) >= 0 then
            if (level - i) < math.abs(level - index) then
                index = i
            end
        end
    end
    return path[index]
end
function CheckEN(str)
    local cac = Temp[str]
    for k, v in pairs(cac) do
        if v then
            return true
        end
    end
    return false
end
function SetEN(str, cac, rac)
    Temp[str][cac] = rac
end
function IsFishMan(pos)
    return pos.Y < -2000
end

local thieunang =
    CFrame.new(
    -1287.51025,
    62.1618462,
    248.200958,
    0.160935402,
    -3.94616087e-31,
    0.98696506,
    -1.16209818e-31,
    1,
    4.18777198e-31,
    -0.98696506,
    -1.8209114e-31,
    0.160935402
)
if setfflag then
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end
local banvaudau = 0
function SetVaoDau(i) 
    banvaudau=i
end
function GetVauDau() 
    return banvaudau
end
local DisableNoDrown = false
local old
old = hookfunction(Instance.new("RemoteEvent").FireServer, function(...)
    local Self = ...
    if CheckEN("Nodrown")
    and tostring(Self) == "swim" then
        return nil
    end
    return old(...)
end)
local old
old = hookmetamethod(game, "__namecall", function(...)
    local Self = ...
    if CheckEN("NoFallDame")
    and tostring(Self) == "FallDmg" then
        return nil
    end
    if CheckEN("DashNoStam")
    and tostring(Self) == "takestam" then
        return nil
    end
    if  CheckEN("Nodrown")
    and tostring(Self) == "swim" then
        return nil
    end
    local args = {...}
    if getnamecallmethod()=="InvokeServer" and tostring(Self)=="Skill" and args[2]=="Blocking " then
        return
    end
    if tostring(Self)=="CIcklcon" then 
        SetVaoDau(GetVauDau()+1)
        if Settings.RifleKick then
            if GetVaoDau()>480 then 
                plr:Kick("\n[CFA Hub]\nKicked 499th rifle shoot (Rifle Kick)")
            end
        end
    end
    return old(...)
end)

local tvktrumskid = tostring(math.random(0, 100000))
local TweenFloatVelocity = Vector3.new(0,0,0)
function CreateTweenFloat()
    local BV = plr.Character.HumanoidRootPart:FindFirstChild(tvktrumskid) or Instance.new("BodyVelocity")
    BV.Parent = plr.Character.HumanoidRootPart
    BV.Name = tvktrumskid
    BV.MaxForce = Vector3.new(100000, 100000, 100000)
    BV.Velocity = TweenFloatVelocity
end
function TweenFloat(tvk)
    if tvk and not plr.Character.HumanoidRootPart:FindFirstChild(tvktrumskid..tvktrumskid) then
        local BV = Instance.new("BodyVelocity")
        BV.Parent = plr.Character.HumanoidRootPart
        BV.Name = tvktrumskid..tvktrumskid
        BV.MaxForce = Vector3.new(100000, 100000, 100000)
        BV.Velocity = Vector3.new(0, 0, 0)
    else
        if not tvk and  plr.Character.HumanoidRootPart:FindFirstChild(tvktrumskid..tvktrumskid) then 
            plr.Character.HumanoidRootPart[tvktrumskid..tvktrumskid]:Destroy()
        end
    end
end
function QuayNgang(pos) 
    local bulon = CFrame.new(pos.X,pos.Y,pos.Z,-0.008880537, 0.999960601, -6.28793302e-08, -5.37608429e-08, -5.96046448e-08, -0.99999994, -0.999960601, -0.008880537, 6.35593764e-08)
    return bulon
end
function GetAllState() 
    local cac = {}
    for k,v in pairs(Enum.HumanoidStateType:GetEnumItems()) do 
        if plr.Character:FindFirstChild("Humanoid") then 
            cac[v]=plr.Character.Humanoid:GetStateEnabled(v)
        end
    end
    return cac
end
function SetAllState(rac) 
    local cac = {}
    for k,v in pairs(Enum.HumanoidStateType:GetEnumItems()) do 
        if plr.Character:FindFirstChild("Humanoid") then 
           plr.Character.Humanoid:SetStateEnabled(v,rac)
        end
    end
    return cac
end
local speaker = game.Players.LocalPlayer
local StopFloat=false

game:GetService("RunService").Stepped:Connect(
    function()
        if StopFloat then 
            if plr.Character.HumanoidRootPart:FindFirstChild(tvktrumskid) then
                plr.Character.HumanoidRootPart[tvktrumskid]:Destroy()
            end
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
        game.Players.LocalPlayer.Character.Parent == game.Workspace.PlayerCharacters and
        not plr.PlayerGui:FindFirstChild("DEATHGUI") then 
            if CheckEN("Noclip") then 
                if (not setfflag or (identifyexecutor and identifyexecutor():upper() == "KRNL")) then
                    if
                        speaker.Character ~= nil and CheckEN("Noclip") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
                            game.Players.LocalPlayer.Character.Parent == game.Workspace.PlayerCharacters and
                            not plr.PlayerGui:FindFirstChild("DEATHGUI")
                     then
                        if not StopFloat then 
                            CreateTweenFloat()
                        end
                        
        
                        for _, child in pairs(speaker.Character:GetDescendants()) do
                            if child:IsA("BasePart") and child.CanCollide == true then
                                child.CanCollide = false
                            end
                        end
                    else
                        if plr.Character.HumanoidRootPart:FindFirstChild(tvktrumskid) then
                            plr.Character.HumanoidRootPart[tvktrumskid]:Destroy()
                           
                        end
                    end
                else
                    if CheckEN("Noclip") then
                        if not StopFloat then 
                            plr.Character.Humanoid:ChangeState(11)
                        end
                        for _, child in pairs(plr.Character:GetDescendants()) do
                            if child:IsA("BasePart") and child.CanCollide == true then
                                child.CanCollide = false
                            end
                        end
                    end
                end
            else
                if plr.Character.HumanoidRootPart:FindFirstChild(tvktrumskid) then
                    plr.Character.HumanoidRootPart[tvktrumskid]:Destroy()
                end
            end
        end
        
        
        pcall(
            function()
                -- if CheckEN("Nodrown") then
                --     plr.Character.HumanoidRootPart.SwimPosition.Position = Vector3.new(0, -2.71834, 0)
                -- end

                if CheckEN("Nodrown") and not DisableNoDrown then
                    plr.Character.HumanoidRootPart.SwimPosition.Position = Vector3.new(0, -2.71834, 0)
                end
                if CheckEN("Drown") then
                    plr.Character.HumanoidRootPart.SwimPosition:Destroy()
                end
            end
        )
    end
)
--local vt = 100
if not Settings.vt then Settings.vt=80 end
function RayCast2(a, b, c)
    local ignored = {game.Players.LocalPlayer.Character, game:GetService("Workspace").Effects, part0}

    local raycastParameters = RaycastParams.new()
    raycastParameters.FilterDescendantsInstances = ignored
    raycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParameters.IgnoreWater = false
    local rels = workspace:Raycast(a, b, raycastParameters)
    return rels
end
function IsSea()
    local t = RayCast2(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(0, -500, 0))
    --print(t.Instance)
    if t == nil or t.Instance.Name == "InvisSandd" then
        return true
    end
    return false
end
local tvk = function(f) f() end
local plr = game:service "Players".LocalPlayer
local tween_s = game:service "TweenService"
function Tween2(t, cb)
    local plr = game:service "Players".LocalPlayer
    local tween_s = game:service "TweenService"
    local info =
        TweenInfo.new(
        (game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - t.p).magnitude / Settings.vt,
        Enum.EasingStyle.Linear
    )
    local tic_k = tick()
    local cframe = t
    local tween, err =
    tvk(
        function()
            local tween = tween_s:Create(plr.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = cframe})
            local done = false
            tween.Completed:Connect(
                function()
                    done = true
                end
            )
            cb(
                function()
                    done = true
                    tween:Cancel()
                end
            )
            noclip = true
            tween:Play()
            while (done == false) do
                SetEN("Noclip", "Tween", true)
                if not( game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
                game.Players.LocalPlayer.Character.Parent == game.Workspace.PlayerCharacters and
                not plr.PlayerGui:FindFirstChild("DEATHGUI")) then done = true
                    tween:Cancel() return end               
                if (plr.Character.HumanoidRootPart.Position-t.Position).magnitude <40 then 
                    plr.Character.HumanoidRootPart.CFrame=t
                    tween:Cancel()
                    return
                end
                wait()
            end

            noclip = false
        end
    )

end
spawn(function() 
    while wait() do 
        if plr.Character:FindFirstChild("Humanoid") then 
            if plr.Character.Humanoid.Sit then 
                StopFloat=true
                wait(.1)
                plr.Character.Humanoid.Sit=false
                StopFloat=false
            end
        end
    end
end)
function y0(vc) 
    return Vector3.new(vc.X,0,vc.Z)
end
local DisableSafeMode = false
local Last
local FishUp = CFrame.new(8585.81641, -2136.12305, -17087.8145, 1, 0, 0, 0, 1, 0, 0, 0, 1)
function FireTouch(part)
    if plr.Character:FindFirstChild("HumanoidRootPart") then
        firetouchinterest(plr.Character:WaitForChild("HumanoidRootPart"), part, 0)
        firetouchinterest(plr.Character:WaitForChild("HumanoidRootPart"), part, 1)
    end
end
function tpT(Pos,k,Origin,dieukien,DisableBypass,Float)
    if Last then
        Last()
        Last = nil
    end
    if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
    if (plr.Character.HumanoidRootPart.Position-Pos.Position).magnitude <40 then 
        plr.Character.HumanoidRootPart.CFrame=Pos
        --tween:Cancel()
        return
    end
    if not Float then 
        StopFloat=true
    else
        StopFloat=false
    end   
    local tvk = function() 
        if not IsFishMan(Pos) and IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
            tpT(FishUp,nil,nil,dieukien,DisableBypass,Float)
            DisableSafeMode=true
            FireTouch(game:GetService("Workspace").Fishman.Part2)
            wait(1)
            if not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
                DisableSafeMode=false
                return tpT(Pos,nil,nil,dieukien,DisableBypass,Float)
            end
        end
        if IsFishMan(Pos) and not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
            tpT(CFrame.new(5682.19, 5, -16458.479),dieukien,DisableBypass,Float)
            SetEN("Drown","Tween",true)
            tpT(CFrame.new(5639.86865, -92.762001, -16611.4688, -1, 0, 0, 0, 1, 0, 0, 0, -1),nil,nil,dieukien,DisableBypass,Float)
            
            DisableSafeMode=true
            FireTouch(game:GetService("Workspace").Fishman.Part)
    
            wait(1)
            SetEN("Drown","Tween",true)
            if IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
                DisableSafeMode=false
                return tpT(Pos,nil,nil,dieukien,DisableBypass,Float)
            end
        -- TpTween(pos,sp,part)
        end
        if (IsFishMan(Pos) and IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)) or (not IsFishMan(Pos) and not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)) then 
            
            if not Origin then
                Origin = Pos
            end
        
            local info = TweenInfo.new((plr.Character.HumanoidRootPart.Position - Pos.p).magnitude / Settings.vt, Enum.EasingStyle.Linear)
            if k == nil then
                k = 1
            end
            local tween_s = game:service "TweenService"
            local tween = game:service "TweenService":Create(plr.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = Pos})
            local done = false
            tween.Completed:Connect(
                function()
                    done = true
                end
            )
            tween:Play()
            local Stop = function()
                tween:Cancel()
                done = true
                SetEN("Noclip", "Tween", false)
            end
            Last = Stop
            while (done == false) do
                if dieukien and not dieukien() then Stop() return end
                SetEN("Noclip", "Tween", true)
                if not( game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
                game.Players.LocalPlayer.Character.Parent == game.Workspace.PlayerCharacters and
                not plr.PlayerGui:FindFirstChild("DEATHGUI")) then Stop() return end
                if not plr.Character:FindFirstChild("Humanoid") then Stop() return end
        
                if math.abs(Pos.Position.Y-plr.Character.HumanoidRootPart.Position.Y)>50 then
                    StopFloat=false 
                else
                    if not Float then 
                        StopFloat=true
                    else
                        StopFloat=false
                    end
                end
                wait(.1)
                if sp and not part.Parent then
                    return
                end
                if done then return end
                if (plr.Character.HumanoidRootPart.Position-Pos.Position).magnitude <40 then 
                    plr.Character.HumanoidRootPart.CFrame=Pos
                    tween:Cancel()
                    return
                end
                do 
                    local hp = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local p1 = Vector3.new(Origin.X, 0, Origin.Z)
                    local p2 = Vector3.new(hp.X, 0, hp.Z)
                    if (p1 - p2).magnitude < 200 then
                        tween:Cancel()
                        return tpT(Origin,nil,Origin,dieukien,true,true)
                    end
                end
                if not DisableBypass then 
                    local pos = -2.7848949432373
                    if
                        not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) and IsSea() and
                            math.abs(plr.Character.HumanoidRootPart.Position.Y - pos) > .1
                     then
                        tween:Cancel()
                        local cf = plr.Character.HumanoidRootPart.CFrame      
                        return tpT(
                            CFrame.new(Pos.X, cf.Y, Pos.Z),
                            k,
                            Origin,
                            dieukien,DisableBypass,Float
                        )
                    end
                    if not IsSea() and (game.Players.LocalPlayer.Character.Humanoid.FloorMaterial == Enum.Material.Air) then
                        --print("bu cu")
                        local tss = RayCast2(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,3,0), Vector3.new(0, -500, 0))
                        local tvk = RayCast2(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,3,0), Vector3.new(0, -7, 0))
                        if not tvk then 
                            if tss and tss.Instance then 
                                tween:Cancel()
                                local cf = plr.Character.HumanoidRootPart.CFrame
                                return tpT(CFrame.new(Pos.X,  cf.Y, Pos.Z), k, Origin,dieukien,DisableBypass,Float)
                            end
                        end
                    end
                end
                if not done then 
                    return tpT(CFrame.new(Pos.X,  Pos.Y, Pos.Z), k, Origin,dieukien,DisableBypass,Float)
                end
            end
        end
        
    end
    tvk()
    StopFloat=false
end
function TpTween(cf,checkfunc)
    SetEN("Nodrown", "Tween", true)
    SetEN("Noclip", "Tween", true)
    tpT(cf,nil,cf,checkfunc)
    SetEN("Noclip", "Tween", false)
    SetEN("Nodrown", "Tween", false)
end
function Tp(pos, checkfunc)
    if Last then
        Last()
        Last = nil
    end
    TpTween(pos,checkfunc)
    -- if plr.Character:FindFirstChild("HumanoidRootPart") then
    --     if (plr.Character.HumanoidRootPart.Position - pos.p).magnitude < 25 then
    --         plr.Character.HumanoidRootPart.CFrame = pos
    --         return
    --     end
    -- end
    -- if IsFishMan(pos) and IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
    --     TpTween(pos,checkfunc)
    -- end
    -- if not IsFishMan(pos) and IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
    --     TpTween(FishUp, checkfunc)
    --     DisableSafeMode=true
    --     FireTouch(game:GetService("Workspace").Fishman.Part2)

    --     wait(1)
    --     if not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
    --         DisableSafeMode=false
    --         TpTween(pos, checkfunc)
    --     end
    -- end
    -- if IsFishMan(pos) and not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
    --     TpTween(CFrame.new(5639.86865, -92.762001, -16611.4688, -1, 0, 0, 0, 1, 0, 0, 0, -1), checkfunc)
    --     DisableSafeMode=true
    --     FireTouch(game:GetService("Workspace").Fishman.Part)

    --     wait(1)
    --     if IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
    --         DisableSafeMode=false
    --         TpTween(pos, checkfunc)
    --     end
    -- -- TpTween(pos,sp,part)
    -- end
    -- if
    --     not IsFishMan(pos) and
    --         not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
    --  then
    --     TpTween(pos,checkfunc)
    -- end
end


local CFAHub = 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiet1308/tvkhub/main/rac"))()
local txt="Grand Piece Online"
if identifyexecutor()=="Krnl" then 
    txt="Grand Piece Online (KRNL)"
end
local Window = CFAHub:CreateWindow("<font color=\"#4FC3F7\">CFA Hub</font>", txt, true)

--CFAHub:AddNoti("CFA Hub Premium", "UI Loaded!", 6)
function GetSword()
    for k, v in pairs(plr.Character:GetChildren()) do
        if v:FindFirstChild("SwordEquip") then
            return v, true
        end
    end
    for k, v in pairs(plr.Backpack:GetChildren()) do
        if v:FindFirstChild("SwordEquip") then
            return v, false
        end
    end
end
function CheckInven(item) 
    local cac = game:GetService("HttpService"):JSONDecode(data.Inventory.Inventory.Value)
    for k,v in pairs(cac) do 
        if k==item then 
            return k
        end
    end
end
function GetRifle() 
    return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rifle") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rifle") 
end

local function GetNearestChest()
 local Chest
 for i, v in ipairs(game.workspace.Env:GetChildren()) do
  if plr.Character:FindFirstChild("HumanoidRootPart") and v.Name == "Chest" and v:IsA("Model") and v:FindFirstChild("MeshPart") then
   if not Chest then
                Chest=v 
            end
            if (v.MeshPart.Position - plr.Character.HumanoidRootPart.Position).magnitude<(Chest.MeshPart.Position - plr.Character.HumanoidRootPart.Position).magnitude then 
                Chest=v 
            end
  end
 end
 return Chest
end
function IsChestAlive(chest) 
    if chest.Parent and chest:FindFirstChild("MeshPart") then 
        return true
    end
    return false
end

function CollectChest(chest) 
    Tp(chest.MeshPart.CFrame * CFrame.new(0, 5, 0),function() 
        if not IsChestAlive(chest) then
            return false 
        end
        if GetNearestChest()~=chest then 
            return false
        end
        return true
    end)
    if IsChestAlive(chest) then 
        wait(1)
        for i, v in ipairs(game.workspace.Env:GetChildren()) do 
            if v:FindFirstChild("ClickDetector") then 
                if (v.Position - plr.Character.HumanoidRootPart.Position).magnitude <10 then 
                    fireclickdetector(v.ClickDetector, 2)
                end
            end
        end
    end
    
end
function GetCurrentQuest()
    local rac
    rac=data
    return tostring(rac.Quest.CurrentQuest.Value)
end

function GetQuest(quest, rac)
    
    local t = tick()
    repeat
        wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.T, false, game)
    until game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT") or tick() - t > 3
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT") and plr.Character:FindFirstChild("HumanoidRootPart") then
        local cur = plr.Character.HumanoidRootPart.CFrame

        repeat
            wait()
            if plr.Character:FindFirstChild("HumanoidRootPart") and rac then
                plr.Character.HumanoidRootPart.CFrame = cur + Vector3.new(0, -11, 0)
            end
            pcall(
                function()
                    for k, v in pairs(
                        getconnections(
                            game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT").Frame.go.MouseButton1Click
                        )
                    ) do
                        v:Fire()
                    end
                end
            )
        until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT")
    end

    --  game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"takequest",quest})
end
local function GetNeak()
 if game.workspace.Effects:FindFirstChild("Folder") then
  for i, v in ipairs(game.workspace.Effects.Folder:GetDescendants()) do
   if v.Name == "Part" and v.Parent.Name == "Folder" and v:FindFirstChild("Mesh") and v.Mesh.TextureId == "http://www.roblox.com/asset/?id=28461501" and v:FindFirstChild("ClickDetector") then
    return v
   end
  end
 end
end
function GetSword()
    for k, v in pairs(plr.Character:GetChildren()) do
        if v:FindFirstChild("SwordEquip") then
            return v, true
        end
    end
    for k, v in pairs(plr.Backpack:GetChildren()) do
        if v:FindFirstChild("SwordEquip") then
            return v, false
        end
    end
end
spawn(function() 
    while wait() do 
        if Settings.Chest then 
            local chest = GetNearestChest()
            if chest then 
                CollectChest(chest)
            else
                if not game.Players.LocalPlayer.QuestCD.Value then 
                    local cac = CFrame.new(1009.720458984375, 8.999988555908203, 1179.4952392578125)
                    local old = plr.CameraMinZoomDistance
                    local old2 = plr.CameraMaxZoomDistance
    
                    if GetCurrentQuest()~="Find Sarah's necklace" then 
                        if GetCurrentQuest()~="None" then 
                            game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"quit"})
                        end
                        Tp(cac)
                        GetQuest("Sarah", true)
                    end
                    plr.CameraMinZoomDistance = 128
                    game.Players.LocalPlayer.CameraMaxZoomDistance = 256
                    game.Players.LocalPlayer.CameraMinZoomDistance = 256
                    Tp(CFrame.new(982.9542846679688, 41.349090576171875, 1264.251708984375))
                    local t = tick()
                    repeat wait() 
                        local cac = GetNeak()
                        if cac then 
                            local rac = cac.CFrame+Vector3.new(0,5,0)
                            Tp(CFrame.new(rac.X,rac.Y,rac.Z))
                            wait(1)
                            if cac:FindFirstChild("ClickDetector") then 
                                fireclickdetector(cac.ClickDetector,2)
                            end
                        else
                            Tp(CFrame.new(982.9542846679688, 41.349090576171875, 1264.251708984375))
                        end
                    until GetCurrentQuest()=="None" or tick()-t>20 or data.Quest.QuestProgress.Value==1 or not Settings.Chest
                    game.Players.LocalPlayer.CameraMaxZoomDistance = old2
                    game.Players.LocalPlayer.CameraMinZoomDistance = old  
                    Tp(cac)
                    GetQuest("Sarah", true)  
                else
                    
                end 
            end
            
        end 
    end
end)

local Tab2 = Window:CreatePage("Farm")
local Section2 = Tab2:CreateSection("Main Farm")

local executor = identifyexecutor()

if (executor == "Synapse X" or executor == "Krnl") and secure_call then
else
    CFAHub:AddNoti("Warning", "Your Exploit Is Not Supported, Our Script's might not working perfectly (Supported Exploit: KRNL,Synapse X)", 1)
end
local lf = Section2:CreateToggle("Level Farm", {Toggled=Settings.Farm,Description = "Will farm at Fishman Island (best way)"}, function(state)
    Settings.Farm = state
    SetEN("Noclip", "Farm", state)
    SetEN("NoFallDame","Farm",state)
end)
-- local lf = Section2:CreateToggle("Legit Farm", {Toggled=Settings.Legit,Description = "Legit Farm"}, function(state)
--     Settings.Legit = state
    
-- end)

local olf = Section2:CreateToggle("1 Click Level Farm", {Toggled=Settings.OneClick,Description = "Will auto farm beli -> Buy weapons then start level farm"}, function(state)
    SetEN("Noclip", "OneClick", state)
    SetEN("NoFallDame","OneClick",state)
    Settings.OneClick = state
end)
Section2:CreateToggle("Auto Buso Quest", {Toggled=Settings.AutoBusoQuest,Description = "Must enable with level farm"}, function(state)
    Settings.AutoBusoQuest=state
end)
Section2:CreateDropdown("Level Farm Method", {
    List = {"Rifle","Sword","Black Leg"},
    Default = Settings.FarmMode
}, function(item)
    Settings.FarmMode = item
end)
function IsAdvanceMode(k) 
    if k=="1-500 at Fishman" then return false else return true end
end
Section2:CreateDropdown("Level Farm Path", {
    List = {"1-500 at Fishman","1-160 at Fishman, 160-190 at gravito fort, 190-500 at Fishman"},
    Default = Settings.FarmPath or "1-500 at Fishman"
}, function(item)
    Settings.FarmPath = item
end)
local Section2 = Tab2:CreateSection("Misc Farm")
local AFB= Section2:CreateToggle("Auto Farm Beli (For Begginer Only)", {Toggled=Settings.Chest,Description = "Auto Farm Chest then do Sarah quest"}, function(state)
    Settings.Chest = state
    SetEN("Noclip", "Chest", state)
    SetEN("NoFallDame","Chest",state)
end)

spawn(function() 
    while wait() do 
        local mode
        local price
        local GetItem
        local BuyItem
        local Pos
        if Settings.FarmMode=="Sword" then
             mode="Katana" 
             price=1000 
             GetItem = GetSword 
             BuyItem=BuyKatana 
             Pos = SwordPos 
        end
        if Settings.FarmMode=="Rifle" then
            mode="Rifle" 
            price=300 
            GetItem=GetRifle 
            BuyItem=function()  
                fireclickdetector(game:GetService("Workspace").BuyableItems.Rifle.ShopPart.ClickDetector) 
            end 
            Pos = CFrame.new(999.6433715820312, 9.092554092407227, 1133.33740234375) 
        end
       
        if Settings.OneClick and mode then 
            lf.SetValue(false)
            if not GetItem() and not CheckInven(mode) then
                if data.Stats.Peli.Value < price then 
                    AFB.SetValue(true)
                else
                    AFB.SetValue(false)
                    Tp(Pos)
                    wait(5)
                    local t = tick()
                    repeat
                        wait(1)
                        pcall(BuyItem)
                    until game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT") or tick() - t > 3
                    repeat wait()
                        pcall(function()
                            for k, v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT").Frame.go.MouseButton1Click)) do
                                v:Fire()
                            end
                        end)
                    until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT")
                end
            else
                if CheckInven(mode) then 
                    game:GetService("ReplicatedStorage").Events.Tools:InvokeServer("equip", mode)
                end
                AFB.SetValue(false)
                lf.SetValue(true)
                olf.SetValue(false)
            end
        end
    end
end)
local DoneSeq="0 1 1 1 0 1 1 1 1 0 "
function IsSkillUnlocked(skill)
    if plr.PlayerGui:FindFirstChild("Keys") then
        if plr.PlayerGui.Keys:FindFirstChild("Frame") then
            if plr.PlayerGui.Keys.Frame:FindFirstChild(skill) then
                if plr.PlayerGui.Keys.Frame[skill].TextLabel.TextLabel.Text ~= "???" then
                    return true
                end
            end
        end
    end
    return false
end
function IsSkillReady(skill)
    if plr.PlayerGui:FindFirstChild("Keys") then
        if plr.PlayerGui.Keys:FindFirstChild("Frame") then
            if plr.PlayerGui.Keys.Frame:FindFirstChild(skill) then
                if pcall(function() return plr.PlayerGui.Keys.Frame[skill].TextLabel.Frame.UIGradient.Color end) then 
                    if tostring(plr.PlayerGui.Keys.Frame[skill].TextLabel.Frame.UIGradient.Color)==DoneSeq then 
                        return true
                    end
                end
            end
        end
    end
    return false
end
local Section2 = Tab2:CreateSection("Ship Farm")
Section2:CreateToggle("Ship Farm", {Toggled=Settings.ShipFarm,Description = false}, function(state)
    Settings.ShipFarm = state
    SetEN("Noclip", "ShipFarm", state)
    SetEN("NoFallDame","ShipFarm",state)
end)
Section2:CreateDropdown("Ship Farm Method", {
    List = {"Sword","Black Leg"},
    Default =  Settings.ShipFarmMode
}, function(item)
    Settings.ShipFarmMode = item
end)
Section2:CreateToggle("Kill Cannoners", {Toggled=Settings.KillCannon,Description = false}, function(state)
    Settings.KillCannon = state
end)
-- Section2:CreateToggle("Ignore Galleons", {Description = false}, function(state)
--     Settings.IgnoreGalleon = state
-- end)
Section2:CreateButton("Set Ship Spawn Location", function(args)
    Settings.ShipPos=game.Players.LocalPlayer.Character.HumanoidRootPart.Position--Vector3.new(6013.2841796875, -3.5988941192626953, -18909.974609375)--
    CFAHub:AddNoti("Notification", "Set Ship Farm Position Complete", 5)
end)
function TpE(e,f)
    if e:FindFirstChild("HumanoidRootPart") then 
        repeat wait() 
        spawn(function() 
            if e:FindFirstChild("HumanoidRootPart") then 
                Tp(e.HumanoidRootPart.CFrame*CFrame.new(0, -0.75, 3))
            end
        end)
        until not e:FindFirstChild("HumanoidRootPart") or not pcall(function() return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end) or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-e.HumanoidRootPart.Position).magnitude<5 or not e.Parent or not f()
    end
end
local function KillCaMap()
    for i, v in ipairs(game.workspace.NPCs:GetChildren()) do
  if plr.Character:FindFirstChild("HumanoidRootPart") and v.Name == "Shark" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 then
   local magnitude = (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude
   if magnitude < 10 then
    Click()
   end
  end
    end
end
function EquipWpShip() 
    if StoringDF then return end
    if Settings.ShipFarmMode == "Black Leg" then
        if
            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                plr.Backpack:FindFirstChild("BlackLeg") 
         then
            plr.Character.Humanoid:EquipTool(plr.Backpack.BlackLeg)
        end
    else
        local sword, equip = GetSword()
        if sword and not equip then
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(sword)
            end
        end
    end
end
function GetAllMobInShip(ship) 
    local Mobs = {}
    for k,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do 
        if v:FindFirstChild("assignedShip") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then 
            if v:FindFirstChild("HumanoidRootPart") then 
                if v.assignedShip.Value==ship then 
                    table.insert(Mobs,v)
                end
            end
        end
    end
    return Mobs
end

function Kill(v,f) 
    local tween=true
    repeat
        wait() 
        EquipWpShip()
        if v:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then 
            TpE(v,function() 
                return tween
            end) 
            if v:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).magnitude<5 then 
                --game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.X, false,game)
                MucTieu.MucTieu = v.HumanoidRootPart
                Click()
                if Settings.ShipFarmMode=="Black Leg" then 
                    if IsSkillUnlocked("Party Table Kick Course") then
                        if data.Stamina.Value>40 then 
                            game:GetService("ReplicatedStorage").Events.Skill:InvokeServer("Party Table Kick Course")
                        end
                    end
                end
                if Settings.ShipFarmMode=="Sword" then 
                    if IsSkillUnlocked("Rapid Slashes") then
                        if data.Stamina.Value>20 then 
                            game:GetService("ReplicatedStorage").Events.Skill:InvokeServer("Rapid Slashes")
                        end
                    end
                end
                
            end
        end
    until f(v) 
    MucTieu.MucTieu =nil
    tween=false
end

plr.Backpack.ChildAdded:Connect(function(fruit) 
    if fruit:FindFirstChild("FruitModel") then
        spawn(function() 
            if Settings.AutoStoreDF then 
                local s, DFBackpackOwn = pcall(game:GetService("MarketplaceService").UserOwnsGamePassAsync, game:GetService("MarketplaceService"), plr.UserId, 12776768)
                if (s and DFBackpackOwn)
                or string.find(data.Inventory.Inventory.Value, "Fruit Bag") then
                    local v = fruit
                    StoringDF=true
                    local t = tick()
                    
                    repeat wait(1)
                        plr.Character.Humanoid:EquipTool(v)
                        wait(.5)
                        if pcall(function() return plr.PlayerGui.storefruit.TextButton end) and plr.PlayerGui.storefruit.TextButton.Visible == true then
                            FireButton(plr.PlayerGui.storefruit.TextButton)
                        end
                    until not v
                    or not v.Parent
                    or not Settings.AutoStoreDF or tick()-t>5
                    StoringDF=false
                end
            end
        end)
        if Settings.DFWebHook then 
            if Settings.WebHookUrl then 
                local msg = {
                    ["content"] = (Settings.MentionEveryone and "@everyone") or "",
                    ["embeds"] = {{
                        ["title"] = "Grand Piece Online",
                        ["description"] = "Fruit Gotten",
                        ["type"] = "rich",
                        ["color"] = tonumber(47103),
                        ["fields"] = {
                            {
                                ["name"] = "Name",
                                ["value"] = "||" .. plr.Name .. "||",
                                ["inline"] = false
                            },
                            {
                                ["name"] = "Item",
                                ["value"] = fruit.Name,
                                ["inline"] = false
                            }
                        },
                        ["footer"] = {
                            ["icon_url"] = "https://cdn.discordapp.com/attachments/880433061307772958/994650337485000804/dc6e727bd4a71a981a037834b8c8fe38.png",
                            ["text"] = "CFA Hub (" .. os.date("%X") .. ")"
                        }
                    }}
                }
                local function SendWebHook()
                    request({
                        Url =Settings.WebHookUrl,
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json"
                        },
                        Body = game:GetService("HttpService"):JSONEncode(msg)
                    })
                end
                SendWebHook()
            end
        end
    end
end)

function GetMob(name,stud) 
    for k,v in pairs(game.Workspace.NPCs:GetChildren()) do 
        if v.Name==name and v:FindFirstChild("HumanoidRootPart") then 
            if plr.Character:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).magnitude<stud then 
                return v
            end
        end
    end
end

function ShipGetNearestMobSM(mob)
    local nr = nil
    for k, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if string.match(v.Name,mob) and v:FindFirstChild("assignedShip") then
            if
                plr.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("HumanoidRootPart") and
                    v:FindFirstChild("Humanoid") and
                    v.Humanoid.Health > 0
             then
                if not nr then
                    nr = v
                end
                if
                    nr and nr:FindFirstChild("HumanoidRootPart") and
                        (plr.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude <
                            (plr.Character.HumanoidRootPart.Position - nr.HumanoidRootPart.Position).magnitude
                 then
                    nr = v
                end
            end
        end
    end
    if nr then 
        if
        plr.Character:FindFirstChild("HumanoidRootPart") and nr:FindFirstChild("HumanoidRootPart") and
        nr:FindFirstChild("Humanoid") and
        nr.Humanoid.Health > 0 then 
                if (plr.Character.HumanoidRootPart.Position - nr.HumanoidRootPart.Position).magnitude <1000 then 
                    return nr
                end
            end
    end
    --return nr
end

spawn(function() 
    while wait(.5) do 
        if Settings.ShipFarm then 
            if Settings.ShipPos and Settings.ShipPos~=Vector3.new(0,0,0) and not ShipGetNearestMobSM("Captain") then
                if Settings.KillCannon then 
                    if not ShipGetNearestMobSM("Cannoneer") then 
                        Tp(CFrame.new(Settings.ShipPos)) 
                    end
                else
                    Tp(CFrame.new(Settings.ShipPos))
                end
                
            end
            if not game.Workspace.Ships:FindFirstChild(plr.Name.."Ship") then 
                game:GetService("ReplicatedStorage").Events.ShipEvents.Spawn:InvokeServer("true")
            end
            EquipWpShip()
            KillCaMap()
            local v = ShipGetNearestMobSM("Captain")
            if v then 
                if v:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).magnitude<1000 then 
                    if v.Name=="Marine Captain" or v.Name=="Pirate Captain" and Settings.ShipFarm and v:FindFirstChild("assignedShip") then
                        local ship = v.assignedShip.Value
                        if ship then 
                            local function dk(v) 
                                return not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health==0 or not Settings.ShipFarm
                            end
                            Kill(v,dk)
                        end
                    end
                end
            else
                if Settings.KillCannon then 
                    if Settings.ShipFarm then 
                        local v=ShipGetNearestMobSM("Cannoneer")
                        if v and v:FindFirstChild("HumanoidRootPart") then 
                            local function dk(v) 
                                return not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health==0 or not Settings.ShipFarm
                            end
                            Kill(v,dk)
                        end
                        
                    end
                end
            end
        end
        if not Settings.ShipFarm then 
            AutoClick=false
        end
    end
end)

local Tab2 = Window:CreatePage("Auto Stats")
local Section2 = Tab2:CreateSection("Main")

for k, v in pairs(Settings.AutoStat) do
    Section2:CreateToggle(k, {Description = false,Toggled=v}, function(state)
        Settings.AutoStat[k] = state
    end)
end
spawn(
    function()
        while wait(.5) do
            if Settings.AutoStat then
                for k, v in pairs(Settings.AutoStat) do
                    if v and data.Stats.SkillPoints.Value > 0 then
                        game.ReplicatedStorage.Events.stats:FireServer(k, nil, 1)
                    end
                end
            end
        end
    end
)
LocationsCoord = {
    ["Town of Beginnings"] = CFrame.new(965.146, 10, 1195.127),
    ["Marine Fort F-1"] = CFrame.new(2904.113, 25, -994.2),
    ["Sandora"] = CFrame.new(-1316.089, 15, 1129.95),
    ["Shell's Town"] = CFrame.new(-605.248, 15, -4430.41),
    ["Zou"] = CFrame.new(-4458.681, 10, -2502.741),
    ["Restaurant Baratie"] = CFrame.new(-3909.713, 55, -5569.912),
    ["Orange Town"] = CFrame.new(-6999.987, 10, -5345.705),
    ["Mysterious Cliff"] = CFrame.new(2180.005, 415, -8628.285),
    ["Roca Island"] = CFrame.new(5426.218, 20, -4918.854),
    ["Colosseum"] = CFrame.new(-2019.975, 10, -7661.091),
    ["Sphinx Island"] = CFrame.new(-6327.812, 45, -10129.278),
    ["Kori Island"] = CFrame.new(-6684.44, 10, 1828.623),
    ["Arlong Park"] = CFrame.new(652.855, 15, -13122.346),
    ["Land of the Sky"] = CFrame.new(9016.793, 1440, -10542.829),
    ["Knock-Up Stream Rock"] = CFrame.new(8116, 10, -9819),
    ["Gravito's Fort"] = CFrame.new(2611.159, 15, -15359.032),
    ["Fishman Cave"] = CFrame.new(5682.19, 5, -16458.479),
    ["Fishman Island"] = CFrame.new(8003.553, -2150, -17056.971),
    ["Marine Base G-1"] = CFrame.new(-9955.175, 70, -14910.613),
    ["Coco Island"] = CFrame.new(-4262.249, 10, -15531.864),
    ["Reverse Mountain"] = CFrame.new(-14338, 20, -9446),
    ["Shrine"] = CFrame.new(-12184.12890625, 3.2737002372742, -18545.69921875)
}
function WTS(part, toggle)
    local screen = workspace.CurrentCamera:WorldToViewportPoint(part)
    return Vector2.new(screen.x, screen.y)
end
local esplist = {}
game:GetService("RunService").Stepped:connect(
    function()
        for k, v in pairs(esplist) do
            v()
        end
    end
)
function ESP(part, text, color, toggle)
    local name = Drawing.new("Text")
    name.Text = text
    name.Color = color
    name.Position = WTS(part)
    name.Size = 20.0
    name.Outline = true
    name.Center = true
    name.Visible = true

    table.insert(
        esplist,
        function()
            pcall(
                function()
                    if part ~= nil then
                        name.Position = WTS(part)
                    end
                    local _, screen = workspace.CurrentCamera:WorldToViewportPoint(part)
                    if screen and Settings[toggle] then
                        name.Visible = true
                    else
                        name.Visible = false
                    end
                end
            )
        end
    )
end
for k, v in pairs(LocationsCoord) do
    ESP(Vector3.new(v.X, v.Y, v.Z), k, Color3.fromRGB(255, 255, 255), "IslandE")
end
local rac = {}
for k, v in pairs(LocationsCoord) do
    table.insert(rac, k)
end

local Tab2 = Window:CreatePage("Misc")
local Section2 = Tab2:CreateSection("Teleport")
Section2:CreateDropdown("Teleport", {
    List = rac,
    Default = ""
}, function(item)
    if item and item~="" then 
        local s,e = xpcall(function()Tp(LocationsCoord[item]) end,function(e) 
            print(e)
            print(debug.traceback())
        end)
       -- print(s,e)
    end
end)
local Section2 = Tab2:CreateSection("Stuff")
Section2:CreateToggle("Auto Store DF", {Toggled=Settings.AutoStoreDF,Description = false}, function(state)
    Settings.AutoStoreDF = state
end)


Section2:CreateToggle("Auto Buso Haki", {Toggled=Settings.AutoBuso,Description = false}, function(state)
    Settings.AutoBuso = state
end)
Section2:CreateDropdown("Auto Buso Method", {
    List = {"Always Enable","Enable When Stand Near Mob"},
    Default = Settings.BusoMethod or "Enable When Stand Near Mob"
}, function(item)
    Settings.BusoMethod=item
    
end)
game.CoreGui.DescendantAdded:Connect(function()
 wait(2)
 pcall(function()
  if game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
  and Settings.AutoRejoin then
   while wait() do
    game:GetService("TeleportService"):Teleport(1730877806, plr)
    wait(5)
   end
  end
 end)
end)
local current = tick()
local last = current
-- local humadd = function(v) 
--     if v.Name=="Humanoid" then 
--        v:GetPropertyChangedSignal("FloorMaterial"):Connect(function()
--             if plr.Character.Humanoid.FloorMaterial == Enum.Material.Air
--              then
--                 last=tick() --tren troi
--              else 
--                 current=tick() --duoi dat
--             end
--         end)
--     end
-- end
-- if plr.Character:FindFirstChild("Humanoid") then 
--     humadd(plr.Character.Humanoid)
-- end
function RCDetect() 
    if plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health>0 then 
        local plrPos = plr.Character.HumanoidRootPart.Position
        local Distance
        if plr.Character.HumanoidRootPart.Position.Y <= 20 then
            Distance = -5
        else
            Distance = -5
        end
        local rcu = RayCast2(Vector3.new(plrPos.X, plrPos.Y, plrPos.Z),Vector3.new(0, Distance, 0))
        if plr.Character.Humanoid.FloorMaterial ~= Enum.Material.Air
        or game.workspace.Ragdolls:FindFirstChild(plr.Name)
        or plr.Character.HumanoidRootPart:FindFirstChild("geppo")
        or plr.Character.HumanoidRootPart:FindFirstChild("SwimPosition")
        or plr.Character:FindFirstChild("ToriFullForm")
        or plr.Character:FindFirstChild("AirBypass")
        or rcu or IsSea() then
            --print("duoi dat")
            current=tick()-- duoi dat
        else
            last=tick() --tren troi
        end
    else
        current=tick() -- duoi dat
    end 
end
function Detect()
 if game.workspace.PlayerCharacters:FindFirstChild(plr.Name)
 and not game.workspace.Ragdolls:FindFirstChild(plr.Name)
 and not plr.PlayerGui:FindFirstChild("DEATHGUI")
 and not plr.PlayerGui:FindFirstChild("Blackout")
 and plr.Character:FindFirstChild("HumanoidRootPart") then
  return true
 end
 return false
end
function SafeModeKick() 
    plr:Kick("\n[CFA Hub]\nKicked for suspicious movements (Safe Mode)")
end
plr.Character.ChildAdded:Connect(humadd)
spawn(function() 
    while wait() do 
        if Detect() then 
            local old = plr.Character.HumanoidRootPart.Position
            wait(1)
            local new = plr.Character.HumanoidRootPart.Position
            local speed = (old - new).magnitude
            if Detect() and speed >= 300 and not DisableSafeMode then
                if Settings.SafeMode then
                    SafeModeKick()
                else
                    if Last then Last() end
                end
            end
        end
        
    end
end)
local LastNguyHiem = tick()
spawn(function()
    while wait() do
        RCDetect()
        
        if last-current >8 then
            NguyHiem=true
            wait(1)
        else
            NguyHiem=false
        end 
        --print(last-current)
        if Settings.SafeMode and Detect() then 
   if plr.Character.HumanoidRootPart.Velocity.Y > 700
   or plr.Character.HumanoidRootPart.Velocity.Y < -700 then
    SafeModeKick()
            end
            if last-current >13 then 
                SafeModeKick()
            end
            if game.workspace.Ragdolls:FindFirstChild(plr.Name) then
                if Last then Last() end
                if game.workspace.Ragdolls[plr.Name].HumanoidRootPart.Position.Y < -100
                and (Vector3.new(8073.316, -2016.831, -17376.289) - game.workspace.Ragdolls[plr.Name].HumanoidRootPart.Position).magnitude >= 3000 then
                    SafeModeKick()
                end
            end
        end
    end
end)


local Section2 = Tab2:CreateSection("Security")
Section2:CreateToggle("Safe Mode", {Toggled=Settings.SafeMode,Description = "Will kick you if your character having suspicious movements"}, function(state)
    Settings.SafeMode = state
end)
Section2:CreateToggle("Auto Kick at 499 rifle shoot", {Toggled=Settings.RifleKick,Description = "Will kick you if you shooted more than 499 shoot"}, function(state)
    Settings.RifleKick = state
end)
Section2:CreateToggle("Auto Kick", {Toggled=Settings.AutoKick,Description = "Auto kick you from the game after selected minute"}, function(state)
    Settings.AutoKick = state
 spawn(function() 
        while Settings.AutoKick and wait() do
            if Settings.AutoKickTimer then 
                pcall(function() 
                    local CurrentTick = tick()
                    repeat wait(1)
                    until tick() - CurrentTick >= Settings.AutoKickTimer * 60
                    or not Settings.AutoKick
                    if Settings.AutoKick then
                        plr:Kick("\n[CFA Hub]\n".. Settings.AutoKickTimer .." minute reached (Auto Kick)")
                    end
                end)
            end 
        end
    end)
end)
Section2:CreateSlider("Auto Kick Timer (minute)", {Min = 1, Max = 120, DefaultValue = Settings.AutoKickTimer or 15}, function(value)
    Settings.AutoKickTimer=value
 end)
 Section2:CreateToggle("Auto Rejoin", {Toggled=Settings.AutoRejoin,Description = false}, function(state)
    Settings.AutoRejoin = state
end)
Section2:CreateTextbox("PS Code", "(Leave if you want rejoin to normal server)", function(args)
    Settings.PSCode=args
end,Settings.PSCode)
local Section2 = Tab2:CreateSection("Local Player")
Section2:CreateToggle("No Drown", {Toggled=Settings.Nodrown,Description = "Make you cant drown in water"}, function(state)
    Settings.Nodrown = state
    SetEN("Nodrown", "Setting", state)
end)
Section2:CreateToggle("No Fall Damage", {Toggled=Settings.NoFallDame,Description = "Make you get no damage when fall"}, function(state)
    Settings.NoFallDame = state
    SetEN("NoFallDame", "Setting", state)
end)
Section2:CreateToggle("Dash No Stamina", {Toggled=Settings.DashNoStam,Description = "Dashing wont take stamina"}, function(state)
    Settings.DashNoStam = state
    SetEN("DashNoStam", "Setting", state)
end)
-- Section2:CreateToggle("No Clip", {Description = "Make you get no damage when fall"}, function(state)
--     Settings.Noclip = state
--     SetEN("Noclip", "Setting", state)
-- end)
local ws = 16
Section2:CreateSlider("WalkSpeed Changer", {Min = 16, Max = 100, DefaultValue = 16}, function(value)
   ws=value
end)

spawn(function() 
    while wait(1) do 
        pcall(function() 
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=ws
        end)
    end
end)
local Section2 = Tab2:CreateSection("ESP")
Section2:CreateToggle("Island ESP", {Toggled=Settings.IslandE,Description = false}, function(state)
    Settings.IslandE=state
end)
local Tab2 = Window:CreatePage("Web Hook")
local Section2 = Tab2:CreateSection("Main")

Section2:CreateTextbox("Web Hook Url", "Enter here!", function(args)
    Settings.WebHookUrl=args
end,Settings.WebHookUrl)
Section2:CreateToggle("Mention Everyone", {Toggled=Settings.MentionEveryone,Description = false}, function(state)
    Settings.MentionEveryone=state
end)
local Section2 = Tab2:CreateSection("DF")
Section2:CreateToggle("DF Webhook", {Toggled=Settings.DFWebHook,Description = "Will notify when you have DF"}, function(state)
    Settings.DFWebHook=state
end)
local Tab2 = Window:CreatePage("Settings")
local Section2 = Tab2:CreateSection("Main")
Section2:CreateSlider("Tween Speed", {Min = 50, Max = 120, DefaultValue = Settings.vt}, function(value)
    Settings.vt=value
end)


function IsBusoActivated()
    if not plr.Character then
        return false
    end
    for k, v in pairs(plr.Character:GetChildren()) do
        if string.match(v.Name, "Buso") then
            return true
        end
    end
    return false
end
spawn(
    function()
        while wait(1) do
            if Settings.AutoBuso and data.Stats.BusoMastery.Value > 0 then
                local a = true
                if Settings.BusoMethod == "Enable When Stand Near Mob" then
                    local function GetAllNearMob()
                        for k, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                            if
                                v:FindFirstChild("Humanoid") and v.Humanoid:IsA("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    plr.Character:FindFirstChild("HumanoidRootPart")
                             then
                                if
                                    (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <
                                        50
                                 then
                                    return true
                                end
                            end
                        end
                        return false
                    end
                    if GetAllNearMob() then
                        a = true
                    else
                        if IsBusoActivated() then
                            game:GetService("ReplicatedStorage").Events.Haki:FireServer("Buso")
                        end
                        a = false
                    end
                end
                if a and not IsBusoActivated() then
                    game:GetService("ReplicatedStorage").Events.Haki:FireServer("Buso")
                end
            end
        end
    end
)

local g = {
    KeyCode = Enum.KeyCode.Unknown,
    UserInputState = Enum.UserInputState.Begin,
    UserInputType = Enum.UserInputType.MouseButton1
}

local shooting = false
local shootpos = CFrame.new(0, 0, 0)
local cf = getrenv()._G.MouseCF
getrenv()._G.MouseCF = nil
setmetatable(
    getrenv()._G,
    {
        __index = function(a, b)
            if b == "MouseCF" then
                if shooting then
                    return shootpos
                else
                    return cf
                end
            end
            return rawget(a, b)
        end,
        __newindex = function(a, b, c)
            if b == "MouseCF" then
                cf = c
                return
            end
            return rawset(a, b, c)
        end
    }
)

local funcr
function GetReload()
    for k, v in pairs(getgc()) do
        if tostring(getfenv(v).script) == "GunMain" and (getfenv(v).script.Parent) ~= nil then
            if tostring(debug.getconstant(v, 1)) == "Reloaded" then
                -- v(g,false)
                --  print(getfenv(v).script:GetFullName())
                return v
            end
        end
    end
end
local func
function GetClick(x, m)
    for i, v in ipairs(getgc()) do
        if pcall(function() return tostring(getfenv(v).script) end) and tostring(getfenv(v).script) == x and (getfenv(v).script.Parent) ~= nil then
            if
                pcall(
                    function()
                        getconstant(v, m)
                    end
                ) == true
             then
                return v
            end
        end
    end
end
func = GetClick("MeleeScript", 85)
function AttackInCooldown()
    if NguyHiem then return true end
    if not func or getfenv(func).script.Parent == nil then
        func = GetClick("MeleeScript", 85)
    end
    if func then 
        return debug.getupvalue(func, 11) >=4
    else
        return false
    end
    
end  
local collector = Instance.new("ScreenGui")
collector.Parent=game.CoreGui
local c= false
local g = {
    KeyCode = Enum.KeyCode.Unknown,
    UserInputState = Enum.UserInputState.Begin,
    UserInputType = Enum.UserInputType.MouseButton1
}
local func
function GetClick(x, m)
    for i, v in ipairs(getgc()) do
        if pcall(function() return tostring(getfenv(v).script) end) and tostring(getfenv(v).script) == x and (getfenv(v).script.Parent) ~= nil then
            if pcall(function() getconstant(v, m) end ) == true then
                return v
            end
        end
    end
end
function Clickc()
    spawn(function()
        if pcall(function() return tostring(getfenv(func).script) end) and not func or getfenv(func).script.Parent == nil then
            func = GetClick("MeleeScript", 85)
        end
        if func then 
            func(g,false)
        end
    end)
end
function GetClickGun()
    for k, v in pairs(getgc()) do
        if tostring(getfenv(v).script) == "GunMain" and (getfenv(v).script.Parent) ~= nil then
            if tostring(debug.getconstant(v, 1)) == "script" then
                return v
            end
        end
    end
end
local gunfunc
function ClickcGun()
    spawn(function()
        if pcall(function() return tostring(getfenv(gunfunc).script) end) and not gunfunc or getfenv(gunfunc).script.Parent == nil then
            gunfunc = GetClickGun()
        end
        if gunfunc then 
            gunfunc(g,false)
        end
    end)
end

local noprint

local old
old=hookfunction(getrenv().warn,function(...) 
    local self =...
    if self=="peli change" then 
        if c then
            if not AttackInCooldown() then 
                Clickc()    
            end
            return
        end
        if cGun then 
            ClickcGun()    
            return
        end
        if noprint then return end
    end
    return old(...)
end)
local data = game.ReplicatedStorage["Stats"..game.Players.LocalPlayer.Name]
getgenv().ClickMelee = function() 
    c=true
    data.Stats.Peli.Value=data.Stats.Peli.Value+1
    c=false
    noprint=true
    data.Stats.Peli.Value=data.Stats.Peli.Value-1
    noprint=false
end
getgenv().ClickGun = function() 
    cGun=true
    data.Stats.Peli.Value=data.Stats.Peli.Value+1
    cGun=false
    noprint=true
    data.Stats.Peli.Value=data.Stats.Peli.Value-1
    noprint=false
end
function Click(type)
    getgenv().ClickMelee()
end

function GetClickGun()
    for k, v in pairs(getgc()) do
        if tostring(getfenv(v).script) == "GunMain" and (getfenv(v).script.Parent) ~= nil then
            if tostring(debug.getconstant(v, 1)) == "script" then
                return v
            end
        end
    end
end
local reloadfunc
function Reload()
    if not reloadfunc or getfenv(reloadfunc).script.Parent == nil then
        reloadfunc = GetReload()
    end
    spawn(
        function()
            reloadfunc()
        end
    )
end

function ShootSuke(pos)
end
function Shoot(pos)
    shooting = true
    shootpos = pos
    getgenv().ClickGun()
    Reload()

    -- --pcall(Reload)
    -- game:GetService("VirtualInputManager"):SendKeyEvent(true, "R", false, game)
 -- game:GetService("VirtualInputManager"):SendKeyEvent(false, "R", false, game)
    wait(.3)
    shooting = false
end

function GetNearestMob(mob)
    local nr = nil
    for k, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if v.Name == mob and not v:FindFirstChild("Rac") then
            if
                plr.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("HumanoidRootPart") and
                    v:FindFirstChild("Humanoid") and
                    v.Humanoid.Health > 0 and
                    v:FindFirstChild("Info") and
                    v.Info:FindFirstChild("Target")
             then
                local kiet = true
                if mob == "Yeti" then
                    local yetiY = 79
                    if math.abs(v.HumanoidRootPart.Position.Y - yetiY) > 5 then
                        kiet = false
                    end
                end
                if v.Info.Target.Value == game.Players.LocalPlayer.Character.HumanoidRootPart and kiet then
                    return v
                end

                if not nr and kiet then
                    nr = v
                end
                if
                    nr and nr:FindFirstChild("HumanoidRootPart") and
                        (plr.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude <
                            (plr.Character.HumanoidRootPart.Position - nr.HumanoidRootPart.Position).magnitude and
                        kiet
                 then
                    nr = v
                end
            end
        end
    end
    return nr
end

function CountNear(mob, mag, kk)
   local kk = function() return true end 
    local c = 0
    for k, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if v.Name == mob then
            if plr.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("HumanoidRootPart") then
                -- local c = false
                -- if not k then
                --     c=true
                -- else
                --     if v:FindFirstChild("Info") and v.Info.Target==plr.Character.HumanoidRootPart then
                --         c=true
                --     end
                -- end
                if (plr.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude < mag and kk(v) then
                    c = c + 1
                end
            end
        end
    end
    return c
end
function CheckReq() 
    if Settings.FarmMode=="Sword" then 
        if IsSkillUnlocked("Rapid Slashes") then 
            return true
        end
    end
    if Settings.FarmMode=="Black Leg" then 
        if IsSkillUnlocked("Party Table Kick Course") then 
            return true
        end
    end
    return false
end
function RapidHold() 
    if not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then return end
    local cac = game.Players.LocalPlayer.Character.Humanoid
    local rac = cac:GetPlayingAnimationTracks()
    for k,v in pairs(rac) do 
        if tostring(v)=="rapidHold" then return true end
    end   
end
function EquipTool() 
    if StoringDF then return end
    if Settings.FarmMode == "Black Leg" then
        if
            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                plr.Backpack:FindFirstChild("BlackLeg")
         then
            plr.Character.Humanoid:EquipTool(plr.Backpack.BlackLeg)
        end
    elseif Settings.FarmMode=="Sword" then
        local sword, equip = GetSword()
        if sword and not equip then
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(sword)
            end
        end
    end
end
function CanFarm(v) 
    return game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
    game.Players.LocalPlayer.Character.Parent == game.Workspace.PlayerCharacters and
    not plr.PlayerGui:FindFirstChild("DEATHGUI") and
    v:FindFirstChild("HumanoidRootPart")
end
function InstantTp(pos) 
    if plr.Character:FindFirstChild("HumanoidRootPart") then 
        plr.Character.HumanoidRootPart.CFrame=pos
    end
end
local TpPoss
do 
    local cc = false
    game:GetService("RunService").Stepped:connect(function()
        if not cc and TpPoss then
            cc=true 
            pcall(function() 
                Tp(TpPoss)
            end)
            cc=false
        else
        end
    end)
end
function SendKey(Key,a) 
    game:GetService("VirtualInputManager"):SendKeyEvent(
        a,
        Enum.KeyCode[Key],
        false,
        game
    )
end
spawn(function() 
    while wait() do 
        if Settings.Legit then 
            if AttackInCooldown() then 
                SendKey("F",true)
            else
                SendKey("F",false)
                Click()
            end
        end
    end
end)

local mob = "Bandit"
local olddd
local pos =
    CFrame.new(
    1054.63916,
    8.99998665,
    1298.18445,
    0.69716531,
    -9.41179668e-09,
    0.716910422,
    -2.24304877e-08,
    1,
    3.49409817e-08,
    -0.716910422,
    -4.04402911e-08,
    0.69716531
)
local lastclick = tick()
local lastup = tick()

while wait() do
    if Settings.Farm then
        if Settings.FarmMode == "Sword" or Settings.FarmMode == "Black Leg" then
            if not StoringDF then 
                EquipTool()
            end
            local Dt = CheckQuest(nil,IsAdvanceMode(Settings.FarmPath))
            if Settings.AutoBusoQuest and data.Stats.BusoMastery.Value == 0 and data.Stats.Level.Value > 80 and Settings.FarmMode == "Sword" then
                if GetCurrentQuest() == "Road to Armament" then
                    Dt = CheckQuest(nil, nil, "Buso")
                else
                    if data.Stats.Peli.Value > 25000 then
                        Dt = CheckQuest(nil, nil, "Buso")
                    end
                end
            end
            local mob = Dt.Mob
            local Quest = Dt.Questpos

            if data.Stats.SpawnPoint.Value ~= Dt.Island then
                Tp(Dt.Spawn)
                wait(1)
                GetQuest()
            end

            if not game.Workspace.NPCs:FindFirstChild(mob) and not plr.PlayerGui:FindFirstChild("DEATHGUI") then
                Tp(Dt.Mobpos)
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true then
                if GetCurrentQuest()~=Dt.Quest then
                    game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"quit"})
                end
            end
            --if not syn then Dt.LevelReq=math.huge end
            if
                true and game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == false and
                    not game.Players.LocalPlayer.QuestCD.Value and
                    data.Stats.Level.Value >= Dt.LevelReq
             then
                Tp(Dt.Questpos)
                wait(1)
                GetQuest(Dt.Quest, true)
            end
            olddd = Dt

            local v = GetNearestMob(mob)
            if v then
                if
                    v.Name == mob and Settings.Farm and not plr.PlayerGui:FindFirstChild("DEATHGUI") and
                        not v:FindFirstChild("Rac")
                 then
                    if
                        (game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true or
                            game.Players.LocalPlayer.QuestCD.Value or
                            ((Dt.LevelReq and data.Stats.Level.Value <= Dt.LevelReq) or not Dt.LevelReq)) and
                            v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0
                     then
                        MucTieu.MucTieu = v.HumanoidRootPart

                        AutoClick = true
                        local orgin = v.HumanoidRootPart.Position.Y

                        local tk = tick()
                        local curstate = 1 -- 1: UP 0: DOWN
                        local curr = v.HumanoidRootPart.CFrame
                        local function Ff(v) 
                            if Dt.Mob~="Yeti" then return true end
                            local yetiY = 79
                            if math.abs(v.HumanoidRootPart.Position.Y - yetiY) < 5 then
                                return true
                            end
                        end
                        repeat
                            MucTieu.MucTieu = v.HumanoidRootPart
                            if
                                CheckReq() and
                                    CountNear(mob, 15,Ff) < CountNear(mob, 1000, Ff) and Dt.Mob~="Yeti"
                             then
                                
                                for k, v in pairs(game.Workspace.NPCs:GetChildren()) do
                                    if v.Name == mob then
                                        if
                                            (game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible ==
                                                true or
                                                game.Players.LocalPlayer.QuestCD.Value or
                                                ((Dt.LevelReq and data.Stats.Level.Value <= Dt.LevelReq) or
                                                    not Dt.LevelReq)) and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0 and
                                                v:FindFirstChild("Info") and
                                                v.Info:FindFirstChild("Target") and
                                                v.Info.Target.Value == nil and
                                                Settings.Farm and Ff(v)
                                         then
                                            local t = tick()
                                            repeat
                                                wait()
                                                EquipTool()
                                                local curr = v.HumanoidRootPart.CFrame
                                                MucTieu.MucTieu = v.HumanoidRootPart
                                                
                                                
                                                local posf = (Settings.FarmMode=="Sword" and Dt.SwordY) or (Settings.FarmMode=="Black Leg" and Dt.BlackLegY)
                                                if AttackInCooldown() then 
                                                    posf=Dt.CooldownY
                                                end
                                                local cf = CFrame.new(curr.X, posf, curr.Z)
                                               
                                                Tp(cf)
                                                Click()
                                            until not v.Parent or
                                                not (v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0) or
                                                not Settings.Farm or
                                                not (v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0) or
                                                v.Info.Target.Value ~= nil
                                            or tick() - t > 6
                                        end
                                    end
                                end
                            end
                            if v:FindFirstChild("HumanoidRootPart") then 
                                
                                if (v.HumanoidRootPart.Position-curr.p).magnitude>20 then 
                                    curr = v.HumanoidRootPart.CFrame 
                                end
                               
                                MucTieu.MucTieu = v.HumanoidRootPart
                            end
                            
                            wait()
                            EquipTool()
                            if CanFarm(v) then
                                if
                                    v:FindFirstChild("Info") and v.Info:FindFirstChild("Target") and
                                        v.Info.Target.Value ~= plr.Character.HumanoidRootPart
                                 then
                                    curr = v.HumanoidRootPart.CFrame
                                end
                                local cf
                                if Settings.FarmMode == "Black Leg" then
                                    cf = CFrame.new(curr.X, Dt.BlackLegY, curr.Z)
                                else
                                    if Dt.SwordY then
                                        cf = CFrame.new(curr.X, Dt.SwordY, curr.Z)
                                    else
                                        cf = curr + Vector3.new(0, -11, 0)
                                    end
                                end
                                local dist = -1
                                if Settings.FarmMode == "Black Leg" then
                                    dist = 14
                                else
                                    dist = 20
                                end
                                if CountNear(mob, dist) > 0  then
                                    if CheckReq() then
                                        local function Farmable()
                                            if Dt.Mob=="Yeti" then return false end
                                            return CountNear(mob, 23,Ff) == CountNear(mob, 1000, Ff) and CountNear(mob, 23,Ff)>0
                                        end
                                        if Farmable() then 
                                            if Settings.FarmMode=="Black Leg" and data.Stamina.Value>50  then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(
                                                    true,
                                                    Enum.KeyCode.X,
                                                    false,
                                                    game
                                                )
                                            elseif Settings.FarmMode =="Sword" then
                                                if IsSkillReady("Rapid Slashes") and data.Stamina.Value>25 then 
                                                    if CountNear(mob,23,Ff)>0 then 
                                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                                            true,
                                                            Enum.KeyCode.R,
                                                            false,
                                                            game
                                                        )
                                                    else
                                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                                            false,
                                                            Enum.KeyCode.R,
                                                            false,
                                                            game
                                                        )
                                                    end
                                                   
                                                end
                                            end 
                                        end
                                        
                                    end
                                    if not AttackInCooldown() and curstate == 1 and tick() - lastup > 0.4 then
                                        Click()
                                        lastclick = tick()
                                    end
                                end
                                local oldstate = curstate
                                if true then
                                    if (AttackInCooldown() and tick() - lastclick > 0.6)  then
                                        if Dt.CooldownY then
                                            cf = CFrame.new(cf.X, Dt.CooldownY, cf.Z)
                                            curstate = 0
                                        end
                                    else
                                        curstate = 1
                                        if Dt.Mob == "Yeti" then
                                            cf = cf + Vector3.new(0, -1, 0)
                                        end
                                        if v:FindFirstChild("Humanoid") and v.Humanoid.Jump or v:FindFirstChild("Tvk") then
                                            if Dt.Mob == "Yeti" then
                                                cf = cf + Vector3.new(0, 3, 0)
                                                if not v:FindFirstChild("Tvk") then
                                                    local t = Instance.new("BoolValue", v)
                                                    t.Name = "Tvk"
                                                    game.Debris:AddItem(t, 4)
                                                end
                                            else
                                             --   cf = cf + Vector3.new(0, 6, 0)
                                            end

                                            
                                        else
                                        end
                                    end
                                end

                                if Dt.Mob~="Yeti" and RapidHold() then 
                                    local Y = Dt.RapidY
                                    if plr.Character:FindFirstChild("HumanoidRootPart") then
                                        if syn then
                                            local rac = curr 
                                            cf = QuayNgang(CFrame.new(rac.X,Y,rac.Z))
                                        else
                                            if RapidHold() then 
                                                local v = GetNearestMob(mob)
                                                if v and v:FindFirstChild("HumanoidRootPart") then 
                                                    local rac = v.HumanoidRootPart.CFrame
                                                    
                                                    -- local bm = plr.Character.UpperTorso:FindFirstChild(rnd) or Instance.new("BodyGyro",game.Players.LocalPlayer.Character.UpperTorso)
                                                    -- bm.Name=rnd
                                                    -- bm.CFrame = QuayNgang(CFrame.new(rac.X,Dt.RapidY,rac.Z))
                                                    -- bm.MaxTorque = Vector3.new(0, math.huge, 0)
                                                    -- bm.D = tonumber(shared.D or 0)
                                                    -- bm.P = tonumber(shared.P or 5000)      
                                                    cf = (rac*CFrame.new(0,0,10))                                               
                                                    ---TpPoss=rac*CFrame.new(0,0,7)
                                                end
                                            end--plr.Character.Humanoid.PlatformStand=true
                                        end 
                                    end
                                end
                                -- if Dt.BlackLegPos then 
                                --     cf=Dt.BlackLegPos
                                -- end
                                
                                -- print(curstate,oldstate)
                                if oldstate == 0 and curstate == 1 then
                                    lastup = tick()
                                    print("Changed")
                                end

                                local pos = cf
                                Tp(pos)
                            end
                        until not v.Parent or
                            not (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0) or
                            not Settings.Farm or
                            not (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0) or
                            tick() - tk > 60 * 5
                        AutoClick = false
                    end
                end
            end
            MucTieu.MucTieu = nil
        elseif Settings.FarmMode == "Rifle" or Settings.FarmMode == "Suke" then
            local questdata = CheckQuest("Rifle",IsAdvanceMode())
            if Settings.AutoBusoQuest and data.Stats.BusoMastery.Value == 0 and data.Stats.Level.Value > 80 then
                if GetCurrentQuest() == "Road to Armament" then
                    questdata = CheckQuest(nil, nil, "Buso")
                else
                    if data.Stats.Peli.Value > 25000 then
                        questdata = CheckQuest(nil, nil, "Buso")
                    end
                end
            end

            if data.Stats.SpawnPoint.Value ~= questdata.Island then
                Tp(questdata.Spawn)
                GetQuest(questdata.Quest)
            end

            if game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true then
                if GetCurrentQuest()~=questdata.Quest then
                    game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"quit"})
                end
            end
            --if not syn then questdata.LevelRequest=math.huge end

            if
                game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == false and
                    not game.Players.LocalPlayer.QuestCD.Value and
                    (questdata.LevelRequest and data.Stats.Level.Value >= questdata.LevelRequest)
             then
                Tp(questdata.Questpos)
                wait(1)
                GetQuest(questdata.Quest, true)
            end
            olddd = questdata
            local pos = questdata.RiflePos or questdata.Mobpos
            Tp(pos)

            for k, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if
                    (game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true or
                        game.Players.LocalPlayer.QuestCD.Value or
                        ((questdata.LevelRequest and data.Stats.Level.Value <= questdata.LevelRequest) or
                            not questdata.LevelRequest)) and
                        v.Name == questdata.Mob and
                        Settings.Farm and
                        v:FindFirstChild("HumanoidRootPart") and
                        v:FindFirstChild("Humanoid") and
                        v:FindFirstChild("Head") and
                        v.Humanoid.Health > 0
                 then
                    Tp(pos)
                    local tkk = tick()
                    repeat
                        wait()
                        Tp(pos)
                        if
                            Settings.FarmMode == "Rifle" and
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rifle") and
                                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                         then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rifle")
                            )
                        end
                        if v:FindFirstChild("Head") and v:FindFirstChild("HumanoidRootPart") then
                            if banvaudau%4==0 then 
                                if Settings.FarmMode == "Rifle" then
                                    --print("head")
                                    Shoot(v.Head.CFrame)
                                else
                                    ShootSuke(v.Head.CFrame)
                                end
                            else
                                if Settings.FarmMode == "Rifle" then
                                    --print("humroot")
                                    Shoot(v.HumanoidRootPart.CFrame)
                                else
                                    ShootSuke(v.HumanoidRootPart.CFrame)
                                end
                            end
                            
                        end
                    until -- local ohString1 = "fire"
                    not Settings.Farm or
                        not (v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0) or
                        tick() - tkk > 60 * 5
                    if tick() - tkk > 60 * 5 then
                        if v and not v:FindFirstChild("Rac") then
                            local t = Instance.new("BoolValue", v)
                            t.Name = "Rac"
                        end
                    end
                end
            end
        end
    end
end