--this is quite a old script but i managed to update it sorry for the shit ui
--stuff that has been grayed out is stuff that is mostlikly patched
_G.Funnyname=false
if _G.Arsonia then
    return
end
_G.Arsonia=true
local Library=loadstring(game:HttpGet("https://raw.githubusercontent.com/The3Bakers4565/Spicy-Bagel/main/Other/Arsenal/Less_FileSize/Arsonia_UI.lua"))()
local ArsoniaTable={
    Player={
        Anti_Aim={
            Enabled=false,
            Yaw=false,
            YawType="Spinning",
            YawValue=0,
            Pitch=false,
            PitchType="Offset",
            PitchValue=0,
            Torso=false,
            TorsoType="Spinning",
            TorsoValue=0,
            Upsidedown=false,
            IsHead=false,
            IsLegs=false,
            Wall=false,
            WallValue=0,
            Wall2=false,
            WallValue2=0,
            WallDist=0,
            Hip=false,
            Hipheight=0,
            Crouchspam=false,
            CrouchspamVal=0,
            CrouchspamVal2=0,
            Crouchjumpspam=false,
            CrouchYaw=false,
            CrouchYawVal=false,
            CrouchYawType=false,
            CrouchPitch=false,
            CrouchPitchVal=false,
            CrouchPitchType=false,
            Crouchon=false,
            FakeLag=false,
            FakeLagOffTime=1,
            FakeLagOnTime=1,
            FakeLagShow=false,
            FakeLagMaterial="SmoothPlastic",
            FakeLagTrans=0,
            FakeLagColor=Color3.new(),
        },
        Movement={
            Enabled=false,
            Fly=false,
            Flyspeed=0,
            Walk=false,
            Walkspeed=0,
            Bunnyhop=false,
            Bunnyhopspeed=0,
            BunnyhopType="Legit",
            Removecrouchspeed=false,
            Forcedoublejump=false,
            Infdoublejump=false,
            Autoairstrafe=false,
            Autotakecontrol=false,
            Anticrouchjumplock=false,
        },
        Misc={
            Enabled=false,
            AntiFire=false,
            AntiBleed=false,
            AntiFling=false,
            FastHeal=false,
            DemiGod=false,
            SmallRoot=false,
            Slidewalk=false,
            Jumpremove=false,
            Headcollide=false,
            Torsocollide=false,
            Removegun=false,
            CrouchSp=false,
            CrouchSpval=0,
            CrouchSpunval=0,
            Removeplayercheck=false,
        },
    },
    Visuals={
        Main={
            Enabled=false,
            Renderplayer=false,
            CameraoffsetX=0,        
            CameraoffsetY=0,
            CameraoffsetZ=0,
            ArmoffsetX=0,
            ArmoffsetY=0,
            ArmoffsetZ=0,
            Antiflash=false,
            Anticrouch=false,
            Anticrouch2=false,
            Crosshaircol=Color3.new(),
        },
        Viewmodel={
            Enabled=false,
            Gunchams=false,
            GunchamsTrans=0,
            GunchamsRefl=0,
            GunchamsMat="SmoothPlastic",
            GunchamsCol=Color3.new(),
            Armchams=false,
            ArmchamsTrans=0,
            ArmchamsRefl=0,
            ArmchamsCol=Color3.new(),
        },
        Worldambience={
            Enabled=false,
            Ambience=Color3.new(),
            Time=0,
            Brightness=0,
            Color=Color3.new(),
            Shadows=false,
            ShadowColor=Color3.new(),
        },
        ESP={
            Enabled=false,
            Color=Color3.new(),
            Chams=false,
            Chamsoutline=false,
            ChamsoutlineSize=0,
            ChamsoutlineColor=Color3.new(),
            Names=false,
            BacktrackChams=false,
            Box=false,
            Tracers=false,
            Health=false,
        },
        Bullettracers={
            Enabled=false,
            Width=0,
            Color=Color3.new(),
            Material="SmoothPlastic",
            Transparency=0,
            Lifetime=0,
            Refl=0,
            Keeptopart=false,
            Updatecol=false
        },
    },
    Aimbot={
        Silentaim={
            Enabled=false,
            Hitchance=0,
            Fov=0,
            Ignorefov=false,
            AutoshootMethod="None",
            Target="HeadHB",
            Onlytarget=false,
            Fakelock=false,
        },
        Backtrack={
            Enabled=false,
            Color=Color3.new(),
            Lifetime=0,
            Trans=0,
            Refl=0,
            Showall=false,
            Target="HeadHB",
            Material="SmoothPlastic",
        },
        Hitboxes={
            Enabled=false,
            Color=Color3.new(),
            Target="HeadHB",
            Trans=0,
            Refl=0,
            Material="SmoothPlastic",
            Sizetype="Absolute",
            Size=0,
        },
    },
    Combat={
        Main={
            Enabled=false,
            Killall=false,
            KillallMethod="Spoofed",
            Deathkill=false,
            DeathkillMethod="Spoofed",
            Killaura=false,
            KillauraMethod="Spoofed",
            Headstompaura=false,
            HeadstompauraVal=0,
            HeadstompauraType="Basic",
            ProjectileAura=false,
            ProjectileAuraMethod="Baseball Launcher",
            ProjectileAuraHead=0,
            ProjectileAuraAir=0,
            Knifeaura=false,
            KnifeauraCrit="None",
            KnifeauraFakeaim=false,
            KnifeauraAir=0,
            KnifeauraValue="Basic",
            Bombwalk=false,
            BombwalkBomb="Bomb",
            BombwalkTime=0,
        },
        Gunmods={
            Enabled=false,
            Firerate=0,
            Removerecoil=false,
            Firemode="Current",
            Instantreload=false,
            Forcebackstab=false,
            Removeonfire=false,
            RemoveonfireKnife=false,
            Removesway=false,
            Removebob=false,
            Clipsize=0,
            Kniferange=0,
            Instantequip=false,
            Removespread=false,
            Storedammo=0,
            Keepfov=false,
            Removescope=false,
            Autospool=false,
            Infcharge=false,
            Goldenmelee=false,
            Baseballgun=false,
            BaseballgunSpeed=0,
            BaseballgunValue="",
            Lasergun=false,
            LasergunCol=Color3.new(),
            LasergunValue="",
            ExplosiveBullets=false,
        },
    },
    Misc={
        Main={
            Enabled=false,
            Fastrespawn=false,
            Devicespoofer="PC",
            Pingspoofer="Current",
            Curse="None",
            Autodeploy=false,
            Doublechat=false,
            Removemapborders=false,
            Cloudspam=false,
            Antiteamleader=false,
            Antimonkey=false,
            Autopickupball=false,
            Autopickupbanana=false,
        },
        Trolling={
            Enabled=false,
            Bulletannoy=false,
            Flingall=false,
            Flingaura=false,
            Voiceannoy=false,
            Deleteball=false,
            Playersurf=false,
            WallTrap=false,
            WallTrapName="",
            WallTrapType="Forward",
        },
    },
    Variables={
        Croucher=false,
        Levels=(function()local a={Name=game.Players.LocalPlayer.Name}local Level,StartXp,EndXp,StartBar,EndBar=require(game.ReplicatedStorage.Xp).GetScore(game.Players.LocalPlayer.CareerStatsCache.Score.Value)a.Level=Level a.StartXp=StartXp a.EndXp=EndXp a.StartBar=StartBar a.EndBar=EndBar return a end)(),
        Levels_OLD=(function()local a={Name=game.Players.LocalPlayer.Name}local Level,StartXp,EndXp,StartBar,EndBar=require(game.ReplicatedStorage.Xp).GetScore(game.Players.LocalPlayer.CareerStatsCache.Score.Value)a.Level=Level a.StartXp=StartXp a.EndXp=EndXp a.StartBar=StartBar a.EndBar=EndBar return a end)(),
        Hitparter=debug.getconstant(require(game:GetService("ReplicatedStorage").Modules.ClientFunctions).CreateProjectile,105),
        WallTargets={},
        Voices=(function()local a={}for _,v in pairs(game:GetService("ReplicatedFirst").Voices:GetDescendants())do if v:FindFirstChild("Looped")and v:FindFirstChild("Volume")and v:FindFirstChild("PlaybackSpeed")then table.insert(a,v)end end return a end)(),
        Curses={"None","Self-Knockback","Infinite Ammo","Fast Hands","Speedy","No Jumps","Slowed","Double Tap","Enraged","Slowed Tap","Hidden","Mystery"},
        BaseBalls=(function()local baseballs={}for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do if v:FindFirstChild("Projectile")then if v.Projectile:FindFirstChild("Baseball")then table.insert(baseballs,v.Name)end end end return baseballs end)(),
        BaseBallNames={["Baseball Launcher"]="Baseball",Superball="Superball",Slingshot="Rock",Ornament="Ornament",Ultraball="Yogaball",["Water Balloon"]="Water Balloon",PIZZA="Pizza Slice",Spellbook="Fireball",Snowball="Snowball",Presents="Present",["Ice Stars"]="Ninja Star",["Paintball Gun"]="Paintball",Dispenser="Pez",["TP Launcher"]="Toliet Paper",["Flaming Pumpkin"]="Molotov",["Trash Can"]="Trash Can",["Cone Launcher"]="Ice Cream Cone",},
        BaseBallNamesProper=(function()local baseballs={}for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do if v:FindFirstChild("Projectile")then if v.Projectile:FindFirstChild("Baseball")then table.insert(baseballs,v.Name)end end end local baseballnames={["Baseball Launcher"]="Baseball",Superball="Superball",Slingshot="Rock",Ornament="Ornament",Ultraball="Yogaball",["Water Balloon"]="Water Balloon",PIZZA="Pizza Slice",Spellbook="Fireball",Snowball="Snowball",Presents="Present",["Ice Stars"]="Ninja Star",["Paintball Gun"]="Paintball",Dispenser="Pez",["TP Launcher"]="Toliet Paper",["Flaming Pumpkin"]="Molotov",["Trash Can"]="Trash Can",["Cone Launcher"]="Ice Cream Cone",}local getfullbaseballnames={}for _,v in pairs(baseballs)do if baseballnames[v]then table.insert(getfullbaseballnames,baseballnames[v])else table.insert(getfullbaseballnames,v)end end local getfullbaseballnameswith={}for _,v in pairs(baseballs)do if baseballnames[v]then getfullbaseballnameswith[baseballnames[v]]=v else getfullbaseballnameswith[v]=v end end return getfullbaseballnameswith end)(),
        BaseBallNamesVisual=(function()local baseballs={}for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do if v:FindFirstChild("Projectile")then if v.Projectile:FindFirstChild("Baseball")then table.insert(baseballs,v.Name)end end end local baseballnames={["Baseball Launcher"]="Baseball",Superball="Superball",Slingshot="Rock",Ornament="Ornament",Ultraball="Yogaball",["Water Balloon"]="Water Balloon",PIZZA="Pizza Slice",Spellbook="Fireball",Snowball="Snowball",Presents="Present",["Ice Stars"]="Ninja Star",["Paintball Gun"]="Paintball",Dispenser="Pez",["TP Launcher"]="Toliet Paper",["Flaming Pumpkin"]="Molotov",["Trash Can"]="Trash Can",["Cone Launcher"]="Ice Cream Cone",}local getfullbaseballnames={}for _,v in pairs(baseballs)do if baseballnames[v]then table.insert(getfullbaseballnames,baseballnames[v])else table.insert(getfullbaseballnames,v)end end return getfullbaseballnames end)(),
        Lasers=(function()local a={}for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do if v:FindFirstChild("Laser")then table.insert(a,v.Name)end end return a end)(),
        Crouching=false,
        IsKnife=false,
        IsAlive=false,
        Offset_GUN=Vector3.new(),
        Killmethods={Spoofed=game.ReplicatedStorage.Weapons["Admin Launcher"],Demote=game.ReplicatedStorage.Weapons.Knife,Goldify=game.ReplicatedStorage.Weapons["Golden Gun"],["Goldify + Demote"]=game.ReplicatedStorage.Weapons["Golden Knife"],["Freeze + Demote"]=game.ReplicatedStorage.Weapons["Ice Dagger"],Equipped=game.ReplicatedStorage.Weapons.AWP,},
        Flames={Orange="Flamethrower",Green="Acid Spitter"},
        Yaw=0,
        CrouchYaw=0,
        CrouchPitch=0,
        TorsoYaw=0,
        Pitch=0,
        IsFall=false,
        Torso=0,
        Fly=false,
        CrouchOffset=0,
        Materials={"SmoothPlastic","Neon","Glass","ForceField"},
        Weapons=(function()local a={}for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do table.insert(a,v.Name)end return a end)(),
        MaxDamage=(function()local a=0 local b="AWP"for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do if v:FindFirstChild("DMG")then if v.DMG.Value>a then a=v.DMG.Value b=v end end end return b end)(),
        Animations={NoAnimation=(function()local a=Instance.new("Animation")a.AnimationId="rbxassetid://0"return a end)(),},
        Allprojectiles=(function()local a={}for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do if v:FindFirstChild("Projectile")then table.insert(a,v.Name)end end return a end)(),
        KeysPressed={},
        Functions={
            OldApplyVelocity=require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.General).applyvelocity,
            IsHackula=function()if game.Workspace:FindFirstChild("Map")then if game.Workspace.Map:FindFirstChild("Hackula")then if game.Workspace.Map.Hackula:FindFirstChild("Head")then return true end end end return false end,
            GetEnemys=function()local IsHackula=function()if game.Workspace:FindFirstChild("Map")then if game.Workspace.Map:FindFirstChild("Hackula")then if game.Workspace.Map.Hackula:FindFirstChild("Head")then return true end end end return false end local a={}if not IsHackula()then if not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and not game.ReplicatedStorage.wkspc.Status.Preparation.Value and game.Players.LocalPlayer.Status.Team.Value~="Spectator"then for _,v in pairs(game.Players:GetChildren())do if(v.Team~=game.Players.LocalPlayer.Team or game.ReplicatedStorage.wkspc.FFA.Value)and v~=game.Players.LocalPlayer then if v.Character and not v.Character:FindFirstChild("ShuckyHAX")and v.Character:FindFirstChild("Spawned")then table.insert(a,v)end end end end else table.insert(a,{Character=game.Workspace.Map.Hackula})end return a end,
            GetIgnore=function()local Ignore={game.Players.LocalPlayer.Character,game.Workspace.Ray_Ignore,game.Workspace.CurrentCamera}if game.Workspace:FindFirstChild("Map")then if game.Workspace.Map:FindFirstChild("Ignore")then table.insert(Ignore,game.Workspace.Map.Ignore)end if game.Workspace.Map:FindFirstChild("Clips")then table.insert(Ignore,game.Workspace.Map.Clips)end end if game.Workspace:FindFirstChild("Character_FAKE")then table.insert(Ignore,game.Workspace.Character_FAKE)end for _,v in pairs(game.Players:GetChildren())do if v.Team==game.Players.LocalPlayer.Team and not game:GetService("ReplicatedStorage").wkspc.FFA.Value then if v.Character then table.insert(Ignore,v.Character)end end end return Ignore end,
            GetPlayers=function()local a={}for _,v in pairs(game.Players:GetChildren())do if v~=game.Players.LocalPlayer then if v.Character and not v.Character:FindFirstChild("ShuckyHAX")and v.Character:FindFirstChild("Spawned")then table.insert(a,v)end end end return a end,
            GetTrueIgnore=function()local Ignore={game.Players.LocalPlayer.Character,game.Workspace.Ray_Ignore,game.Workspace.CurrentCamera}if game.Workspace:FindFirstChild("Map")then if game.Workspace.Map:FindFirstChild("Ignore")then table.insert(Ignore,game.Workspace.Map.Ignore)end if game.Workspace.Map:FindFirstChild("Clips")then table.insert(Ignore,game.Workspace.Map.Clips)end end return Ignore end,
            GetPos1FromRay=function(Ray)local a=string.gsub(string.split(tostring(Ray),"},")[1],"{","")local b=string.split(a,", ")return Vector3.new(b[1],b[2],b[3])end,
            GetPos2FromRay=function(Ray)local a=string.gsub(string.split(tostring(Ray),"}, {")[2],"}","")a=string.split(a,", ")return Vector3.new(a[1],a[2],a[3])end,
            CreateProjectile=require(game.ReplicatedStorage.Modules.ClientFunctions).CreateProjectile,
            DoFlame=getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).flamemoment.doflame,
            ColCol=function(a,b)return Color3.new(math.clamp(a.R+b.R,0,1),math.clamp(a.G+b.G,0,1),math.clamp(a.B+b.B,0,1))end,
            _=(function()if setfpscap then setfpscap(999)end for _,v in pairs(game.ReplicatedStorage.Viewmodels:GetChildren())do if v:FindFirstChild("HumanoidRootPart")then v.HumanoidRootPart.Transparency=1 end end 
                debug.setconstant(require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).firebullet,321,"ArsoniaFireRate")
                debug.setconstant(require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun,434,"ArsoniaEquipTime")
                debug.setconstant(require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).reloadwep,94,"ArsoniaReloadTime")
                debug.setconstant(require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).reloadwep,123,"ArsoniaEReloadTime")
                debug.setconstant(require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).countammo,61,"ArsoniaStoredAmmo")
                debug.setconstant(require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).getammo,13,"ArsoniaStoredAmmo")
                debug.setconstant(require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).getprimaryammo,7,"ArsoniaStoredAmmo")
                debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools,115,"ArsoniaStoredAmmo")
                debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).updtprimary,9,"ArsoniaStoredAmmo")for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do if v:FindFirstChild("FireRate")then local a=v.FireRate:Clone()a.Parent=v a.Name="ArsoniaFireRate"end if v:FindFirstChild("ReloadTime")then local a=v.ReloadTime:Clone()a.Parent=v a.Name="ArsoniaReloadTime"end if v:FindFirstChild("EReloadTime")then local a=v.EReloadTime:Clone()a.Parent=v a.Name="ArsoniaEReloadTime"end if v:FindFirstChild("EquipTime")then local a=v.EquipTime:Clone()a.Parent=v a.Name="ArsoniaEquipTime"end if v:FindFirstChild("StoredAmmo")then local a=v.StoredAmmo:Clone()a.Parent=v a.Name="ArsoniaStoredAmmo"end if v:FindFirstChild("Range")and v:FindFirstChild("Melee")and v:FindFirstChild("Backstab")then local a=v.Range:Clone()a.Parent=v a.Name="ArsoniaRange"end end end)(),
            Unpacktable=(function()local a={["\a"]="\\a",["\b"]="\\b",["\f"]="\\f",["\n"]="\\n",["\r"]="\\r",["\t"]="\\t",["\v"]="\\v",["\0"]="\\0"}local b={["and"]=true,["break"]=true,["do"]=true,["else"]=true,["elseif"]=true,["end"]=true,["false"]=true,["for"]=true,["function"]=true,["if"]=true,["in"]=true,["local"]=true,["nil"]=true,["not"]=true,["or"]=true,["repeat"]=true,["return"]=true,["then"]=true,["true"]=true,["until"]=true,["while"]=true,["continue"]=true}local c={[DockWidgetPluginGuiInfo.new]="DockWidgetPluginGuiInfo.new",[warn]="warn",[CFrame.fromMatrix]="CFrame.fromMatrix",[CFrame.fromAxisAngle]="CFrame.fromAxisAngle",[CFrame.fromOrientation]="CFrame.fromOrientation",[CFrame.fromEulerAnglesXYZ]="CFrame.fromEulerAnglesXYZ",[CFrame.Angles]="CFrame.Angles",[CFrame.fromEulerAnglesYXZ]="CFrame.fromEulerAnglesYXZ",[CFrame.new]="CFrame.new",[gcinfo]="gcinfo",[os.clock]="os.clock",[os.difftime]="os.difftime",[os.time]="os.time",[os.date]="os.date",[tick]="tick",[bit32.band]="bit32.band",[bit32.extract]="bit32.extract",[bit32.bor]="bit32.bor",[bit32.bnot]="bit32.bnot",[bit32.arshift]="bit32.arshift",[bit32.rshift]="bit32.rshift",[bit32.rrotate]="bit32.rrotate",[bit32.replace]="bit32.replace",[bit32.lshift]="bit32.lshift",[bit32.lrotate]="bit32.lrotate",[bit32.btest]="bit32.btest",[bit32.bxor]="bit32.bxor",[pairs]="pairs",[NumberSequence.new]="NumberSequence.new",[assert]="assert",[tonumber]="tonumber",[Color3.fromHSV]="Color3.fromHSV",[Color3.toHSV]="Color3.toHSV",[Color3.fromRGB]="Color3.fromRGB",[Color3.new]="Color3.new",[Delay]="Delay",[Stats]="Stats",[UserSettings]="UserSettings",[coroutine.resume]="coroutine.resume",[coroutine.yield]="coroutine.yield",[coroutine.running]="coroutine.running",[coroutine.status]="coroutine.status",[coroutine.wrap]="coroutine.wrap",[coroutine.create]="coroutine.create",[coroutine.isyieldable]="coroutine.isyieldable",[NumberRange.new]="NumberRange.new",[PhysicalProperties.new]="PhysicalProperties.new",[PluginManager]="PluginManager",[Ray.new]="Ray.new",[NumberSequenceKeypoint.new]="NumberSequenceKeypoint.new",[Version]="Version",[Vector2.new]="Vector2.new",[Instance.new]="Instance.new",[delay]="delay",[spawn]="spawn",[unpack]="unpack",[string.split]="string.split",[string.match]="string.match",[string.gmatch]="string.gmatch",[string.upper]="string.upper",[string.gsub]="string.gsub",[string.format]="string.format",[string.lower]="string.lower",[string.sub]="string.sub",[string.pack]="string.pack",[string.rep]="string.rep",[string.char]="string.char",[string.packsize]="string.packsize",[string.reverse]="string.reverse",[string.byte]="string.byte",[string.unpack]="string.unpack",[string.len]="string.len",[string.find]="string.find",[CellId.new]="CellId.new",[ypcall]="ypcall",[version]="version",[print]="print",[stats]="stats",[printidentity]="printidentity",[settings]="settings",[UDim2.fromOffset]="UDim2.fromOffset",[UDim2.fromScale]="UDim2.fromScale",[UDim2.new]="UDim2.new",[table.pack]="table.pack",[table.move]="table.move",[table.insert]="table.insert",[table.getn]="table.getn",[table.foreachi]="table.foreachi",[table.maxn]="table.maxn",[table.foreach]="table.foreach",[table.concat]="table.concat",[table.unpack]="table.unpack",[table.find]="table.find",[table.create]="table.create",[table.sort]="table.sort",[table.remove]="table.remove",[TweenInfo.new]="TweenInfo.new",[loadstring]="loadstring",[require]="require",[Vector3.FromNormalId]="Vector3.FromNormalId",[Vector3.FromAxis]="Vector3.FromAxis",[Vector3.fromAxis]="Vector3.fromAxis",[Vector3.fromNormalId]="Vector3.fromNormalId",[Vector3.new]="Vector3.new",[Vector3int16.new]="Vector3int16.new",[setmetatable]="setmetatable",[next]="next",[Wait]="Wait",[wait]="wait",[ipairs]="ipairs",[elapsedTime]="elapsedTime",[time]="time",[rawequal]="rawequal",[Vector2int16.new]="Vector2int16.new",[collectgarbage]="collectgarbage",[newproxy]="newproxy",[Spawn]="Spawn",[PluginDrag.new]="PluginDrag.new",[Region3.new]="Region3.new",[utf8.offset]="utf8.offset",[utf8.codepoint]="utf8.codepoint",[utf8.nfdnormalize]="utf8.nfdnormalize",[utf8.char]="utf8.char",[utf8.codes]="utf8.codes",[utf8.len]="utf8.len",[utf8.graphemes]="utf8.graphemes",[utf8.nfcnormalize]="utf8.nfcnormalize",[xpcall]="xpcall",[tostring]="tostring",[rawset]="rawset",[PathWaypoint.new]="PathWaypoint.new",[DateTime.fromUnixTimestamp]="DateTime.fromUnixTimestamp",[DateTime.now]="DateTime.now",[DateTime.fromIsoDate]="DateTime.fromIsoDate",[DateTime.fromUnixTimestampMillis]="DateTime.fromUnixTimestampMillis",[DateTime.fromLocalTime]="DateTime.fromLocalTime",[DateTime.fromUniversalTime]="DateTime.fromUniversalTime",[Random.new]="Random.new",[typeof]="typeof",[RaycastParams.new]="RaycastParams.new",[math.log]="math.log",[math.ldexp]="math.ldexp",[math.rad]="math.rad",[math.cosh]="math.cosh",[math.random]="math.random",[math.frexp]="math.frexp",[math.tanh]="math.tanh",[math.floor]="math.floor",[math.max]="math.max",[math.sqrt]="math.sqrt",[math.modf]="math.modf",[math.pow]="math.pow",[math.atan]="math.atan",[math.tan]="math.tan",[math.cos]="math.cos",[math.sign]="math.sign",[math.clamp]="math.clamp",[math.log10]="math.log10",[math.noise]="math.noise",[math.acos]="math.acos",[math.abs]="math.abs",[math.sinh]="math.sinh",[math.asin]="math.asin",[math.min]="math.min",[math.deg]="math.deg",[math.fmod]="math.fmod",[math.randomseed]="math.randomseed",[math.atan2]="math.atan2",[math.ceil]="math.ceil",[math.sin]="math.sin",[math.exp]="math.exp",[getfenv]="getfenv",[pcall]="pcall",[ColorSequenceKeypoint.new]="ColorSequenceKeypoint.new",[ColorSequence.new]="ColorSequence.new",[type]="type",[Region3int16.new]="Region3int16.new",[ElapsedTime]="ElapsedTime",[select]="select",[getmetatable]="getmetatable",[rawget]="rawget",[Faces.new]="Faces.new",[Rect.new]="Rect.new",[BrickColor.Blue]="BrickColor.Blue",[BrickColor.White]="BrickColor.White",[BrickColor.Yellow]="BrickColor.Yellow",[BrickColor.Red]="BrickColor.Red",[BrickColor.Gray]="BrickColor.Gray",[BrickColor.palette]="BrickColor.palette",[BrickColor.New]="BrickColor.New",[BrickColor.Black]="BrickColor.Black",[BrickColor.Green]="BrickColor.Green",[BrickColor.Random]="BrickColor.Random",[BrickColor.DarkGray]="BrickColor.DarkGray",[BrickColor.random]="BrickColor.random",[BrickColor.new]="BrickColor.new",[setfenv]="setfenv",[UDim.new]="UDim.new",[Axes.new]="Axes.new",[error]="error",[debug.traceback]="debug.traceback",[debug.profileend]="debug.profileend",[debug.profilebegin]="debug.profilebegin"}function GetHierarchy(d)local e={}local f=1;local g=d;while g do g=g.Parent;f=f+1 end;g=d;local h=0;while g do h=h+1;local i=string.gsub(g.Name,"[%c%z]",a)i=g==game and"game"or i;if b[i]or not string.match(i,"^[_%a][_%w]*$")then i='["'..i..'"]'elseif h~=f-1 then i="."..i end;e[f-h]=i;g=g.Parent end;return table.concat(e)end;local function j(k,l)if l=="string"then return string.format('"%s"',string.gsub(k,"[%c%z]",a))elseif l=="Instance"then return GetHierarchy(k)elseif type(k)~=l then return l..".new("..tostring(k)..")"elseif l=="function"then return c[k]or"'[Unknown "..(pcall(setfenv,k,getfenv(k))and"Lua"or"C").." "..tostring(k).."]'"elseif l=="userdata"then return"newproxy("..tostring(not not getmetatable(k))..")"elseif l=="thread"then return"'"..tostring(k)..", status: "..coroutine.status(k).."'"else return tostring(k)end end;local function m(n,o,p,q)o=o or{}local r=o[n]if r then return(r[1]==p[1]-1 and"'[Cyclic Parent "or"'[Cyclic ")..tostring(n)..", path: "..r[2].."]'"end;q=q or"ROOT"p=p or{0,q}local s=p[1]+1;p[1]=s;p[2]=q;o[n]=p;local t=string.rep("    ",s)local u=string.rep("    ",s-1)local v="{"local w="\n"..t;local x=true;local y=1;local z=true;for A,k in next,n do z=false;if y~=A then x=false else y=y+1 end;local B,C=typeof(A),typeof(k)local D=false;if B=="string"then A=string.gsub(A,"[%c%z]",a)if b[A]or not string.match(A,"^[_%a][_%w]*$")then D=true;A=string.format('["%s"]',A)end else D=true;A="["..(B=="table"and string.gsub(m(A,o,{s,q}),"^%s*(.-)%s*$","%1")or j(A,B)).."]"end;k=C=="table"and m(k,o,{s,q},q..(D and""or".")..A)or j(k,C)v=v..w..(x and k or A.." = "..k)..","end;return z and v.."}"or string.sub(v,1,-2).."\n"..u.."}"end;return m end)(),
            DoFEFlame=function(a,b)getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).flamemoment.doflame(game.Players.LocalPlayer,a,Vector3.new(),b,0,Vector3.new())game:GetService("ReplicatedStorage").Events.Flames:FireServer(a,Vector3.new(),b,0,Vector3.new())end,
            Shakecam=getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).ShakeCam,
            Getammo=require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).getammo,
            CalculateSpread=require(game:GetService("ReplicatedStorage").Modules.Spread).calcspread,
            SummonBaseBall=function(a,b)a=(function()local baseballs={}for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do if v:FindFirstChild("Projectile")then if v.Projectile:FindFirstChild("Baseball")then table.insert(baseballs,v.Name)end end end local baseballnames={["Baseball Launcher"]="Baseball",Superball="Superball",Slingshot="Rock",Ornament="Ornament",Ultraball="Yogaball",["Water Balloon"]="Water Balloon",PIZZA="Pizza Slice",Spellbook="Fireball",Snowball="Snowball",Presents="Present",["Ice Stars"]="Ninja Star",["Paintball Gun"]="Paintball",Dispenser="Pez",["TP Launcher"]="Toliet Paper",["Flaming Pumpkin"]="Molotov",["Trash Can"]="Trash Can",["Cone Launcher"]="Ice Cream Cone",}local getfullbaseballnames={}for _,v in pairs(baseballs)do if baseballnames[v]then table.insert(getfullbaseballnames,baseballnames[v])else table.insert(getfullbaseballnames,v)end end local getfullbaseballnameswith={}for _,v in pairs(baseballs)do if baseballnames[v]then getfullbaseballnameswith[baseballnames[v]]=v else getfullbaseballnameswith[v]=v end end return getfullbaseballnameswith end)()[a]or a require(game.ReplicatedStorage.Modules.ClientFunctions).CreateProjectile(game.Players.LocalPlayer.Name,"Baseball",b,game.Workspace.CurrentCamera.CFrame.Position+game.Workspace.CurrentCamera.CFrame.LookVector*500,CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0)),45,0,0,0,a,game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0),false,{},1)game:GetService("ReplicatedStorage").Events.ReplicateProjectile:FireServer({"Baseball",b,game.Workspace.CurrentCamera.CFrame.Position+game.Workspace.CurrentCamera.CFrame.LookVector*500,CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0)),45,0,0,0,a,game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0),false,{},1})end,
            SummonLaser=function(a,b)require(game:GetService("ReplicatedStorage").Modules.ClientFunctions).createtrail(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.4+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0),game.Workspace.CurrentCamera.CFrame.LookVector,{},a,b,game.Players.LocalPlayer.Character.HumanoidRootPart,game.Players.LocalPlayer.Name)game.ReplicatedStorage.Events.Trail:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0),game.Workspace.CurrentCamera.CFrame.LookVector,{},a,b,game.Players.LocalPlayer.Character.HumanoidRootPart)end,
            IsRoundOver=function()if game.ReplicatedStorage.wkspc.Status.RoundOver.Value or game.ReplicatedStorage.wkspc.Status.Preparation.Value then return true end return false end,
        },
        TargetableParts={HeadHB={},Torso={},LeftArm={},RightArm={},LeftLeg={},RightLeg={},Backtrack_HeadHB={},Backtrack_Torso={},Backtrack_LeftArm={},Backtrack_RightArm={},Backtrack_LeftLeg={},Backtrack_RightLeg={}},
        TargetsWithoutFull={HeadHB={{"HeadHB"},"HeadHB"},LeftHand={{"LeftHand","LeftLowerArm","LeftUpperArm"},"LeftArm"},RightHand={{"RightHand","RightLowerArm","RightUpperArm"},"RightArm"},LeftFoot={{"LeftFoot","LeftLowerLeg","LeftUpperLeg"},"LeftLeg"},RightFoot={{"RightFoot","RightLowerLeg","RightUpperLeg"},"RightLeg"},UpperTorso={{"UpperTorso","LowerTorso"},"Torso"},},
        R6TR15={HeadHB={"HeadHB"},LeftArm={"LeftHand","LeftLowerArm","LeftUpperArm"},RightArm={"RightHand","RightLowerArm","RightUpperArm"},LeftLeg={"LeftFoot","LeftLowerLeg","LeftUpperLeg"},RightLeg={"RightFoot","RightLowerLeg","RightUpperLeg"},Torso={"UpperTorso","LowerTorso"},All={"HeadHB","LeftHand","LeftLowerArm","LeftUpperArm","RightHand","RightLowerArm","RightUpperArm","UpperTorso","LowerTorso","RightFoot","RightLowerLeg","RightUpperLeg","LeftFoot","LeftLowerLeg","LeftUpperLeg"},},
        TargetNames={"HeadHB","Torso","LeftArm","RightArm","LeftLeg","RightLeg"},
        HumParts={"HeadHB","LeftHand","LeftLowerArm","LeftUpperArm","RightHand","RightLowerArm","RightUpperArm","UpperTorso","LowerTorso","RightFoot","RightLowerLeg","RightUpperLeg","LeftFoot","LeftLowerLeg","LeftUpperLeg"},
        Backtracks={},
        WallProPos=Vector3.new(),
        CamAngles=0,
        TrapPosOld=Vector3.new(),
    },
}



local name="Arsonia"
if _G.Funnyname then
    local Prefix={"Epic","","Working"}
    local Names={"Astolfo","Baker","Thigh","Breast","Femboy","Hentai","Aim","Tits","Arsenal","Rolve"}
    local Suffix={"sense","ware"," Hub"," Hack","-Ware"}
    local Version=tostring(math.random(1,9))for _=1,math.random(0,3)do Version=Version.."."..tostring(math.random(0,9))end
    local VersionSuffix={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
    local Place_Holder={}for _,v in pairs(VersionSuffix)do table.insert(Place_Holder,string.upper(v))end for _,v in pairs(Place_Holder)do table.insert(VersionSuffix,v)end
    if math.random(0,1)==1 then VersionSuffix=VersionSuffix..VersionSuffix[math.random(1,#VersionSuffix)]end
    name=Prefix[math.random(1,#Prefix)].." "..Names[math.random(1,#Names)]..Suffix[math.random(1,#Suffix)].." V"..Version..VersionSuffix[math.random(1,#VersionSuffix)]
end
local Window=Library:Window(name,Color3.fromRGB(255,0,175),700,Color3.new(1,0,175/255),600)
local PlayerTab=Window:Tab("Player")
local PlayerTabAntiAimSection=PlayerTab:Section("Anti Aim")
PlayerTabAntiAimSection:Toggle("Enabled",function(x)
    ArsoniaTable.Player.Anti_Aim.Enabled=x
end)
PlayerTabAntiAimSection:ToggleSlider("Yaw",-180,180,0,function(x,y)
    ArsoniaTable.Player.Anti_Aim.Yaw=x
    ArsoniaTable.Player.Anti_Aim.YawValue=y
end)
PlayerTabAntiAimSection:Dropdown("Yaw Type",{"Spinning","Offset","Absolute","Random","Inverted","Frozen"},function(x)
    ArsoniaTable.Player.Anti_Aim.YawType=x
end)
PlayerTabAntiAimSection:ToggleSlider("Pitch",-90,90,0,function(x,y)
    ArsoniaTable.Player.Anti_Aim.Pitch=x
    ArsoniaTable.Player.Anti_Aim.PitchValue=-math.rad(y)
end)
PlayerTabAntiAimSection:Dropdown("Pitch Type",{"Offset","Absolute","Random","Inverted",--[["Down",]]"Frozen"},function(x)
    ArsoniaTable.Player.Anti_Aim.PitchType=x
end)
PlayerTabAntiAimSection:ToggleSlider("Torso Angle",-360,360,0,function(x,y)
    ArsoniaTable.Player.Anti_Aim.Torso=x
    ArsoniaTable.Player.Anti_Aim.TorsoValue=math.rad(y)
end)
PlayerTabAntiAimSection:Dropdown("Torso Angle Type",{"Offset","Absolute","Spinning","Down","Sideways","-Sideways","Random","Cam"},function(x)
    ArsoniaTable.Player.Anti_Aim.TorsoType=x
end)
PlayerTabAntiAimSection:ToggleSlider("Wall AA Enabled",-180,180,0,function(x,y)
    ArsoniaTable.Player.Anti_Aim.Wall=x
    ArsoniaTable.Player.Anti_Aim.WallValue=-math.rad(y)
end)
PlayerTabAntiAimSection:Slider("Wall AA Distance",1,10,5,function(x)
    ArsoniaTable.Player.Anti_Aim.WallDist=x
end)
--[[PlayerTabAntiAimSection:ToggleSlider("Wall AA Towall",1,100,0,function(x,y)
    ArsoniaTable.Player.Anti_Aim.Wall2=x
    ArsoniaTable.Player.Anti_Aim.WallValue2=y
end)]]
PlayerTabAntiAimSection:Toggle("Upside Down",function(x)
    ArsoniaTable.Player.Anti_Aim.Upsidedown=x
end)
PlayerTabAntiAimSection:ToggleSlider("Hip Height",0,25,2,function(x,y)
    ArsoniaTable.Player.Anti_Aim.Hip=x
    if y==0 then y=.05 end
    ArsoniaTable.Player.Anti_Aim.Hipheight=y
end)
PlayerTabAntiAimSection:Button("Remove Head",function()
    ArsoniaTable.Player.Anti_Aim.IsHead=true
end)
PlayerTabAntiAimSection:Button("Remove Legs",function()
    ArsoniaTable.Player.Anti_Aim.IsLegs=true
end)
PlayerTabAntiAimSection:Toggle("Crouch Spam",function(x)
    ArsoniaTable.Player.Anti_Aim.Crouchspam=x
end)
PlayerTabAntiAimSection:Keybind("Key","V",function(x)
    ArsoniaTable.Variables.Croucher=x
end)
PlayerTabAntiAimSection:Toggle("Allow Crouch Jump",function(x)
    ArsoniaTable.Player.Anti_Aim.Crouchjumpspam=x
end)
PlayerTabAntiAimSection:Toggle("Always On",function(x)
    ArsoniaTable.Player.Anti_Aim.Crouchon=x
end)
PlayerTabAntiAimSection:Slider("Crouch Spam On Time (ms)",0,500,100,function(x)
    ArsoniaTable.Player.Anti_Aim.CrouchspamVal=x/1000
end)
PlayerTabAntiAimSection:Slider("Crouch Spam Off Time (ms)",0,500,100,function(x)
    ArsoniaTable.Player.Anti_Aim.CrouchspamVal2=x/1000
end)
PlayerTabAntiAimSection:ToggleSlider("Crouching Yaw",-180,180,0,function(x,y)
    ArsoniaTable.Player.Anti_Aim.CrouchYaw=x
    ArsoniaTable.Player.Anti_Aim.CrouchYawVal=y
end)
PlayerTabAntiAimSection:Dropdown("Crouching Yaw Type",{"Spinning","Offset","Absolute","Random","Inverted"},function(x)
    ArsoniaTable.Player.Anti_Aim.CrouchYawType=x
end)
PlayerTabAntiAimSection:ToggleSlider("Crouching Pitch",-90,90,0,function(x,y)
    ArsoniaTable.Player.Anti_Aim.CrouchPitch=x
    ArsoniaTable.Player.Anti_Aim.CrouchPitchVal=-y
end)
PlayerTabAntiAimSection:Dropdown("Crouching Pitch Type",{"Absolute","Random"},function(x)
    ArsoniaTable.Player.Anti_Aim.CrouchPitchType=x
end)
PlayerTabAntiAimSection:Toggle("Fake Lag",function(x)
    ArsoniaTable.Player.Anti_Aim.FakeLag=x
end)
PlayerTabAntiAimSection:Slider("Fake Lag On Time (ms)",0,5000,2500,function(x)
    ArsoniaTable.Player.Anti_Aim.FakeLagOnTime=x/1000
end)
PlayerTabAntiAimSection:Slider("Fake Lag Off Time (ms)",100,1000,100,function(x)
    ArsoniaTable.Player.Anti_Aim.FakeLagOffTime=x/1000
end)
PlayerTabAntiAimSection:ToggleSlider("Show Fake Lag",0,10,5,function(x,y)
    ArsoniaTable.Player.Anti_Aim.FakeLagShow=x
    ArsoniaTable.Player.Anti_Aim.FakeLagTrans=y/10
end)
PlayerTabAntiAimSection:Color("Color",Color3.new(1,0,175/255),function(x)
    ArsoniaTable.Player.Anti_Aim.FakeLagColor=x
end)
PlayerTabAntiAimSection:Dropdown("Material",ArsoniaTable.Variables.Materials,function(x)
    ArsoniaTable.Player.Anti_Aim.FakeLagMaterial=x
end)
PlayerTabAntiAimSection:Textlabel("")



local PlayerTabMovementSection=PlayerTab:Section("Movement")
PlayerTabMovementSection:Toggle("Enabled",function(x)
    ArsoniaTable.Player.Movement.Enabled=x
end)
PlayerTabMovementSection:ToggleSlider("Fly",10,500,100,function(x,y)
    ArsoniaTable.Player.Movement.Fly=x
    ArsoniaTable.Player.Movement.Flyspeed=y
    ArsoniaTable.Variables.Fly=false
end)
PlayerTabMovementSection:Keybind("Key","J",function(x)
    if x then
        ArsoniaTable.Variables.Fly=not ArsoniaTable.Variables.Fly
    end
end)
PlayerTabMovementSection:ToggleSlider("Walkspeed",1,250,16,function(x,y)
    ArsoniaTable.Player.Movement.Walk=x
    ArsoniaTable.Player.Movement.Walkspeed=y
end)
PlayerTabMovementSection:ToggleSlider("Bunny Hop",1,5,1,function(x,y)
    ArsoniaTable.Player.Movement.Bunnyhop=x
    ArsoniaTable.Player.Movement.Bunnyhopspeed=y
end)
PlayerTabMovementSection:Dropdown("Bunny Hop Type",{"Legit","Walkspeed","Apply Velocity"},function(x)
    ArsoniaTable.Player.Movement.BunnyhopType=x
end)
PlayerTabMovementSection:Toggle("Remove Crouching Speed",function(x)
    ArsoniaTable.Player.Movement.Removecrouchspeed=x
    if x then
        debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.StepModulesNoDeath.BruhHumanoid).speedupdate,151,"__ArsoniaDat143")
    else
        debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.StepModulesNoDeath.BruhHumanoid).speedupdate,151,"Crouched")
    end
end)
PlayerTabMovementSection:Toggle("Force Double Jump",function(x)
    ArsoniaTable.Player.Movement.Forcedoublejump=x
    if x then
        debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).jumpme,23,"FireRate")
    else
        debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).jumpme,23,"DoubleJump")
    end
end)
PlayerTabMovementSection:Toggle("Infinite Double Jump",function(x)
    ArsoniaTable.Player.Movement.Infdoublejump=x
end)
PlayerTabMovementSection:Toggle("Auto Air Strafe",function(x)
    ArsoniaTable.Player.Movement.Autoairstrafe=x
end)
PlayerTabMovementSection:Toggle("Auto Air Control",function(x)
    ArsoniaTable.Player.Movement.Autotakecontrol=x
end)
PlayerTabMovementSection:Toggle("Anti Crouch Jump Lock/Speed",function(x)
    ArsoniaTable.Player.Movement.Anticrouchjumplock=x
end)



local PlayerTabMiscSection=PlayerTab:Section("Miscellaneous")
PlayerTabMiscSection:Toggle("Enabled",function(x)
    ArsoniaTable.Player.Misc.Enabled=x
end)
PlayerTabMiscSection:Toggle("Anti-Fire",function(x)
    ArsoniaTable.Player.Misc.AntiFire=x
end)
PlayerTabMiscSection:Toggle("Anti-Bleed",function(x)
    ArsoniaTable.Player.Misc.AntiBleed=x
end)
PlayerTabMiscSection:Toggle("Anti-Fling",function(x)
    ArsoniaTable.Player.Misc.AntiFling=x
end)
PlayerTabMiscSection:Toggle("Semi Fast Heal",function(x)
    ArsoniaTable.Player.Misc.FastHeal=x
end)
PlayerTabMiscSection:Toggle("Demi God",function(x)
    ArsoniaTable.Player.Misc.DemiGod=x
end)
PlayerTabMiscSection:Toggle("Small Root Part",function(x)
    ArsoniaTable.Player.Misc.SmallRoot=x
end)
PlayerTabMiscSection:Toggle("Slide Walk",function(x)
    ArsoniaTable.Player.Misc.Slidewalk=x
end)
PlayerTabMiscSection:Toggle("Remove Jump Animation",function(x)
    ArsoniaTable.Player.Misc.Jumpremove=x
end)
PlayerTabMiscSection:Toggle("Remove Head Collisions",function(x)
    ArsoniaTable.Player.Misc.Headcollide=x
end)
PlayerTabMiscSection:Toggle("Remove Torso Collisions",function(x)
    ArsoniaTable.Player.Misc.Torsocollide=x
end)
PlayerTabMiscSection:Toggle("Remove Visible Gun",function(x)
    ArsoniaTable.Player.Misc.Removegun=x
end)
PlayerTabMiscSection:Slider("Crouch Animation Speed",-100,100,60,function(x)
    ArsoniaTable.Player.Misc.CrouchSpval=1-(x/100)
end)
PlayerTabMiscSection:Slider("Uncrouch Animation Speed",-100,100,60,function(x)
    ArsoniaTable.Player.Misc.CrouchSpunval=1-(x/100)
end)
PlayerTabMiscSection:Toggle("Remove Player Check",function(x)
    ArsoniaTable.Player.Misc.Removeplayercheck=x
    if x then
        pcall(function()game.Players.LocalPlayer.Character.Spawned:Destroy()end)
    else
        game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
    end
end)



local VisualsTab=Window:Tab("Visuals")
local VisualsTabMainSection=VisualsTab:Section("Main")
VisualsTabMainSection:Toggle("Enabled",function(x)
    ArsoniaTable.Visuals.Main.Enabled=x
    if not x then
        for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Crosshair:GetChildren())do
            if v.Name~="Center1"then
                v.BackgroundColor3=game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Crosshair.Center1.BackgroundColor3
            end
        end
        if game.Workspace:FindFirstChild("Map")then
            if game.Workspace.Map:FindFirstChild("Xcum")then
                game.Workspace.Map.Xcum:Destroy()
                for _,v in pairs(game.Workspace.Map:GetDescendants())do
                    if v:IsA("BasePart")then
                        if v:FindFirstChild("Transcock")then
                            v.Transparency=v.Transcock.Value
                        end
                    end
                end
            end
        end
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants())do
            if v:IsA("BasePart")then
                if v.LocalTransparencyModifier~=1 then
                    v.LocalTransparencyModifier=1
                end
            end
        end
    end
end)
VisualsTabMainSection:Toggle("Render Client",function(x)
    ArsoniaTable.Visuals.Main.Renderplayer=x
end)
VisualsTabMainSection:Toggle("Remove Spawn Flash",function(x)
    ArsoniaTable.Visuals.Main.Antiflash=x
end)
VisualsTabMainSection:Toggle("Remove Crouch Offset",function(x)
    ArsoniaTable.Visuals.Main.Anticrouch=x
end)
VisualsTabMainSection:Toggle("Remove Arm Crouch Offset",function(x)
    ArsoniaTable.Visuals.Main.Anticrouch2=x
end)
VisualsTabMainSection:Slider("Camera Offset X",-10,10,0,function(x)
    ArsoniaTable.Visuals.Main.CameraoffsetX=x
end)
VisualsTabMainSection:Slider("Camera Offset Y",-10,10,0,function(x)
    ArsoniaTable.Visuals.Main.CameraoffsetY=x
end)
VisualsTabMainSection:Slider("Camera Offset Z",-10,10,0,function(x)
    ArsoniaTable.Visuals.Main.CameraoffsetZ=x
end)
VisualsTabMainSection:Slider("Arm Offset X",-10,10,0,function(x)
    ArsoniaTable.Visuals.Main.ArmoffsetX=x
end)
VisualsTabMainSection:Slider("Arm Offset Y",-10,10,0,function(x)
    ArsoniaTable.Visuals.Main.ArmoffsetY=x
end)
VisualsTabMainSection:Slider("Arm Offset Z",-10,10,0,function(x)
    ArsoniaTable.Visuals.Main.ArmoffsetZ=x
end)
VisualsTabMainSection:ToggleSlider("X-Ray",0,10,5,function(x,y)
    ArsoniaTable.Visuals.Main.Xray=x
    ArsoniaTable.Visuals.Main.XrayTrans=y/10
    if not x then
        if game.Workspace:FindFirstChild("Map")then
            if game.Workspace.Map:FindFirstChild("Xcum")then
                game.Workspace.Map.Xcum:Destroy()
                for _,v in pairs(game.Workspace.Map:GetDescendants())do
                    if v:IsA("BasePart")then
                        if v:FindFirstChild("Transcock")then
                            v.Transparency=v.Transcock.Value
                        end
                    end
                end
            end
        end
    elseif ArsoniaTable.Visuals.Main.Enabled then
        if game.Workspace:FindFirstChild("Map")then
            if game.Workspace.Map:FindFirstChild("Xcum")then
                game.Workspace.Map.Xcum:Destroy()
                for _,v in pairs(game.Workspace.Map:GetDescendants())do
                    if v:IsA("BasePart")then
                        if v:FindFirstChild("Transcock")then
                            v.Transparency=v.Transcock.Value
                        end
                    end
                end
            end
        end
    end
end)
VisualsTabMainSection:Color("Crosshair Color",Color3.new(0,1,1),function(x)
    ArsoniaTable.Visuals.Main.Crosshaircol=x
end)



local VisualsTabViewmodelSection=VisualsTab:Section("Viewmodel")
VisualsTabViewmodelSection:Toggle("Enabled",function(x)
    ArsoniaTable.Visuals.Viewmodel.Enabled=x
end)
VisualsTabViewmodelSection:ToggleSlider("Arm Chams",0,9,5,function(x,y)
    ArsoniaTable.Visuals.Viewmodel.Armchams=x
    ArsoniaTable.Visuals.Viewmodel.ArmchamsTrans=y/10
    if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
        if game.Workspace.CurrentCamera.Arms.CSSArms:FindFirstChild("AnalSex")then
            game.Workspace.CurrentCamera.Arms.CSSArms.AnalSex:Destroy()
        end
    end
end)
VisualsTabViewmodelSection:Color("Color",Color3.new(1,0,175/255),function(x)
    ArsoniaTable.Visuals.Viewmodel.ArmchamsCol=x
    if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
        if game.Workspace.CurrentCamera.Arms.CSSArms:FindFirstChild("AnalSex")then
            game.Workspace.CurrentCamera.Arms.CSSArms.AnalSex:Destroy()
        end
    end
end)
VisualsTabViewmodelSection:ToggleSlider("Gun Chams",0,9,5,function(x,y)
    ArsoniaTable.Visuals.Viewmodel.Gunchams=x
    ArsoniaTable.Visuals.Viewmodel.GunchamsTrans=y/10
    if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
        if game.Workspace.CurrentCamera.Arms:FindFirstChild("AnalBeads")then
            game.Workspace.CurrentCamera.Arms.AnalBeads:Destroy()
        end
    end
end)
VisualsTabViewmodelSection:Color("Color",Color3.new(1,0,175/255),function(x)
    ArsoniaTable.Visuals.Viewmodel.GunchamsCol=x
    if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
        if game.Workspace.CurrentCamera.Arms:FindFirstChild("AnalBeads")then
            game.Workspace.CurrentCamera.Arms.AnalBeads:Destroy()
        end
    end
end)
VisualsTabViewmodelSection:Slider("Reflectance",0,10,0,function(x)
    ArsoniaTable.Visuals.Viewmodel.GunchamsRefl=x/10
    if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
        if game.Workspace.CurrentCamera.Arms:FindFirstChild("AnalBeads")then
            game.Workspace.CurrentCamera.Arms.AnalBeads:Destroy()
        end
    end
end)
VisualsTabViewmodelSection:Dropdown("Material",ArsoniaTable.Variables.Materials,function(x)
    ArsoniaTable.Visuals.Viewmodel.GunchamsMat=x
    if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
        if game.Workspace.CurrentCamera.Arms:FindFirstChild("AnalBeads")then
            game.Workspace.CurrentCamera.Arms.AnalBeads:Destroy()
        end
    end
end)



local VisualsTabESPSection=VisualsTab:Section("ESP")
VisualsTabESPSection:Toggle("Enabled",function(x)
    ArsoniaTable.Visuals.ESP.Enabled=x
end)
VisualsTabESPSection:Color("Main Color",Color3.new(1,0,175/255),function(x)
    ArsoniaTable.Visuals.ESP.Color=x
end)
VisualsTabESPSection:Toggle("Box",function(x)
    ArsoniaTable.Visuals.ESP.Box=x
end)
VisualsTabESPSection:Toggle("Chams",function(x)
    ArsoniaTable.Visuals.ESP.Chams=x
end)
VisualsTabESPSection:ToggleSlider("Visible Chams Outline",1,10,5,function(x,y)
    ArsoniaTable.Visuals.ESP.Chamsoutline=x
    ArsoniaTable.Visuals.ESP.ChamsoutlineSize=y/10
end)
VisualsTabESPSection:Color("Outline Color",Color3.new(50/255,150/255,1),function(x)
    ArsoniaTable.Visuals.ESP.ChamsoutlineColor=x
end)
VisualsTabESPSection:Toggle("Backtrack Chams",function(x)
    ArsoniaTable.Visuals.ESP.BacktrackChams=x
end)
VisualsTabESPSection:Toggle("Names",function(x)
    ArsoniaTable.Visuals.ESP.Names=x
end)
VisualsTabESPSection:Toggle("Tracers",function(x)
    ArsoniaTable.Visuals.ESP.Tracers=x
end)
VisualsTabESPSection:Toggle("Health",function(x)
    ArsoniaTable.Visuals.ESP.Health=x
end)



local VisualsTabBullettracersSection=VisualsTab:Section("Bullet Tracers")
VisualsTabBullettracersSection:Toggle("Enabled",function(x)
    ArsoniaTable.Visuals.Bullettracers.Enabled=x
end)
VisualsTabBullettracersSection:Slider("Width",1,100,5,function(x)
    ArsoniaTable.Visuals.Bullettracers.Width=x/100
end)
VisualsTabBullettracersSection:Color("Color",Color3.new(1,0,175/255),function(x)
    ArsoniaTable.Visuals.Bullettracers.Color=x
end)
VisualsTabBullettracersSection:Dropdown("Material",ArsoniaTable.Variables.Materials,function(x)
    ArsoniaTable.Visuals.Bullettracers.Material=x
end)
VisualsTabBullettracersSection:Slider("Transparency",0,10,5,function(x)
    ArsoniaTable.Visuals.Bullettracers.Transparency=x/10
end)
VisualsTabBullettracersSection:Slider("Reflectance",0,10,5,function(x)
    ArsoniaTable.Visuals.Bullettracers.Refl=x/10
end)
VisualsTabBullettracersSection:Slider("Life Time (ms)",1,5000,500,function(x)
    ArsoniaTable.Visuals.Bullettracers.Lifetime=x/1000
end)
VisualsTabBullettracersSection:Toggle("Update Position",function(x)
    ArsoniaTable.Visuals.Bullettracers.Keeptopart=x
end)
VisualsTabBullettracersSection:Toggle("Update Color",function(x)
    ArsoniaTable.Visuals.Bullettracers.Updatecol=x
end)



local VisualsTabAmbienceSection=VisualsTab:Section("Ambience")
VisualsTabAmbienceSection:Toggle("Enabled",function(x)
    ArsoniaTable.Visuals.Worldambience.Enabled=x
    if not x then
        game.Lighting.Ambient=Color3.new(.5,.5,.5)
        game.Lighting.OutdoorAmbient=Color3.new(.5,.5,.5)
        game.Lighting.Brightness=2
        game.Lighting.ClockTime=12
        for _,v in pairs(game.Workspace:WaitForChild("Map"):WaitForChild("Lighting"):GetChildren())do
            pcall(function()
                if game.Lighting[v.Name]then
                    game.Lighting[v.Name]=v.Value
                end
            end)
        end
    end
end)
VisualsTabAmbienceSection:Color("Color",Color3.new(1,0,175/255),function(x)
    ArsoniaTable.Visuals.Worldambience.Ambience=x
end)
VisualsTabAmbienceSection:Slider("Time",0,12,12,function(x)
    ArsoniaTable.Visuals.Worldambience.Time=x
end)
VisualsTabAmbienceSection:Slider("Brightness",0,10,2,function(x)
    ArsoniaTable.Visuals.Worldambience.Brightness=x
end)



local AimbotTab=Window:Tab("Aimbot")
local AimbotTabSilentaimSection=AimbotTab:Section("Silent Aim")
AimbotTabSilentaimSection:Toggle("Enabled",function(x)
    ArsoniaTable.Aimbot.Silentaim.Enabled=x
end)
AimbotTabSilentaimSection:Slider("Hit Chance",0,100,100,function(x)
    ArsoniaTable.Aimbot.Silentaim.Hitchance=x
end)
AimbotTabSilentaimSection:Slider("FOV",0,1000,100,function(x)
    ArsoniaTable.Aimbot.Silentaim.Fov=x
end)
AimbotTabSilentaimSection:Toggle("Ignore FOV",function(x)
    ArsoniaTable.Aimbot.Silentaim.Ignorefov=x
end)
AimbotTabSilentaimSection:Dropdown("Auto Shoot",{"None","Force Fire","Fake Click","Mouse"},function(x)
    ArsoniaTable.Aimbot.Silentaim.AutoshootMethod=x
end)
AimbotTabSilentaimSection:Dropdown("Priority Target",ArsoniaTable.Variables.TargetNames,function(x)
    ArsoniaTable.Aimbot.Silentaim.Target=x
end)
AimbotTabSilentaimSection:Toggle("Only Target Priority",function(x)
    ArsoniaTable.Aimbot.Silentaim.Onlytarget=x
end)
AimbotTabSilentaimSection:Toggle("Fake Lock",function(x)
    ArsoniaTable.Aimbot.Silentaim.Fakelock=x
end)



local AimbotTabBacktrackSection=AimbotTab:Section("Backtrack")
AimbotTabBacktrackSection:Toggle("Enabled",function(x)
    ArsoniaTable.Aimbot.Backtrack.Enabled=x
end)
AimbotTabBacktrackSection:Slider("Life Time (ms)",0,1000,250,function(x)
    ArsoniaTable.Aimbot.Backtrack.Lifetime=x/1000
end)
AimbotTabBacktrackSection:Slider("Transparency",0,10,5,function(x)
    ArsoniaTable.Aimbot.Backtrack.Trans=x/10
end)
AimbotTabBacktrackSection:Slider("Reflectance",0,10,5,function(x)
    ArsoniaTable.Aimbot.Backtrack.Refl=x/10
end)
AimbotTabBacktrackSection:Color("Color",Color3.new(0,1,1),function(x)
    ArsoniaTable.Aimbot.Backtrack.Color=x
end)
AimbotTabBacktrackSection:Dropdown("Material",ArsoniaTable.Variables.Materials,function(x)
    ArsoniaTable.Aimbot.Backtrack.Material=x
end)
AimbotTabBacktrackSection:Dropdown("Target",{"HeadHB","Torso","LeftArm","RightArm","LeftLeg","RightLeg","All"},function(x)
    ArsoniaTable.Aimbot.Backtrack.Target=x
end)
AimbotTabBacktrackSection:Toggle("Render All",function(x)
    ArsoniaTable.Aimbot.Backtrack.Showall=x
end)



local AimbotTabHitboxSection=AimbotTab:Section("Hitbox")
AimbotTabHitboxSection:Toggle("Enabled",function(x)
    ArsoniaTable.Aimbot.Hitboxes.Enabled=x
end)
AimbotTabHitboxSection:Slider("Size",0,25,5,function(x)
    ArsoniaTable.Aimbot.Hitboxes.Size=x
end)
AimbotTabHitboxSection:Dropdown("Size Method",{"Absolute","Addition"},function(x)
    ArsoniaTable.Aimbot.Hitboxes.Sizetype=x
end)
AimbotTabHitboxSection:Slider("Transparency",0,10,5,function(x)
    ArsoniaTable.Aimbot.Hitboxes.Trans=x/10
end)
AimbotTabHitboxSection:Slider("Reflectance",0,10,5,function(x)
    ArsoniaTable.Aimbot.Hitboxes.Refl=x/10
end)
AimbotTabHitboxSection:Color("Color",Color3.new(0,1,1),function(x)
    ArsoniaTable.Aimbot.Hitboxes.Color=x
end)
AimbotTabHitboxSection:Dropdown("Material",ArsoniaTable.Variables.Materials,function(x)
    ArsoniaTable.Aimbot.Hitboxes.Material=x
end)
AimbotTabHitboxSection:Dropdown("Target",{"HeadHB","Torso","LeftArm","RightArm","LeftLeg","RightLeg","All"},function(x)
    ArsoniaTable.Aimbot.Hitboxes.Target=x
end)



local CombatTab=Window:Tab("Combat")
local CombatTabMainSection=CombatTab:Section("Main")
CombatTabMainSection:Toggle("Enabled",function(x)
    ArsoniaTable.Combat.Main.Enabled=x
end)
--[[CombatTabMainSection:Toggle("Projectile Aura",function(x)
    ArsoniaTable.Combat.Main.ProjectileAura=x
end)
CombatTabMainSection:Dropdown("Projectile",ArsoniaTable.Variables.Allprojectiles,function(x)
    ArsoniaTable.Combat.Main.ProjectileAuraMethod=x
end)
CombatTabMainSection:Toggle("Headshot",function(x)
    if x then
        ArsoniaTable.Combat.Main.ProjectileAuraHead=1
    else
        ArsoniaTable.Combat.Main.ProjectileAuraHead=0
    end
end)
CombatTabMainSection:Toggle("Air Crit",function(x)
    if x then
        ArsoniaTable.Combat.Main.ProjectileAuraAir=1
    else
        ArsoniaTable.Combat.Main.ProjectileAuraAir=0
    end
end)]]
--[[CombatTabMainSection:Toggle("Kill All",function(x)
    ArsoniaTable.Combat.Main.Killall=x
end)
CombatTabMainSection:Dropdown("Kill All Method",{"Spoofed","Equipped"},function(x)
    ArsoniaTable.Combat.Main.KillallMethod=x
end)]]
--[[CombatTabMainSection:Toggle("Death Kill",function(x)
    ArsoniaTable.Combat.Main.Deathkill=x
end)]]
--[[CombatTabMainSection:Toggle("Kill Aura",function(x)
    ArsoniaTable.Combat.Main.Killaura=x
end)
CombatTabMainSection:Dropdown("Kill Aura Method",{"Flamethrower","Acid Spitter"},function(x)
    ArsoniaTable.Combat.Main.KillauraMethod=x
end)]]
CombatTabMainSection:ToggleSlider("Headstomp Aura",1,600,100,function(x,y)
    ArsoniaTable.Combat.Main.Headstompaura=x
    ArsoniaTable.Combat.Main.HeadstompauraVal=y
end)
CombatTabMainSection:Dropdown("Stomp Type",{"Basic","Near Death","Near Death + TP","TP"},function(x)
    ArsoniaTable.Combat.Main.HeadstompauraType=x
end)
--[[CombatTabMainSection:Toggle("Knife Aura",function(x)
    ArsoniaTable.Combat.Main.Knifeaura=x
end)
CombatTabMainSection:Toggle("Do Fake Animation",function(x)
    ArsoniaTable.Combat.Main.KnifeauraFakeaim=x
end)
CombatTabMainSection:Toggle("Air Crit",function(x)
    if x then
        ArsoniaTable.Combat.Main.KnifeauraAir=1
    else
        ArsoniaTable.Combat.Main.KnifeauraAir=0
    end
end)
CombatTabMainSection:Dropdown("Knife",{"Basic","Golden"},function(x)
    ArsoniaTable.Combat.Main.KnifeauraValue=x
end)
CombatTabMainSection:Dropdown("Crit",{"None","Basic","Advanced","Backstab"},function(x)
    ArsoniaTable.Combat.Main.KnifeauraCrit=x
end)]]
--[[CombatTabMainSection:ToggleSlider("Bomb Walk",0,100,25,function(x,y)
    ArsoniaTable.Combat.Main.Bombwalk=x
    ArsoniaTable.Combat.Main.BombwalkTime=y
end)
CombatTabMainSection:Dropdown("Bomb",{"Basic","Golden","Cherry (Infinite)"},function(x)
    ArsoniaTable.Combat.Main.BombwalkBomb=x
end)]]



local CombatTabGunmodsSection=CombatTab:Section("Weapon")
CombatTabGunmodsSection:Toggle("Enabled",function(x)
    ArsoniaTable.Combat.Gunmods.Enabled=x
    if x then
        if ArsoniaTable.Combat.Gunmods.Goldenmelee then
            debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools,30,"Golden Knife")
        end
        --[[if ArsoniaTable.Combat.Gunmods.Removescope then
            if not game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope:FindFirstChild("Scope2")then
                for i=1,4 do
                    game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs["Frame"..i].Transparency=1
                end
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency=1
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Size=UDim2.new(2,0,2,0)
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Position=UDim2.new(-.5,0,-.5,0)
            end
        end]]
        for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
            if v:FindFirstChild("FireRate")then
                v.ArsoniaFireRate.Value=v.FireRate.Value-ArsoniaTable.Combat.Gunmods.Firerate
            end
            if v:FindFirstChild("StoredAmmo")then
                v.ArsoniaStoredAmmo.Value=math.clamp(v.StoredAmmo.Value+ArsoniaTable.Combat.Gunmods.Storedammo,0,199)
            end
            if v:FindFirstChild("Range")and v:FindFirstChild("Melee")and v:FindFirstChild("Backstab")then
                v.Range.Value=ArsoniaTable.Combat.Gunmods.Kniferange
            end
            if ArsoniaTable.Combat.Gunmods.Instantreload then
                if v:FindFirstChild("ReloadTime")then
                    v.ArsoniaReloadTime.Value=0
                end
                if v:FindFirstChild("EReloadTime")then
                    v.ArsoniaEReloadTime.Value=0
                end
                if v:FindFirstChild("PumpAction")then
                    v.PumpAction.Name="NotPumpAction"
                end
            end
            if ArsoniaTable.Combat.Gunmods.Instantequip then
                if v:FindFirstChild("EquipTime")then
                    v.ArsoniaEquipTime.Value=0
                end
            end
            if ArsoniaTable.Combat.Gunmods.Firemode~="Current"then
                if ArsoniaTable.Combat.Gunmods.Firemode=="Automatic"then
                    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode="automatic"
                else
                    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode="__nilvalue"
                end
            end
        end
    else
        if ArsoniaTable.Combat.Gunmods.Goldenmelee then
            debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools,30,"Knife")
        end
        --[[if ArsoniaTable.Combat.Gunmods.Removescope then
            for i=1,4 do
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs["Frame"..i].Transparency=0
            end
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency=0
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Size=UDim2.new(1,0,1,0)
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Position=UDim2.new()
        end]]
        for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
            if v:FindFirstChild("FireRate")then
                v.ArsoniaFireRate.Value=v.FireRate.Value
            end
            if v:FindFirstChild("StoredAmmo")then
                v.ArsoniaStoredAmmo.Value=v.StoredAmmo.Value
            end
            if v:FindFirstChild("Range")and v:FindFirstChild("Melee")and v:FindFirstChild("Backstab")then
                v.Range.Value=v.ArsoniaRange.Value
            end
            if v:FindFirstChild("ReloadTime")then
                v.ArsoniaReloadTime.Value=v.ReloadTime.Value
            end
            if v:FindFirstChild("EReloadTime")then
                v.ArsoniaEReloadTime.Value=v.EReloadTime.Value
            end
            if v:FindFirstChild("NotPumpAction")then
                v.NotPumpAction.Name="PumpAction"
            end
            if v:FindFirstChild("EquipTime")then
                v.ArsoniaEquipTime.Value=v.EquipTime.Value
            end
            if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value then
                if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value:FindFirstChild("Auto")then
                    if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value.Auto.Value then
                        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode="automatic"
                    else
                        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode="__nilvalue"
                    end
                end
            end
        end
    end
    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
    require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
end)
CombatTabGunmodsSection:Slider("Fire Rate Addition",0,500,0,function(x)
    ArsoniaTable.Combat.Gunmods.Firerate=x/1000
    if ArsoniaTable.Combat.Gunmods.Enabled then
        for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
            if v:FindFirstChild("FireRate")then
                v.ArsoniaFireRate.Value=v.FireRate.Value-ArsoniaTable.Combat.Gunmods.Firerate
            end
        end
    end
end)
CombatTabGunmodsSection:Slider("Clip Size Addition",0,1000,0,function(x)
    ArsoniaTable.Combat.Gunmods.Clipsize=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
    end
end)
CombatTabGunmodsSection:Slider("Stored Ammo Addition",0,200,0,function(x)
    ArsoniaTable.Combat.Gunmods.Storedammo=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
            if v:FindFirstChild("StoredAmmo")then
                v.ArsoniaStoredAmmo.Value=math.clamp(v.StoredAmmo.Value+ArsoniaTable.Combat.Gunmods.Storedammo,0,199)
            end
        end
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
    end
end)
CombatTabGunmodsSection:Slider("Knife Range",0,50,6,function(x)
    ArsoniaTable.Combat.Gunmods.Kniferange=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
            if v:FindFirstChild("Range")and v:FindFirstChild("Melee")and v:FindFirstChild("Backstab")then
                v.Range.Value=ArsoniaTable.Combat.Gunmods.Kniferange
            end
        end
    end
end)
CombatTabGunmodsSection:ToggleSlider("Projectile Gun",0,1000,500,function(x,y)
    ArsoniaTable.Combat.Gunmods.Baseballgun=x
    ArsoniaTable.Combat.Gunmods.BaseballgunSpeed=y
end)
CombatTabGunmodsSection:Dropdown("Projectile",ArsoniaTable.Variables.BaseBallNamesVisual,function(x)
    ArsoniaTable.Combat.Gunmods.BaseballgunValue=x
end)
--[[CombatTabGunmodsSection:Toggle("Laser Gun",function(x)
    ArsoniaTable.Combat.Gunmods.Lasergun=x
end)
CombatTabGunmodsSection:Color("Color",Color3.new(1,0,175/255),function(x)
    ArsoniaTable.Combat.Gunmods.LasergunCol=x
end)
CombatTabGunmodsSection:Dropdown("Laser Type",ArsoniaTable.Variables.Lasers,function(x)
    ArsoniaTable.Combat.Gunmods.LasergunValue=x
end)]]
CombatTabGunmodsSection:Toggle("Instant Reload",function(x)
    ArsoniaTable.Combat.Gunmods.Instantreload=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if x then
            for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
                if v:FindFirstChild("ReloadTime")then
                    v.ArsoniaReloadTime.Value=0
                end
                if v:FindFirstChild("EReloadTime")then
                    v.ArsoniaEReloadTime.Value=0
                end
                if v:FindFirstChild("PumpAction")then
                    v.PumpAction.Name="NotPumpAction"
                end
            end
        else
            for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
                if v:FindFirstChild("ReloadTime")then
                    v.ArsoniaReloadTime.Value=v.ReloadTime.Value
                end
                if v:FindFirstChild("EReloadTime")then
                    v.ArsoniaEReloadTime.Value=v.EReloadTime.Value
                end
                if v:FindFirstChild("NotPumpAction")then
                    v.NotPumpAction.Name="PumpAction"
                end
            end
        end
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
    end
end)
CombatTabGunmodsSection:Toggle("Instant Equip",function(x)
    ArsoniaTable.Combat.Gunmods.Instantequip=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if x then
            for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
                if v:FindFirstChild("EquipTime")then
                    v.ArsoniaEquipTime.Value=0
                end
            end
        else
            for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
                if v:FindFirstChild("EquipTime")then
                    v.ArsoniaEquipTime.Value=v.EquipTime.Value
                end
            end
        end
    end
end)
CombatTabGunmodsSection:Toggle("Golden Melee",function(x)
    ArsoniaTable.Combat.Gunmods.Goldenmelee=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if x then
            debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools,30,"Golden Knife")
        else
            debug.setconstant(getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools,30,"Knife")
        end
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
    end
end)
CombatTabGunmodsSection:Toggle("Force Backstab",function(x)
    ArsoniaTable.Combat.Gunmods.Forcebackstab=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
    end
end)
CombatTabGunmodsSection:Toggle("Remove Fire Animation",function(x)
    ArsoniaTable.Combat.Gunmods.Removeonfire=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
    end
end)
CombatTabGunmodsSection:Toggle("Remove Stab Animation",function(x)
    ArsoniaTable.Combat.Gunmods.RemoveonfireKnife=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
    end
end)
CombatTabGunmodsSection:Toggle("Remove Gun Sway",function(x)
    ArsoniaTable.Combat.Gunmods.Removesway=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).givetools()
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).usethatgun()
    end
end)
CombatTabGunmodsSection:Toggle("Remove Gun Bob",function(x)
    ArsoniaTable.Combat.Gunmods.Removebob=x
end)
CombatTabGunmodsSection:Toggle("Remove Recoil",function(x)
    ArsoniaTable.Combat.Gunmods.Removerecoil=x
end)
CombatTabGunmodsSection:Toggle("Remove Spread",function(x)
    ArsoniaTable.Combat.Gunmods.Removespread=x
end)
CombatTabGunmodsSection:Toggle("Auto Spool",function(x)
    ArsoniaTable.Combat.Gunmods.Autospool=x
end)
CombatTabGunmodsSection:Toggle("Infinite Charge",function(x)
    ArsoniaTable.Combat.Gunmods.Infcharge=x
end)
CombatTabGunmodsSection:Toggle("Remove Zoom Effect",function(x)
    ArsoniaTable.Combat.Gunmods.Keepfov=x
end)
--[[CombatTabGunmodsSection:Toggle("Remove Scope Effect",function(x)
    ArsoniaTable.Combat.Gunmods.Removescope=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if x then
            for i=1,4 do
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs["Frame"..i].Transparency=1
            end
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency=1
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Size=UDim2.new(2,0,2,0)
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Position=UDim2.new(-.5,0,-.5,0)
        else
            for i=1,4 do
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs["Frame"..i].Transparency=0
            end
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency=0
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Size=UDim2.new(1,0,1,0)
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Position=UDim2.new()
        end
    end
end)]]
--[[CombatTabGunmodsSection:Toggle("Explosive Bullets",function(x)
    ArsoniaTable.Combat.Gunmods.ExplosiveBullets=x
end)]]
CombatTabGunmodsSection:Dropdown("Firemode",{"Current","Semi-Automatic","Automatic"},function(x)
    ArsoniaTable.Combat.Gunmods.Firemode=x
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value then
            if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value:FindFirstChild("Auto")then
                if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value.Auto.Value then
                    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode="automatic"
                else
                    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode="__nilvalue"
                end
            end
        end
    end
end)



local MiscTab=Window:Tab("Misc")
local MiscTabMainSection=MiscTab:Section("Main")
MiscTabMainSection:Toggle("Enabled",function(x)
    ArsoniaTable.Misc.Main.Enabled=x
    if not x then
        if game.Workspace:FindFirstChild("Map")then
            if game.Workspace.Map:FindFirstChild("Clips")then
                for _,v in pairs(game.Workspace.Map.Clips:GetDescendants())do
                    if v:IsA("BasePart")then
                        if v:FindFirstChild("OGCanCollide")then
                            v.CanCollide=v.OGCanCollide
                        end
                    end
                end
            end
        end
        game.ReplicatedStorage.Events.CoolNewRemote:FireServer("MouseButton1")
        game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value="None"
    else
        if ArsoniaTable.Misc.Main.Devicespoofer=="Mobile"then
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer("Touch")
        elseif ArsoniaTable.Misc.Main.Devicespoofer=="PC"then
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer("MouseButton1")
        elseif ArsoniaTable.Misc.Main.Devicespoofer=="XBOX"then
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer("Gamepad1")
        elseif ArsoniaTable.Misc.Main.Devicespoofer=="None"then
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer("none")
        end
        game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value=ArsoniaTable.Misc.Main.Curse
    end
end)
MiscTabMainSection:Toggle("Fast Respawn",function(x)
    ArsoniaTable.Misc.Main.Fastrespawn=x
end)
MiscTabMainSection:Dropdown("Device Spoofer",{"PC","Mobile","XBOX","Wii Steering Wheel","None"},function(x)
    ArsoniaTable.Misc.Main.Devicespoofer=x
    if ArsoniaTable.Misc.Main.Enabled then
        if ArsoniaTable.Misc.Main.Devicespoofer=="Mobile"then
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer("Touch")
        elseif ArsoniaTable.Misc.Main.Devicespoofer=="PC"then
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer("MouseButton1")
        elseif ArsoniaTable.Misc.Main.Devicespoofer=="XBOX"then
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer("Gamepad1")
        elseif ArsoniaTable.Misc.Main.Devicespoofer=="None"then
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer("none")
        end
    end
end)
MiscTabMainSection:Dropdown("Ping Spoofer",{"Current","Green","Yellow","Red","Random"},function(x)
    ArsoniaTable.Misc.Main.Pingspoofer=x
end)
MiscTabMainSection:Toggle("Auto Deploy",function(x)
    ArsoniaTable.Misc.Main.Autodeploy=x
end)
MiscTabMainSection:Dropdown("Curse",ArsoniaTable.Variables.Curses,function(x)
    ArsoniaTable.Misc.Main.Curse=x
    if ArsoniaTable.Misc.Main.Enabled then
        game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value=ArsoniaTable.Misc.Main.Curse
    end
end)
MiscTabMainSection:Toggle("Double Chat",function(x)
    ArsoniaTable.Misc.Main.Doublechat=x
end)
MiscTabMainSection:Toggle("Remove Map Borders",function(x)
    ArsoniaTable.Misc.Main.Removemapborders=x
    if not x then
        if game.Workspace:FindFirstChild("Map")then
            if game.Workspace.Map:FindFirstChild("Clips")then
                for _,v in pairs(game.Workspace.Map.Clips:GetDescendants())do
                    if v:IsA("BasePart")then
                        if v:FindFirstChild("OGCanCollide")then
                            v.CanCollide=v.OGCanCollide
                        end
                    end
                end
            end
        end
    else
        game.Workspace.Map.Clips.IsRemoved:Destroy()
    end
end)
--[[MiscTabMainSection:Toggle("Cloud Spam",function(x)
    ArsoniaTable.Misc.Main.Cloudspam=x
end)]]
MiscTabMainSection:Toggle("Anti Team Leader Effect",function(x)
    ArsoniaTable.Misc.Main.Antiteamleader=x
end)
MiscTabMainSection:Toggle("Anti Monkey ESP",function(x)
    ArsoniaTable.Misc.Main.Antimonkey=x
end)
--[[MiscTabMainSection:Toggle("Wall Protect",function(x)
    ArsoniaTable.Misc.Main.Wallprotect=x
end)]]
--[[MiscTabMainSection:Button("Place Wall",function()
    game.ReplicatedStorage.Events.BuildWall:FireServer(
        game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*10000000000)
end)
MiscTabMainSection:Button("Remove Wall",function()
    game.ReplicatedStorage.Events.BuildWall:FireServer(
        Vector3.new(math.huge,math.huge,math.huge),
        Vector3.new(math.huge,math.huge,math.huge))
end)]]
MiscTabMainSection:Toggle("Auto Pickup Ball",function(x)
    ArsoniaTable.Misc.Main.Autopickupball=x
end)
MiscTabMainSection:Toggle("Collect Bananas",function(x)
    ArsoniaTable.Misc.Main.Autopickupbanana=x
end)
MiscTabMainSection:Button("Teleport To Fireworks",function()
    game.TeleportService:Teleport(4690140579,game.Players.LocalPlayer,{SuperSecretCode="NotSoSuperSecretPoggyWoggy"})
end)
MiscTabMainSection:Button("Teleport To Frog Game",function()
    game.TeleportService:Teleport(5133094040,game.Players.LocalPlayer,{SuperSecretCode="NotSoSuperSecretPoggyWoggy"})
end)
MiscTabMainSection:Button("https://discord.gg/yBEzKHB3Qr",function()
    pcall(function()setclipboard("https://discord.gg/yBEzKHB3Qr")end)
    pcall(function()syn.write_clipboard("https://discord.gg/yBEzKHB3Qr")end)
end)



local MiscTabMenuSection=MiscTab:Section("Menu")
MiscTabMenuSection:Textbox("Menu Title","ARSENAL",function(x)
    local a=x 
    local b={}
    for i=1,#a do
        table.insert(b,string.sub(a,i,i))
        if i~=#a then
            table.insert(b," ")
        end
    end
    local c=""
    for _,v in pairs(b)do
        c=c..v
    end
    c=string.upper(c)
    game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.Title.Text=c
    game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.Title.DropShadow.Text=c
end)
MiscTabMenuSection:Textbox("Menu User",game.Players.LocalPlayer.Name,function(x)
    ArsoniaTable.Variables.Levels.Name=x
end)
MiscTabMenuSection:Textbox("Menu Level",ArsoniaTable.Variables.Levels.Level,function(x)
    ArsoniaTable.Variables.Levels.Level=x
end)
MiscTabMenuSection:Slider("XP Bar",0,100,50,function(x)
    ArsoniaTable.Variables.Levels.StartBar=x
    ArsoniaTable.Variables.Levels.EndBar=100
end)


local MiscTabTrollingSection=MiscTab:Section("Trolling")
MiscTabTrollingSection:Toggle("Enabled",function(x)
    ArsoniaTable.Misc.Trolling.Enabled=x
end)
MiscTabTrollingSection:Toggle("Bullet Annoy",function(x)
    ArsoniaTable.Misc.Trolling.Bulletannoy=x
end)
MiscTabTrollingSection:Toggle("Voice Annoy",function(x)
    ArsoniaTable.Misc.Trolling.Voiceannoy=x
end)
MiscTabTrollingSection:Toggle("Delete Ball On Pickup",function(x)
    ArsoniaTable.Misc.Trolling.Deleteball=x
end)
MiscTabTrollingSection:Toggle("Auto Player Surf",function(x)
    ArsoniaTable.Misc.Trolling.PlayerSurf=x
end)
--[[MiscTabTrollingSection:Toggle("Wall Trap",function(x)
    ArsoniaTable.Misc.Trolling.WallTrap=x
end)
MiscTabTrollingSection:Dropdown("Trap Type",{"Forward","Sideways"},function(x)
    ArsoniaTable.Misc.Trolling.WallTrapType=x
    if ArsoniaTable.Misc.Trolling.WallTrap and ArsoniaTable.Misc.Trolling.Enabled then
        for _,v in pairs(game.Players:GetChildren())do
            if string.find(string.lower(tostring(v)),string.lower(ArsoniaTable.Misc.Trolling.WallTrapName))then
                ArsoniaTable.Variables.TrapPosOld=v.Character.HumanoidRootPart.Position
                if ArsoniaTable.Misc.Trolling.WallTrapType=="Forward"then
                    game.ReplicatedStorage.Events.BuildWall:FireServer(
                        v.Character.HumanoidRootPart.Position+
                        v.Character.HumanoidRootPart.CFrame.RightVector*-7,
                        v.Character.HumanoidRootPart.CFrame.RightVector*10000000000)
                    break
                elseif ArsoniaTable.Misc.Trolling.WallTrapType=="Sideways"then
                    game.ReplicatedStorage.Events.BuildWall:FireServer(
                        v.Character.HumanoidRootPart.Position+
                        v.Character.HumanoidRootPart.CFrame.LookVector*-7,
                        v.Character.HumanoidRootPart.CFrame.LookVector*10000000000)
                    break
                end
            end
        end
    end
end)
MiscTabTrollingSection:Textbox("Player Name","",function(x)
    ArsoniaTable.Misc.Trolling.WallTrapName=x
end)]]
--[[MiscTabTrollingSection:Toggle("Fling Aura (BAN RISK)",function(x)
    ArsoniaTable.Misc.Trolling.Flingaura=x
end)
MiscTabTrollingSection:Toggle("Fling All (BAN RISK)",function(x)
    ArsoniaTable.Misc.Trolling.Flingall=x
end)
MiscTabTrollingSection:Button("Crash Clients",function()
    for _=1,5000 do
        game:GetService("ReplicatedStorage").Events.ReplicateProjectile:FireServer({"Baseball",0,Vector3.new(0,100,0),CFrame.new(),45,0,0,0,"Cone Launcher",Vector3.new(),false,{},1})
    end
end)]]



local MiscTabSaveSection=MiscTab:Section("Save/Load")
MiscTabSaveSection:Button("Save",function()
    pcall(function()
        delfile("Arsonia_SAVE_.lua")
    end)
    writefile("Arsonia_SAVE_.lua","return"..ArsoniaTable.Variables.Functions.Unpacktable(getgenv().ArsoniaSettings))
end)
MiscTabSaveSection:Button("Load",function()
    local a=0
    local b=0
    for i,v in pairs(loadfile("Arsonia_SAVE_.lua")())do
        a=a+1
        for _=1,25 do
            if pcall(function()
                    if getgenv().ArsoniaSettings[i].Val[1]~=v.Val[1]then
                        if not pcall(function()getgenv().ArsoniaSettings[i].SetVal(unpack(v.Val))end)then
                            b=b+1
                        end
                    end
                end)then
                break
            end
        end
    end
    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).moveOldMessages()
    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).createNewMessage(
        "Astolfo",
        "Loadded: "..a.." Features With "..b.." Errors",
        _G.UIMainColor or Color3.fromRGB(255,75,75),
        Color3.new(1,1,1),
        .01
    )
end)
--[[
Section:Slider("Slider",-100,100,8,function(x)
    print(x)
end)
Section:ToggleSlider("Toggle Slider",-100,100,8,function(x,y)
    print(x,y)
end)
Section:Textbox("Text Box","Preset Text",function(x)
    print(x)
end)
Section:Toggle("Toggle",function(x)
    print(x)
end)
Section:Button("Button",function()
    print("Button Pressed")
end)
Section:Color("Color",Color3.new(1,0,175/255),function(x)
    print(x)
end)
Section:Dropdown("Dropdown",{"Option 1","Option 2","Option 3"},function(x)
    print(x)
end)
Section:Keybind("Keybind Name",function(x)
    print(x)
end)
Section:Textlabel("Text")
]]
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(x)
    ArsoniaTable.Variables.KeysPressed[x]=true
end)
game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(x)
    ArsoniaTable.Variables.KeysPressed[x]=false
end)
--Character Child Added
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(x)
    if ArsoniaTable.Player.Misc.Enabled then
        if ArsoniaTable.Player.Misc.Removeplayercheck then
            if x.Name=="Spawned"then
                wait(.3)
                x:Destroy()
            end
        end
    end
end)
--Character Child Removed
game.Players.LocalPlayer.Character.ChildRemoved:Connect(function(x)
    if ArsoniaTable.Player.Misc.Enabled then
        if ArsoniaTable.Player.Misc.DemiGod then
            if x.Name=="Spawned"and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and game.Players.LocalPlayer.Status.Team.Value~="Spectator"then
                local a=game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                local b=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                repeat
                    game.RunService.RenderStepped:Wait()
                    getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).reviveme=true
                until game.Players.LocalPlayer.Character:FindFirstChild("Spawned")or not ArsoniaTable.Player.Misc.DemiGod or game.Players.LocalPlayer.Status.Team.Value=="Spectator"or not ArsoniaTable.Player.Misc.Enabled
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=b
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity=a
            end
        end
    end
end)
--General RS
game.RunService.RenderStepped:Connect(function()
    ArsoniaTable.Variables.Crouching=false
    if game.Players.LocalPlayer.Character:FindFirstChild("Crouched")then
        ArsoniaTable.Variables.Crouching=true
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LevelMeter.StartXP.Text~=ArsoniaTable.Variables.Levels.StartXp.." xp"then
        game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LevelMeter.StartXP.Text=ArsoniaTable.Variables.Levels.StartXp.." xp"
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LevelMeter.EndXP.Text~=ArsoniaTable.Variables.Levels.EndXp.." xp"then
        game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LevelMeter.EndXP.Text=ArsoniaTable.Variables.Levels.EndXp.." xp"
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LevelMeter.FILL.FILL.Size~=UDim2.new(ArsoniaTable.Variables.Levels.StartBar/ArsoniaTable.Variables.Levels.EndBar,0,1,0)then
        game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LevelMeter.FILL.FILL.Size=UDim2.new(ArsoniaTable.Variables.Levels.StartBar/ArsoniaTable.Variables.Levels.EndBar,0,1,0)
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.PlrName.Text~=ArsoniaTable.Variables.Levels.Name.." - Level: "..ArsoniaTable.Variables.Levels.Level then
        game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.PlrName.Text=ArsoniaTable.Variables.Levels.Name.." - Level: "..ArsoniaTable.Variables.Levels.Level
    end
    if tostring(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value)==game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.melee.Value then
        ArsoniaTable.Variables.IsKnife=true
    else
        ArsoniaTable.Variables.IsKnife=false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("IsAPlayer")then
        ArsoniaTable.Variables.IsAlive=true
    else
        ArsoniaTable.Variables.IsAlive=false
    end
    ArsoniaTable.Variables.Offset_GUN=Vector3.new()
    if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
        for _,v in pairs(game.Workspace.CurrentCamera.Arms:GetChildren())do
            if v:IsA("Vector3Value")then
                ArsoniaTable.Variables.Offset_GUN=v.Value
                break
            end
        end
    end
    if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value then
        ArsoniaTable.Variables.Killmethods.Equipped=game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value
    end
    if getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).lastlook~=10000 then
        getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).lastlook=10000
    end
    ArsoniaTable.Variables.IsFall=false
    if game.Players.LocalPlayer.Character.Humanoid:GetState()==Enum.HumanoidStateType.Ragdoll or game.Players.LocalPlayer.Character.Humanoid:GetState()==Enum.HumanoidStateType.GettingUp then
        ArsoniaTable.Variables.IsFall=true
    end
    if game.Players.LocalPlayer.Character.Head.Size~=Vector3.new(1,.1,1)then
        game.Players.LocalPlayer.Character.Head.Size=Vector3.new(1,.1,1)
    end
    ArsoniaTable.Variables.CamAngles={game.Workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()}
end)
--Player Anti Aim RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Player.Anti_Aim.IsHead then
        if game.Players.LocalPlayer.Character:FindFirstChild("HeadHB")then
            game.Players.LocalPlayer.Character:FindFirstChild("HeadHB"):Destroy()
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("FakeHead")then
            game.Players.LocalPlayer.Character:FindFirstChild("FakeHead"):Destroy()
        end
    end
    if ArsoniaTable.Player.Anti_Aim.IsLegs then
        for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren())do
            if string.find(string.lower(v.Name),"foot")or string.find(string.lower(v.Name),"leg")then
                if v:IsA("BasePart")then
                    v:Destroy()
                end
            end
        end
    end
    if ArsoniaTable.Player.Anti_Aim.Enabled then
        if not ArsoniaTable.Variables.Functions.IsRoundOver()then
            if ArsoniaTable.Player.Anti_Aim.Yaw then
                local _,a=game.Workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()
                if ArsoniaTable.Player.Anti_Aim.YawType=="Spinning"then
                    ArsoniaTable.Variables.Yaw=ArsoniaTable.Variables.Yaw+ArsoniaTable.Player.Anti_Aim.YawValue
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                    CFrame.Angles(0,math.rad(ArsoniaTable.Variables.Yaw),0)
                elseif ArsoniaTable.Player.Anti_Aim.YawType=="Offset"then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                    CFrame.Angles(0,a+math.rad(ArsoniaTable.Player.Anti_Aim.YawValue),0)
                elseif ArsoniaTable.Player.Anti_Aim.YawType=="Absolute"then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                    CFrame.Angles(0,math.rad(ArsoniaTable.Player.Anti_Aim.YawValue),0)
                elseif ArsoniaTable.Player.Anti_Aim.YawType=="Random"then
                    ArsoniaTable.Variables.Yaw=ArsoniaTable.Variables.Yaw+math.random(-ArsoniaTable.Player.Anti_Aim.YawValue,ArsoniaTable.Player.Anti_Aim.YawValue)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                    CFrame.Angles(0,math.rad(ArsoniaTable.Variables.Yaw),0)
                elseif ArsoniaTable.Player.Anti_Aim.YawType=="Inverted"then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                    CFrame.Angles(0,-a,0)
                elseif ArsoniaTable.Player.Anti_Aim.YawType=="Frozen"then
                    if ArsoniaTable.Variables.EngluarFix then
                        ArsoniaTable.Variables.Yaw=ArsoniaTable.Variables.EngluarFix.Y
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                    CFrame.Angles(0,ArsoniaTable.Variables.Yaw,0)
                end
            end
            if ArsoniaTable.Player.Anti_Aim.CrouchYaw then
                if ArsoniaTable.Variables.Crouching then
                    local _,a=game.Workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()
                    if ArsoniaTable.Player.Anti_Aim.CrouchYawType=="Spinning"then
                        ArsoniaTable.Variables.CrouchYaw=ArsoniaTable.Variables.CrouchYaw+ArsoniaTable.Player.Anti_Aim.CrouchYawVal
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                        CFrame.Angles(0,math.rad(ArsoniaTable.Variables.CrouchYaw),0)
                    elseif ArsoniaTable.Player.Anti_Aim.CrouchYawType=="Offset"then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                        CFrame.Angles(0,a+math.rad(ArsoniaTable.Player.Anti_Aim.CrouchYawVal),0)
                    elseif ArsoniaTable.Player.Anti_Aim.CrouchYawType=="Absolute"then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                        CFrame.Angles(0,math.rad(ArsoniaTable.Player.Anti_Aim.CrouchYawVal),0)
                    elseif ArsoniaTable.Player.Anti_Aim.CrouchYawType=="Random"then
                        ArsoniaTable.Variables.CrouchYaw=ArsoniaTable.Variables.CrouchYaw+math.random(-ArsoniaTable.Player.Anti_Aim.CrouchYawVal,ArsoniaTable.Player.Anti_Aim.CrouchYawVal)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                        CFrame.Angles(0,math.rad(ArsoniaTable.Variables.CrouchYaw),0)
                    elseif ArsoniaTable.Player.Anti_Aim.CrouchYawType=="Inverted"then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                        CFrame.Angles(0,-a,0)
                    end
                end
            end
            if ArsoniaTable.Player.Anti_Aim.Wall then
                local _,a=game.Workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()
                local b={low={},high={},none={},equal={}}
                local Ignore=
                {
                    game.Players.LocalPlayer.Character,
                    game.Workspace.Ray_Ignore,
                    game.Workspace.CurrentCamera,
                    game.Workspace.Destructable,
                }
                if game.Workspace:FindFirstChild("Map")then
                    if game.Workspace.Map:FindFirstChild("Ignore")then
                        table.insert(Ignore,game.Workspace.Map.Ignore)
                    end
                    if game.Workspace.Map:FindFirstChild("Clips")then
                        table.insert(Ignore,game.Workspace.Map.Clips)
                    end
                end
                for _,v in pairs(game.Players:GetChildren())do
                    if v.Character then
                        table.insert(Ignore,v.Character)
                    end
                end
                for i=0,360,15 do
                    if i~=0 and i~=180 and i~=360 then
                        if i<=180 then
                            local Ray=Ray.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                                (CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*CFrame.Angles(0,a-math.rad(i),0)).LookVector*ArsoniaTable.Player.Anti_Aim.WallDist)
                            local part,pos,offset=game.Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
                            if part then
                                table.insert(b.low,{i,pos,offset})
                            end
                        else
                            local Ray=Ray.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                                (CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*CFrame.Angles(0,a+math.rad(i-180),0)).LookVector*ArsoniaTable.Player.Anti_Aim.WallDist)
                            local part,pos,offset=game.Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
                            if part then
                                table.insert(b.high,{i,pos,offset})
                            end
                        end
                    end
                end
                for _,v in pairs(b.low)do
                    table.insert(b.equal,v)
                end
                for _,v in pairs(b.high)do
                    table.insert(b.equal,v)
                end
                local a="none"
                local rade=math.deg(ArsoniaTable.Player.Anti_Aim.WallValue)
                if #b.low>#b.high then
                    a="low"
                elseif #b.low==0 and #b.high==0 then
                    a="none"
                elseif #b.low==#b.high then
                    a="equal"
                    rade=180
                else
                    a="high"
                    rade=-rade
                end
                if a~="none"then
                    local c=0
                    local d={}
                    for _,v in pairs(b[a])do
                        if c<(v[2]-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                            c=(v[2]-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            d=v
                        end
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.Position-d[3])*
                        CFrame.Angles(0,math.rad(rade),0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                    CFrame.Angles(0,math.rad(game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation.Y),0)
                end
            end
            if ArsoniaTable.Player.Movement.Enabled then
                if ArsoniaTable.Player.Movement.Autoairstrafe then
                    if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial==Enum.Material.Air then
                        local _,a=game.Workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                        CFrame.Angles(0,a,0)
                    end
                end
            end
            if ArsoniaTable.Aimbot.Silentaim.Enabled then
                if ArsoniaTable.Aimbot.Silentaim.Fakelock then
                    if ArsoniaTable.Variables.__SilentAimTarget then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                        CFrame.Angles(0,ArsoniaTable.Variables.EngluarFix.Y,0)
                    end
                end
            end
            if ArsoniaTable.Player.Anti_Aim.Upsidedown and not ArsoniaTable.Variables.IsFall then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                )*
                CFrame.Angles(
                    0,
                    math.rad(game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation.Y),
                    math.rad(180)
                )
            end
        end
    end
end)
--Player Movement RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Player.Movement.Enabled then
        if ArsoniaTable.Player.Movement.Fly then
            if ArsoniaTable.Variables.Fly then
                local b=0
                local c=false
                if ArsoniaTable.Variables.KeysPressed.w and ArsoniaTable.Variables.KeysPressed.s then
                    b=0
                elseif ArsoniaTable.Variables.KeysPressed.a and ArsoniaTable.Variables.KeysPressed.d then
                    b=0
                elseif ArsoniaTable.Variables.KeysPressed.w and ArsoniaTable.Variables.KeysPressed.a then
                    b=45
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.w and ArsoniaTable.Variables.KeysPressed.d then
                    b=-45
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.s and ArsoniaTable.Variables.KeysPressed.a then
                    b=180-45
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.s and ArsoniaTable.Variables.KeysPressed.d then
                    b=180+45
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.w then
                    b=0
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.a then
                    b=90
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.d then
                    b=-90
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.s then
                    b=180
                    c=true
                end
                if c then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity=
                    (game.Workspace.CurrentCamera.CFrame*CFrame.Angles(0,math.rad(b),0)).LookVector*
                    ArsoniaTable.Player.Movement.Flyspeed
                else
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity=Vector3.new()
                    local a=Instance.new("IntValue")
                    a.Name="changedirection"
                    a.Parent=game.Players.LocalPlayer.Character
                end
            end
        end
        if ArsoniaTable.Player.Movement.Bunnyhop then
            if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial==Enum.Material.Air or ArsoniaTable.Variables.KeysPressed[" "]then
                local _,a=game.Workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()
                local b=0
                local c=false
                if ArsoniaTable.Variables.KeysPressed.w and ArsoniaTable.Variables.KeysPressed.s then
                    b=0
                elseif ArsoniaTable.Variables.KeysPressed.a and ArsoniaTable.Variables.KeysPressed.d then
                    b=0
                elseif ArsoniaTable.Variables.KeysPressed.w and ArsoniaTable.Variables.KeysPressed.a then
                    b=45
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.w and ArsoniaTable.Variables.KeysPressed.d then
                    b=-45
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.s and ArsoniaTable.Variables.KeysPressed.a then
                    b=180-45
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.s and ArsoniaTable.Variables.KeysPressed.d then
                    b=180+45
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.w then
                    b=0
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.a then
                    b=90
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.d then
                    b=-90
                    c=true
                elseif ArsoniaTable.Variables.KeysPressed.s then
                    b=180
                    c=true
                end
                if ArsoniaTable.Player.Movement.BunnyhopType=="Apply Velocity"or ArsoniaTable.Player.Movement.BunnyhopType=="Walkspeed"then
                    if ArsoniaTable.Variables.KeysPressed[" "]then
                        game.Players.LocalPlayer.Character.Humanoid.Jump=true
                    end
                end
                if c then
                    if ArsoniaTable.Player.Movement.BunnyhopType=="Apply Velocity"then
                        ArsoniaTable.Variables.Functions.OldApplyVelocity(
                            game.Players.LocalPlayer.Character,
                            CFrame.Angles(0,a+math.rad(b),0).LookVector*(ArsoniaTable.Player.Movement.Bunnyhopspeed/3.5),
                            1,
                            nil,
                            game.Players.LocalPlayer.Name,
                            nil,
                            true
                        )
                    end
                end
            end
        end
        if ArsoniaTable.Player.Movement.Infdoublejump then
            if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.airjumps.Value~=0 then
                game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.airjumps.Value=0
            end
        end
        if ArsoniaTable.Player.Movement.Autoairstrafe then
            if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial==Enum.Material.Air or ArsoniaTable.Variables.KeysPressed[" "]then
                local a=Instance.new("IntValue")
                a.Name="changedirection"
                a.Parent=game.Players.LocalPlayer.Character
            end
        end
        if ArsoniaTable.Player.Movement.Autotakecontrol then
            if not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.takecontrol.Value then
                game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.takecontrol.Value=true
            end
        end
        if ArsoniaTable.Player.Movement.Anticrouchjumplock then
            if getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.StepModulesNoDeath.BruhHumanoid).crouchJump then
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.StepModulesNoDeath.BruhHumanoid).crouchJump=false
            end
        end
    end
end)
--Player Misc RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Player.Misc.Enabled then
        if ArsoniaTable.Player.Misc.Slidewalk then
            for _,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks())do
                if v.Animation.AnimationId~="rbxassetid://2475459560"then
                    v:Stop()
                end
            end
        end
        if ArsoniaTable.Player.Misc.AntiFire then
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Engulfed")then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Engulfed:Destroy()
            end
        end
        if ArsoniaTable.Player.Misc.AntiBleed then
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Bleed")then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Bleed:Destroy()
            end
        end
        if ArsoniaTable.Player.Misc.AntiFling then
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("WindEffect")then
                game.Players.LocalPlayer.Character.HumanoidRootPart.WindEffect:Destroy()
            end
        end
        if ArsoniaTable.Player.Misc.FastHeal then
            if game.Players.LocalPlayer.NRPBS.Health.Value<=99 then
                for _,v in pairs(game.Workspace.Debris:GetChildren())do
                    if v.Name=="DeadHP"then
                        v.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        v.Transparency=1
                    end
                end
            end
        end
        if ArsoniaTable.Player.Misc.Headcollide then
            if game.Players.LocalPlayer.Character.Head.CollisionGroupId~=game.Players.LocalPlayer.Character.UpperTorso.CollisionGroupId then
                game.Players.LocalPlayer.Character.Head.CollisionGroupId=game.Players.LocalPlayer.Character.UpperTorso.CollisionGroupId
            end
        elseif game.Players.LocalPlayer.Character.Head.CollisionGroupId~=game.Players.LocalPlayer.Character.HumanoidRootPart.CollisionGroupId then
            game.Players.LocalPlayer.Character.Head.CollisionGroupId=game.Players.LocalPlayer.Character.HumanoidRootPart.CollisionGroupId
        end
        if ArsoniaTable.Player.Misc.Torsocollide then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide=false
            end
        elseif not game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide=true
        end
        if ArsoniaTable.Player.Misc.SmallRoot then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.Size~=Vector3.new(1,.1,1)then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Size=Vector3.new(1,.1,1)
            end
        elseif game.Players.LocalPlayer.Character.HumanoidRootPart.Size~=Vector3.new(1,2,1)then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Size=Vector3.new(1,2,1)
        end
        if ArsoniaTable.Player.Misc.Removegun then
            if game.Players.LocalPlayer.Character:FindFirstChild("Gun")then
                for _,v in pairs(game.Players.LocalPlayer.Character.Gun:GetDescendants())do
                    if v:IsA("BasePart")then
                        if v.Transparency~=1 then
                            v:Destroy()
                        end
                    end
                end
            end
        end
    else
        if game.Players.LocalPlayer.Character.HumanoidRootPart.Size~=Vector3.new(1,2,1)then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Size=Vector3.new(1,2,1)
        end
        if game.Players.LocalPlayer.Character.Head.CollisionGroupId~=game.Players.LocalPlayer.Character.HumanoidRootPart.CollisionGroupId then
            game.Players.LocalPlayer.Character.Head.CollisionGroupId=game.Players.LocalPlayer.Character.HumanoidRootPart.CollisionGroupId
        end
        if not game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide=true
        end
    end
end)
--Visuals ESP RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Visuals.ESP.Enabled then
        for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
            local part=v.Character.HumanoidRootPart
            local _,b=game.Workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            if b then
                --[[if lookdirection then
                    local b=Drawing.new("Line")
                    b.Visible=true
                    b.Color=ArsoniaTable.Visuals.ESP.Color
                    b.Thickness=thick
                    b.Transparency=1
                    local pos=
                    v.Character.HumanoidRootPart.Position+
                    Vector3.new(0,1.5,0)
                    b.To=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(pos).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(pos).Y)
                    local pos=
                    v.Character.HumanoidRootPart.Position+
                    Vector3.new(0,2,0)+
                    CFrame.Angles(
                        0,
                        math.rad(v.Character.HumanoidRootPart.Orientation.Y),
                        0)*
                    CFrame.Angles(
                        math.rad(v.Character.Head.Orientation.X),
                        0,
                        0).LookVector*5
                    b.From=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(pos).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(pos).Y)
                    coroutine.wrap(function()
                        game.RunService.RenderStepped:Wait()
                        b:Remove()
                    end)()
                end]]
                if ArsoniaTable.Visuals.ESP.Names then
                    local a=Drawing.new("Text")
                    a.Text=v.Name
                    a.Size=math.clamp(25-(part.Position-game.Workspace.CurrentCamera.CFrame.Position).Magnitude,25,100)
                    a.Center=true
                    a.Outline=true
                    a.OutlineColor=Color3.new()
                    a.Font=Drawing.Fonts.UI
                    a.Visible=true
                    a.Transparency=1
                    a.Color=ArsoniaTable.Visuals.ESP.Color
                    a.Position=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.UpVector*(3+(part.Position-game.Workspace.CurrentCamera.CFrame.Position).Magnitude/25)).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.UpVector*(3+(part.Position-game.Workspace.CurrentCamera.CFrame.Position).Magnitude/25)).Y)
                    coroutine.wrap(function()
                        game.RunService.RenderStepped:Wait()
                        a:Remove()
                    end)()
                end
                if ArsoniaTable.Visuals.ESP.Box then
                    local a=Drawing.new("Quad")
                    a.Visible=true
                    a.Color=ArsoniaTable.Visuals.ESP.Color
                    a.Thickness=1
                    a.Transparency=1
                    a.Filled=false
                    a.PointA=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*-2+part.CFrame.UpVector*2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*-2+part.CFrame.UpVector*2.5).Y)-->^
                    a.PointB=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*2.5).Y)--<^
                    a.PointC=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*-2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*-2.5).Y)--<V
                    a.PointD=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*-2+part.CFrame.UpVector*-2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*-2+part.CFrame.UpVector*-2.5).Y)-->V
                    coroutine.wrap(function()
                        game.RunService.RenderStepped:Wait()
                        a:Remove()
                    end)()
                end
                if ArsoniaTable.Visuals.ESP.Tracers then
                    local b=Drawing.new("Line")
                    b.Visible=true
                    b.Color=ArsoniaTable.Visuals.ESP.Color
                    b.Thickness=1
                    b.Transparency=1
                    b.To=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.UpVector*-2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.UpVector*-2.5).Y)
                    b.From=Vector2.new(game:GetService("CoreGui").RobloxGui.AbsoluteSize.X/2,game:GetService("CoreGui").RobloxGui.AbsoluteSize.Y-game:GetService("CoreGui").ThemeProvider.TopBarFrame.AbsolutePosition.Y)
                    coroutine.wrap(function()
                        game.RunService.RenderStepped:Wait()
                        b:Remove()
                    end)()
                end
                if ArsoniaTable.Visuals.ESP.Health then
                    local healthnum=v.NRPBS.Health.Value
                    local maxhealth=v.NRPBS.MaxHealth.Value
                    local c=Drawing.new("Quad")
                    c.Visible=true
                    c.Color=ArsoniaTable.Visuals.ESP.Color
                    c.Thickness=1
                    c.Transparency=1
                    c.Filled=false
                    c.PointA=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*2.5).Y)-->^
                    c.PointB=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*2.5).Y)--<^
                    c.PointC=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*-2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*-2.5).Y)--<V
                    c.PointD=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*-2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*-2.5).Y)-->V
                    coroutine.wrap(function()
                    game.RunService.RenderStepped:Wait()
                        c:Remove()
                    end)()
                    local e=Drawing.new("Quad")
                    e.Visible=true
                    e.Color=Color3.new(1,0,0)
                    e.Thickness=1
                    e.Transparency=1
                    e.Filled=true
                    e.PointA=Vector2.new(
                    game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*2.5).Y)-->^
                    e.PointB=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*2.5).Y)--<^
                    e.PointC=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*-2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*-2.5).Y)--<V
                    e.PointD=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*-2.5).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*-2.5).Y)-->V
                    coroutine.wrap(function()
                        game.RunService.RenderStepped:Wait()
                        e:Remove()
                    end)()
                    local d=Drawing.new("Quad")
                    d.Visible=true
                    d.Color=Color3.new(0,1,0)
                    d.Thickness=1
                    d.Transparency=1
                    d.Filled=true
                    d.PointA=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*(-2.5+healthnum/(maxhealth/5))).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2.5+part.CFrame.UpVector*(-2.5+healthnum/(maxhealth/5))).Y)-->^
                    d.PointB=Vector2.new(
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*(-2.5+healthnum/(maxhealth/5))).X,
                        game.Workspace.CurrentCamera:WorldToViewportPoint(part.CFrame.Position+part.CFrame.RightVector*2+part.CFrame.UpVector*(-2.5+healthnum/(maxhealth/5))).Y)--<^
                    d.PointC=c.PointC--<V
                    d.PointD=c.PointD-->V
                    coroutine.wrap(function()
                        game.RunService.RenderStepped:Wait()
                        d:Remove()
                    end)()
                end
            end
        end
    end
end)
--Visuals Main RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Visuals.Main.Enabled then
        for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Crosshair:GetChildren())do
            if v.Name~="Center1"then
                v.BackgroundColor3=ArsoniaTable.Visuals.Main.Crosshaircol
            end
        end
        game.Workspace.CurrentCamera.CFrame=
        game.Workspace.CurrentCamera.CFrame*
        CFrame.new(ArsoniaTable.Visuals.Main.CameraoffsetX,ArsoniaTable.Visuals.Main.CameraoffsetY,ArsoniaTable.Visuals.Main.CameraoffsetZ)
        if ArsoniaTable.Visuals.Main.Antiflash then
            if game.Players.LocalPlayer.PlayerGui.GUI.Black.Size~=UDim2.new()then
                game.Players.LocalPlayer.PlayerGui.GUI.Black.Size=UDim2.new()
            end
        elseif game.Players.LocalPlayer.PlayerGui.GUI.Black.Size~=UDim2.new(2,0,2,0)then
            game.Players.LocalPlayer.PlayerGui.GUI.Black.Size=UDim2.new(2,0,2,0)
        end
        if ArsoniaTable.Visuals.Main.Xray then
            if game.Workspace:FindFirstChild("Map")then
                if not(game.ReplicatedStorage.wkspc.Status.RoundOver.Value or game.ReplicatedStorage.wkspc.Status.Preparation.Value)then
                    if not game.Workspace.Map:FindFirstChild("Xcum")then
                        local a=Instance.new("Folder")
                        a.Parent=game.Workspace.Map
                        a.Name="Xcum"
                        for _,v in pairs(game.Workspace.Map:GetDescendants())do
                            if v:IsA("BasePart")then
                                if not v:IsDescendantOf(game.Workspace.Map.Clips)then
                                    if not v:FindFirstChild("Transcock")then
                                        local a=Instance.new("NumberValue")
                                        a.Parent=v
                                        a.Value=v.Transparency
                                        a.Name="Transcock"
                                    end
                                    v.Transparency=v.Transparency+ArsoniaTable.Visuals.Main.XrayTrans
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        if game.Players.LocalPlayer.PlayerGui.GUI.Black.Size~=UDim2.new(2,0,2,0)then
            game.Players.LocalPlayer.PlayerGui.GUI.Black.Size=UDim2.new(2,0,2,0)
        end
    end
end)
--Visuals Viewmodel RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Visuals.Viewmodel.Enabled then
        if ArsoniaTable.Visuals.Viewmodel.Gunchams then
            if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
                if not game.Workspace.CurrentCamera.Arms:FindFirstChild("AnalBeads")then
                    local a=Instance.new("Folder")
                    a.Parent=game.Workspace.CurrentCamera.Arms
                    a.Name="AnalBeads"
                    for _,v in pairs(game.Workspace.CurrentCamera.Arms:GetChildren())do
                        if v.Name~="CSSArms"then
                            if v:IsA("BasePart")then
                                if v.Transparency~=1 then
                                    v.Color=ArsoniaTable.Visuals.Viewmodel.GunchamsCol
                                    v.Reflectance=ArsoniaTable.Visuals.Viewmodel.GunchamsRefl
                                    v.Transparency=ArsoniaTable.Visuals.Viewmodel.GunchamsTrans
                                    v.Material=Enum.Material[ArsoniaTable.Visuals.Viewmodel.GunchamsMat]
                                end
                            end
                            if v:IsA("MeshPart")then
                                v.TextureID=""
                            end
                            for _,c in pairs(v:GetDescendants())do
                                if c:IsA("BasePart")then
                                    c.Color=ArsoniaTable.Visuals.Viewmodel.GunchamsCol
                                    c.Reflectance=ArsoniaTable.Visuals.Viewmodel.GunchamsRefl
                                    c.Transparency=ArsoniaTable.Visuals.Viewmodel.GunchamsTrans
                                    c.Material=Enum.Material[ArsoniaTable.Visuals.Viewmodel.GunchamsMat]
                                end
                                if c:IsA("MeshPart")then
                                    c.TextureID=""
                                end
                                if c:IsA("SpecialMesh")then
                                    c.TextureId=""
                                end
                            end
                        end
                    end
                end
            end
        end
        if ArsoniaTable.Visuals.Viewmodel.Armchams then
            if game.Workspace.CurrentCamera:FindFirstChild("Arms")then
                if not game.Workspace.CurrentCamera.Arms.CSSArms:FindFirstChild("AnalSex")then
                    local a=Instance.new("Folder")
                    a.Parent=game.Workspace.CurrentCamera.Arms.CSSArms
                    a.Name="AnalSex"
                    for _,v in pairs(game.Workspace.CurrentCamera.Arms.CSSArms:GetDescendants())do
                        if v:IsA("BasePart")then
                            if v.Transparency~=1 then
                                v.Color=ArsoniaTable.Visuals.Viewmodel.ArmchamsCol
                                v.Transparency=ArsoniaTable.Visuals.Viewmodel.ArmchamsTrans
                            end
                        elseif v:IsA("SpecialMesh")then
                            v.TextureId=""
                        elseif v:IsA("Decal")then
                            v:Destroy()
                        end
                    end
                end
            end
        end
    end
end)
--Visuals World Ambience RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Visuals.Worldambience.Enabled then
        if game.Lighting.Ambient~=ArsoniaTable.Visuals.Worldambience.Ambience then
            game.Lighting.Ambient=ArsoniaTable.Visuals.Worldambience.Ambience
        end
        if game.Lighting.OutdoorAmbient~=ArsoniaTable.Visuals.Worldambience.Ambience then
            game.Lighting.OutdoorAmbient=ArsoniaTable.Visuals.Worldambience.Ambience
        end
        if game.Lighting.Brightness~=ArsoniaTable.Visuals.Worldambience.Brightness then
            game.Lighting.Brightness=ArsoniaTable.Visuals.Worldambience.Brightness
        end
        if game.Lighting.ClockTime~=ArsoniaTable.Visuals.Worldambience.Time then
            game.Lighting.ClockTime=ArsoniaTable.Visuals.Worldambience.Time
        end
    end
end)
--Aimbot Silent Aim RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Aimbot.Silentaim.Enabled then
        ArsoniaTable.Variables.__SilentAimTarget=nil
        local a
        local b=math.huge
        if ArsoniaTable.Aimbot.Silentaim.Ignorefov then
            if ArsoniaTable.Variables.TargetableParts[ArsoniaTable.Aimbot.Silentaim.Target][1]then
                for _,v in pairs(ArsoniaTable.Variables.TargetableParts[ArsoniaTable.Aimbot.Silentaim.Target])do
                    if b>(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude then
                        a=v
                        b=(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude
                    end
                end
            elseif not ArsoniaTable.Aimbot.Silentaim.Onlytarget then
                for _,v in pairs(ArsoniaTable.Variables.TargetableParts)do
                    for _,c in pairs(v)do
                        if b>(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-c.Position).Magnitude then
                            a=c
                            b=(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-c.Position).Magnitude
                        end
                    end
                end
            end
        else
            local circ=Drawing.new("Circle")
            circ.Visible=true
            circ.Position=Vector2.new(game:GetService("CoreGui").RobloxGui.AbsoluteSize.X/2,game:GetService("CoreGui").RobloxGui.AbsoluteSize.Y/2-game:GetService("CoreGui").ThemeProvider.TopBarFrame.AbsolutePosition.Y/2)
            circ.Color=Color3.new(1,0,175/255)
            circ.Thickness=2.5
            circ.Transparency=1
            circ.NumSides=100
            circ.Radius=ArsoniaTable.Aimbot.Silentaim.Fov
            coroutine.wrap(function()
                game.RunService.RenderStepped:wait()
                circ:Remove()
            end)()
            local test_anal=false
            for _,v in pairs(ArsoniaTable.Variables.TargetableParts[ArsoniaTable.Aimbot.Silentaim.Target])do
                if(Vector2.new(game.Workspace.CurrentCamera:WorldToScreenPoint(v.Position).X,game.Workspace.CurrentCamera:WorldToScreenPoint(v.Position).Y)-Vector2.new(game.Players.LocalPlayer:GetMouse().X,game.Players.LocalPlayer:GetMouse().Y)).Magnitude<=ArsoniaTable.Aimbot.Silentaim.Fov then
                    if b>(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude then
                        a=v
                        b=(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude
                        test_anal=true
                    end
                end
            end
            if not test_anal and not ArsoniaTable.Aimbot.Silentaim.Onlytarget then
                for _,v in pairs(ArsoniaTable.Variables.TargetableParts)do
                    for _,c in pairs(v)do
                        local _,d=game.Workspace.CurrentCamera:WorldToScreenPoint(c.Position)
                        if d then
                            if(Vector2.new(game.Workspace.CurrentCamera:WorldToScreenPoint(c.Position).X,game.Workspace.CurrentCamera:WorldToScreenPoint(c.Position).Y)-Vector2.new(game.Players.LocalPlayer:GetMouse().X,game.Players.LocalPlayer:GetMouse().Y)).Magnitude<=ArsoniaTable.Aimbot.Silentaim.Fov then
                                if b>(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-c.Position).Magnitude then
                                    a=c
                                    b=(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-c.Position).Magnitude
                                end
                            end
                        end
                    end
                end
            end
        end
        ArsoniaTable.Variables.__SilentAimTarget=a
        if ArsoniaTable.Aimbot.Silentaim.Fakelock then
            ArsoniaTable.Variables.EngluarFix=nil
            if ArsoniaTable.Variables.__SilentAimTarget then
                ArsoniaTable.Variables.EngluarFix=Vector3.new(CFrame.new(game.Players.LocalPlayer.Character.Head.Position,ArsoniaTable.Variables.__SilentAimTarget.Position):ToEulerAnglesYXZ())
                if not ArsoniaTable.Player.Anti_Aim.Enabled then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*
                    CFrame.Angles(0,ArsoniaTable.Variables.EngluarFix.Y,0)
                end
            end
        end
    end
end)
--Aimbot Backtrack RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Aimbot.Backtrack.Enabled then
        if ArsoniaTable.Aimbot.Backtrack.Target~="All"then
            for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                for _,c in pairs(ArsoniaTable.Variables.R6TR15[ArsoniaTable.Aimbot.Backtrack.Target])do
                    if v.Character:FindFirstChild(c)then
                        local part=v.Character[c]
                        local a=Instance.new("Part")
                        a.Parent=part
                        a.Size=part.Size
                        a.Color=ArsoniaTable.Aimbot.Backtrack.Color
                        a.CanCollide=false
                        a.Anchored=true
                        a.CFrame=part.CFrame
                        a.Name="Backtrack"
                        a.Reflectance=ArsoniaTable.Aimbot.Backtrack.Refl
                        a.Material=ArsoniaTable.Aimbot.Backtrack.Material
                        table.insert(ArsoniaTable.Variables.Backtracks,a)
                        if ArsoniaTable.Aimbot.Backtrack.Showall then
                            if ArsoniaTable.Visuals.ESP.Enabled and ArsoniaTable.Visuals.ESP.BacktrackChams then
                                a.Transparency=1
                            else
                                a.Transparency=ArsoniaTable.Aimbot.Backtrack.Trans
                            end
                        else
                            a.Transparency=1
                        end
                        local b=Instance.new("BoxHandleAdornment")
                        if ArsoniaTable.Visuals.ESP.Enabled and ArsoniaTable.Visuals.ESP.BacktrackChams then
                            b.Size=a.Size
                            b.Parent=game.CoreGui
                            b.AlwaysOnTop=true
                            b.Adornee=a
                            b.ZIndex=0
                            if ArsoniaTable.Aimbot.Backtrack.Showall then
                                b.Transparency=ArsoniaTable.Aimbot.Backtrack.Trans
                            else
                                b.Transparency=1
                            end
                            b.Color3=ArsoniaTable.Aimbot.Backtrack.Color
                        else
                            b:Destroy()
                        end
                        coroutine.wrap(function()
                            wait(ArsoniaTable.Aimbot.Backtrack.Lifetime)
                            game.RunService.RenderStepped:Wait()
                            if not(ArsoniaTable.Visuals.ESP.Enabled and ArsoniaTable.Visuals.ESP.BacktrackChams)then
                                a.Transparency=ArsoniaTable.Aimbot.Backtrack.Trans
                            end
                            b.Transparency=ArsoniaTable.Aimbot.Backtrack.Trans
                            game.RunService.RenderStepped:Wait()
                            a:Destroy()
                            b:Destroy()
                        end)()
                    end
                end
            end
        end
    end
end)
--Aimbot Hitboxes RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Aimbot.Hitboxes.Enabled then
        for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
            for _,c in pairs(ArsoniaTable.Variables.R6TR15[ArsoniaTable.Aimbot.Hitboxes.Target])do
                if v.Character:FindFirstChild(c)then
                    local part=v.Character[c]
                    local a=Instance.new("Part")
                    a.Name="Backtrack"
                    a.Parent=part
                    if ArsoniaTable.Aimbot.Hitboxes.Sizetype=="Absolute"then
                        a.Size=Vector3.new(ArsoniaTable.Aimbot.Hitboxes.Size,ArsoniaTable.Aimbot.Hitboxes.Size,ArsoniaTable.Aimbot.Hitboxes.Size)
                    else
                        a.Size=part.Size+Vector3.new(ArsoniaTable.Aimbot.Hitboxes.Size,ArsoniaTable.Aimbot.Hitboxes.Size,ArsoniaTable.Aimbot.Hitboxes.Size)
                    end
                    a.Color=ArsoniaTable.Aimbot.Hitboxes.Color
                    a.CanCollide=false
                    a.Anchored=true
                    a.CFrame=part.CFrame
                    a.Reflectance=ArsoniaTable.Aimbot.Hitboxes.Refl
                    a.Material=ArsoniaTable.Aimbot.Hitboxes.Material
                    a.Transparency=ArsoniaTable.Aimbot.Hitboxes.Trans
                    table.insert(ArsoniaTable.Variables.Backtracks,a)
                    coroutine.wrap(function()
                        game.RunService.RenderStepped:Wait()
                        a:Destroy()
                    end)()
                end
            end
        end
    end
end)
--Combat Main RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Combat.Main.Enabled then
        if ArsoniaTable.Combat.Main.Headstompaura then
            for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                if ArsoniaTable.Combat.Main.HeadstompauraType=="Near Death + TP"then
                    if v.NRPBS.Health.Value~=1 then
                        if not ArsoniaTable.Variables.Functions.IsHackula()then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                            v.Character.HumanoidRootPart.CFrame+
                            Vector3.new(0,4.5,0)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity=
                            Vector3.new()
                            local a=Instance.new("IntValue")
                            a.Name="changedirection"
                            a.Parent=game.Players.LocalPlayer.Character
                            game.ReplicatedStorage.Events.FallDamage:FireServer(math.clamp((v.NRPBS.Health.Value-1)/4,0,600),v.Character.Hitbox)
                            break
                        end
                    end
                elseif ArsoniaTable.Combat.Main.HeadstompauraType=="TP"then
                    if v.NRPBS.Health.Value~=1 then
                        if not ArsoniaTable.Variables.Functions.IsHackula()then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                            v.Character.HumanoidRootPart.CFrame+
                            Vector3.new(0,4.5,0)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity=
                            Vector3.new()
                            local a=Instance.new("IntValue")
                            a.Name="changedirection"
                            a.Parent=game.Players.LocalPlayer.Character
                            game.ReplicatedStorage.Events.FallDamage:FireServer(25,v.Character.Hitbox)
                            break
                        end
                    end
                else
                    if(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).Magnitude<50 then
                        if ArsoniaTable.Combat.Main.HeadstompauraType=="Basic"then
                            game.ReplicatedStorage.Events.FallDamage:FireServer(ArsoniaTable.Combat.Main.HeadstompauraVal/4,v.Character.Hitbox)
                            break
                        elseif ArsoniaTable.Combat.Main.HeadstompauraType=="Near Death"then
                            if v.NRPBS.Health.Value~=1 then
                                game.ReplicatedStorage.Events.FallDamage:FireServer(math.clamp((v.NRPBS.Health.Value-1)/4,0,600),v.Character.Hitbox)
                                break
                            end
                        end
                    end
                end
            end
        end
        if ArsoniaTable.Combat.Main.Killaura then
            for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                if(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).Magnitude<50 then
                    game.ReplicatedStorage.Events.Burn:FireServer(
                        v.Character.Head,
                        game.ReplicatedStorage.Weapons[ArsoniaTable.Combat.Main.KillauraMethod],
                        1,
                        v.Character.Head.Position+Vector3.new(math.random(),math.random(),math.random()))
                end
            end
        end
        if ArsoniaTable.Combat.Main.ProjectileAura then
            for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                if(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).Magnitude<50 then
                    local Partpos=v.Character.Head.Position+Vector3.new(math.random(),math.random(),math.random())
                    local Packedstring=string.pack(
                        ArsoniaTable.Variables.Hitparter,
                        Partpos.X,
                        Partpos.Y,
                        Partpos.Z,
                        ArsoniaTable.Combat.Main.ProjectileAuraMethod,
                        ArsoniaTable.Combat.Main.ProjectileAuraHead,--headshot=1 none=0
                        0,--unknown
                        0,--backstab=1 none=0
                        0,--forcecrit=1 none=0
                        0,--morecrit=1 none=0
                        0,--spoof=2 none=0
                        0,--unkown
                        0,--Player Distance
                        1,--Current Spell
                        0,--scope=1 noscope=0
                        ArsoniaTable.Combat.Main.ProjectileAuraAir--aircrit=1 none=0
                    )
                    game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,Packedstring)
                end
            end
        end
        if ArsoniaTable.Combat.Main.Killall then
            for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                --[[game.ReplicatedStorage.Events.Burn:FireServer(
                    v.Character.Head,
                    ArsoniaTable.Variables.MaxDamage,
                    1,
                    v.Character.Head.Position+Vector3.new(math.random(),math.random(),math.random()))
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                v.Character.HumanoidRootPart.CFrame]]
                local Partpos=v.Character.Head.Position+Vector3.new(math.random(),math.random(),math.random())
                if ArsoniaTable.Combat.Main.KillallMethod=="Max Crits"then
                    local Packedstring=string.pack(
                        ArsoniaTable.Variables.Hitparter,
                        Partpos.X,
                        Partpos.Y,
                        Partpos.Z,
                        "Autobow",
                        1,--headshot=1 none=0
                        0,--unknown
                        1,--backstab=1 none=0
                        0,--forcecrit=1 none=0
                        0,--morecrit=1 none=0
                        0,--spoof=2 none=0
                        0,--unkown
                        0,--Player Distance
                        1,--Current Spell
                        0,--scope=1 noscope=0
                        1--aircrit=1 none=0
                    )
                    game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,Packedstring)
                elseif ArsoniaTable.Combat.Main.KillallMethod=="Spoofed"then
                    local Packedstring=string.pack(
                        ArsoniaTable.Variables.Hitparter,
                        Partpos.X,
                        Partpos.Y,
                        Partpos.Z,
                        "Bow",
                        0,--headshot=1 none=0
                        0,--unknown
                        0,--backstab=1 none=0
                        0,--forcecrit=1 none=0
                        0,--morecrit=1 none=0
                        2,--spoof=2 none=0
                        0,--unkown
                        0,--Player Distance
                        1,--Current Spell
                        0,--scope=1 noscope=0
                        0--aircrit=1 none=0
                    )
                    game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,Packedstring)
                elseif ArsoniaTable.Combat.Main.KillallMethod=="Equipped"then
                    local Packedstring=string.pack(
                        ArsoniaTable.Variables.Hitparter,
                        Partpos.X,
                        Partpos.Y,
                        Partpos.Z,
                        tostring(ArsoniaTable.Variables.Killmethods.Equipped),
                        0,--headshot=1 none=0
                        0,--unknown
                        0,--backstab=1 none=0
                        0,--forcecrit=1 none=0
                        0,--morecrit=1 none=0
                        0,--spoof=2 none=0
                        0,--unkown
                        0,--Player Distance
                        1,--Current Spell
                        0,--scope=1 noscope=0
                        0--aircrit=1 none=0
                    )
                    game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,Packedstring)
                end
            end
        end
        if ArsoniaTable.Combat.Main.Deathkill then
            for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                if not v.Character:FindFirstChild("__Arsonia_Beta")then
                    local a=Instance.new("Folder")
                    a.Name="__Arsonia_Beta"
                    a.Parent=v.Character
                    v.Character.ChildAdded:Connect(function(x)
                        if tostring(x)=="IKilled"then
                            if ArsoniaTable.Combat.Main.Deathkill and ArsoniaTable.Combat.Main.Enabled then
                                if x.Value==game.Players.LocalPlayer.Name then
                                    repeat 
                                        wait()
                                        local Partpos=v.Character.Head.Position+Vector3.new(math.random(),math.random(),math.random())
                                        if ArsoniaTable.Combat.Main.DeathkillMethod=="Max Crits"then
                                            local Packedstring=string.pack(
                                                ArsoniaTable.Variables.Hitparter,
                                                Partpos.X,
                                                Partpos.Y,
                                                Partpos.Z,
                                                "Autobow",
                                                1,--headshot=1 none=0
                                                0,--unknown
                                                1,--backstab=1 none=0
                                                0,--forcecrit=1 none=0
                                                0,--morecrit=1 none=0
                                                0,--spoof=2 none=0
                                                0,--unkown
                                                0,--Player Distance
                                                1,--Current Spell
                                                0,--scope=1 noscope=0
                                                1--aircrit=1 none=0
                                            )
                                            game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,Packedstring)
                                        elseif ArsoniaTable.Combat.Main.DeathkillMethod=="Spoofed"then
                                            local Packedstring=string.pack(
                                                ArsoniaTable.Variables.Hitparter,
                                                Partpos.X,
                                                Partpos.Y,
                                                Partpos.Z,
                                                "Bow",
                                                0,--headshot=1 none=0
                                                0,--unknown
                                                0,--backstab=1 none=0
                                                0,--forcecrit=1 none=0
                                                0,--morecrit=1 none=0
                                                2,--spoof=2 none=0
                                                0,--unkown
                                                0,--Player Distance
                                                1,--Current Spell
                                                0,--scope=1 noscope=0
                                                0--aircrit=1 none=0
                                            )
                                            game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,Packedstring)
                                        end
                                    until not v.Character:FindFirstChild("Spawned")
                                end
                            end
                        end
                    end)
                end
            end
        end
    end
end)
--Combat Gunmods RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if ArsoniaTable.Combat.Gunmods.Firemode~="Current"then
            if ArsoniaTable.Combat.Gunmods.Firemode=="Automatic"then
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode="automatic"
            else
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode="__nilvalue"
            end
        end
        if ArsoniaTable.Combat.Gunmods.Autospool then
            if tostring(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value)=="Minigun"then
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.Held2.Value=true
            end
        end
        if ArsoniaTable.Combat.Gunmods.Infcharge then
            game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.overheat.Value=0
        end
    end
end)
--Misc Main RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Misc.Main.Enabled then
        if ArsoniaTable.Misc.Main.Antimonkey then
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Donkey")then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Donkey:Destroy()
            end
        end
        if ArsoniaTable.Misc.Main.Autopickupbanana then
            if game.Workspace:FindFirstChild("Debris")then
                if game.Workspace.Debris.Bananas then
                    for _,v in pairs(game.Workspace.Debris.Bananas:GetChildren())do
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame-
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position+v.Position)
                        +Vector3.new(0,.5,0)
                    end
                end
            end
        end
        if ArsoniaTable.Misc.Main.Autopickupball then
            if game.Workspace:FindFirstChild("Debris")then
                if game.Workspace.Debris:FindFirstChild("Oddball")then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                    game.Workspace.Debris.Oddball.Ballnew.CFrame
                end
            end
        end
        if ArsoniaTable.Misc.Main.Removemapborders then
            if not game.ReplicatedStorage.wkspc.Status.Preparation.Value and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value then
                if game.Workspace:FindFirstChild("Map")then
                    if game.Workspace.Map:FindFirstChild("Clips")then
                        if not game.Workspace.Map.Clips:FindFirstChild("IsRemoved")then
                            local a=Instance.new("Folder")
                            a.Parent=game.Workspace.Map.Clips
                            a.Name="IsRemoved"
                            for _,v in pairs(game.Workspace.Map.Clips:GetDescendants())do
                                if v:IsA("BasePart")then
                                    if not v:FindFirstChild("OGCanCollide")then
                                        local a=Instance.new("BoolValue")
                                        a.Parent=v
                                        a.Name="OGCanCollide"
                                        a.Value=v.CanCollide
                                    end
                                    if v.CanCollide then
                                        v.CanCollide=false
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        if ArsoniaTable.Misc.Main.Devicespoofer=="Wii Steering Wheel"then
            local a={"Touch","MouseButton1","Gamepad1","none"}
            game.ReplicatedStorage.Events.CoolNewRemote:FireServer(a[math.random(1,#a)])
        end
        if ArsoniaTable.Misc.Main.Pingspoofer=="Random"then
            local a={0,.25,.5}
            game.ReplicatedStorage.Events.UpdatePing:FireServer(a[math.random(1,#a)])
        end
        if ArsoniaTable.Misc.Main.Fastrespawn then
            getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).reviveme=true
        end
        if ArsoniaTable.Misc.Main.Autodeploy then
            if not game.ReplicatedStorage.wkspc.Status.Preparation.Value and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value then
                if game:GetService("Players").LocalPlayer.Status.Team.Value=="Spectator"then
                    local teamto="TRC"
                    local teamtable={}
                    if game:GetService("ReplicatedStorage").wkspc.TwoTeams.Value then
                        teamtable={
                            TRC=game:GetService("ReplicatedStorage").wkspc.Status.NumTRC.Value,
                            TBC=game:GetService("ReplicatedStorage").wkspc.Status.NumTBC.Value,
                        }
                    elseif game:GetService("ReplicatedStorage").wkspc.FFA.Value then
                        teamtable={
                            Random=0,
                        }
                    else
                        teamtable={
                            TRC=game:GetService("ReplicatedStorage").wkspc.Status.NumTRC.Value,
                            TBC=game:GetService("ReplicatedStorage").wkspc.Status.NumTBC.Value,
                            TGC=game:GetService("ReplicatedStorage").wkspc.Status.NumTGC.Value,
                            TYC=game:GetService("ReplicatedStorage").wkspc.Status.NumTYC.Value,
                        }
                    end
                    local num=math.huge
                    for i,v in pairs(teamtable)do
                        if v<num then
                            num=v
                            teamto=i
                        end
                    end
                    game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer(teamto)
                end
                if game.Players.LocalPlayer.PlayerGui.Menew.Enabled then
                    game.Players.LocalPlayer.PlayerGui.Menew.Enabled=false
                end
                if not game.Players.LocalPlayer.PlayerGui.GUI.Enabled then
                    game.Players.LocalPlayer.PlayerGui.GUI.Enabled=true
                end
                if game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible then
                    game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible=false
                end
                if game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible then
                    game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible=false
                end
            end
        end
        if ArsoniaTable.Misc.Main.Antiteamleader then
            if game.Players.LocalPlayer:FindFirstChild("TeamLeader")then
                game.Players.LocalPlayer.TeamLeader:Destroy()
            end
        end
    end
end)
--Misc Trolling RS
game.RunService.RenderStepped:Connect(function()
    if ArsoniaTable.Misc.Trolling.Enabled then
        if ArsoniaTable.Misc.Trolling.Flingaura then
            for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                if(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).Magnitude<50 then
                    game.ReplicatedStorage.Events.Burn:FireServer(
                        v.Character.Head,
                        game.ReplicatedStorage.Weapons.Windforce,
                        0,
                        v.Character.Head.Position+Vector3.new(math.random(),math.random(),math.random()))
                end
            end
        end
        if ArsoniaTable.Misc.Trolling.Deleteball then
            if tostring(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value)=="OddBall"then
                game:GetService("ReplicatedStorage").Events.ThrowBall:FireServer(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                    Vector3.new(0,-math.huge,0))
            end
        end
        if ArsoniaTable.Misc.Trolling.PlayerSurf then
            local Raycock=Ray.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                Vector3.new(0,-5,0)
            )
            local part=game.Workspace:FindPartOnRayWithIgnoreList(Raycock,ArsoniaTable.Variables.Functions.GetTrueIgnore())
            if part then
                for _,v in pairs(ArsoniaTable.Variables.Functions.GetPlayers())do
                    if part:IsDescendantOf(v.Character)then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame-
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position+
                        v.Character.HumanoidRootPart.Position)*
                        CFrame.new(0,(v.Character.Head.Position.Y-v.Character.HumanoidRootPart.Position.Y)+3.5,0)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity=
                        v.Character.HumanoidRootPart.Velocity
                        local a=Instance.new("IntValue")
                        a.Name="changedirection"
                        a.Parent=game.Players.LocalPlayer.Character
                        break
                    end
                end
            end
        end
    end
end)



local mt=getrawmetatable(game)
local oldNamecall=mt.__namecall
local oldnewIndex=mt.__newindex
local oldIndex=mt.__index
setreadonly(mt,false)
--Namecall
mt.__namecall=newcclosure(function(a,b,c,d,e,...)
    local method=getnamecallmethod()
    if tostring(method)=="FireServer"then
        if tostring(a)=="ControlTurn"then
            if ArsoniaTable.Player.Anti_Aim.Enabled then
                if not ArsoniaTable.Variables.Functions.IsRoundOver()then
                    if ArsoniaTable.Player.Anti_Aim.Pitch then
                        if ArsoniaTable.Player.Anti_Aim.PitchType=="Spinning"then
                            ArsoniaTable.Variables.Pitch=ArsoniaTable.Variables.Pitch+ArsoniaTable.Player.Anti_Aim.PitchValue
                            b=ArsoniaTable.Variables.Pitch
                        elseif ArsoniaTable.Player.Anti_Aim.PitchType=="Offset"then
                            b=b+ArsoniaTable.Player.Anti_Aim.PitchValue
                        elseif ArsoniaTable.Player.Anti_Aim.PitchType=="Absolute"then
                            b=ArsoniaTable.Player.Anti_Aim.PitchValue
                        elseif ArsoniaTable.Player.Anti_Aim.PitchType=="Down"then
                            b=math.huge
                        elseif ArsoniaTable.Player.Anti_Aim.PitchType=="Random"then
                            b=math.rad(math.random(math.deg(ArsoniaTable.Player.Anti_Aim.PitchValue),-math.deg(ArsoniaTable.Player.Anti_Aim.PitchValue)))
                        elseif ArsoniaTable.Player.Anti_Aim.PitchType=="Inverted"then
                            b=-b
                        elseif ArsoniaTable.Player.Anti_Aim.PitchType=="Frozen"then
                            if ArsoniaTable.Variables.EngluarFix then
                                ArsoniaTable.Variables.Pitch=ArsoniaTable.Variables.EngluarFix.X
                            end
                            b=ArsoniaTable.Variables.Pitch
                        end
                    end
                    if ArsoniaTable.Player.Anti_Aim.CrouchPitch then
                        if ArsoniaTable.Variables.Crouching then
                            if ArsoniaTable.Player.Anti_Aim.CrouchPitchType=="Absolute"then
                                b=ArsoniaTable.Player.Anti_Aim.CrouchPitchVal
                            elseif ArsoniaTable.Player.Anti_Aim.CrouchPitchType=="Random"then
                                b=math.rad(math.random(math.deg(ArsoniaTable.Player.Anti_Aim.CrouchPitchVal),-math.deg(ArsoniaTable.Player.Anti_Aim.CrouchPitchVal)))
                            end
                        end
                    end
                    if ArsoniaTable.Player.Anti_Aim.Torso then
                        if ArsoniaTable.Player.Anti_Aim.TorsoType=="Offset"then
                            c=
                            (
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*
                                CFrame.Angles(0,ArsoniaTable.Player.Anti_Aim.TorsoValue,0)
                            ).LookVector
                        elseif ArsoniaTable.Player.Anti_Aim.TorsoType=="Down"then
                            c=Vector3.new()
                            b=b*2
                        elseif ArsoniaTable.Player.Anti_Aim.TorsoType=="Sideways"then
                            c=Vector3.new(0,1,0)
                        elseif ArsoniaTable.Player.Anti_Aim.TorsoType=="-Sideways"then
                            c=Vector3.new(0,-1,0)
                        elseif ArsoniaTable.Player.Anti_Aim.TorsoType=="Random"then
                            c=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                        elseif ArsoniaTable.Player.Anti_Aim.TorsoType=="Spinning"then
                            ArsoniaTable.Variables.TorsoYaw=ArsoniaTable.Variables.TorsoYaw-ArsoniaTable.Player.Anti_Aim.TorsoValue
                            c=CFrame.Angles(0,ArsoniaTable.Variables.TorsoYaw,0).LookVector
                        elseif ArsoniaTable.Player.Anti_Aim.TorsoType=="Absolute"then
                            c=CFrame.Angles(0,ArsoniaTable.Player.Anti_Aim.TorsoValue,0).LookVector
                        elseif ArsoniaTable.Player.Anti_Aim.TorsoType=="Cam"then
                            c=CFrame.Angles(0,ArsoniaTable.Variables.CamAngles[2],0).LookVector
                        end
                    end
                end
            end
            if ArsoniaTable.Aimbot.Silentaim.Enabled then
                if ArsoniaTable.Aimbot.Silentaim.Fakelock then
                    if ArsoniaTable.Variables.EngluarFix then
                        b=ArsoniaTable.Variables.EngluarFix.X
                        c=nil
                    end
                end
            end
        elseif tostring(a)=="CreateProjectile"then
            if ArsoniaTable.Aimbot.Silentaim.Enabled then
                if ArsoniaTable.Variables.__SilentAimTarget then
                    if ArsoniaTable.Aimbot.Silentaim.Hitchance>=math.random(1,100)then
                        d=ArsoniaTable.Variables.__SilentAimTarget.Position
                        e=CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0))
                    end
                end
            end
        elseif tostring(a)=="HitPart"then
            if tostring(b)=="Backtrack"then
                b=b.Parent
            end
        elseif tostring(a)=="DJ"then
            if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value then
                if not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value:FindFirstChild("DoubleJump")then
                    game.ReplicatedStorage.Events.ApplyGun:FireServer(game.ReplicatedStorage.Weapons["Golden Knife"])
                    spawn(function()
                        game.ReplicatedStorage.Events.ApplyGun:FireServer(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value)
                    end)
                end
            end
        elseif tostring(a)=="CoolNewRemote"then
            if ArsoniaTable.Misc.Main.Enabled then
                if ArsoniaTable.Misc.Main.Devicespoofer=="Mobile"then
                    b="Touch"
                elseif ArsoniaTable.Misc.Main.Devicespoofer=="PC"then
                    b="MouseButton1"
                elseif ArsoniaTable.Misc.Main.Devicespoofer=="XBOX"then
                    b="Gamepad1"
                elseif ArsoniaTable.Misc.Main.Devicespoofer=="None"then
                    b="none"
                end
            end
        elseif tostring(a)=="UpdatePing"then
            if ArsoniaTable.Misc.Main.Enabled then
                if ArsoniaTable.Misc.Main.Pingspoofer=="Green"then
                    b=0
                elseif ArsoniaTable.Misc.Main.Pingspoofer=="Yellow"then
                    b=.25
                elseif ArsoniaTable.Misc.Main.Pingspoofer=="Red"then
                    b=.5
                end
            end
        elseif tostring(a)=="PlayerChatted"then
            if ArsoniaTable.Misc.Main.Enabled then
                if ArsoniaTable.Misc.Main.Doublechat then
                    b=b.."\n: "..b
                end
            end
        end
    elseif tostring(method)=="LoadAnimation"then
        if tostring(a)=="Guy"then
            if ArsoniaTable.Combat.Gunmods.Enabled then
                if ArsoniaTable.Combat.Gunmods.Forcebackstab then
                    if tostring(b)=="fire"or tostring(b)=="fire2"or tostring(b)=="fire3"then
                        if b.Parent then
                            pcall(function()
                                b=b.Parent.fire4
                            end)
                        end
                    end
                end
                if ArsoniaTable.Combat.Gunmods.Enabled then
                    if ArsoniaTable.Combat.Gunmods.Instantequip then
                        if string.find(string.lower(tostring(b)),"equip")then
                            b=ArsoniaTable.Variables.Animations.NoAnimation
                        end
                    end
                end
                if ArsoniaTable.Combat.Gunmods.Instantreload then
                    if string.find(string.lower(tostring(b)),"reload")then
                        b=ArsoniaTable.Variables.Animations.NoAnimation
                    end
                end
            end
        end
    elseif tostring(method)=="Play"then
        if tostring(a)=="Fall"or tostring(a)=="Jump"then
            if ArsoniaTable.Player.Misc.Enabled then
                if ArsoniaTable.Player.Misc.Jumpremove then
                    a:AdjustSpeed(0)
                end
            end
        elseif tostring(a)=="idle"then
            if ArsoniaTable.Combat.Gunmods.Enabled then
                if ArsoniaTable.Combat.Gunmods.Removesway then
                    a:AdjustSpeed(0)
                end
            end
        elseif string.find(tostring(a),"fire")then
            if ArsoniaTable.Combat.Gunmods.Enabled then
                if ArsoniaTable.Combat.Gunmods.Removeonfire and not ArsoniaTable.Variables.IsKnife then
                    a:AdjustSpeed(0)
                end
                if ArsoniaTable.Combat.Gunmods.RemoveonfireKnife and ArsoniaTable.Variables.IsKnife then
                    a:AdjustSpeed(0)
                end
            end
        elseif tostring(a)=="CrouchIdle"then
            if ArsoniaTable.Player.Misc.Enabled then
                if b==.4 then
                    b=ArsoniaTable.Player.Misc.CrouchSpval
                end
            end
        end
    elseif tostring(method)=="Stop"then
        if tostring(a)=="CrouchIdle"then
            if ArsoniaTable.Player.Misc.Enabled then
                if b==.4 then
                    b=ArsoniaTable.Player.Misc.CrouchSpunval
                end
            end
        end
    elseif tostring(method)=="SetPrimaryPartCFrame"then
        if tostring(a)=="Arms"then
            if ArsoniaTable.Combat.Gunmods.Enabled then
                if ArsoniaTable.Combat.Gunmods.Removebob then
                    if not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.ads.Value then
                        if ArsoniaTable.Variables.IsAlive then
                            if game.Players.LocalPlayer.CameraMode~=0 then
                                b=game.Workspace.CurrentCamera.CFrame*CFrame.new(ArsoniaTable.Variables.Offset_GUN)
                            end
                        end
                    end
                end
            end
            if ArsoniaTable.Visuals.Main.Enabled then
                if ArsoniaTable.Visuals.Main.Anticrouch then
                    if not ArsoniaTable.Visuals.Main.Anticrouch2 then
                        b=b+Vector3.new(0,ArsoniaTable.Variables.CrouchOffset,0)
                    end
                end
            end
            if ArsoniaTable.Visuals.Main.Enabled then
                b=b*CFrame.new(ArsoniaTable.Visuals.Main.ArmoffsetX,ArsoniaTable.Visuals.Main.ArmoffsetY,ArsoniaTable.Visuals.Main.ArmoffsetZ)
            end
        end
    elseif tostring(method)=="FindPartOnRayWithIgnoreList"then
        local doeshit=false
        if ArsoniaTable.Aimbot.Silentaim.Hitchance>=math.random(1,100)then
            doeshit=true
        end
        if ArsoniaTable.Combat.Gunmods.Enabled then
            if ArsoniaTable.Variables.Functions.GetPos1FromRay(b)==game.Workspace.CurrentCamera.CFrame.Position then
                if ArsoniaTable.Combat.Gunmods.Baseballgun then
                    ArsoniaTable.Variables.Functions.SummonBaseBall(ArsoniaTable.Combat.Gunmods.BaseballgunValue,ArsoniaTable.Combat.Gunmods.BaseballgunSpeed)
                end
                if ArsoniaTable.Combat.Gunmods.Lasergun then
                    ArsoniaTable.Variables.Functions.SummonLaser(ArsoniaTable.Combat.Gunmods.LasergunCol,ArsoniaTable.Combat.Gunmods.LasergunValue)
                end
                if ArsoniaTable.Combat.Gunmods.ExplosiveBullets then
                    local Raycock=
                    Ray.new(
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5,0)+Vector3.new(0,game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0),
                        game.Workspace.CurrentCamera.CFrame.LookVector*5000
                    )
                    local part,pos=game.Workspace:FindPartOnRayWithIgnoreList(Raycock,ArsoniaTable.Variables.Functions.GetIgnore())
                    game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(
                        game:GetService("ReplicatedStorage").Weapons["Bomb"]
                    )
                    game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(
                        game.Workspace.CurrentCamera.CFrame.LookVector*((game.Workspace.CurrentCamera.CFrame.Position-pos).Magnitude*7.5),
                        1+math.random(),--unknown
                        false,--unknown
                        .1--time
                    )
                    game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(
                        game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value
                    )
                end
            end
        end
        if ArsoniaTable.Visuals.Bullettracers.Enabled then
            if ArsoniaTable.Variables.Functions.GetPos1FromRay(b)==game.Workspace.CurrentCamera.CFrame.Position then
                local start=game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0)
                local notend
                if doeshit and ArsoniaTable.Variables.__SilentAimTarget then
                    notend=ArsoniaTable.Variables.__SilentAimTarget.Position
                else
                    local _,nooot=oldNamecall(a,b,c,d,e,...)
                    notend=nooot
                end
                local part=Instance.new("Part")
                part.CanCollide=false
                part.Parent=game.Workspace.Ray_Ignore
                part.Anchored=true
                part.CFrame=(CFrame.new(start,notend)+(CFrame.new(start,notend).LookVector*(start-notend).Magnitude/2))*CFrame.Angles(0,math.rad(90),0)
                part.Shape="Cylinder"
                part.Transparency=ArsoniaTable.Visuals.Bullettracers.Transparency
                part.Material=ArsoniaTable.Visuals.Bullettracers.Material
                part.Size=Vector3.new((start-notend).Magnitude,ArsoniaTable.Visuals.Bullettracers.Width,ArsoniaTable.Visuals.Bullettracers.Width)
                part.Color=ArsoniaTable.Visuals.Bullettracers.Color
                part.Reflectance=ArsoniaTable.Visuals.Bullettracers.Refl
                local megacummy=true
                if ArsoniaTable.Visuals.Bullettracers.Keeptopart then
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if megacummy then
                            start=game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0)
                            part.CFrame=(CFrame.new(start,notend)+(CFrame.new(start,notend).LookVector*(start-notend).Magnitude/2))*CFrame.Angles(0,math.rad(90),0)
                            part.Size=Vector3.new((start-notend).Magnitude,ArsoniaTable.Visuals.Bullettracers.Width,ArsoniaTable.Visuals.Bullettracers.Width)
                        end
                    end)
                end
                if ArsoniaTable.Visuals.Bullettracers.Updatecol then
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if megacummy then
                            part.Color=ArsoniaTable.Visuals.Bullettracers.Color
                        end
                    end)
                end
                coroutine.wrap(function()
                    wait(ArsoniaTable.Visuals.Bullettracers.Lifetime)
                    megacummy=false
                    part:Destroy()
                end)()
            end
        end
        if ArsoniaTable.Aimbot.Silentaim.Enabled then
            if ArsoniaTable.Variables.Functions.GetPos1FromRay(b)==game.Workspace.CurrentCamera.CFrame.Position then
                if ArsoniaTable.Variables.__SilentAimTarget then
                    if doeshit then
                        b=Ray.new(
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0),
                            ArsoniaTable.Variables.__SilentAimTarget.Position-(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0))
                        )
                    end
                end
            end
        end
        for _,v in pairs(c)do
            if tostring(v)=="Backtrack"then
                v=nil
            end
        end
    end
    return oldNamecall(a,b,c,d,e,...)
end)


--Newindex
mt.__newindex=newcclosure(function(a,b,c)
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if ArsoniaTable.Combat.Gunmods.Keepfov then
            if ArsoniaTable.Variables.IsAlive then
                if tostring(a)=="Camera"and b=="FieldOfView"then
                    return oldnewIndex(a,b,game:GetService("Players").LocalPlayer.Settings.FOV.Value)
                end
            end
        end
    end
    if ArsoniaTable.Player.Anti_Aim.Enabled then
        if not ArsoniaTable.Variables.Functions.IsRoundOver()then
            if ArsoniaTable.Player.Anti_Aim.Upsidedown then
                if tostring(a)=="Humanoid"and b=="CameraOffset"then
                    ArsoniaTable.Variables.CrouchOffset=0
                    return oldnewIndex(a,b,Vector3.new(0,-3,0))
                end
            end
            if ArsoniaTable.Player.Anti_Aim.Yaw or ArsoniaTable.Player.Anti_Aim.Wall then
                if tostring(a)=="Humanoid"and b=="AutoRotate"then
                    return oldnewIndex(a,b,false)
                end
            end
            if ArsoniaTable.Player.Anti_Aim.CrouchYaw and ArsoniaTable.Variables.Crouching then
                if tostring(a)=="Humanoid"and b=="AutoRotate"then
                    return oldnewIndex(a,b,false)
                end
            end
            if ArsoniaTable.Player.Anti_Aim.Hip then
                if tostring(a)=="Humanoid"and b=="HipHeight"then
                    return oldnewIndex(a,b,ArsoniaTable.Player.Anti_Aim.Hipheight)
                end
            end
        end
    end
    if ArsoniaTable.Aimbot.Silentaim.Enabled then
        if ArsoniaTable.Aimbot.Silentaim.Fakelock then
            if ArsoniaTable.Variables.__SilentAimTarget then
                if tostring(a)=="Humanoid"and b=="AutoRotate"then
                    return oldnewIndex(a,b,false)
                end
            end
        end
    end
    if ArsoniaTable.Visuals.Main.Enabled then
        if ArsoniaTable.Visuals.Main.Anticrouch then
            if tostring(a)=="Humanoid"and b=="CameraOffset"then
                ArsoniaTable.Variables.CrouchOffset=c.Y
                return oldnewIndex(a,b,Vector3.new())
            end
        end
    end
    if ArsoniaTable.Player.Movement.Enabled then
        if ArsoniaTable.Player.Movement.Bunnyhop then
            if ArsoniaTable.Player.Movement.BunnyhopType=="Walkspeed"then
                if tostring(a)=="Humanoid"and b=="WalkSpeed"then
                    if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial==Enum.Material.Air or ArsoniaTable.Variables.KeysPressed[" "]then
                        return oldnewIndex(a,b,ArsoniaTable.Player.Movement.Bunnyhopspeed*25)
                    end
                end
            end
        end
        if ArsoniaTable.Player.Movement.Walk then
            if tostring(a)=="Humanoid"and b=="WalkSpeed"then
                return oldnewIndex(a,b,ArsoniaTable.Player.Movement.Walkspeed)
            end
        end
    end
    if a==game.Players.LocalPlayer.Character.HumanoidRootPart and b~="Size"then
        if a:FindFirstChild("FakeLag")then
            a.FakeLag[b]=c
        end
    end
    return oldnewIndex(a,b,c)
end)


--Index
mt.__index=newcclosure(function(a,b)
    if tostring(a)=="HumanoidRootPart"and tostring(b)=="CFrame"then
        if ArsoniaTable.Combat.Gunmods.Enabled then
            if ArsoniaTable.Combat.Gunmods.Forcebackstab then
                if a~=game.Players.LocalPlayer.Character.HumanoidRootPart then
                    return CFrame.new(a.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.Position)*CFrame.Angles(0,math.rad(180),0)
                end
            end
        end
    end
    return oldIndex(a,b)
end)


--while wait()do's
coroutine.wrap(function()
    local suck=.1
    while wait(suck)do
        pcall(function()
            if ArsoniaTable.Aimbot.Backtrack.Enabled then
                if ArsoniaTable.Aimbot.Backtrack.Target=="All"then
                    for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                        for _,c in pairs(ArsoniaTable.Variables.R6TR15[ArsoniaTable.Aimbot.Backtrack.Target])do
                            if v.Character:FindFirstChild(c)then
                                local part=v.Character[c]
                                local a=Instance.new("Part")
                                a.Parent=part
                                a.Size=part.Size
                                a.Color=ArsoniaTable.Aimbot.Backtrack.Color
                                a.CanCollide=false
                                a.Anchored=true
                                a.CFrame=part.CFrame
                                a.Name="Backtrack"
                                a.Reflectance=ArsoniaTable.Aimbot.Backtrack.Refl
                                a.Material=ArsoniaTable.Aimbot.Backtrack.Material
                                table.insert(ArsoniaTable.Variables.Backtracks,a)
                                if ArsoniaTable.Aimbot.Backtrack.Showall then
                                    if ArsoniaTable.Visuals.ESP.Enabled and ArsoniaTable.Visuals.ESP.BacktrackChams then
                                        a.Transparency=1
                                    else
                                        a.Transparency=ArsoniaTable.Aimbot.Backtrack.Trans
                                    end
                                else
                                    a.Transparency=1
                                end
                                local b=Instance.new("BoxHandleAdornment")
                                if ArsoniaTable.Visuals.ESP.Enabled and ArsoniaTable.Visuals.ESP.BacktrackChams then
                                    b.Size=a.Size
                                    b.Parent=game.CoreGui
                                    b.AlwaysOnTop=true
                                    b.Adornee=a
                                    b.ZIndex=0
                                    if ArsoniaTable.Aimbot.Backtrack.Showall then
                                        b.Transparency=ArsoniaTable.Aimbot.Backtrack.Trans
                                    else
                                        b.Transparency=1
                                    end
                                    b.Color3=ArsoniaTable.Aimbot.Backtrack.Color
                                else
                                    b:Destroy()
                                end
                                coroutine.wrap(function()
                                    wait(ArsoniaTable.Aimbot.Backtrack.Lifetime)
                                    wait(suck)
                                    if not(ArsoniaTable.Visuals.ESP.Enabled and ArsoniaTable.Visuals.ESP.BacktrackChams)then
                                        a.Transparency=ArsoniaTable.Aimbot.Backtrack.Trans
                                    end
                                    b.Transparency=ArsoniaTable.Aimbot.Backtrack.Trans
                                    wait(suck)
                                    a:Destroy()
                                    b:Destroy()
                                end)()
                            end
                        end
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(.1)do
        if ArsoniaTable.Aimbot.Silentaim.Enabled then
            pcall(function()
                ArsoniaTable.Variables.TargetableParts={HeadHB={},Torso={},LeftArm={},RightArm={},LeftLeg={},RightLeg={},Backtrack_HeadHB={},Backtrack_Torso={},Backtrack_LeftArm={},Backtrack_RightArm={},Backtrack_LeftLeg={},Backtrack_RightLeg={}}
                for _,x in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                    local arget=x.Character
                    for i,v in pairs(ArsoniaTable.Variables.TargetsWithoutFull)do
                        if arget:FindFirstChild(i)then
                            local start=game.Players.LocalPlayer.Character.HumanoidRootPart.Position+
                            Vector3.new(0,1.5,0)+
                            Vector3.new(0,game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0)
                            local Raycock=
                                Ray.new(
                                    start,
                                    arget[i].Position-start
                                )
                            local part=game.Workspace:FindPartOnRayWithIgnoreList(Raycock,ArsoniaTable.Variables.Functions.GetIgnore())
                            if part==arget[i]or part:IsDescendantOf(arget)then
                                table.insert(ArsoniaTable.Variables.TargetableParts[v[2]],arget[i])
                            end
                            local backtrack
                            for _,v in pairs(arget[i]:GetChildren())do
                                if v.Name=="Backtrack"then
                                    backtrack=v
                                    break
                                end
                            end
                            if tostring(backtrack)=="Backtrack"then
                                local start=game.Players.LocalPlayer.Character.HumanoidRootPart.Position+
                                Vector3.new(0,1.5,0)+
                                Vector3.new(0,game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0)
                                local Raycock=
                                    Ray.new(
                                        start,
                                        backtrack.Position-start
                                    )
                                local part=game.Workspace:FindPartOnRayWithIgnoreList(Raycock,ArsoniaTable.Variables.Functions.GetIgnore())
                                if part==backtrack or part:IsDescendantOf(arget)then
                                    table.insert(ArsoniaTable.Variables.TargetableParts["Backtrack_"..v[2]],backtrack)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)()
coroutine.wrap(function()
    while game.RunService.RenderStepped:Wait()do
        pcall(function()
            if ArsoniaTable.Player.Movement.Bunnyhop then
                if ArsoniaTable.Player.Movement.BunnyhopType=="Legit"then
                    if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial~=Enum.Material.Air and ArsoniaTable.Variables.KeysPressed[" "]then
                        wait(.3)
                        if ArsoniaTable.Variables.KeysPressed[" "]then
                            game.Players.LocalPlayer.Character.Humanoid.Jump=true
                        end
                    end
                end
            end
        end)
    end
end)()
--[[coroutine.wrap(function()
    while game.RunService.RenderStepped:Wait()do
        pcall(function()
            if ArsoniaTable.Player.Misc.Enabled then
                if ArsoniaTable.Player.Misc.FastHeal then
                    if game.Players.LocalPlayer.NRPBS.Health.Value<=99 then
                        if ArsoniaTable.Player.Misc.Removeplayercheck and ArsoniaTable.Player.Misc.Enabled then
                            if game.Players.LocalPlayer.Character:FindFirstChild("IsAPlayer")then
                                game.ReplicatedStorage.Events.ApplyGun:FireServer(game.ReplicatedStorage.Weapons["Stake Launcher"])
                                game.ReplicatedStorage.Events.HealBoy:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game.ReplicatedStorage.Events.ApplyGun:FireServer(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value)
                                wait(1)
                            end
                        else
                            if game.Players.LocalPlayer.Character:FindFirstChild("Spawned")then
                                game.ReplicatedStorage.Events.ApplyGun:FireServer(game.ReplicatedStorage.Weapons["Stake Launcher"])
                                game.ReplicatedStorage.Events.HealBoy:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game.ReplicatedStorage.Events.ApplyGun:FireServer(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value)
                                wait(1)
                            end
                        end
                    end
                end
            end
        end)
    end
end)()]]
coroutine.wrap(function()
    while wait(1)do
        pcall(function()
            if ArsoniaTable.Misc.Main.Enabled then
                if ArsoniaTable.Misc.Main.Cloudspam then
                    game:GetService("ReplicatedStorage").Events.DJ:FireServer(25)
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(.7)do
        pcall(function()
            if ArsoniaTable.Misc.Trolling.Enabled then
                if ArsoniaTable.Misc.Trolling.Voiceannoy then
                    for _,v in pairs(game.Players:GetChildren())do
                        if v.Character then
                            if v.Character:FindFirstChild("Head")then
                                if v.Character.Head:FindFirstChild("Voice")then
                                    game.ReplicatedStorage.Events.PlayVoice:FireServer(
                                        v.Character.Head.Voice,
                                        ArsoniaTable.Variables.Voices[math.random(1,#ArsoniaTable.Variables.Voices)]
                                    )
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(.05)do
        pcall(function()
            if ArsoniaTable.Misc.Trolling.Enabled then
                if ArsoniaTable.Misc.Trolling.Bulletannoy then
                    for _,v in pairs(game.Players:GetChildren())do
                        game:GetService("ReplicatedStorage").Events.Whizz:FireServer(v)
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(.1)do
        pcall(function()
            if ArsoniaTable.Misc.Trolling.Enabled then
                if ArsoniaTable.Misc.Trolling.Flingall then
                    for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                        game:GetService("ReplicatedStorage").Events.Burn:FireServer(
                            {
                                ["Parent"]=v.Character,
                                ["CFrame"]=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            },
                            game:GetService("ReplicatedStorage").Weapons["Windforce"],
                            0
                        )
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(1)do
        pcall(function()
            if ArsoniaTable.Visuals.ESP.Enabled then
                if ArsoniaTable.Visuals.ESP.Chams then
                    for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                        for _,c in pairs(ArsoniaTable.Variables.HumParts)do
                            if v.Character:FindFirstChild(c)then
                                local part=v.Character[c]
                                local a=Instance.new("BoxHandleAdornment")
                                if c=="Head"then
                                    a.Size=Vector3.new(1.05,1.05,1.05)
                                else
                                    a.Size=part.Size+Vector3.new(.05,.05,.05)
                                end
                                a.Parent=game.CoreGui
                                a.AlwaysOnTop=true
                                a.Adornee=part
                                a.ZIndex=0
                                a.Color3=ArsoniaTable.Visuals.ESP.Color
                                coroutine.wrap(function()
                                    wait(1.1)
                                    a:Destroy()
                                end)()
                                if ArsoniaTable.Visuals.ESP.Chamsoutline then
                                    local part=v.Character[c]
                                    local a=Instance.new("BoxHandleAdornment")
                                    local off=ArsoniaTable.Visuals.ESP.ChamsoutlineSize
                                    if c=="Head"then
                                        a.Size=Vector3.new(1+off,1+off,1+off)
                                    else
                                        a.Size=part.Size+Vector3.new(off,off,off)
                                    end
                                    a.Parent=game.CoreGui
                                    a.AlwaysOnTop=false
                                    a.Adornee=part
                                    a.ZIndex=0
                                    a.Color3=ArsoniaTable.Visuals.ESP.ChamsoutlineColor
                                    coroutine.wrap(function()
                                        wait(1.1)
                                        a:Destroy()
                                    end)()
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(.25)do
        pcall(function()
            if ArsoniaTable.Visuals.Main.Enabled then
                if ArsoniaTable.Visuals.Main.Renderplayer then
                    for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants())do
                        if v:IsA("BasePart")or v:IsA("Decal")then
                            if v.LocalTransparencyModifier~=0 then
                                v.LocalTransparencyModifier=0
                            end
                        end
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while game.RunService.RenderStepped:Wait()do
        pcall(function()
            if ArsoniaTable.Aimbot.Silentaim.Enabled then
                if not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.equipping.Value then
                    if ArsoniaTable.Aimbot.Silentaim.AutoshootMethod=="Force Fire"then
                        if ArsoniaTable.Variables.__SilentAimTarget then
                            require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).firebullet()
                        end
                    elseif ArsoniaTable.Aimbot.Silentaim.AutoshootMethod=="Fake Click"then
                        if ArsoniaTable.Variables.__SilentAimTarget then
                            game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value=not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value
                        elseif game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value then
                            game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value=false
                        end
                    elseif ArsoniaTable.Aimbot.Silentaim.AutoshootMethod=="Mouse"then
                        if ArsoniaTable.Variables.__SilentAimTarget then
                            mouse1press()wait()mouse1release()
                        end
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while game.RunService.RenderStepped:Wait()do
        pcall(function()
            if ArsoniaTable.Player.Anti_Aim.Enabled then
                if ArsoniaTable.Player.Anti_Aim.Crouchspam then
                    if ArsoniaTable.Variables.IsAlive and not game.Players.LocalPlayer.Character:FindFirstChild("ShuckyHAX")and game.Players.LocalPlayer.Status.Team.Value~="Spectator"and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and not game.ReplicatedStorage.wkspc.Status.Preparation.Value then
                        if not(ArsoniaTable.Variables.KeysPressed[" "]and ArsoniaTable.Player.Movement.Bunnyhop)and game.Players.LocalPlayer.Character.Humanoid.FloorMaterial~=Enum.Material.Air and game.Players.LocalPlayer.Character.Humanoid:GetState()~=3 or ArsoniaTable.Player.Anti_Aim.Crouchjumpspam then
                            if ArsoniaTable.Variables.Croucher or ArsoniaTable.Player.Anti_Aim.Crouchon then
                                game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.ctrlcrouch.Value=true
                                if ArsoniaTable.Player.Anti_Aim.CrouchspamVal==0 then
                                    game.RunService.RenderStepped:Wait()
                                else
                                    wait(ArsoniaTable.Player.Anti_Aim.CrouchspamVal)
                                end
                                game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.ctrlcrouch.Value=false
                                if ArsoniaTable.Player.Anti_Aim.CrouchspamVal2==0 then
                                    game.RunService.RenderStepped:Wait()
                                else
                                    wait(ArsoniaTable.Player.Anti_Aim.CrouchspamVal2)
                                end
                            end
                        end
                    else
                        wait(1)
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(.1)do
        pcall(function()
            if ArsoniaTable.Misc.Main.Enabled then
                if ArsoniaTable.Misc.Main.Wallprotect then
                    pcall(function()
                        ArsoniaTable.Variables.WallTargets={}
                        for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                            if v.Character:FindFirstChild("HumanoidRootPart")then
                                local start=game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5,0)+Vector3.new(0,game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0)
                                local Raycock=Ray.new(start,v.Character.HumanoidRootPart.Position-start)
                                local part=game.Workspace:FindPartOnRayWithIgnoreList(Raycock,ArsoniaTable.Variables.Functions.GetIgnore())
                                if part==v.Character.HumanoidRootPart or part:IsDescendantOf(v.Character)then
                                    table.insert(ArsoniaTable.Variables.WallTargets,v.Character.HumanoidRootPart)
                                end
                            end
                        end
                    end)
                    pcall(function()
                        if ArsoniaTable.Variables.WallTargets[1]then
                            local b=math.huge
                            local wallplayer
                            for _,v in pairs(ArsoniaTable.Variables.WallTargets)do
                                if(v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<b then
                                    b=(v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                    wallplayer=v
                                end
                            end
                            game.ReplicatedStorage.Events.BuildWall:FireServer(
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                                CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,wallplayer.Position).LookVector*10000000000)
                        else
                            game.ReplicatedStorage.Events.BuildWall:FireServer(
                                Vector3.new(math.huge,math.huge,math.huge),
                                Vector3.new(math.huge,math.huge,math.huge))
                        end
                    end)
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while game.RunService.RenderStepped:Wait()do
        pcall(function()
            if ArsoniaTable.Combat.Main.Enabled then
                if ArsoniaTable.Combat.Main.Knifeaura then
                    for _,v in pairs(ArsoniaTable.Variables.Functions.GetEnemys())do
                        if(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).Magnitude<=25 then
                            local knife
                            if ArsoniaTable.Combat.Main.KnifeauraValue=="Basic"then
                                knife=game.ReplicatedStorage.Weapons.Knife
                            else
                                knife=game.ReplicatedStorage.Weapons["Golden Knife"]
                            end
                            local arg1,arg2,arg3=0,0,0
                            if ArsoniaTable.Combat.Main.KnifeauraCrit=="Basic"then
                                arg1=1
                            end
                            if ArsoniaTable.Combat.Main.KnifeauraCrit=="Advanced"then
                                arg2=1
                            end
                            if ArsoniaTable.Combat.Main.KnifeauraCrit=="Backstab"then
                                arg3=1
                            end
                            game.ReplicatedStorage.Events.ApplyGun:FireServer(knife,false)
                            local Partpos=v.Character.Head.Position+Vector3.new(math.random(),math.random(),math.random())
                            local Packedstring=string.pack(
                                ArsoniaTable.Variables.Hitparter,
                                Partpos.X,
                                Partpos.Y,
                                Partpos.Z,
                                tostring(knife),
                                arg1,--headshot=1 none=0
                                0,--unknown
                                arg3,--backstab=1 none=0
                                arg2,--forcecrit=1 none=0
                                0,--morecrit=1 none=0
                                0,--spoof=2 none=0
                                0,--unkown
                                0,--Player Distance
                                1,--Current Spell
                                0,--scope=1 noscope=0
                                ArsoniaTable.Combat.Main.KnifeauraAir--aircrit=1 none=0
                            )
                            game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,Packedstring)
                            if ArsoniaTable.Combat.Main.KnifeauraFakeaim then
                                local bs={}
                                for _,v in pairs(game.ReplicatedStorage.Melees[game.Players.LocalPlayer.Data.Melee.Value]:GetChildren())do
                                    if string.sub(v.Name,1,4)=="Fire"then
                                        table.insert(bs,v)
                                    end
                                end
                                local c=game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Melees[game.Players.LocalPlayer.Data.Melee.Value].Idle)
                                local b=game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(bs[math.random(1,#bs)])
                                c:Play()
                                b:Play()
                                c.Looped=false
                                b.Looped=false
                                coroutine.wrap(function()
                                    wait(.8)
                                    c:Stop()
                                    b:Stop()
                                end)()
                            end
                            game.ReplicatedStorage.Events.ApplyGun:FireServer(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value,false)
                            wait(.4)
                            break
                        end
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while game.RunService.RenderStepped:Wait()do
        pcall(function()
            if ArsoniaTable.Player.Anti_Aim.Enabled then
                if ArsoniaTable.Player.Anti_Aim.FakeLag then
                    if ArsoniaTable.Variables.IsAlive then
                        if not ArsoniaTable.Variables.Functions.IsRoundOver()then
                            if ArsoniaTable.Player.Anti_Aim.FakeLagOffTime==1 then
                                game.RunService.RenderStepped:Wait()
                            elseif ArsoniaTable.Player.Anti_Aim.FakeLagOffTime~=0 then
                                wait(ArsoniaTable.Player.Anti_Aim.FakeLagOffTime)
                            end
                            if ArsoniaTable.Player.Anti_Aim.FakeLagShow then
                                if not game.Workspace.Ray_Ignore:FindFirstChild("Character_FAKE")then
                                    local a=Instance.new("Folder")
                                    a.Parent=game.Workspace.Ray_Ignore
                                    a.Name="Character_FAKE"
                                end
                                for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants())do
                                    if v:IsA("BasePart")then
                                        if v.Transparency~=1 then
                                            local a=v:Clone()
                                            a.CanCollide=false
                                            a.Parent=game.Workspace.Ray_Ignore.Character_FAKE
                                            a.Anchored=true
                                            a.Color=ArsoniaTable.Player.Anti_Aim.FakeLagColor
                                            a.Material=ArsoniaTable.Player.Anti_Aim.FakeLagMaterial
                                            a.Transparency=ArsoniaTable.Player.Anti_Aim.FakeLagTrans
                                            a.Reflectance=0
                                            if a:IsA("MeshPart")then
                                                a.TextureID=""
                                            end
                                            for _,c in pairs(a:GetChildren())do
                                                if not c:IsA("SpecialMesh")then
                                                    c:Destroy()
                                                else
                                                    c.TextureId=""
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                            local c=Instance.new("Part")
                            c.Name="FakeLag"
                            c.Parent=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            c.Size=Vector3.new(100,100,100)
                            c.CFrame=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                            c.Velocity=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity
                            c.CanCollide=false
                            c.Transparency=1
                            local d=Instance.new("Weld")
                            d.Parent=c
                            d.Part0=c
                            d.Part1=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            --[[coroutine.wrap(function()
                                wait(.1)
                                while game.RunService.RenderStepped:Wait()do
                                    if c then
                                        if c.Parent==nil then
                                            break--fix fake lag
                                        end
                                    end
                                    if c.Size==Vector3.new(100,100,100)then
                                        c.Size=Vector3.new()
                                    else
                                        c.Size=Vector3.new(100,100,100)
                                        wait(.1)
                                    end
                                end
                            end)()]]
                            wait(ArsoniaTable.Player.Anti_Aim.FakeLagOnTime)
                            if game.Workspace.Ray_Ignore:FindFirstChild("Character_FAKE")then
                                game.Workspace.Ray_Ignore.Character_FAKE:Destroy()
                            end
                            c:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(.5)do
        pcall(function()
            if ArsoniaTable.Combat.Main.Enabled then
                if ArsoniaTable.Combat.Main.Bombwalk then
                    if ArsoniaTable.Combat.Main.BombwalkBomb=="Basic"then
                        game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(
                            game:GetService("ReplicatedStorage").Weapons.Bomb
                        )
                        game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(
                            Vector3.new(),
                            1+math.random(),--unknown
                            false,--unknown
                            ArsoniaTable.Combat.Main.BombwalkTime/10--time
                        )
                        game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(
                            game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value
                        )
                    elseif ArsoniaTable.Combat.Main.BombwalkBomb=="Golden"then
                        game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(
                            game:GetService("ReplicatedStorage").Weapons["Golden Bomb"]
                        )
                        game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(
                            Vector3.new(),
                            1+math.random(),--unknown
                            false,--unknown
                            ArsoniaTable.Combat.Main.BombwalkTime/10--time
                        )
                        game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(
                            game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value
                        )
                    elseif ArsoniaTable.Combat.Main.BombwalkBomb=="Cherry (Infinite)"then
                        game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(
                            game:GetService("ReplicatedStorage").Weapons.Bomb
                        )
                        game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(
                            Vector3.new(),
                            1+math.random(),--unknown
                            false,--unknown
                            math.huge--time
                        )
                        game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(
                            game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value
                        )
                    end
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(.1)do
        pcall(function()
            if ArsoniaTable.Misc.Trolling.WallTrap and ArsoniaTable.Misc.Trolling.Enabled then
                for _,v in pairs(game.Players:GetChildren())do
                    if string.find(string.lower(tostring(v)),string.lower(ArsoniaTable.Misc.Trolling.WallTrapName))then
                        if Vector3.new(math.floor(ArsoniaTable.Variables.TrapPosOld.X),math.floor(ArsoniaTable.Variables.TrapPosOld.Y),math.floor(ArsoniaTable.Variables.TrapPosOld.Z))~=Vector3.new(math.floor(v.Character.HumanoidRootPart.Position.X),math.floor(v.Character.HumanoidRootPart.Position.Y),math.floor(v.Character.HumanoidRootPart.Position.Z))then
                            ArsoniaTable.Variables.TrapPosOld=v.Character.HumanoidRootPart.Position
                            if ArsoniaTable.Misc.Trolling.WallTrapType=="Forward"then
                                game.ReplicatedStorage.Events.BuildWall:FireServer(
                                    v.Character.HumanoidRootPart.Position+
                                    v.Character.HumanoidRootPart.CFrame.RightVector*-7,
                                    v.Character.HumanoidRootPart.CFrame.RightVector*10000000000)
                                break
                            elseif ArsoniaTable.Misc.Trolling.WallTrapType=="Sideways"then
                                game.ReplicatedStorage.Events.BuildWall:FireServer(
                                    v.Character.HumanoidRootPart.Position+
                                    v.Character.HumanoidRootPart.CFrame.LookVector*-7,
                                    v.Character.HumanoidRootPart.CFrame.LookVector*10000000000)
                                break
                            end
                        end
                    end
                end
            end
        end)
    end
end)()



--Function Hooks
require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.General).applyvelocity=function(...)
    if ArsoniaTable.Player.Misc.Enabled then
        if ArsoniaTable.Player.Misc.AntiFling then
            local args={...}
            if args[5]~=game.Players.LocalPlayer.Name then
                return
            end
        end
    end
    return ArsoniaTable.Variables.Functions.OldApplyVelocity(...)
end
require(game.ReplicatedStorage.Modules.ClientFunctions).CreateProjectile=function(a,b,c,d,e,...)
    if ArsoniaTable.Aimbot.Silentaim.Enabled then
        if ArsoniaTable.Variables.__SilentAimTarget then
            if tostring(a)==game.Players.LocalPlayer.Name then
                if b=="Arrow"then
                    --[[game.ReplicatedStorage.Events.Burn:FireServer(
                        ArsoniaTable.Variables.__SilentAimTarget,
                        game.ReplicatedStorage.Weapons.Bow,
                        1,
                        ArsoniaTable.Variables.__SilentAimTarget.Position)]]
                    local Partpos=ArsoniaTable.Variables.__SilentAimTarget.Position+Vector3.new(math.random(),math.random(),math.random())
                    local Packedstring=string.pack(
                        ArsoniaTable.Variables.Hitparter,
                        Partpos.X,
                        Partpos.Y,
                        Partpos.Z,
                        "Bow",
                        0,--headshot=1 none=0
                        0,--unknown
                        0,--backstab=1 none=0
                        0,--forcecrit=1 none=0
                        0,--morecrit=1 none=0
                        0,--spoof=2 none=0
                        0,--unkown
                        0,--Player Distance
                        1,--Current Spell
                        0,--scope=1 noscope=0
                        0--aircrit=1 none=0
                    )
                    game.ReplicatedStorage.Events.HitPart:FireServer(ArsoniaTable.Variables.__SilentAimTarget,Packedstring)
                else
                    c=750
                    d=ArsoniaTable.Variables.__SilentAimTarget.Position
                    e=CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0))
                end
            end
        end
    end
    return ArsoniaTable.Variables.Functions.CreateProjectile(a,b,c,d,e,...)
end
getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).flamemoment.doflame=function(a,b,...)
    if ArsoniaTable.Aimbot.Silentaim.Enabled then
        if ArsoniaTable.Variables.__SilentAimTarget then
            if tostring(a)==game.Players.LocalPlayer.Name then
                b=CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1.5+game.Players.LocalPlayer.Character.Humanoid.CameraOffset.Y,0),ArsoniaTable.Variables.__SilentAimTarget.Position)
            end
        end
    end
    return ArsoniaTable.Variables.Functions.DoFlame(a,b,...)
end
getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).ShakeCam=function(...)
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if ArsoniaTable.Combat.Gunmods.Removerecoil then
            return
        end
    end
    return ArsoniaTable.Variables.Functions.Shakecam(...)
end
require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).getammo=function(...)
    if ArsoniaTable.Combat.Gunmods.Enabled then
        return math.clamp(ArsoniaTable.Variables.Functions.Getammo(...)+ArsoniaTable.Combat.Gunmods.Clipsize,0,999)
    end
    return ArsoniaTable.Variables.Functions.Getammo(...)
end
require(game.ReplicatedStorage.Modules.Spread).calcspread=function(a,...)
    if ArsoniaTable.Combat.Gunmods.Enabled then
        if ArsoniaTable.Combat.Gunmods.Removespread then
            a=0
        end
    end
    return ArsoniaTable.Variables.Functions.CalculateSpread(a,...)
end



--Fixes
ArsoniaTable.Variables.Levels.StartBar=ArsoniaTable.Variables.Levels_OLD.StartBar
ArsoniaTable.Variables.Levels.EndBar=ArsoniaTable.Variables.Levels_OLD.EndBar
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Made By: The3Bakers#4565",Text="https://discord.gg/yBEzKHB3Qr",Duration=99999})