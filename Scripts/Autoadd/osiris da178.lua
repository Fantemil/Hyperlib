local ui = {}
-- 
local uis = game:GetService('UserInputService')
local txtservice = game:GetService('TextService')
local ts = game:GetService('TweenService')
-- 
local repo = "https://raw.githubusercontent.com/f1nobe7650/Lynx/main/"
-- Getting the functions n stuff
local Color = loadstring(game:HttpGet(repo .."Color.lua"))();
local Math = loadstring(game:HttpGet(repo .."Math.lua"))();
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Blissful4992/ESPs/main/3D%20Drawing%20Api.lua"))();
local WatermarkLUA = loadstring(game:HttpGet("https://pastebin.com/raw/FhFwETdS"))();
--
local InputService, TeleportService, RunService, Workspace, Lighting, Players, HttpService, StarterGui, ReplicatedStorage, TweenService, VirtualUser, PathFindingService = game:GetService("UserInputService"), game:GetService("TeleportService"), game:GetService("RunService"), game:GetService("Workspace"), game:GetService("Lighting"), game:GetService("Players"), game:GetService("HttpService"), game:GetService("StarterGui"), game:GetService("ReplicatedStorage"), game:GetService("TweenService"), game:GetService("VirtualUser"), game:GetService("PathfindingService")
local Mouse, Camera, LocalPlayer = Players.LocalPlayer:GetMouse(), Workspace.Camera, Players.LocalPlayer
local NewVector2, NewVector3, NewCFrame, NewAngle, NewRGB, NewHex, NewInstance, Spawn, Wait, Create, Resume, SpinAngle, SpinSize, SpinSpeed, Huge, Pi, Clamp, Round, Abs, Floor, Random, Sin, Cos, Rad, Halfpi, Find, Clear, Sub, Upper, Lower, Insert = Vector2.new, Vector3.new, CFrame.new, CFrame.Angles, Color3.fromRGB, Color3.fromHex, Instance.new, task.spawn, task.wait, coroutine.create, coroutine.resume, 0, 25, 0, math.huge, math.pi, math.clamp, math.round, math.abs, math.floor, math.random, math.sin, math.cos, math.rad, math.pi/2, table.find, table.clear, string.sub, string.upper, string.lower, table.insert
local Wanted, ShopPath, bodyParts, viewportSize = LocalPlayer:WaitForChild("DataFolder").Information.Wanted, workspace.Ignored.Shop, {}, Camera.ViewportSize
local OldWanted = Wanted.Value
--
for i,v in pairs(LocalPlayer.Character:GetChildren()) do 
    if v:IsA("BasePart") then 
        table.insert(bodyParts,v.Name)
    end 
end 
-- 
local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting); ColorCorrectionEffect.Enabled = false; ColorCorrectionEffect.Brightness = 0; ColorCorrectionEffect.Contrast = 0; ColorCorrectionEffect.Saturation = 0; ColorCorrectionEffect.TintColor = Color3.fromRGB(255,255,255)
-- 
setfpscap(999)
--
getgenv().Lynx, getgenv().Visuals, getgenv().utility = 
{
	["Connections"] = {},
	["Account"] = {
		Username = (lgVarsTbl and lgVarsTbl["DiscordUsername"] or "User"),
		UserID = LocalPlayer.UserId,
		Game = "Da Hood"
	},
	["Locals"] = { 
		Window = {},
	},
	["Silent"] = {
		Target = nil,
		Check = true,
		Prediction = 0, 
		Resolver = {false, nil}, 
		Offset = 0, 
		Check = true, 
		Hitpart = nil, 
		Position = nil,
	},
	["Assist"] = {
		Target = nil,
		Prediction = 0, 
		Resolver = false, 
	},
	["Files"] = {
		Folders = {"Lynx", "Lynx/Configs", "Lynx/Luas", "Lynx/Assets"},
		Luas = {
			["ChinaHat"] = game:HttpGet("https://raw.githubusercontent.com/f1nobe7650/Lynx/main/LUAs/ChinaHat"),
			["Minecraft"] = game:HttpGet("https://raw.githubusercontent.com/f1nobe7650/Lynx/main/LUAs/Minecraft"),
			["BetterGame"] = game:HttpGet("https://raw.githubusercontent.com/f1nobe7650/Lynx/main/LUAs/BetterGame")
		}, 
	}
}, 
{
	["Drawings"] = {},
	["Bases"] = {},
	["Base"] = {},
	["Settings"] = {
		["Line"] = {
		    Thickness = 1,
		    Color = Color3.fromRGB(0, 255, 0)
	    },
		["Text"] = {
			Size = 13,
			Center = true,
			Outline = true,
			Font = Drawing.Fonts.Plex,
			Color = Color3.fromRGB(255, 255, 255)
		},
		["Square"] = {
			Thickness = 1,
			Color = Color3.fromRGB(255, 255, 255),
			Filled = false,
		},
		["Triangle"] = {
			Color = Color3.fromRGB(255, 255, 255),
			Filled = true,
			Visible = false,
			Thickness = 1,
		},
		["Image"] = {
			Transparency = 1,
			Data = game:HttpGet("https://raw.githubusercontent.com/portallol/luna/main/Gradient.png")
		}
	},
	["KeyBindList"] = {}
}, 
{
	["Cursor"] = {Lines = {}, Outlines = {}, Dots = {}}, 
	["Renders"] = {}, 
	["Parts"] = {},
	["Desyncs"] = {
		["None"] = NewVector3(0, 0, 0),
		["HvH"] = NewVector3(0, -16384, 0),
		["AntiBot"] = NewVector3(0, 100, 0),
		["Horizontal"] = NewVector3(-16384, 0, 0),
		["Sky"] = NewVector3(0, 16384, 0),
		["Ground"] = NewVector3(0, -100, 0),
		["Desync"] = NewVector3(-16384, -16384, -16384)
	},
    ["Ignore"] = {}, 
	["LastTick"] = tick(), 
	["ShitTalk"] = {
		["Lynx"] = {
			"WHAT THE HELL IS AN AZURE ð¤¡ð¤¡",
			"LYNX ONTOP LYNX ONTOP LYNX ONTOP",
			"IS THAT LYNX???!! | .gg/lynx",
			"Here is a wild lynx user in its habitat | .gg/lynx",
			"LYNX >> ALL",
			"LYNX ON TOP | .gg/lynx",
			"LYNX > U",
			".gg/lynx"
		},
		["AntiAim"] = {
			"CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! CANT HIT ME?! ",
			"Hmmm why arent u hitting me? Lynx too good XDDD",
			"RESOLVER SUCCESSFULLY HIT 0 SHOTS",
			"I think 0 prediction can hit more shots :(",
			"Uphillian Aim???!!!!",
			"Cmon man resolve my beanbot desync :^)",
			"SKID DETECTED NOT RESOLVING!",
			"Azure hits better cmon bro up the game :rofl:"
		},
	},
	["TracerTextures"] = {
        ["1"] = 7136858729,
        ["2"] = 6333823534,
        ["3"] = 5864341017,
		["4"] = 9150663556,
        ["5"] = 446111271,
        ["6"] = 2950987173,
        ["7"] = 7151778302,  
        ["8"] = 11226108137,
        ["9"] = 6511613786,
    },
	["sfx"] = {
        ["Bameware"] = "3124331820",
        ["Skeet"] = "4753603610",
        ["Bonk"] = "3765689841",
        ["Lazer Beam"] = "130791043",
        ["Windows XP Error"] = "160715357",
        ["TF2 Hitsound"] = "3455144981",
        ["TF2 Critical"] = "296102734",
        ["TF2 Bat"] = "3333907347",
        ['Bow Hit'] = "1053296915",
        ['Bow'] = "3442683707",
        ['OSU'] = "7147454322",
        ['Minecraft Hit'] = "4018616850",
        ['Steve'] = "5869422451",
        ['1nn'] = "7349055654",
        ['Rust'] = "3744371091",
        ["TF2 Pan"] = "3431749479",
        ["Neverlose"] = "8679627751",
        ["Mario"] = "5709456554",
    },
	["SkyBoxes"] = {
        ["Normal"] = {600886090,600830446,600831635,600832720,600833862,600835177},
        ["DoomSpire"] = {6050649245,6050664592,6050648475,6050644331,6050649718,6050650083},
        ["CatGirl"] = {444167615,444167615,444167615,444167615,444167615,444167615},
        ["Vibe"] = {1417494402,1417494030,1417494146,1417494253,1417494499,1417494643},
        ["Blue Aurora"] = {12063984,12064107,12064152,12064121,12064115,12064131},
        ["Purple Clouds"] = {151165191,151165214,151165197,151165224,151165206,151165227},
        ["Purple Nebula"] = {159454286,159454299,159454296,159454293,159454300,159454288},
        ["Twighlight"] = {264909758,264908339,264907909,264909420,264908886,264907379},
        ["Vivid Skies"] = {271042310,271042516,271077243,271042556,271042467,271077958},
        ["Purple and Blue"] = {149397684,149397692,149397686,149397697,149397688,149397702},
    },
	["LightingBackUp"] = {
		["Ambient"] = Lighting.Ambient,
		["OutdoorAmbient"] = Lighting.OutdoorAmbient,
		["ColorShift_Top"] = Lighting.ColorShift_Top,
		["FogColor"] = Lighting.FogColor,
		["FogEnd"] = Lighting.FogEnd,
		["FogStart"] = Lighting.FogStart,
		["ClockTime"] = Lighting.ClockTime,
		["Brightness"] = Lighting.Brightness
	},
	["Angle"] = 0,
	--[[["Maps"] = {
		["MM2 MAP"] = {game:GetObjects("rbxassetid://6961429165")[1], NewCFrame(-2279.90967, 5337.09326, -5520.67969, -4.37113883e-08, 0, -1, -1, -4.37113883e-08, 4.37113883e-08, -4.37113883e-08, 1, 1.91068547e-15), NewVector3(-8000,5000,-5504)},
		["Parkour"] = {game:GetObjects("rbxassetid://5172031164")[1], NewCFrame(-12906.4688, 13095.1973, -11499.5381, 0.318712622, 1.4782394e-08, 0.947851419, -4.15312478e-08, 1, -1.63091063e-09, -0.947851419, -3.88456591e-08, 0.318712622), NewVector3(-12922,13090,-11418)},
		["Office"] = {game:GetObjects("rbxassetid://6882056127")[1], NewCFrame(-10773.5635, 6006.16406, -14860.6035, 1, 8.80185169e-08, -1.60622491e-07, -8.80185098e-08, 1, 6.82912145e-08, 1.60622491e-07, -6.82912003e-08, 1), NewVector3(-17608,5510,-10917)},
		["Anarchy"] = {game:GetObjects("rbxassetid://2782284003")[1], NewCFrame(-5820.18994, 5510.59863, -8075.72021, -0.286452234, -7.80991627e-08, 0.958094537, 5.32952846e-08, 1, 9.74493801e-08, -0.958094537, 7.89765124e-08, -0.286452234), NewVector3(-8190,5431,-9629)},
	},]]
	["Characters"] = {
		AmongUs = {Vector3.new(0.15,0.15,0.15), "6686375937", "6686375902"}, 
		SpongeBob = {Vector3.new(5,5,5), "5408463358", "5408463211"},
		Patrick = {Vector3.new(0.4,0.4,0.4), "5730253510", "5730253467"}, 
		Maxell = {Vector3.new(0.2,0.2,0.2), "12303996609", "12303996327"},
		Brian = {Vector3.new(1.7,1.7,1.7), "512454212", "512454192"},
		CapyBara = {Vector3.new(2,2,2), "11255227067", "11255226712"},
		Chicken = {Vector3.new(3, 3, 3), "2114220248", "2114220154"},
		Sonic = {Vector3.new(0.15,0.15,0.15), "6901422268", "6901422170"},
	}
}
-- 
local Stomps = {}
do 
	function Stomps:Explode(VictimChar)
        spawn(function()
            local Explosion = game:GetObjects("rbxassetid://12843483581")[1]
            Explosion.Position = VictimChar.UpperTorso.Position
            for i,v in pairs(Explosion:GetChildren()) do
                if v:IsA('Part') then
                    local RandomOffsets = {
                        [3] = {
                            [1] = CFrame.new(0, 0, 0, 0.291951358, -0.454637647, 0.841468394, 0.837198734, -0.303921342, -0.454675913, 0.462452948, 0.837219477, 0.291891754),
                            [2] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                            [3] = CFrame.new(0, 0, 0, 0.980090559, 0.139680177, 0.141109571, -0.159390777, 0.977284014, 0.139680177, -0.118393585, -0.159390777, 0.980090559),
                            [4] = CFrame.new(0, 0, 0, 0.173127294, 0.378437281, 0.909292102, -0.722461104, -0.578677535, 0.378394246, 0.669385433, -0.722438574, 0.17322135),
                            [5] = CFrame.new(0, 0, 0, 0.427273333, 0.494663626, 0.756799459, -0.869062901, -0.00613296032, 0.494663626, 0.249333531, -0.869062901, 0.427273333)
                        },
                        [4] = {
                            [1] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                            [2] = CFrame.new(0, 0, 0, 0.291951358, 0.454619884, -0.841477931, -0.0720763057, 0.887764454, 0.454619884, 0.953713477, -0.0720763057, 0.291951358),
                            [3] = CFrame.new(0, 0, 0, 0.17322135, -0.378349423, -0.909310758, 0.0343255848, 0.925026178, -0.378349423, 0.98428458, 0.0343255848, 0.17322135),
                            [4] = CFrame.new(0, 0, 0, 0.980090559, -0.13969931, -0.141090572, 0.11998871, 0.982897162, -0.13969931, 0.158193409, 0.11998871, 0.980090559),
                            [5] = CFrame.new(0, 0, 0, 0.427273333, -0.494724542, -0.756759584, 0.120325297, 0.860679626, -0.494724542, 0.896079957, 0.120325297, 0.427273333)
                        },
                        [5] = {
                            [1] = CFrame.new(0, 0, 0, 0.291951358, 0.454619884, -0.841477931, -0.0720763057, 0.887764454, 0.454619884, 0.953713477, -0.0720763057, 0.291951358),
                            [2] = CFrame.new(0, 0, 0, 0.17322135, -0.378349423, -0.909310758, 0.0343255848, 0.925026178, -0.378349423, 0.98428458, 0.0343255848, 0.17322135),
                            [3] = CFrame.new(0, 0, 0, 0.980090559, -0.13969931, -0.141090572, 0.11998871, 0.982897162, -0.13969931, 0.158193409, 0.11998871, 0.980090559),
                            [4] = CFrame.new(0, 0, 0, 0.427273333, 0.494663626, 0.756799459, -0.869062901, -0.00613296032, 0.494663626, 0.249333531, -0.869062901, 0.427273333)
                        }
                    }
                    v.CFrame = Explosion.CFrame * RandomOffsets[i][math.random(1, #RandomOffsets[i])]
                end
            end
            Explosion.Parent = workspace.Ignored
            Explosion.Explosion:Play()
            spawn(function()
                local Tween1 = TweenService:Create(Explosion.Mesh, TweenInfo.new(5, Enum.EasingStyle.Circular), {Scale = Vector3.new(27.5, 27.5, 27.5)})
                Tween1:Play()
                for i,v in pairs(Explosion:GetChildren()) do
                    if v:FindFirstChild('Mesh') then
                        spawn(function()
                            local Tween1 = TweenService:Create(v.Mesh, TweenInfo.new(0.1125, Enum.EasingStyle.Circular), {Scale = Vector3.new(12.5, 12.5, 12.5)})
                            local Tween2 = TweenService:Create(v.Mesh, TweenInfo.new(1.5875, Enum.EasingStyle.Circular), {Scale = Vector3.new(13.75, 13.75, 13.75)})
                            local Tween3 = TweenService:Create(v, TweenInfo.new(0.165), {Transparency = 0.35})
                            local Tween4 = TweenService:Create(v, TweenInfo.new(0.9), {Transparency = 1})
                            Tween1:Play()
                            Tween3:Play()
                            Tween1.Completed:Connect(function()
                                Tween2:Play()
                            end)
                            delay(1.425, function()
                                Tween4:Play()
                            end)
                        end)
                    end
                end
                local Tween2 = TweenService:Create(Explosion, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {Transparency = 1})
                wait(0.8)
                Tween2:Play()
            end)
            game:GetService('Debris'):AddItem(Explosion, 5)
        end)
    end

    function Stomps:AirStrike(VictimChar)
        spawn(function()
            local Radio = Instance.new("Sound", VictimChar.UpperTorso)
            Radio.SoundId = "http://www.roblox.com/asset/?id=88858815"
            Radio.PlaybackSpeed = 1.5
            Radio.Volume = 1
            Radio:Play()
            local Jet = game:GetObjects("rbxassetid://12868291219")[1]
            Jet.Parent = workspace.Ignored
            Jet.Position = VictimChar.UpperTorso.CFrame.Position + Vector3.new(0, 200, -2000)
            Jet.Sound:Play()
            local function AddExplosion()
                local ExplosionSound = Instance.new("Sound", VictimChar.UpperTorso)
                ExplosionSound.SoundId = "rbxassetid://3802269741"
                local Explosion = Instance.new("Explosion", Jet)
                Explosion.DestroyJointRadiusPercent = 0
                Explosion.BlastPressure = 10000
                Explosion.Position = VictimChar.UpperTorso.Position + Vector3.new(math.random(0,50) * 0.1, 0, math.random(0,50) * 0.1)
                ExplosionSound:Play()
            end
            task.spawn(function()
                task.wait(2.78333333333)
                for i = 1,4 do
                    AddExplosion()
                    wait(math.random(0, 100) * 0.001)
                end
            end)
            local Tween = TweenService:Create(Jet, TweenInfo.new(5.566666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                Position = Jet.go.WorldPosition
            })
            Tween:Play()
            Tween.Completed:Wait()
            Jet:Destroy()
        end)
    end

    function Stomps:Heart(VictimChar)
        spawn(function()
            local Table = {}
            local Heart = game:GetObjects("rbxassetid://12868779018")[1]
            Heart.Parent = workspace.Ignored
            Heart.PartOne.Position = VictimChar.UpperTorso.Position + Vector3.new(0,7,0)
            Heart.PartOne.Anchored = true
            Heart.Part.Position = VictimChar.UpperTorso.Position
            Heart.Part.Anchored = true
            for i,v in pairs(Heart.PartOne:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    table.insert(Table, v)
                end
            end
            for i, v in pairs(Heart.Part:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    table.insert(Table, v);
                end;
            end;
            for i, v in pairs(Table) do
                if v:GetAttribute("EmitDelay") then
                    task.delay(v:GetAttribute("EmitDelay"), function()
                        v:Emit(v:GetAttribute("EmitCount"));
                    end);
                else
                    v:Emit(v:GetAttribute("EmitCount"));
                end;
            end;
            local Sound = Instance.new("Sound", Heart.PartOne)
            Sound.Volume = 1
            Sound.SoundId = "rbxassetid://1840977366"
            Sound.PlayOnRemove = true
            Sound:Destroy()
            task.wait(0.35)
            for i,v in pairs(VictimChar:GetDescendants()) do
                if v:IsA("BasePart") then
                    TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
                        Transparency = 1
                    }):Play()
                end
            end
            game.Debris:AddItem(Heart, 10)
        end)
    end

    function Stomps:UFO(VictimChar)
        spawn(function()
            local UFO = game:GetObjects("rbxassetid://12876678129")[1]
            UFO.Parent = workspace.Ignored

            local Sound = Instance.new("Sound", VictimChar.UpperTorso)
            Sound.SoundId = "rbxassetid://138207483"
            Sound:Play()
            game.Debris:AddItem(Sound, 5)
            local Effect = UFO.Effect
            Effect.CFrame = CFrame.new(VictimChar.UpperTorso.Position.X, VictimChar.UpperTorso.Position.Y + 35, VictimChar.UpperTorso.Position.Z)
            TweenService:Create(Effect, TweenInfo.new(0.5), {
                Transparency = 0
            }):Play()
            game.Debris:AddItem(Effect, 5)
            task.wait(0.5)
            local Main = UFO.Main
            Main.CFrame = CFrame.new(VictimChar.UpperTorso.Position.X, VictimChar.UpperTorso.Position.Y - 1, VictimChar.UpperTorso.Position.Z)
            game.Debris:AddItem(Main, 4)
            TweenService:Create(Main, TweenInfo.new(4), {
                CFrame = CFrame.new(Main.Position.X, Main.Position.Y + 20, Main.Position.Z)
            }):Play()
            TweenService:Create(Effect, TweenInfo.new(4), {
                CFrame = CFrame.new(Effect.Position.X, Effect.Position.Y + 20, Effect.Position.Z)
            }):Play()
            for i,v in pairs(VictimChar:GetDescendants()) do
                if not (not v:IsA("BasePart")) or not (not v:IsA("MEshPart")) or v:IsA("Decal") then
                    TweenService:Create(v, TweenInfo.new(4), {
                        Transparency = 1
                    }):Play()
                end
            end
            task.delay(4, function()
                TweenService:Create(Effect, TweenInfo.new(4), {
                    Transparency = 1
                }):Play()
            end)
        end)
    end

    function Stomps:Glitch(VictimChar)
        spawn(function()
            local Glitch = game:GetObjects("rbxassetid://12886574483")[1]
            Glitch.Parent = workspace.Ignored
            Glitch.CFrame = VictimChar.UpperTorso.CFrame + Vector3.new(0, -0.5, 0)
            Glitch.Orientation = VictimChar.UpperTorso.Orientation
            for i,v in pairs(VictimChar:GetDescendants()) do
                if not (not v:IsA("BasePart")) or not (not v:IsA("MEshPart")) or v:IsA("Decal") then
                    TweenService:Create(v, TweenInfo.new(4), {
                        Transparency = 1
                    }):Play()
                end
            end	
            game.Debris:AddItem(Glitch, 4.5)
            for i,v in pairs(Glitch:GetChildren()) do
                if v:IsA("ParticleEmitter") then
                    TweenService:Create(v, TweenInfo.new(4), {
                        Rate = 0
                    }):Play()
                end
            end
            local Sound = Instance.new("Sound", VictimChar.UpperTorso)
            Sound.SoundId = "rbxassetid://8880764455"
            Sound:Play()
        end)
    end

    function Stomps:CosmicSlash(VictimChar)
        spawn(function()
            local Tween = game:GetObjects("rbxassetid://12888729215")[1]
            local XSlash = game:GetObjects("rbxassetid://12888745636")[1]
            local Folder = Instance.new("Folder", workspace.Ignored)
            local sucess, err = pcall(function()
                for i,v in pairs(VictimChar:GetDescendants()) do
                    if not (not v:IsA("BasePart")) or not (not v:IsA("MeshPart")) or v:IsA("Decal") then
                        TweenService:Create(v, TweenInfo.new(4), {
                            Transparency = 1
                        }):Play()
                    end
                end
                local Part = Instance.new("Part")
                local HRP = VictimChar:FindFirstChild("HumanoidRootPart")
                Part.CFrame = CFrame.new(VictimChar.UpperTorso.CFrame.p) * CFrame.new(0,2.2,0)
                local Particles = XSlash.particles
                local Particles2 = XSlash.particles2
                local Beams = XSlash.Beams
                local Main = XSlash.Main
                Main.CFrame = Part.CFrame * CFrame.new(0, -2.7, 0)
                Main.Parent = Folder
                game.Debris:AddItem(Main, 3)
                Sound:Play()
                game.Debris:AddItem(Sound, 3)
                Particles2.CFrame = Part.CFrame * CFrame.Angles(0, -2.3935096295999836, 0)
                Particles2.Parent = Folder
                game.Debris:AddItem(Particles2, 3)
                Particles.CFrame = Part.CFrame * CFrame.Angles(0, -0.8226958495125671, 0)
                Particles.Parent = Folder
                game.Debris:AddItem(Particles, 3)
                Main.Attachment.OUT3:Emit(6)
                Main.Attachment.OUT2:Emit(6)
                Main.Attachment.OUT:Emit(4)
                Main.Attachment.ParticleEmitter:Emit(2)
                TweenService:Create(Main.PointLight, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {
                    Brightness = 5
                }):Play()
                wait(0.06)
                Main.Attachment.IN:Emit(4)
                wait(0.1)
                Main.Attachment2.ParticleEmitter:Emit(39)
                wait(0.28)
                Main.Attachment.OUTFX:Emit(4)
                Main.Attachment.OUTFX2:Emit(4)
                Main.Attachment2.ParticleEmitterOUT:Emit(39)
                for i,v in pairs(Particles:GetChildren()) do
                    v:Emit(v:GetAttribute("EmitCount"))
                end
                for i,v in pairs(Particles2:GetChildren()) do
                    v:Emit(v:GetAttribute("EmitCount"))
                end
                spawn(function()
                    Tween.Parent = game.Lighting
                    game.TweenService:Create(Tween, TweenInfo.new(0.2), {
                        TintColor = Color3.fromRGB(172, 78, 255), 
                        Brightness = 0.5, 
                        Contrast = 1, 
                        Saturation = -1
                    }):Play();
                    wait(0.2);
                    game.TweenService:Create(Tween, TweenInfo.new(0.3), {
                        TintColor = Color3.fromRGB(255, 255, 255), 
                        Brightness = 0, 
                        Contrast = 0, 
                        Saturation = 0
                    }):Play();
                    game.Debris:AddItem(Tween, 0.3);
                end)
                local PrimartyPart = Beams.PrimaryPart
                spawn(function()
                    PrimartyPart.CFrame = Part.CFrame * CFrame.new(0, -2.7, 0)
                    Beams.Parent = Folder
                    for i = 0, 1, 0.1 do
                        Beams:FindFirstChild("Part1").BEAM.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM1.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM2.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM3.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM4.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM5.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM6.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM7.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM1.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM2.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM3.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM4.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM5.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM6.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM7.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM1.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM2.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM3.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM4.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM5.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM6.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM7.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM1.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM2.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM3.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM4.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM5.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM6.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM7.Transparency = NumberSequence.new(i);
                        wait(0.001);
                    end
                end)
                wait(0.4)
                TweenService:Create(Main.PointLight, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {
                    Brightness = 0
                }):Play();
        end)
            if sucess then
                task.delay(25, function()
                    Folder:Destroy()
                end)
                return
            end
            Folder:Destroy()
            Tween:Destroy()
        end)
    end
end 	
-- 
local Highlights = Instance.new("Folder")
Highlights.Parent = game.CoreGui
-- 
if not LPH_OBFUSCATED then 
    LPH_JIT_MAX = function(...) return (...) end;
    LPH_NO_VIRTUALIZE = function(...) return (...) end;
	LPH_JIT = function(...) return (...) end;
end
-- 
for i,v in pairs(Lynx.Files.Folders) do
	makefolder(v)
end 
-- 
for LuaName, Contents in pairs(Lynx.Files.Luas) do
	writefile("Lynx/Luas/" .. LuaName .. ".lua", Contents)
end 
-- 
if not isfile("Lynx/Assets/Auto Prediction.txt") then 
	writefile("Lynx/Assets/Auto Prediction.txt", "10 ping value\n20 ping value\n30 ping value\n40 ping value\n50 ping value\n60 ping value\n70 ping value\n80 ping value\n90 ping value\n100 ping value")
end 
-- 
-- 
if not isfile("Lynx/Assets/Shit Talk.txt") then 
	writefile("Lynx/Assets/Shit Talk.txt", "You're a dog nn\nGet Good Get Lynx\nLOL")
end 
--
utility.ShitTalk.Custom = readfile("Lynx/Assets/Shit Talk.txt"):split("\n")
--
local ui = {}
-- 
local uis = game:GetService('UserInputService')
local txtservice = game:GetService('TextService')
local ts = game:GetService('TweenService')
local rs = game:GetService('RunService')
local hs = game:GetService('HttpService')

local HttpService = game:GetService("HttpService")
local ENABLE_TRACEBACK = false
local Signal = {}
do
	Signal.__index = Signal
	Signal.ClassName = "Signal"
    --[=[
        Returns whether a class is a signal
        @param value any
        @return boolean
    ]=]
	function Signal.isSignal(value)
		return type(value) == "table" and getmetatable(value) == Signal
	end
    --[=[
        Constructs a new signal.
        @return Signal<T>
    ]=]
	function Signal.new()
		local self = setmetatable({}, Signal)
		self._bindableEvent = Instance.new("BindableEvent")
		self._argMap = {}
		self._source = ENABLE_TRACEBACK and debug.traceback() or ""

		self._bindableEvent.Event:Connect(function(key)
			self._argMap[key] = nil
			if (not self._bindableEvent) and (not next(self._argMap)) then
				self._argMap = nil
			end
		end)
		return self
	end
    --[=[
        Fire the event with the given arguments. All handlers will be invoked. Handlers follow
        @param ... T -- Variable arguments to pass to handler
    ]=]
	function Signal:Fire(...)
		if not self._bindableEvent then
			warn(("Signal is already destroyed. %s"):format(self._source))
			return
		end
		local args = table.pack(...)
		local key = HttpService:GenerateGUID(false)
		self._argMap[key] = args
		self._bindableEvent:Fire(key)
	end
    --[=[
        Connect a new handler to the event. Returns a connection object that can be disconnected.
        @param handler (... T) -> () -- Function handler called when `:Fire(...)` is called
        @return RBXScriptConnection
    ]=]
	function Signal:Connect(handler)
		if not (type(handler) == "function") then
			error(("connect(%s)"):format(typeof(handler)), 2)
		end
		return self._bindableEvent.Event:Connect(function(key)
			local args = self._argMap[key]
			if args then
				handler(table.unpack(args, 1, args.n))
			else
				error("Missing arg data, probably due to reentrance.")
			end
		end)
	end
    --[=[
        Wait for fire to be called, and return the arguments it was given.
        @yields
        @return T
    ]=]
	function Signal:Wait()
		local key = self._bindableEvent.Event:Wait()
		local args = self._argMap[key]
		if args then
			return table.unpack(args, 1, args.n)
		else
			error("Missing arg data, probably due to reentrance.")
			return nil
		end
	end
    --[=[
        Disconnects all connected events to the signal. Voids the signal as unusable.
        Sets the metatable to nil.
    ]=]
	function Signal:Destroy()
		if self._bindableEvent then
			self._bindableEvent:Destroy()
			self._bindableEvent = nil
		end
		setmetatable(self, nil)
	end
end

local Connections = {}

local function Tween(frame,time,style,direction,props)
	local a = ts:Create(frame,TweenInfo.new(time,Enum.EasingStyle[style],Enum.EasingDirection[direction]),props)
	a:Play()
	return a
end
local function formatTable(t)
	local t = t or {}
	local new = {}
	for i,v in pairs(t) do
		new[tostring(i):lower()] = v
	end
	return new
end
local function create(className,options)
	local options = options or {}
	local inst = Instance.new(className)
	for i,v in pairs(options) do
		inst[i] = v
	end
	return inst
end
local function TabInsert(t,v)
	if not table.find(t,v) then
		table.insert(t,v)
	end
end
local function TabRemove(t,v)
	local a = table.find(t,v)
	if a then
		table.remove(t,a)
	end
end
local function Dragify(frame,frame2)
	local frame2 = frame2 or frame
	local dragging = false 
	local dragInput 
	local dragStart 
	local startPos 
	local function update(input) 
		local delta = input.Position - dragStart 
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end 
	frame2.InputBegan:Connect(function(input) 
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
			dragging = true 
			dragStart = input.Position 
			startPos = frame.Position 
			input.Changed:Connect(function() 
				if input.UserInputState == Enum.UserInputState.End then 
					dragging = false 
				end 
			end) 
		end 
	end) 
	frame2.InputChanged:Connect(function(input) 
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then 
			dragInput = input 
		end 
	end)
	uis.InputChanged:Connect(function(input) 
		if input == dragInput and dragging then 
			update(input) 
		end 
	end)
end
local function SetupFrame(frame,options)
	local options = formatTable(options)
	local uiCorner,stroke,list,pad
	if options.corner then
		local cornerOptions = formatTable(options.corner)
		uiCorner = create('UICorner',{
			Parent = frame,
			CornerRadius = cornerOptions.radius or UDim.new(),
		})
	end
	if options.stroke then
		local strokeOptions = formatTable(options.stroke)
		stroke = create('UIStroke',{
			Name = 'Stroke',
			Parent = frame,
			Thickness = 1,
			Transparency = 0,
			Color = strokeOptions.Color or Color3.fromRGB(40,40,40), -- ps it doesnt even change
			LineJoinMode = 'Round',
			ApplyStrokeMode = 'Contextual'
		})
	end
	if options.list then
		local listOptions = formatTable(options.list)
		list = create('UIListLayout',{
			Parent = frame,
			Padding = listOptions.pad or UDim.new(),
			FillDirection = listOptions.direction or 'Vertical',
			HorizontalAlignment = listOptions.horizontalalignment or 'Left',
			SortOrder = listOptions.order or 'LayoutOrder',
			VerticalAlignment = listOptions.verticalalignment or 'Top',
		})
	end
	if options.pad then
		local padOptions = formatTable(options.pad)
		pad = create('UIPadding',{
			Parent = frame,
			PaddingBottom = padOptions.bottom or UDim.new(),
			PaddingTop = padOptions.top or UDim.new(),
			PaddingRight = padOptions.right or UDim.new(),
			PaddingLeft = padOptions.left or UDim.new(),
		})
	end
	return uiCorner,stroke,list,pad
end
local function CreateElement(element) -- aka create holder
	local holder = element._holder
	local elementHolder = create('Frame',{
		Name = #holder:GetChildren()-(element._settingMenu and 0 or 3),
		Parent = holder,
		Size = UDim2.new(1,0,0,15),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = holder.ZIndex+1,
	})
	local holder = create('Frame',{
		Name = 'Holder',
		Parent = elementHolder,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = element._holderPosition or UDim2.new(0,80,0,0),
		Size = element._holderSize or UDim2.new(0,100,1,0),
		ZIndex = elementHolder.ZIndex+1,
	})
	SetupFrame(holder,{
		List = {Pad = UDim.new(0,5),Direction = 'Horizontal',horizontalalignment = 'Right',verticalalignment = 'Top'},
	})
	return holder
end
local function CreateSlider(frame,options)
	local options = formatTable(options)
	local side = options.side or 'X'
	local offset = side == 'Y' and 36 or 0

	local min = options.min or 0
	local max = options.max or 100
	local default = options.default or 0
	local float = options.float or 1

	local set = options.set or function() end


	local button = create('Frame',{
		Parent = frame,
		Name = 'Button',
		BackgroundTransparency = 1,
		Position = UDim2.new(),
		Size = UDim2.new(1,0,1,0),
		ZIndex = frame.ZIndex+1,
	})

	local function slide(input)
		local x = (input.Position[side]-frame.AbsolutePosition[side])/frame.AbsoluteSize[side]

		local value = ((max-min)*x)+min
		value = math.floor(value*(1/float))/(1/float)
		value = math.clamp(value,min,max)
		set(value)
	end
	set(default)
	local sliding = false
	button.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			sliding = true
			slide(input)
		end
	end)
	button.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			sliding = false
			slide(input)
		end
	end)
	uis.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and sliding then
			slide(input)
		end
	end)
	return button
end
local function CreateInput(textlabel,options)
	local textbox = create('TextBox',{
		Parent = textlabel.Parent,
		ClearTextOnFocus = false,
		Font = textlabel.Font,
		FontFace = textlabel.FontFace,
		LineHeight = textlabel.LineHeight,
		Position = textlabel.Position,
		Size = textlabel.Size,
		Text = textlabel.Text,
		TextColor3 = textlabel.TextColor3,
		TextScaled = textlabel.TextScaled,
		TextSize = textlabel.TextSize,
		Name = textlabel.Name,
		ZIndex = textlabel.ZIndex,
		BackgroundTransparency = textlabel.BackgroundTransparency,
		TextTransparency = textlabel.TextTransparency,
		TextXAlignment = textlabel.TextXAlignment,
		BorderSizePixel = textlabel.BorderSizePixel,
	})
	textlabel:Destroy()
	local options = formatTable(options)
	local callback = options.callback or function() end
	if options.focuses then
		textbox.Focused:Connect(function()
			callback(false,textbox.Text)
		end)
		textbox.FocusLost:Connect(function(a,b)
			callback(true,textbox.Text,a,b)
		end)
	else
		textbox:GetPropertyChangedSignal('Text'):Connect(function()
			callback(textbox.Text)
		end)
	end
	return textbox
end
-- im master of sphagetti code when it comes to uis LOL

local Elements = {}
Elements.__index = Elements

local function CombineTables(t,t2)
	local t3 = {}
	for i,v in pairs(t) do
		t3[i] = v
	end
	for i,v in pairs(t2) do
		t3[i] = v
	end

	return setmetatable(t3,Elements)
end
local Segment = {} -- i have no clue how to call it srry
Segment.__index = Segment
function Segment:CreateSegment(options)
	local options = formatTable(options)
	local holder = CreateElement(self)

	local elementsClass = {_holder = holder,_window = self._window,_sector = self._sector,_tabSector = self._tabSector,_segment = true}
	if options.name then
		elementsClass._title = true
		create('TextLabel',{
			Name = 'Title',
			Parent = holder.Parent,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 12),
			ZIndex = holder.ZIndex+1,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12.000,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = options.name or ''
		})
	end
	return setmetatable(elementsClass,Elements)
end

function Elements:Colorpicker(options)
	local options = formatTable(options)
	local mainHolder = self._holder
	if not self._segment then
		mainHolder = CreateElement(self)
	end
	if not mainHolder.Parent:FindFirstChild('Title') then
		create('TextLabel',{
			Name = 'Title',
			Parent = mainHolder.Parent,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 12),
			ZIndex = mainHolder.ZIndex+1,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12.000,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = options.name or ''
		})
	end
	local sector = self._tabSector
	local zindexadd = 300+300*#sector:GetChildren()
	local colorpickerIcon = create('ImageLabel',{
		Parent = mainHolder,
		Name = (10-#mainHolder:GetChildren()),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 46, 0, 0),
		Size = UDim2.new(0, 15, 0, 15),
		ZIndex = mainHolder.ZIndex+1,
		Image = "http://www.roblox.com/asset/?id=14259665095",
		ImageColor3 = Color3.fromRGB(200, 200, 200),
		SliceScale = 4.000,
	})
	local scroll = self._tabSector
	local scrollY = scroll.CanvasSize.Y.Offset
	
	local edgeX = scroll.AbsolutePosition.X+scroll.AbsoluteSize.X
	local sizex = 125
	local offset = 15

	local posX = ((colorpickerIcon.AbsolutePosition.X+offset >= edgeX or colorpickerIcon.AbsolutePosition.X+offset+sizex >= edgeX) and -(sizex+offset) or offset+(colorpickerIcon.AbsoluteSize.X/2))
	local posY = math.clamp(colorpickerIcon.AbsolutePosition.Y-60,scroll.AbsolutePosition.Y,scroll.AbsolutePosition.Y+scrollY)

	local colorpickerFrame = create('Frame',{
		Name = 'ColorpickerFrame',
		Parent = colorpickerIcon,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, posX, 0, posY-colorpickerIcon.AbsolutePosition.Y+2),
		Size = UDim2.new(0, sizex, 0, 135),
		ZIndex = zindexadd+1,
		Visible = false,
	})
	SetupFrame(colorpickerFrame,{corner = {radius = UDim.new(0,4)},stroke = {}})
	local button = create('TextButton',{
		Parent = colorpickerIcon,
		Size = UDim2.new(1,0,1,0),
		TextTransparency = 1,
		BackgroundTransparency = 1,
		ZIndex = zindexadd+1
	})
	button.MouseButton1Down:Connect(function()
		colorpickerFrame.Visible = not colorpickerFrame.Visible
	end)
	
	scroll:GetPropertyChangedSignal('CanvasSize'):Connect(function()
		scrollY = scroll.CanvasSize.Y.Offset
		posY = math.clamp(colorpickerIcon.AbsolutePosition.Y-60,scroll.AbsolutePosition.Y,scroll.AbsolutePosition.Y+scrollY)
		colorpickerFrame.Position = UDim2.new(0, posX, 0, posY-colorpickerIcon.AbsolutePosition.Y+2)
	end)
	
	-- 5 fucking frames 3 textlables and 1 image i fucking hate colorpicker i made
	local mainColorpicker = create('Frame',{
		Name = 'Colorpicker',
		Parent = colorpickerFrame,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 5, 0, 5),
		Size = UDim2.new(0, 100, 0, 90),
		ZIndex = zindexadd+2,
	})
	SetupFrame(mainColorpicker,{Corner = {radius = UDim.new(0,4)}})
	local image = create('ImageLabel',{
		ZIndex = zindexadd+3,
		Parent = mainColorpicker,
		Image = 'rbxassetid://4155801252',
		Size = UDim2.new(1,0,1,0)
	})

	local hue = create('Frame',{
		Name = 'Hue',
		Parent = colorpickerFrame,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 5, 0, 100),
		Size = UDim2.new(0, 115, 0, 11),
		ZIndex = zindexadd+2,
	})
	SetupFrame(hue,{corner = {radius = UDim.new(0,4)}})
	create('UIGradient',{
		Parent = hue,
		Enabled = true,
		Rotation = 0,
		Color = ColorSequence.new{
			ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), 
			ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)), 
			ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)), 
			ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)), 
			ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 0, 255)), 
			ColorSequenceKeypoint.new(0.82, Color3.fromRGB(255, 0, 255)), 
			ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
		}
	})
	local alpha = create('ImageLabel',{
		Name = 'Alpha',
		Parent = colorpickerFrame,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 110, 0, 5),
		Size = UDim2.new(0, 10, 0, 90),
		ZIndex = zindexadd+2,
		Image = "rbxassetid://14248403322",
	})


	local alphaslideFrame = create('Frame',{
		BackgroundTransparency = 1,
		Parent = alpha,
		Size = UDim2.new(1,0,1,-2)
	})
	local alphapicker = create('Frame',{
		Parent = alphaslideFrame,
		BorderSizePixel = 1,
		Size = UDim2.new(1,-2,0,2),
		Position = UDim2.new(0,1,0,0),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		ZIndex = zindexadd+4
	})

	local hueslideFrame = create('Frame',{
		BackgroundTransparency = 1,
		Parent = hue,
		Size = UDim2.new(1,-2,1,0)
	})
	local huepicker = create('Frame',{
		Parent = hueslideFrame,
		BorderSizePixel = 1,
		Size = UDim2.new(0,2,1,-2),
		Position = UDim2.new(0,0,0,1),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		ZIndex = zindexadd+4
	})

	local colorpickerSlide = create('Frame',{
		Parent = mainColorpicker,
		Name = 'SlideFrame',
		Size = UDim2.new(1,-3,1,-3),
		Position = UDim2.new(0,1,0,1),
		BackgroundTransparency = 1,
	})
	local colorpointer = create('Frame',{
		Parent = colorpickerSlide,
		Name = 'Picker',
		Size = UDim2.new(0,6,0,6),
		Position = UDim2.new(),
		BorderSizePixel = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		ZIndex = zindexadd+4
	})

	local inputs = {}
	for i=1,3 do -- i am NOT doing 3 20 lines of code
		local mainFrame = create('Frame',{
			Name = tostring(i),
			Parent = colorpickerFrame,
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BackgroundTransparency = 0.500,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 6+(39*(i-1)), 0, 116),
			Size = UDim2.new(0, 35, 0, 14),
			ZIndex = zindexadd+2,
		})
		local a = create('TextLabel',{
			Name = tostring(i),
			Parent = mainFrame,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 1, 0, 0),
			Size = UDim2.new(1, 0, 1, -1),
			ZIndex = zindexadd+3,
			Font = Enum.Font.Gotham,
			Text = "255",
			TextColor3 = Color3.fromRGB(180, 180, 180),
			TextSize = 11.000,
			TextWrapped = true,
		})
		SetupFrame(mainFrame,{corner = {radius = UDim.new(0,4)},pad = {top = UDim.new(0,1),bottom = UDim.new(0,1),left = UDim.new(0,8),right = UDim.new(0,8)},stroke = {}})
		table.insert(inputs,a)
	end
	local window = self._window
	local callback = options.callback or function() end
	local flag = options.flag; if not flag then window._undefinedFlags += 1; flag = 'undefined_'..window._undefinedFlags end
	local callback = options.callback or function() end


	local default = {Color = Color3.fromRGB(255, 255, 255),Alpha = 0}
	if options.default then
		if typeof(options.default) == 'Color3' then
			default.Color = options.default
		elseif typeof(options.default) == 'table' then
			default = options.default
		end
	end
	window.flags[flag] = {Color = default.Color,Alpha = default.Alpha or 0}
	local h,s,v = default.Color:ToHSV()
	
	local a = default.Alpha or 0
	
	local function set(color,setpos)
		local newhue,newsat,newval = color:ToHSV()

		if setpos then
			h = newhue
			s = newsat
			v = newval

			alphapicker.Position = UDim2.new(0,1,a,0)
			huepicker.Position = UDim2.new(h,0,0,1)
			colorpointer.Position = UDim2.new(1-s,-3,1-v,-3)
		end
		image.ImageColor3 = Color3.fromHSV(h,1,1)

		alpha.BackgroundColor3 = Color3.fromHSV(h,1,1)

		inputs[1].Text = math.floor(color.R*255) 
		inputs[2].Text = math.floor(color.G*255)
		inputs[3].Text = math.floor(color.B*255) 

		window.flags[flag].Color = color
		window.flags[flag].Alpha = a
		callback(window.flags[flag])
	end
	local function SetA(newa)
		a = newa
		alphapicker.Position = UDim2.new(0,1,a,0)
		set(Color3.fromHSV(h,1-s,1-v))
	end
	local function SetH(value)
		h = value
		huepicker.Position = UDim2.new(h,0,0,1)
		set(Color3.fromHSV(h,1-s,1-v))
	end
	local function SetS(value)
		s = value
		colorpointer.Position = UDim2.new(s,-3,v,-3)
		set(Color3.fromHSV(h,1-s,1-v))
	end
	local function SetV(value)
		v = value
		colorpointer.Position = UDim2.new(s,-3,v,-3)
		set(Color3.fromHSV(h,1-s,1-v))
	end

	CreateSlider(alphaslideFrame,{side = 'Y',min=0,max=1,float=0.01,default=0,set=SetA})
	CreateSlider(hueslideFrame,{side = 'X',min=0,max=1,float=0.01,default=0,set=SetH})

	CreateSlider(colorpickerSlide,{side = 'X',min=0,max=1,float=0.01,default=0,set=SetS})
	CreateSlider(colorpickerSlide,{side = 'Y',min=0,max=1,float=0.01,default=0,set=SetV})

	set(default.Color,true)

	local r,g,b


	local textbox;textbox = CreateInput(inputs[1],{focuses = true,callback = function(a,text,b,c)
		if not a then
			r = text
		else
			if tonumber(text) then
				set(Color3.fromRGB(text,inputs[2].Text,inputs[3].Text),true)
			else
				textbox.Text = r
			end
		end
	end})
	inputs[1] = textbox
	local textbox;textbox = CreateInput(inputs[2],{focuses = true,callback = function(a,text,b,c)
		if not a then
			g = text
		else
			if tonumber(text) then
				set(Color3.fromRGB(inputs[1].Text,text,inputs[3].Text),true)
			else
				textbox.Text = g
			end
		end
	end})
	inputs[2] = textbox
	local textbox;textbox = CreateInput(inputs[3],{focuses = true,callback = function(a,text,b,c)
		if not a then
			b = text
		else
			if tonumber(text) then
				set(Color3.fromRGB(inputs[1].Text,inputs[2].Text,text),true)
			else
				textbox.Text = b
			end
		end
	end})
	inputs[3] = textbox
	
	local function SetValue(color)
		a = typeof(color) == 'table' and color.Alpha or 0
		local color = typeof(color) == 'table' and color.Color or color
		set(color,true)
	end
	
	window._FlagsSet[flag] = SetValue
	
	local newmt = table.clone(self)
	newmt._holder = mainHolder
	newmt._segment = true
	setmetatable(newmt,Elements)
	return setmetatable({Set = SetValue},{__index = newmt})

end
function Elements:Settings(options)
	local options = formatTable(options)
	
	local mainHolder = self._holder
	if not self._segment then
		mainHolder = CreateElement(self)
	end
	if not mainHolder.Parent:FindFirstChild('Title') then
		create('TextLabel',{
			Name = 'Title',
			Parent = mainHolder.Parent,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 12),
			ZIndex = mainHolder.ZIndex+1,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12.000,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = options.name or ''
		})
	end
	local scroll = self._tabSector

	local edgeX = scroll.AbsolutePosition.X+scroll.AbsoluteSize.X
	
	local zindexadd = 200+#self._sector:GetChildren()*200
	local settingIcon = create('ImageLabel',{
		Parent = mainHolder,
		Name = (10-#mainHolder:GetChildren()),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 46, 0, 0),
		Size = UDim2.new(0, 15, 0, 15),
		ZIndex = mainHolder.ZIndex+1,
		Image = "http://www.roblox.com/asset/?id=14259672152",
		ImageColor3 = Color3.fromRGB(200, 200, 200),
		SliceScale = 4.000,
	})
	local sizex = 150
	local offset = 10
	
	local posX = ((settingIcon.AbsolutePosition.X+offset >= edgeX or settingIcon.AbsolutePosition.X+offset+sizex >= edgeX) and -(sizex+offset) or offset+(settingIcon.AbsoluteSize.X/2))
	local posY = math.clamp(settingIcon.AbsolutePosition.Y,scroll.AbsolutePosition.Y,scroll.AbsolutePosition.Y+scroll.AbsoluteSize.Y)
	
	local button = create('TextButton',{
		Parent = settingIcon,
		Name = 'Button',
		Size = UDim2.new(1,0,1,0),
		BackgroundTransparency = 1,
		TextTransparency = 1,
		ZIndex = mainHolder.ZIndex+2,
	})
	local settingFrame = create('Frame',{
		Name = 'Setting',
		Parent = settingIcon,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderSizePixel = 0,
		Position = UDim2.new(0, posX, 0, posY-settingIcon.AbsolutePosition.Y+2),
		Size = UDim2.new(0, sizex, 0, 10),
		ZIndex = zindexadd,
		Visible = false,
	})
	SetupFrame(settingFrame,{Corner = {radius = UDim.new(0, 4)},stroke = {}})
	button.MouseButton1Down:Connect(function()
		settingFrame.Visible = not settingFrame.Visible
	end)
	local settingsHolder = create('Frame',{
		Parent = settingFrame,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(),
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = zindexadd+1,
	})
	SetupFrame(settingsHolder,
		{
			list = {pad = UDim.new(0,5),directing = 'Vertical',horizontalalignment = 'Left',verticalalignment = 'Top'},
			pad = {bottom = UDim.new(0,5),top = UDim.new(0,5),left = UDim.new(0,6), right = UDim.new(0,6)}
		}
	)

	local list = settingsHolder.UIListLayout
	local function UpdatePos()
		local contentSize = list.AbsoluteContentSize.Y + 25

		local posY = math.clamp(settingIcon.AbsolutePosition.Y+(-contentSize/2+7),scroll.AbsolutePosition.Y,scroll.AbsolutePosition.Y+scroll.AbsoluteSize.Y)

		settingFrame.Size = UDim2.new(0,sizex,0,contentSize)
		settingFrame.Position = UDim2.new(0, posX, 0, posY-settingIcon.AbsolutePosition.Y+2)	
	end
	list:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(UpdatePos)
	scroll:GetPropertyChangedSignal('CanvasSize'):Connect(UpdatePos)
	return setmetatable(
		{
			_holder = settingsHolder,
			_window = self._window,
			_tabSector = self._tabSector,
			_sector = self._sector,
			_settingMenu = true,
			_holderSize = UDim2.new(1,-60,1,0),
			_holderPosition = UDim2.new(1,-80,0,0)
		},
		{__index = Elements}
	)
end
function Elements:Title(options)
	local options = formatTable(options)
	local oldMainholder = CreateElement(self)
	local mainHolder = oldMainholder.Parent
	oldMainholder:Destroy() 

	local title = options.title or ''
	local description = options.description

	if description then
		mainHolder.Size = UDim2.new(1, 0, 0, 28)
	end 

	SetupFrame(mainHolder,{
		list = {Pad = UDim.new(0,4),direction = 'Vertical',horizontalalignment = 'Left',verticalalignment = 'Center'}
	})
	create('TextLabel',{
		Parent = mainHolder,
		Name = 'Title',
		LayoutOrder = 1,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, description and 12 or 15),
		ZIndex = mainHolder.ZIndex+1,
		Font = Enum.Font.GothamMedium,
		TextColor3 = Color3.fromRGB(200, 200, 200),
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = title
	})

	if description then
		create('TextLabel',{
			Parent = mainHolder,
			Name = 'Description',
			LayoutOrder = 2,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 12),
			ZIndex = mainHolder.ZIndex+1,
			Font = Enum.Font.Gotham,
			Text = description,
			TextColor3 = Color3.fromRGB(108, 108, 108),
			TextSize = 12.000,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	end
end
function Elements:Toggle(options)
	local options = formatTable(options)
	local mainHolder = self._holder

	if not self._segment then
		mainHolder = CreateElement(self)
	end
	if not mainHolder.Parent:FindFirstChild('Title') then
		create('TextLabel',{
			Name = 'Title',
			Parent = mainHolder.Parent,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 12),
			ZIndex = mainHolder.ZIndex+1,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12.000,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = options.name or ''
		})
	end
	local toggle = create('Frame',{
		Name = 'Toggle',
		LayoutOrder = (10-#mainHolder:GetChildren()),
		Parent = mainHolder,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BackgroundTransparency = 0.5,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 1, 0, 1),
		Size = UDim2.new(0, 33, 1, 0),
		ZIndex = mainHolder.ZIndex+2,
	})
	SetupFrame(toggle,{
		corner = {radius = UDim.new(1,0)},
		pad = {bottom = UDim.new(0,1),top = UDim.new(0,1),right = UDim.new(0,1),left = UDim.new(0,1)},
		stroke = {}
	})
	local circle = create('Frame',{
		Name = 'Circle',
		Parent = toggle,
		BackgroundColor3 = Color3.fromRGB(125, 125, 125),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 1, 0, 0),
		Size = UDim2.new(0, 12, 1, 0),
		ZIndex = mainHolder.ZIndex+3,
	})
	local btn = create('TextButton',{
		Name = 'Callback Handler',
		Parent = toggle,
		BackgroundTransparency = 1,
		Text = '',
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = mainHolder.ZIndex+4,
	})
	SetupFrame(circle,{corner = {radius = UDim.new(1,0)}})

	local window = self._window
	local flag = options.flag; if not flag then window._undefinedFlags += 1; flag = 'undefined_'..window._undefinedFlags end
	local callback = options.callback or function() end
	window.flags[flag] = (options.default ~= nil)

	local function OnCallback()
		if window.flags[flag] then
			Tween(circle,0.25,'Quad','Out',{BackgroundColor3 = Color3.new(1, 1, 1),Position = UDim2.new(1, -13, 0,0)})
		else
			Tween(circle,0.25,'Quad','Out',{BackgroundColor3 = Color3.fromRGB(125, 125, 125),Position = UDim2.new(0, 1,0,0)})
		end
		--Tween(circle,0.25,'Quad','Out',{BackgroundColor3 = (window.flags[flag] and Color3.new(1, 1, 1) or Color3.fromRGB(125, 125, 125)),Position = UDim2.new(window.flags[flag] and 1 or 0, window.flags[flag] and -13 or 1,0,0)})
		callback(window.flags[flag])
	end
	local function Set(val)
		window.flags[flag] = val
		OnCallback()
	end
	Set(window.flags[flag])
	local _ = toggle.AbsolutePosition -- abs position doesnt get updated until indexes lmao
	btn.MouseButton1Down:Connect(function() Set(not window.flags[flag]) end)
	
	window._FlagsSet[flag] = Set
	
	local newmt = table.clone(self)
	newmt._holder = mainHolder
	newmt._segment = true
	setmetatable(newmt,Elements)
	return setmetatable({Set = Set},{__index = newmt})
end
function Elements:Input(options)
	local options = formatTable(options)
	local mainHolder = self._holder

	if not self._segment then
		mainHolder = CreateElement(self)
	end
	if not mainHolder.Parent:FindFirstChild('Title') then
		create('TextLabel',{
			Name = 'Title',
			Parent = mainHolder.Parent,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 12),
			ZIndex = mainHolder.ZIndex+1,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12.000,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = options.name or ''
		})
	end
	local window = self._window
	local callback = options.callback or function() end
	local flag = options.flag; if not flag then window._undefinedFlags += 1; flag = 'undefined_'..window._undefinedFlags end
	local input = create('Frame',{
		Name = 'Input',
		LayoutOrder = (10-#mainHolder:GetChildren()),
		Parent = mainHolder,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BackgroundTransparency = 0.5,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 1, 0, 1),
		Size = UDim2.new(0, 100, 1, 0),
		ZIndex = mainHolder.ZIndex+2,
	})
	SetupFrame(input,{pad = {Bottom = UDim.new(0,1),top = UDim.new(0,1),right = UDim.new(0,8),left = UDim.new(0,8)},corner = {radius = UDim.new(1,0)},stroke = {}})
	local inputTextlabel = create('TextLabel',{
		Parent = input,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = mainHolder.ZIndex+3,
		Font = Enum.Font.Gotham,
		Text = "0",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextScaled = true,
		TextSize = 14,
		TextWrapped = true,
	})
	local function set(text)
		inputTextlabel.Text = text
		window.flags[flag] = text
		callback(text)
	end
	inputTextlabel = CreateInput(inputTextlabel,{focuses = options.focuses,callback = function(...)
		window.flags[flag] = inputTextlabel.Text
		callback(...)
	end,})
	
	window._FlagsSet[flag] = set
	
	local newmt = table.clone(self)
	newmt._holder = mainHolder
	newmt._segment = true
	setmetatable(newmt,Elements)
	
	return setmetatable({Set = set},{__index = newmt})
end
function Elements:Slider(options)
	local options = formatTable(options)
	local mainHolder = self._holder

	local window = self._window
	local flag = options.flag; if not flag then window._undefinedFlags += 1; flag = 'undefined_'..window._undefinedFlags end
	local callback = options.callback or function() end
	local min = options.min or 0
	local max = options.max or 100
	local default = options.default or min
	local float = options.float or 1
	local showvalue = true
	if options.showvalue == false then showvalue = false end


	if not self._segment then
		mainHolder = CreateElement(self)
	end
	if not mainHolder.Parent:FindFirstChild('Title') then
		create('TextLabel',{
			Name = 'Title',
			Parent = mainHolder.Parent,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 12),
			ZIndex = mainHolder.ZIndex+1,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12.000,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = options.name or ''
		})
	end

	local SlideHolder = create('Frame',{
		Name = 'Slider',
		LayoutOrder = (10-#mainHolder:GetChildren()),
		Parent = mainHolder,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(0, 70+(showvalue and txtservice:GetTextSize(tostring(max),12,Enum.Font['GothamMedium'],Vector2.new(math.huge,math.huge)).X+5 or 0), 1, 0),
		ZIndex = mainHolder.ZIndex+2,
	})
	SetupFrame(SlideHolder,{pad = {bottom = UDim.new(0,1),top = UDim.new(0,1),left = UDim.new(0,1),right = UDim.new(0,1)},corner = {radius = UDim.new(1,0)}})
	local slider = create('Frame',{
		Name = 'Slide',
		Parent = SlideHolder,
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BorderSizePixel = 0,
		Position = UDim2.new(1, -65, 0.5, -1),
		Size = UDim2.new(0, 60, 0, 2),
		ZIndex = mainHolder.ZIndex+3
	})
	local circle = create('Frame',{
		Parent = slider,
		Name = 'Circle',
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, -5, 0, 6),
		Size = UDim2.new(0, 12, 0, 12),
		ZIndex = mainHolder.ZIndex+3
	})
	SetupFrame(circle,{corner = {radius = UDim.new(1,0)}})
	SetupFrame(slider,{corner = {radius = UDim.new(1,0)}})

	local textLabel;
	if showvalue then
		textLabel = create('TextLabel',{
			Parent = SlideHolder,
			Name = 'Counter',
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(0, txtservice:GetTextSize(tostring(max),12,Enum.Font['GothamMedium'],Vector2.new(math.huge,math.huge)).X, 1, 0),
			ZIndex = SlideHolder.ZIndex+1,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12.000,
			TextXAlignment = 'Right'
		})
	end
	local function set(newval)
		newval = math.clamp(newval,min,max)

		circle.Position = UDim2.new((newval-min)/(max-min),-3,0,-6)

		if textLabel then
			textLabel.Text = tostring(newval)
		end
		window.flags[flag] = newval
		callback(newval)
	end

	local a = CreateSlider(slider,{min = min,max = max,default = default,float = float,side = 'X',set = set})
	a.Position = UDim2.new(0,0,0,-6)
	a.Size = UDim2.new(0,60,0,12)

	set(default)
	
	window._FlagsSet[flag] = set
	
	local newmt = table.clone(self)
	newmt._holder = mainHolder
	newmt._segment = true
	setmetatable(newmt,Elements)
	return setmetatable({
		Set = set,
		
	},{__index = newmt})
end
function Elements:Dropdown(options)
	local options = formatTable(options)
	local mainHolder = self._holder

	if not self._segment then
		mainHolder = CreateElement(self)
	end
	if not mainHolder.Parent:FindFirstChild('Title') then
		create('TextLabel',{
			Name = 'Title',
			Parent = mainHolder.Parent,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 12),
			ZIndex = mainHolder.ZIndex+1,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12.000,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = options.name or ''
		})
	end
	local choices = options.options or {}
	local current = options.default or {}

	local min = options.min or 0
	local max = options.max or #choices

	if min>max then error('kill yourself (min is bigger than max)',2) end
	
	local currentChild = #self._sector:GetChildren()
	local zindexadd = 100
	
	local dropdownHolder = create('Frame',{
		Parent = mainHolder,
		Name = 'Dropdown',
		LayoutOrder = (10-#mainHolder:GetChildren()),
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 1, 0, 1),
		Size = UDim2.new(0, 90, 1, 0),
		ZIndex = zindexadd,
	})
	SetupFrame(dropdownHolder,{Corner = {radius = UDim.new(0,2)},stroke = {}})

	local btn = create('TextButton',{
		Parent = dropdownHolder,
		Name = 'Handler',
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = zindexadd+1,
		Text = '',
		TextTransparency = 1,
	})

	local choiceText = create('TextLabel',{
		Parent = dropdownHolder,
		Name = 'Choice',
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 5, 0, 2),
		Size = UDim2.new(1, -20, 0, 9),
		ZIndex = zindexadd+1,
		Font = Enum.Font.Gotham,
		Text = '',
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left
	})
	local arrow = create('ImageLabel',{
		Parent = dropdownHolder,
		Name = 'Arrow',
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(1, -12, 0, 5),
		Size = UDim2.new(0, 7, 0, 4),
		ZIndex = dropdownHolder.ZIndex+1,
		Image = "http://www.roblox.com/asset/?id=14259608577",
		ImageColor3 = Color3.fromRGB(200, 200, 200),
	})
	dropdownHolder:GetPropertyChangedSignal('ZIndex'):Connect(function()
		arrow.ZIndex = dropdownHolder.ZIndex+1
	end)
	local optionsHolder = create('ScrollingFrame',{
		Parent = dropdownHolder,
		Name = 'OptionsHolder',
		Active = true,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 17),
		Size = UDim2.new(1, 0, 0, 73),
		Visible = false,
		ZIndex = zindexadd+1,
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = 'Y',
		ScrollBarImageTransparency = 1,
	})
	SetupFrame(optionsHolder,{list = {pad = UDim.new(0,5),direction = 'Vertical',horizontalalignment = 'Left',verticalalignment = 'Top'},pad = {Top = UDim.new(0,1),Bottom = UDim.new(0,1),right = UDim.new(0,4),left = UDim.new(0,4)}})

	local window = self._window
	local flag = options.flag; if not flag then window._undefinedFlags += 1; flag = 'undefined_'..window._undefinedFlags end
	local callback = options.callback or function() end
	
	local function Update()
		local str = ''
		if #current == 0 then str = 'None' choiceText.TextColor3 = Color3.fromRGB(125,125,125) else
			choiceText.TextColor3 = Color3.fromRGB(255,255,255)
			for i,v in pairs(current) do
				local len = txtservice:GetTextSize(v,choiceText.TextSize,Enum.Font.Gotham,choiceText.AbsoluteSize).X
				if txtservice:GetTextSize(str,choiceText.TextSize,Enum.Font.Gotham,choiceText.AbsoluteSize).X + len >= choiceText.AbsoluteSize.X-7 then
					str = str..'...'
					break
				end
				str = str..tostring(v)..(#current ~= 1 and (i==#current and '' or ', ') or '')
			end
		end
		choiceText.Text = str

		window.flags[flag] = (max == 1 and current[1] or current)
		callback(window.flags[flag])
	end
	Update()
	
	local ChosenFrames = {}
	local FramesChosen = {}
	local function OnClick(frame) -- last time it took like a day or something
		if not FramesChosen[frame] then
			if #ChosenFrames == max then -- causes double update + stack overflow otherwise
				local frame = ChosenFrames[1]
				Tween(frame,0.25,'Quad','In',{TextColor3 = Color3.fromRGB(125, 125, 125)})
				TabRemove(current,frame.Text)
				TabRemove(ChosenFrames,frame)
				FramesChosen[frame] = false
			end
			Tween(frame,0.25,'Quad','In',{TextColor3 = Color3.fromRGB(255, 255, 255)})
			TabInsert(current,frame.Text)
			TabInsert(ChosenFrames,frame)
			FramesChosen[frame] = true
		else -- trying to remove
			if #current <= min then return end
			Tween(frame,0.25,'Quad','In',{TextColor3 = Color3.fromRGB(125, 125, 125)})
			TabRemove(current,frame.Text)
			TabRemove(ChosenFrames,frame)
			FramesChosen[frame] = false
		end
		Update()
	end
	local indx = 1
	local choicesholders = {}
	for i,v in pairs(choices) do
		local frame = create('TextLabel',{
			Parent = optionsHolder,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 1, 0, 1),
			Size = UDim2.new(1, -5, 0, 12),
			ZIndex = zindexadd+11,
			Font = Enum.Font.Gotham,
			Text = tostring(v),
			TextColor3 = Color3.fromRGB(125, 125, 125),
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
		choicesholders[tostring(v)] = frame
		local button = create('TextButton',{
			Parent = frame,
			BackgroundTransparency = 1,
			TextTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			ZIndex = frame.ZIndex+1,
		})
		frame.MouseEnter:Connect(function()
			if FramesChosen[frame] then return end
			Tween(frame,0.25,'Quad','In',{TextColor3 = Color3.fromRGB(200, 200, 200)})
		end)
		frame.MouseLeave:Connect(function()
			if FramesChosen[frame] then return end
			Tween(frame,0.25,'Quad','In',{TextColor3 = Color3.fromRGB(125, 125, 125)})
		end)
		button.MouseButton1Down:Connect(function()
			OnClick(frame)
		end)
		optionsHolder:GetPropertyChangedSignal('ZIndex'):Connect(function()
			frame.ZIndex = optionsHolder.ZIndex + 1
			button.ZIndex = frame.ZIndex + 1
		end)
		if min >= indx then
			OnClick(frame)
		end
		indx += 1
	end
	optionsHolder.Size = UDim2.new(1,-5,0,0)
	
	
	self._sector.ChildAdded:Connect(function()

		zindexadd = 100+(#self._sector:GetChildren()-currentChild)*100
		dropdownHolder.ZIndex = zindexadd
		optionsHolder.ZIndex = zindexadd+1
		choiceText.ZIndex = zindexadd+1
		btn.ZIndex = zindexadd+1
	end)
	btn.MouseButton1Down:Connect(function()
		optionsHolder.Visible = not optionsHolder.Visible
		local time = optionsHolder.Visible and 0.4 or 0.3
		local size = optionsHolder.Visible and UDim2.new(0,90,1,math.clamp(optionsHolder.AbsoluteCanvasSize.Y,20,100)+5) or UDim2.new(0, 90, 1, 0)
		local size2 =optionsHolder.Visible and UDim2.new(1,0,0,math.clamp(optionsHolder.AbsoluteCanvasSize.Y,20,100)+5) or UDim2.new(1,0,0,0)
		Tween(dropdownHolder,time,'Quad','InOut',{Size = size})
		Tween(optionsHolder,time,'Quad','InOut',{Size = size2})
	end)
	local function SetValue(newoptions)
		if typeof(newoptions) == 'table' then
			for i,v in pairs(newoptions) do
				if not choices[i] then newoptions[i] = nil end
			end
		else
			newoptions = {newoptions}
		end
		current = newoptions
		for i,v in pairs(choicesholders) do
			local a = table.find(current,i)
			v.TextColor3 = a and Color3.fromRGB(255,255,255) or Color3.fromRGB(125, 125, 125)
			FramesChosen[v] = a ~= nil
			local b = table.find(ChosenFrames,v)
			if b then table.remove(ChosenFrames,b) end
		end
		Update()
	end
	window._FlagsSet[flag] = SetValue
	
	local newmt = table.clone(self)
	newmt._holder = mainHolder
	newmt._segment = true
	setmetatable(newmt,Elements)
	return setmetatable({Set = SetValue},{__index = newmt})
end
function Elements:Label(options)
	local options = formatTable(options)
	local mainHolder = CreateElement(self)
	create('TextLabel',{
		Name = 'Title',
		Parent = mainHolder.Parent,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 12),
		ZIndex = mainHolder.ZIndex+1,
		Font = Enum.Font.GothamMedium,
		TextColor3 = Color3.fromRGB(200, 200, 200),
		TextSize = 12.000,
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = options.name or ''
	})
	mainHolder:Destroy()
end
function Elements:Button(options)
	local options = formatTable(options)
	local mainHolder = self._holder

	if not self._segment then
		mainHolder = CreateElement(self)
	end
	local callback = options.callback or function() end
	mainHolder.Position = UDim2.new(0,1,0,-1)
	mainHolder.Size = UDim2.new(0,180,1,2)

	local button = create('Frame',{
		Name = 'Button',
		LayoutOrder = 0,
		Parent = mainHolder,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 1, 0, 1),
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = mainHolder.ZIndex+2,
	})
	SetupFrame(button,{corner = {radius = UDim.new(0,2)},stroke = {}})
	create('TextLabel',{
		Parent = button,
		Name = 'Label',
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 3, 0, 1),
		Size = UDim2.new(1, 0, 1, -3),
		ZIndex = mainHolder.ZIndex+3,
		Font = Enum.Font.Gotham,
		Text = options.name or '',
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 12.000,
	})

	local btn = create('TextButton', {
		Parent = button,
		Name = 'Handler',
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = mainHolder.ZIndex + 4,
		Text = '',
	})

	btn.MouseButton1Down:Connect(callback)
end


local keys = { -- took mostly from vozoid, not doing allat
	[Enum.KeyCode.LeftShift] = 'L-SHIFT',
	[Enum.KeyCode.RightShift] = 'R-SHIFT',
	[Enum.KeyCode.One] = '1',
	[Enum.KeyCode.Two] = '2',
	[Enum.KeyCode.Three] = '3',
	[Enum.KeyCode.Four] = '4',
	[Enum.KeyCode.Five] = '5',
	[Enum.KeyCode.Six] = '6',
	[Enum.KeyCode.Seven] = '7',
	[Enum.KeyCode.Eight] = '8',
	[Enum.KeyCode.Nine] = '9',
	[Enum.KeyCode.Zero] = '0',
	[Enum.KeyCode.LeftControl] = 'L-CTRL',
	[Enum.KeyCode.RightControl] = 'R-CTRL',
	[Enum.KeyCode.RightAlt] = 'R-ALT',
	[Enum.KeyCode.LeftAlt] = 'L-ALT',
	[Enum.KeyCode.CapsLock] = 'CAPSLOCK',
	[Enum.KeyCode.KeypadOne] = 'NUM-1',
	[Enum.KeyCode.KeypadTwo] = 'NUM-2',
	[Enum.KeyCode.KeypadThree] = 'NUM-3',
	[Enum.KeyCode.KeypadFour] = 'NUM-4',
	[Enum.KeyCode.KeypadFive] = 'NUM-5',
	[Enum.KeyCode.KeypadSix] = 'NUM-6',
	[Enum.KeyCode.KeypadSeven] = 'NUM-7',
	[Enum.KeyCode.KeypadEight] = 'NUM-8',
	[Enum.KeyCode.KeypadNine] = 'NUM-9',
	[Enum.KeyCode.KeypadZero] = 'NUM-0',
	[Enum.KeyCode.Minus] = "-",
	[Enum.KeyCode.Equals] = "=",
	[Enum.KeyCode.Tilde] = "~",
	[Enum.KeyCode.LeftBracket] = "[",
	[Enum.KeyCode.RightBracket] = "]",
	[Enum.KeyCode.RightParenthesis] = ")",
	[Enum.KeyCode.LeftParenthesis] = "(",
	[Enum.KeyCode.Semicolon] = ",",
	[Enum.KeyCode.Quote] = "'",
	[Enum.KeyCode.BackSlash] = "\\",
	[Enum.KeyCode.Comma] = ",",
	[Enum.KeyCode.Period] = ".",
	[Enum.KeyCode.Slash] = "/",
	[Enum.KeyCode.Asterisk] = "*",
	[Enum.KeyCode.Plus] = "+",
	[Enum.KeyCode.Period] = ".",
	[Enum.KeyCode.Backquote] = "`",
	[Enum.UserInputType.MouseButton1] = "MOUSE-1",
	[Enum.UserInputType.MouseButton2] = "MOUSE-2",
	[Enum.UserInputType.MouseButton3] = "MOUSE-3"
}
local function GetEnum(EnumList, EnumChild)
	local s,result = pcall(function() return EnumList[EnumChild] end)
	if not s then return end
	return result
end
local function GetKeyCode(name)
	for i,v in pairs(keys) do
		if v == name then return i end
	end
	return GetEnum(Enum.KeyCode,name) or GetEnum(Enum.UserInputType,name) or name
end
function Elements:Keybind(options)
	local options = formatTable(options)
	local mainHolder = CreateElement(self)

	local window = self._window
	local callback = options.callback or function() end

	mainHolder.Size += UDim2.new(0,0,0,1)
	create('TextLabel',{
		Name = 'Title',
		Parent = mainHolder.Parent,
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 12),
		ZIndex = mainHolder.ZIndex+1,
		Font = Enum.Font.GothamMedium,
		TextColor3 = Color3.fromRGB(200, 200, 200),
		TextSize = 12.000,
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = options.name or ''
	})
	local keybindHolder = create("Frame",{
		Name = 'KeybindHolder',
		Parent = mainHolder,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BackgroundTransparency = 0.5,
		BorderSizePixel = 0,
		Size = UDim2.new(0, 75, 1, 0),
		ZIndex = mainHolder.ZIndex+2,
	})

	local btn = create('TextButton',{
		Name = 'Handler',
		Parent = keybindHolder,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 10, 1, 0),
		Position = UDim2.new(0,-5,0,0),
		ZIndex = mainHolder.ZIndex+5,
		Text = ''
	})
	SetupFrame(keybindHolder,
		{
			corner = {radius = UDim.new(0,2)},
			pad = {bottom = UDim.new(0,1),top = UDim.new(0,1),Left = UDim.new(0,8),right = UDim.new(0,8)},
			stroke = {}
		}
	)
	local keyText = create('TextLabel',{
		Parent = keybindHolder,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = mainHolder.ZIndex+3,
		Font = Enum.Font.Gotham,
		Text = "NONE",
		TextColor3 = Color3.fromRGB(125, 125, 125),
		TextSize = 12,
		TextWrapped = false,
	})
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	local Update
	local flag = options.flag; if not flag then window._undefinedFlags += 1; flag = 'undefined_'..window._undefinedFlags end
	window.flags[flag] = {
		Active = options.active,
		Type = options.Type or 1,
		Binding = false,
	} -- 1 toggle 2 hold

	local typechoser = create('Frame',{
		Parent = keybindHolder,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		Position = UDim2.new(0.5,0,0.5,0),
		Size = UDim2.new(),
		ZIndex = mainHolder.ZIndex+5,
		Visible = false,
	})
	SetupFrame(typechoser,{stroke = {},corner = {radius = UDim.new(0,2)}})
	local button1 = create('TextButton',{
		Parent = typechoser,
		BackgroundColor3 = Color3.fromRGB(125, 125, 125),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0.5, 0),
		Size = UDim2.new(1, 0, 0.5, 0),
		ZIndex = mainHolder.ZIndex+6,
		Font = Enum.Font.SourceSans,
		Text = "TOGGLE",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
	})
	local button2 = create('TextButton',{
		Parent = typechoser,
		BackgroundColor3 = Color3.fromRGB(125, 125, 125),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 0.5, 0),
		ZIndex = mainHolder.ZIndex+6,
		Font = Enum.Font.SourceSans,
		Text = "HOLD",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
	})
	
	local scroll = self._tabSector
	local scrollY = scroll.AbsoluteCanvasSize.Y

	local edgeX = scroll.AbsolutePosition.X+scroll.AbsoluteSize.X
	local sizex = 50
	local offset = 15

	local reverse = (keybindHolder.AbsolutePosition.X+keybindHolder.AbsoluteSize.X+offset >= edgeX or keybindHolder.AbsolutePosition.X+keybindHolder.AbsoluteSize.X+offset+sizex >= edgeX)

	local function UpdateVisibility(set)
		if set == false or typechoser.Visible then
			Tween(button1,0.5,'Quad','Out',{TextTransparency = 1})
			Tween(button2,0.5,'Quad','Out',{TextTransparency = 1})
			Tween(typechoser,0.5,'Quad','Out',{Position = UDim2.new(0.5,0,0.5,0),Size = UDim2.new()}).Completed:Wait()
			typechoser.Visible = false
		else
			local posY = math.clamp(keybindHolder.AbsolutePosition.Y-8,scroll.AbsolutePosition.Y,scroll.AbsolutePosition.Y+scrollY)
			typechoser.Visible = true
			Tween(button1,0.5,'Quad','Out',{TextTransparency = 0})
			Tween(button2,0.5,'Quad','Out',{TextTransparency = 0})
			Tween(typechoser,0.5,'Quad','Out',{Position = (reverse and UDim2.new(0,-65, 0, -8) or UDim2.new(1,15,0,-8)),Size = UDim2.new(0, 50, 0, 30)}).Completed:Wait()
		end
	end
	btn.MouseButton2Down:Connect(function() UpdateVisibility() end)
	button1.MouseButton1Down:Connect(function()
		window.flags[flag].Type = 1
		Update()
		UpdateVisibility(false)
	end)
	button2.MouseButton1Down:Connect(function()
		window.flags[flag].Type = 2
		Update()
		UpdateVisibility(false)
	end)
	button1.MouseEnter:Connect(function()
		if window.flags[flag].Type ~= 1 then
			Tween(button1,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(200,200,200)})
		end
	end)
	button2.MouseEnter:Connect(function()
		if window.flags[flag].Type ~= 2 then
			Tween(button2,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(200,200,200)})
		end
	end)
	button1.MouseLeave:Connect(function()
		if window.flags[flag].Type ~= 1 then
			Tween(button1,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(125,125,125)})
		end
	end)
	button2.MouseLeave:Connect(function()
		if window.flags[flag].Type ~= 2 then
			Tween(button2,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(125,125,125)})
		end
	end)
	
	local key
	local function setkey(newkey)
		local keyName = keys[newkey] or tostring(newkey):match("Enum%.%a+%.(%a+)") or newkey

		local color = (keyName == 'NONE' or keyName == '...') and Color3.fromRGB(125, 125, 125) or Color3.fromRGB(255, 255, 255)
		Tween(keyText,0.1,'Quad','In',{TextColor3 = color})
		keyText.Text = keyName
		keybindHolder.Size = UDim2.new(0,keyText.TextBounds.X+10,1,0)
		key = GetKeyCode(keyName)
		
		window.flags[flag]['Key'] = keyName
	end
	setkey('NONE')
	local defaultKey = options.key
	if defaultKey then
		if typeof(defaultKey) == 'EnumItem' then
			setkey(defaultKey)
		else
			setkey(Enum.KeyCode[defaultKey] or Enum.UserInputType.MouseButton1)
		end
	end
	Update = function()
		local val = window.flags[flag]
		
		if val.Type == 1 then
			Tween(button1,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(255,255,255)})
			Tween(button2,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(125,125,125)})
		else
			Tween(button1,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(125,125,125)})
			Tween(button2,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(255,255,255)})
		end
		callback(val)
	end
	Update()
	
	

	local bindingSignal

	btn.MouseButton1Click:Connect(function()
		window.flags[flag].Binding = true
		setkey('...')
		bindingSignal = uis.InputBegan:Connect(function(input,a)
			--if a then return end
			if input.KeyCode == Enum.KeyCode.Backspace then
				setkey('NONE')
			elseif input.KeyCode == Enum.KeyCode.Unknown then
				setkey(input.UserInputType)
			else
				setkey(input.KeyCode)
			end
			window.flags[flag].Binding = false
			bindingSignal:Disconnect()
			Update()
		end)
	end)
	Connections[math.random()] = uis.InputBegan:Connect(function(input,a)
		--if a then return end
		if key == input.KeyCode or key == input.UserInputType then
			if window.flags[flag].Type == 1 then
				window.flags[flag].Active = not window.flags[flag].Active
			else
				window.flags[flag].Active = true
			end
			Update()
		end
	end)
	Connections[math.random()] = uis.InputEnded:Connect(function(input,a)
		--if a then return end
		if key == input.KeyCode or key == input.UserInputType then
			if window.flags[flag].Type == 2 then
				window.flags[flag].Active = false
				Update()
			end
		end
	end)
	
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------

	
	local function SetValue(value)
		assert(typeof(value) == 'table')
		local value = formatTable(value)
		window.flags[flag].Binding = false
		window.flags[flag].Active = value.active
		window.flags[flag].Type = value.type or window.flags[flag].Type
		setkey(GetKeyCode(value.key or 'NONE'))
	end
	window._FlagsSet[flag] = SetValue
	
	local newmt = table.clone(self)
	newmt._holder = mainHolder
	newmt._segment = true
	setmetatable(newmt,Elements)
	return setmetatable({Set = SetValue},{__index = newmt})
end
function SetupSector(window,tab)
	SetupFrame(tab,{
		list = {pad = UDim.new(0,14),direction = 'Horizontal',horizontalalignment = 'Left',verticalalignment = 'Top'},
		pad = {top = UDim.new(0,1), left = UDim.new(0, 1),right = UDim.new(0,3)}
	})
	local rightRow = create('Frame',{
		Name = 'Row 1',
		Parent = tab,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(0.5, -7, 1, 0),
	})
	local leftRow = create('Frame',{
		Name = 'Row 2',
		Parent = tab,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(0.5,-7,1,0)
	})
	local _, _, rightList = SetupFrame(rightRow,{
		list = {pad = UDim.new(0,14),verticalalignment = 'Top',direction = 'Vertical'}
	})
	local _, _, leftList = SetupFrame(leftRow,{
		list = {pad = UDim.new(0,14),verticalalignment = 'Top',direction = 'Vertical'}
	})

	local function handleCanvas()
		task.wait()

		tab.CanvasSize = UDim2.new(0, 0, 0, math.max(leftList.AbsoluteContentSize.Y, rightList.AbsoluteContentSize.Y) + tab.Parent.UIPadding.PaddingTop.Offset + tab.Parent.UIPadding.PaddingBottom.Offset)
	end

	rightList:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(handleCanvas)
	leftList:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(handleCanvas)

	local SectionsHandler = {}
	function SectionsHandler:Sector(options)
		local options = formatTable(options)
		local row = options.side == 1 and rightRow or leftRow
		local section = create('Frame',{
			Parent = row,
			ZIndex = 2,
			BackgroundColor3 = Color3.fromRGB(30,30,30),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(),
			Name = 'Sector'
		})
		SetupFrame(section,{
			list = {pad = UDim.new(0,12),direction = 'Vertical',horizontalalignment = 'Left',verticalalignment = 'Top'},
			corner = {radius = UDim.new(0,4)},
			pad = {Bottom = UDim.new(0,16),top = UDim.new(0,16),right = UDim.new(0,16),left = UDim.new(0,16)},
			stroke = {}
		})
		local list = section.UIListLayout
		list:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function(newval)
			local contentSize = list.AbsoluteContentSize.Y + 32

			section.Size = UDim2.new(1,0,0,contentSize)
			handleCanvas()
		end)
		return setmetatable(
			{
				_holder = section,
				_window = window,
				_side = options.side,
				_tabSector = tab,
				_sector = section,
				_holderSize = UDim2.new(0,100,1,0),
				_holderPosition = UDim2.new(0,80,0,0)
			},
			{__index = function(a,b) return Segment[b] or Elements[b] end}
		)
	end

	return SectionsHandler
end
local Tabs = {}
Tabs.__index = Tabs
function Tabs.normal(tabholder,window)
	local tab = create('ScrollingFrame',{
		Parent = tabholder,
		Name = 'Sector',
		LayoutOrder = #window._tabs+1,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		BottomImage = "",
		CanvasSize = UDim2.new(0, 0, 1, 0),
		ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50),
		ScrollBarThickness = 1,
		TopImage = "",
		Active = true,
		ZIndex = 3,
		Visible = false
	})


	return tab,SetupSector(window,tab)
end

local skins = {}
skins.__index = skins
function skins.new(options,window,tab)
	local options = formatTable(options)
	
	local self = setmetatable(
		{
			_window = window,
			_CurrentChoices = {},
		},
		skins
	)
	local flag = options.flag; if not flag then window._undefinedFlags += 1; flag = 'undefined_'..window._undefinedFlags end
	window.flags[flag] = {choices = {},options = {}}	
	self._flag = flag
	
	tab.Visible = false
	local background = create('Frame',{
		Parent = tab,
		Name = 'Background',
		BackgroundColor3 = Color3.fromRGB(20, 20, 20),
		BackgroundTransparency = 0.500,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 2,
	})
	SetupFrame(background,{
		corner = {radius = UDim.new(0,4)},stroke = {}
	})
	local addframe = create('Frame',{
		Parent = tab,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 2,
		Visible = false,
	})
	local content = create('ScrollingFrame',{
		Name = 'Content',
		Parent = tab,
		Active = true,
		BackgroundColor3 = Color3.fromRGB(20, 20, 20),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		ZIndex = 2,
		BottomImage = "",
		CanvasSize = UDim2.new(0, 0, 0, 0),
		ScrollBarThickness = 1,
		TopImage = "",
	})
	self._ChoicesHolder = content
	do
		create('UIGridLayout',{
			Parent = content,
			CellPadding = UDim2.new(0,4,0,4),
			CellSize = UDim2.new(0,80,0,85),
			FillDirection = 'Horizontal',
			SortOrder = 'LayoutOrder'
		})
		SetupFrame(content,{pad = {top = UDim.new(0,14),bottom = UDim.new(0,14),left = UDim.new(0,12),right = UDim.new(0,11)}})

		local addbutton = create('Frame',{
			Parent = content,
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			LayoutOrder = 1,
			Size = UDim2.new(0, 100, 0, 100),
			ZIndex = 3,
		})
		SetupFrame(addbutton,{corner = {radius = UDim.new(0,4)},pad = {top = UDim.new(0,3),bottom = UDim.new(0,3),left = UDim.new(0,3),right = UDim.new(0,3)},stroke = {}})

		for i=0,1 do -- best for loop
			create('Frame',{
				Parent = addbutton,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0.5, -5, 0.5, -20),
				Rotation = i*90,
				Size = UDim2.new(0, 10, 0, 40),
				ZIndex = 4,
			})
		end
		create('TextButton',{
			Parent = addbutton,
			BackgroundTransparency = 1,
			TextTransparency = 1,
			ZIndex = addbutton.ZIndex + 1,
			Size = UDim2.new(1,0,1,0),
		}).MouseButton1Down:Connect(function()
			content.Visible = not content.Visible
			addframe.Visible = not addframe.Visible
		end)

	end
	do
		local options = create('ScrollingFrame',{
			Name = 'Options',
			Parent = addframe,
			Active = true,
			BackgroundColor3 = Color3.fromRGB(50, 50, 50),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0, 30),
			Size = UDim2.new(1, -5, 1, -30),
			ZIndex = 3,
			CanvasSize = UDim2.new(0, 0, 0, 0),
			ScrollBarThickness = 1,
		})
		SetupFrame(options,{list = {pad = UDim.new(0,5),horizontalalignment = 'Left',direction = 'Vertical',SortOrder = 'Name',Verticalalignment = 'Top'},pad = {bottom = UDim.new(0,10),top = UDim.new(0,10),right = UDim.new(0,15),left = UDim.new(0,15)}})
		self._OptionsHolder = options
		local menu = create('Frame',{
			Parent = addframe,
			Name = 'Menu',
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 30),
			ZIndex = 3,
		})
		SetupFrame(menu,{
			corner = {radius = UDim.new(0,4)},
			list = {pad = UDim.new(0,6),direction = 'Horizontal',order = 'LayoutOrder',HorizontalAlignment = 'Left',verticalalignment = 'Top'},
			pad = {top = UDim.new(0,5),bottom = UDim.new(0,5),left = UDim.new(0,5),right = UDim.new(0,5)},
			stroke = {}
		})
		
		local add = create('Frame',{
			Parent = menu,
			Name = 'Add',
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			LayoutOrder = 2,
			Size = UDim2.new(0, 140, 1, 0),
			ZIndex = 4,
		})
		
		local back = create('Frame',{
			Parent = menu,
			Name = 'Back',
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			LayoutOrder = 1,
			Size = UDim2.new(0, 60, 1, 0),
			ZIndex = 4,
		})
		
		local search = create('Frame',{
			Parent = menu,
			Name = 'Search',
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			LayoutOrder = 3,
			Size = UDim2.new(0, 200, 1, 0),
			ZIndex = 4,
		})
		SetupFrame(add,{corner = {radius = UDim.new(0,2)},stroke = {}})
		SetupFrame(back,{corner = {radius = UDim.new(0,2)},stroke = {}})
		SetupFrame(search,{corner = {radius = UDim.new(0,2)},stroke = {}})
		
		create('TextButton',{
			Parent = back,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0, 1),
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 4,
			Font = Enum.Font.GothamMedium,
			Text = "Back",
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 14.000,
		}).MouseButton1Down:Connect(function()
			content.Visible = true
			addframe.Visible = false
		end)
		create('TextButton',{
			Parent = add,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0, 3),
			TextScaled = true,
			TextWrapped = true,
			Size = UDim2.new(1, 0, 1, -5),
			ZIndex = 4,
			Font = Enum.Font.GothamMedium,
			Text = "Add Selected (0)",
			TextColor3 = Color3.fromRGB(125, 125, 125),
			TextSize = 14.000,
		}).MouseButton1Down:Connect(function()
			return self:_HandleChoices()
		end)
		local searchbox = create('TextBox',{
			Parent = search,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 5, 0, 3),
			Size = UDim2.new(1, -5, 1, -5),
			TextScaled = true,
			ZIndex = 5,
			Font = Enum.Font.GothamMedium,
			Text = "Search",
			TextColor3 = Color3.fromRGB(125, 125, 125),
			TextSize = 14.000,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
		local isEmpty = true
		local ignore = false
		searchbox.Focused:Connect(function()
			searchbox.TextColor3 = Color3.fromRGB(255, 255, 255)
			if isEmpty then
				searchbox.Text = ''
			end
		end)
		searchbox.FocusLost:Connect(function()
			searchbox.ClearTextOnFocus = searchbox.Text == ''
			isEmpty = searchbox.Text == ''
			if searchbox.Text == '' then
				searchbox.TextColor3 = Color3.fromRGB(125,125,125)
				ignore = true
				searchbox.Text = 'Search'
			end
		end)
		searchbox:GetPropertyChangedSignal('Text'):Connect(function()
			if ignore then
				ignore = false
				isEmpty = true
			else
				isEmpty = searchbox.Text == ''
			end
			for i,v in pairs(options:GetChildren()) do
				if not v:IsA('Frame') then continue end
	
				if v.Name:match(searchbox.Text) or isEmpty then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end)
	end
	
	self:AddOptions(options.options or {})
	self:AddChoices(options.choices or {})
end
function skins:AddOption(suffix,option)
	local holder = self._OptionsHolder
	local option = formatTable(option)
	local name = option.name or ''
	local window = self._window
	local flag = self._flag
	
	local suffix = suffix or ''
	
	local holder = create('Frame',{
		Parent = holder,
		Name = (suffix or '')..' | '..(name or ''),
		LayoutOrder = #holder:GetChildren()-1,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 0, 40),
		ZIndex = 4,
	})
	SetupFrame(holder,{pad = {bottom = UDim.new(0,5),top = UDim.new(0,5),left = UDim.new(),right = UDim.new(0,5)}})
	create('ImageLabel',{
		Parent = holder,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(0, 30, 1, 0),
		ZIndex = 4,
		Image = option.image or '',
	})
	create('TextLabel',{
		Parent = holder,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 35, 0, 0),
		Size = UDim2.new(0, 200, 1, 0),
		ZIndex = 4,
		Font = Enum.Font.GothamMedium,
		Text = (suffix or '')..' | '..(name or ''),
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14.000,
		TextXAlignment = Enum.TextXAlignment.Left,
	})
	local button = create('Frame',{
		Name = 'Button',
		Parent = holder,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(1, -75, 0, 0),
		Size = UDim2.new(0, 75, 1, 0),
		ZIndex = 4,
	})
	SetupFrame(button,{corner = {radius = UDim.new(0,2)},stroke = {}})
	
	window.flags[self._flag].options[suffix] = window.flags[self._flag].options[suffix] or {}
	local data = {image = option.image or '',name = option.name or ''}
	table.insert(window.flags[self._flag].options[suffix],data)
	local id = #window.flags[self._flag].options[suffix]
	local btn = create('TextButton',{
		Name = 'Button',
		Parent = button,
		BackgroundColor3 = Color3.fromRGB(200, 200, 200),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 4,
		Font = Enum.Font.GothamMedium,
		Text = "ADD",
		TextColor3 = Color3.fromRGB(200, 200, 200),
		TextSize = 14.000,
	})
	btn.MouseButton1Down:Connect(function()
		if window.flags[flag].choices[suffix] and window.flags[flag].choices[suffix].name == data.name then return end
		if self._CurrentChoices[suffix] then
			self._CurrentChoices[suffix] = nil
			self:_SetSelection(self:_GetSelection()-1)
			Tween(btn,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(200,200,200)})
		else
			self._CurrentChoices[suffix] = data

			self:_SetSelection(self:_GetSelection()+1)
			Tween(btn,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(125,125,125)})
		end
		self:FilterOptions()
	end)
	btn.MouseEnter:Connect(function()
		if self._CurrentChoices[suffix] ~= data and (not window.flags[flag].choices[suffix] or window.flags[flag].choices[suffix].name ~= data.name) then
			Tween(btn,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(255,255,255)})
		end
	end)
	btn.MouseLeave:Connect(function()
		if self._CurrentChoices[suffix] ~= data and (not window.flags[flag].choices[suffix] or window.flags[flag].choices[suffix].name ~= data.name) then
			Tween(btn,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(200,200,200)})
		end
	end)
end
function skins:AddChoice(suffix,data)
	if self._window.flags[self._flag].choices[suffix] then return end
	local holder = self._ChoicesHolder
	local option = formatTable(data)
	local frame = create('Frame',{
		Parent = holder,
		LayoutOrder = #holder:GetChildren()-1,
		Name = 'Choice',
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(0, 100, 0, 100),
		ZIndex = 3,
	})
	SetupFrame(frame,{corner = {radius = UDim.new(0,4)},pad = {Bottom = UDim.new(0,3),top = UDim.new(0,3),right = UDim.new(0,3),left = UDim.new(0,3)},stroke = {}})
	local button = create('ImageButton',{
		Parent = frame,
		BackgroundColor3 = Color3.fromRGB(200, 200, 200),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 4,
		Image = option.image or ''
	})
	button.MouseButton1Down:Connect(function()
		self._window.flags[self._flag].choices[suffix] = nil
		frame:Destroy()
		self:FilterOptions()
	end)
	self._window.flags[self._flag].choices[suffix] = option

end
function skins:AddChoices(options)
	for i,v in pairs(options) do
		for _,v2 in pairs(v) do
			self:AddChoice(i,v2)
		end
	end
end
function skins:AddOptions(options)
	for i,v in pairs(options) do
		for _,v2 in pairs(v) do
			self:AddOption(i,v2)
		end
	end
end
function skins:_HandleChoices()
	for i,v in pairs(self._CurrentChoices) do
		self:AddChoice(i,v)
	end
	
	table.clear(self._CurrentChoices)
	self:FilterOptions()
	self:_SetSelection(0)
end
function skins:_SetSelection(n)
	local text = "Add Selection ("..n..')'
	self._OptionsHolder.Parent.Menu.Add.TextButton.Text = text
	Tween(self._OptionsHolder.Parent.Menu.Add.TextButton,0.2,'Quad','Out',{TextColor3 = tonumber(n) == 0 and Color3.fromRGB(125,125,125) or Color3.fromRGB(255,255,255)})
end
function skins:_GetSelection()
	return self._OptionsHolder.Parent.Menu.Add.TextButton.Text:match("%d+")
end


function skins:FilterOptions()
	for i,v in pairs(self._OptionsHolder:GetChildren()) do
		if not v:IsA('Frame') then continue end
		local data = v.Name:split(' | ')
		local value = self._CurrentChoices[data[1]]
		local value2 = self._window.flags[self._flag].choices[data[1]]
		if (value and value.name ~= data[2]) or (value2 and value2.name ~= data[2]) then
			v.Visible = false
			Tween(v.Button.Button,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(200,200,200)})
		else
			if not (value or value2) then
				Tween(v.Button.Button,0.2,'Quad','Out',{TextColor3 = Color3.fromRGB(200,200,200)})
			end
			v.Visible = true
		end
	end
end

function Tabs.skins(tabholder,window,options) -- whatever name it yourself
	local options = formatTable(options)
	
	return tabholder,skins.new(options,window,tabholder)
end

local Notify = {}
Notify.__index = Notify
function Notify.new(options,notifsholder)
	local options = typeof(options) == 'table' and formatTable(options) or {text=tostring(options)}
	local holder = create('Frame',{
		Parent = notifsholder,
		Name = 'Holder',
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(50, 0, 0, 20),
		ZIndex = 3,
		ClipsDescendants = true,
	})
	SetupFrame(holder,{corner = {radius = UDim.new(0,4)},stroke = {}})
	
	options.color = options.color or Color3.fromRGB(255,255,255)
	options.time = options.time or 1.3
	
	if options.grad ~= false then
		create('Frame',{
			Name = 'Color',
			Parent = holder,
			BackgroundColor3 = options.color,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0, 1),
			Size = UDim2.new(0, 1, 1, -2),
			ZIndex = 4,
		})
		create('Frame',{
			Name = 'Color2',
			Parent = holder,
			BackgroundColor3 = options.color,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0,1,0,0),
			Size = UDim2.new(0, 1, 1, 0),
			ZIndex = 4,
		})
	end
	local text = create('TextLabel',{
		Parent = holder,
		Name = 'Text',
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 7, 0, 0),
		Size = UDim2.new(1, -10, 1, 0),
		ZIndex = 4,
		Font = Enum.Font.Gotham,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14.000,
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = options.text or ''
	})
	
	holder.Size = UDim2.new(0,text.TextBounds.X+15,0,25)
	
	local mt = setmetatable({_holder = holder,_options = options},Notify)
	task.spawn(Notify[options.style and options.style:lower() or 'normal'],mt)
	return mt
end
function Notify:_Animate()
	local signals = {
		OnFinish = Signal.new(),
		OnAnimation = Signal.new(),
	}
	coroutine.wrap(function()
		local size = self._holder.AbsoluteSize
		self._holder.Size = UDim2.new(0,0,0,size.Y)

		Tween(self._holder,0.6,'Quad','Out',{Size = UDim2.new(0,size.X,0,size.Y)})

		wait(self._options.time)
		
		signals.OnAnimation:Fire()
		Tween(self._holder,0.2,'Quad','Out',{BackgroundTransparency = 1,Position = UDim2.new(-1,0,0,0)})
		Tween(self._holder.Color,0.2,'Quad','Out',{BackgroundTransparency = 1})
		Tween(self._holder.Stroke,0.2,'Quad','Out',{Transparency = 1})
		Tween(self._holder.Color2,0.2,'Quad','Out',{BackgroundTransparency = 1})
		local t = Tween(self._holder.Text,0.2,'Quad','Out',{TextTransparency = 1})
		t.Completed:Wait()
		
		signals.OnFinish:Fire()
		self._holder:Destroy()
	end)()
	return signals
end
function Notify:normal()
	return self:_Animate()
end
function Notify:warning()
	local shouldbreak = false
	local grad,grad2 = self._holder.Color,self._holder.Color2
	coroutine.wrap(function()
		local a = 0
		while not shouldbreak do
			Tween(grad,0.25,'Linear','In',{BackgroundColor3 = Color3.new() or self._options.color})
			local t = Tween(grad2,0.25,'Linear','In',{BackgroundColor3 = Color3.new() or self._options.color})
			t.Completed:Wait()
			a+=1
		end
	end)()

	local signals = self:_Animate()
	signals.OnFinish:Connect(function()
		shouldbreak = true
	end)
	return signals
end
function Notify:time()
	local shouldbreak = false
	local time = self._options.time
	local timer = create('Frame',{
		Parent = self._holder,
		Position = UDim2.new(0,2,1,-1),
		Size = UDim2.new(0,0,0,1),
		BackgroundColor3 = self._options.color,
		ZIndex = 4,
		BorderSizePixel = 0,
	})
	local ct = 0
	local loop = rs.RenderStepped:Connect(function(dt)
		ct += dt
		timer.Size = UDim2.new(math.min(ct/time,1),-6,0,1)
	end)

	local signals = self:_Animate()
	signals.OnAnimation:Connect(function()
		loop:Disconnect()
		Tween(timer,0.2,'Quad','Out',{BackgroundTransparency = 1})
	end)
	return signals
end
function Notify:loading()
	local shouldbreak = false
	local grad,grad2 = self._holder.Color,self._holder.Color2
	local bar = create('Frame',{
		Parent = self._holder,
		Position = UDim2.new(0,1,1,-1),
		Size = UDim2.new(0,0,0,1),
		BackgroundColor3 = self._options.color,
		ZIndex = 4,
		BorderSizePixel = 0,
	})
	coroutine.wrap(function()
		local a = 0
		while not shouldbreak do
			local sizex = self._holder.AbsoluteSize.X/3
			local x = (sizex/2)
			
			local t = Tween(bar,0.6,'Linear','Out',{Position = UDim2.new(0.5,a%2 == 0 and x or -x,1,-1),Size = UDim2.new(0,a%2 == 0 and -sizex or sizex,0,1)})
			t.Completed:Wait()
			local t = Tween(bar,0.6,'Quad','Out',{Position = a%2==0 and UDim2.new(1,-2,1,-1) or UDim2.new(0,2,1,-1),Size = UDim2.new(0,1,0,1)})
			t.Completed:Wait()
			a+=1
			task.wait(.15)
		end
	end)()

	local signals = self:_Animate()
	signals.OnAnimation:Connect(function()
		shouldbreak = true
		Tween(bar,0.2,'Quad','Out',{BackgroundTransparency = 1})
	end)
	return signals
end
function Notify:SetText(text)
	self._holder.Text.Text = text
	self._holder.Size = UDim2.new(0,self._holder.Text.TextBounds.X+10,0,25)
end
local Watermark = {}
Watermark.__index = Watermark
function Watermark.new(watermark,options)
	local mt = setmetatable({_watermark = watermark},Watermark)

	mt:Edit(options or {})
	return mt
end
function Watermark:Edit(options) -- background, textcolor, richtext
	local options = formatTable(options)
	if options.text then
		self._watermark.Text.Text = tostring(options.text)
	end
end
function ui:Init(options)
	local options = formatTable(options)

	local parent = options.parent or script.Parent or game:GetService('CoreGui')

	local UIsHolder = create('ScreenGui',{
		Name = 'UIHolder',
		Parent = parent,
		ZIndexBehavior = 'Global',
		ResetOnSpawn = false
	})

	function ui:Unload()
		for _, connection in next, Connections do
			connection:Disconnect()
		end
		
		UIsHolder:Destroy()
	end

	function ui:SetToggled(bool)
		UIsHolder.Enabled = bool
	end

	function ui:Toggle()
		self:SetToggled(not UIsHolder.Enabled)
	end

	function ui:Watermark(options)
		local options = formatTable(options)

		local text = options.text or 'Lynx'

		local watermark = create('Frame',{
			Name = "Watermark",
			Parent = UIsHolder,
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 32, 0, 32),
			Size = UDim2.new(0, 32, 0, 32),
		})
		Dragify(watermark)
		SetupFrame(watermark, {
			corner = {radius = UDim.new(0, 8)},
			pad = {bottom = UDim.new(0, 8), top = UDim.new(0, 8), left = UDim.new(0, 16), right = UDim.new(0, 16)},
			stroke = {}
		})

		local text = create('TextLabel', {
			Name = "Text",
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			RichText = true,
			Text = text,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 14,
			TextScaled = false,
			TextWrapped = false,
			TextXAlignment = "Left",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Parent = watermark
		})

		text:GetPropertyChangedSignal('TextBounds'):Connect(function()
			task.wait()

			local bounds = text.TextBounds
			watermark.Size = UDim2.new(0, bounds.X + 32, 0, bounds.Y + 16)
		end)
		
		return Watermark.new(watermark,options)
	end
	do
	--super duper cool uilistlayout
		local notifs = create("ScreenGui",{
			Parent = UIsHolder.Parent,
			Name = 'Notifications'
		})
		local notifsholder = create('Frame',{
			Name = 'NotificationsHolder',
			Parent = notifs,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 50, 0, 50),
			Size = UDim2.new(0, 34, 50, 0),
			ZIndex = 2,
		})
		local childs = {}
		local offsets = {}
		notifsholder.ChildAdded:Connect(function(child)
			if child.Name == 'Holder' then
				local y = #childs*30 -- was meant to have getpropchangedsignal but lazy to change allat
				child.Position = UDim2.new(0,child.AbsolutePosition.X,0,y)
				table.insert(childs,child)
				offsets[child] = y
			end
		end)
		notifsholder.ChildRemoved:Connect(function(child)
			if child.Name == 'Holder' then
				local t = table.find(childs,child)
				local curY = offsets[child]

				for i=t+1,#childs do
					local child = childs[i]

					local oldy = curY
					curY = offsets[child]
					offsets[child] = oldy
					Tween(child,0.2,'Quad','Out',{Position = UDim2.new(0,child.AbsolutePosition.X-notifsholder.AbsolutePosition.X,0,oldy)})
				end
				offsets[child] = nil
				table.remove(childs,t)
			end
		end)
		function ui:Notify(options)
			return Notify.new(options,notifsholder)
		end
	end
	
	function ui:SetupLoader(options)
		local options = formatTable(options)

		local span = options.time or 2

		local loaderFrame = create('Frame',{
			Parent = UIsHolder,
			Name = 'Loading',
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, -50, 0.5, -50),
			Size = UDim2.fromOffset(100, 100),
		})

		SetupFrame(loaderFrame, {
			corner = {radius = UDim.new(1, 0)},
			pad = {bottom = UDim.new(0, 16),top = UDim.new(0, 16),left = UDim.new(0, 16),right = UDim.new(0, 16)}
		})

		local circle = create('ImageLabel', {
			Name = "Circle",
			Image = "rbxassetid://6331335348",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Parent = loaderFrame		
		})

		local startTick = tick()

		task.spawn(function()
			while task.wait() do
				if tick() - startTick >= (span - 2) then 
					task.spawn(function()
						Tween(circle, 0.1, 'Quad', 'In', {ImageTransparency = 1})
						task.wait(.1)
						circle.Rotation = 0
						circle.Image = 'rbxassetid://1202200114'
						Tween(circle, 0.1, 'Quad', 'In', {ImageTransparency = 0})
						task.wait(1)
						Tween(loaderFrame, 0.2, 'Quad', 'In', {BackgroundTransparency = 1})
						Tween(circle, 0.2, 'Quad', 'In', {ImageTransparency = 1})
						task.wait(.9)
						loaderFrame:Destroy()
					end)
					break 
				end

				circle.Rotation = (circle.Rotation + 5) % 360
			end
		end)
	end

	function ui:NewWindow(options)
		local options = formatTable(options)

		local windowOptions = formatTable(options.window)
		local windowName = windowOptions.name or 'Lynx'
		local windowDescription = windowOptions.description or 'Universal'

		local userOptions= formatTable(options.user)
		local username = userOptions.name or 'Finobe'
		local role = userOptions.role or 'Developer'
		local icon = userOptions.icon



		local windowFrame = create('Frame',{
			Parent = UIsHolder,
			Name = 'Window',
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BackgroundTransparency = 0.030,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(0, 640, 0, 500),
		})
		windowFrame.Position = UDim2.new(0.5, -windowFrame.AbsoluteSize.X/2, 0.5, -windowFrame.AbsoluteSize.Y/2)

		SetupFrame(windowFrame,{
			corner = {radius = UDim.new(0,8)},
			stroke = {Color = Color3.fromRGB(40,40,40)}
		})
		local sideBar = create('Frame',{
			Parent = windowFrame,
			Name = 'Sidebar',
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 1.000,
			Size = UDim2.new(0.270000011, 0, 1, 0),
			BorderSizePixel = 0,
		})
		Dragify(windowFrame,sideBar)
		local window = {
			_tabs = {},
			_undefinedFlags = 0,
			_FlagsSet = {},
			_DefaultFlags = {},
			flags = {},
		}
		window['Flags'] = window.flags
		function window:SaveConfig(name)
			local cfg = {}
			for i,v in pairs(window.flags) do
				local val = v
				if typeof(v) == 'table' and v.Color and typeof(v.Color) == 'Color3' then
					val = {Color = {R = v.Color.R,G=v.Color.G,B=v.Color.B},Alpha = v.Alpha}
				end
				cfg[i] = val
			end
			return hs:JSONEncode(cfg)
		end
		function window:LoadConfig(input)
			local load = hs:JSONDecode(input)
			for flag,val in pairs(load) do
				if typeof(val) == 'table' and typeof(val.Color) == 'table' then
					val.Color = Color3.new(val.Color.R,val.Color.G,val.Color.B)
				end
				if window._FlagsSet[flag] then
					window._FlagsSet[flag](val)
				end
			end
		end
		do -- content setup
			local content = create('Frame',{
				Name = 'Content',
				Parent = sideBar,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1.000,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),            
			})
			create('UIPadding',{
				Parent = content,
				PaddingBottom = UDim.new(0, 16),
				PaddingLeft = UDim.new(0, 16),
				PaddingRight = UDim.new(0, 16),
				PaddingTop = UDim.new(0, 16),
			})	
			---------------------------------------------------------
			local windowsInfo = create('Frame',{
				Parent = content,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1.000,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0.150000006, -16),
			})
			create('UIListLayout',{
				Parent = windowsInfo,
				Padding = UDim.new(0,4),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})
			create('TextLabel',{
				Name = 'a_name',
				Parent = windowsInfo,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 18),
				Font = Enum.Font.GothamBlack,
				Text = windowName,
				RichText = true,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14.000,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Bottom,
			})
			create('TextLabel',{
				Name = 'b_Description',
				Parent = windowsInfo,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 18),
				Font = Enum.Font.Gotham,
				Text = windowDescription,
				RichText = true,
				TextColor3 = Color3.fromRGB(108, 108, 108),
				TextSize = 14.000,
				TextStrokeColor3 = Color3.fromRGB(92, 92, 92),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			})
			------------------------------------------------------------
			local userInfo = create('Frame',{
				Name = 'UserInfo',
				Parent = content,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, 0.9, 0),
				Size = UDim2.new(1, 0, 0.1, 0),	
			})
			SetupFrame(userInfo,{list = {pad = UDim.new(0,16),sort = 'LayoutOrder',direction = 'Horizontal',horizontalalignment = 'Left'}})

			if icon then
				SetupFrame(create('ImageLabel',{
					Name = 'Img',
					Parent = userInfo,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0.5, -12),
					Size = UDim2.new(0, 24, 0, 24),
					Image = icon,
				}),{corner = {radius = UDim.new(1,0),stroke = {}}})
			end

			local info = create('Frame',{
				Name = 'Info',
				Parent = userInfo,
				BackgroundTransparency = 1.000,
				BorderSizePixel = 0,
				Position = UDim2.new(0, icon and 56 or 0, 0, 0),
				Size = UDim2.new(1, icon and -40 or 0, 1, 0),
			})
			SetupFrame(info,{list = {pad = UDim.new(0,4)}})
			create('TextLabel',{
				Parent = info,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 56, 0.5, -18),
				Size = UDim2.new(1, 0, 0, 14),
				Font = Enum.Font.GothamBold,
				Text = username,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14.000,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Bottom,		
			})
			create('TextLabel',{
				Parent = info,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 56, 0.5, -18),
				Size = UDim2.new(1, 0, 0, 14),
				Font = Enum.Font.Gotham,
				Text = role,
				TextColor3 = Color3.fromRGB(108, 108, 108),
				TextSize = 14,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			})


			--------------------------------------------------------------
			local tabs = create('ScrollingFrame',{
				Name = 'Tabs',
				Parent = content,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1.000,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, 0.150000006, 0),
				Selectable = false,
				Size = UDim2.new(1, 0, 0.75, -24),
				BottomImage = "",
				CanvasSize = UDim2.new(0, 0, 0, 145),
				ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50),
				ScrollBarThickness = 1,
				TopImage = "",
			})
			local _, _, list, pad = SetupFrame(tabs,{
				list = {pad = UDim.new(0,8),VerticalAlignment = 'Top'},
				Pad = {left = UDim.new(0,1),top = UDim.new(0,1), right = UDim.new(0, 8)}
			})

			list:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
				task.wait()
				local abs = list.AbsoluteContentSize
				tabs.CanvasSize = UDim2.new(0, abs.X, 0, abs.Y)
			end)

			
			local function _tween(fp, is)
				Tween(fp, 0.25, 'Quad', 'In', {BackgroundTransparency = is and 0 or 1})
				Tween(fp:FindFirstChildOfClass('UIStroke'), 0.25, 'Quad', 'In', {Transparency = is and 0 or 1})
			end
			function window:Tab(options)
				local options = formatTable(options)
				
				local type = options.type and options.type:lower() or 'normal'
				local icon = options.icon

				----------------------------------------------------------------------------------
				local section = create('Frame',{
					Name = ('1'):rep(#tabs:GetChildren()-1),
					Parent = tabs,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Size = UDim2.new(1, -1, 0, 32),
					ZIndex = 2,
				})

				local _clickHandler = create('TextButton', {
					Name = 'Handler',
					Parent = section,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 5,
					Size = UDim2.new(1, 0, 1, 0),
					Text = '',
				})

				local tab_a = create('Frame',{
					Name = 'Tab',
					Parent = section,
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					ZIndex = 3,
				})
				local _,stroke,_,_ = SetupFrame(tab_a,{
					corner = {radius = UDim.new(0,4)},
					list = {pad = UDim.new(0,8),horizontalalignment = 'Left',verticalalignment = 'Center',direction = 'Horizontal'},
					pad = {bottom = UDim.new(0,10),top = UDim.new(0,10),left = UDim.new(0,10),right = UDim.new(0,10)},
					stroke = {}
				})
				stroke.Transparency = 1

				if icon then
					create('ImageLabel',{
						Name = 'a_icon',
						Parent = tab_a,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1.000,
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						BorderSizePixel = 0,
						Size = UDim2.new(0, 16, 1, 0),
						ZIndex = 4,
						Image = icon,
						ScaleType = Enum.ScaleType.Fit,
					})
				end
				create('TextLabel',{
					Name = 'b_text',
					Parent = tab_a,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Size = UDim2.new(1, icon and -28 or 0, 1, 0),
					ZIndex = 4,
					Font = Enum.Font.GothamMedium,
					Text = options.name or '[NO NAME]',
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 14,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				})
				----------------------------------------------------------------------------------
				local tabHolder = create('Frame',{
					Parent = windowFrame,
					Name = 'SectorHolder_'..(#window._tabs+1),
					Size = UDim2.new(0.73, 0,1, 0),
					Position = UDim2.new(0.27,0,0,0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				})

				SetupFrame(tabHolder, {
					pad = {bottom = UDim.new(0,14),top = UDim.new(0,14),right = UDim.new(0,14),left = UDim.new(0,14)}
				})
				local tab,funcs = Tabs[type](tabHolder,window,options)
				_clickHandler.MouseButton1Down:Connect(function()
					if window._CurrentTab[1] ~= section then

						task.spawn(function()
							_tween(window._CurrentTab[1].Tab, false)
							window._CurrentTab[2].Visible = false
							window._CurrentTab[2].ZIndex -= 1	

							window._CurrentTab = {section,tab}
							tab.ZIndex += 1
							_tween(section.Tab, true)
						end)
						tab.Visible = true
					end
				end)
				if not window._CurrentTab then
					window._CurrentTab = {section,tab}

					_tween(window._CurrentTab[1].Tab, true)
					tab.Visible = true
					tab.ZIndex += 1
				end


				table.insert(window._tabs,tab)
				return funcs
			end
			function window:Separator()
				create('Frame',{
					Name = 'Separator',
					Parent = create('Frame',{
						Name = ('1'):rep(#tabs:GetChildren()-1),
						Parent = tabs,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -1, 0, 32),
						ZIndex = 2,
					}),
					BackgroundColor3 = Color3.fromRGB(40, 40, 40),
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0, 1),
				})
			end
		end
		create('Frame',{
			Name = "Separator",
			Parent = sideBar,
			BackgroundColor3 = Color3.fromRGB(40, 40, 40),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(0, 1, 1, 0),
		})


		return window
	end
end
-- UI END 
ui:Init()
--
ui:SetupLoader({time = 2})
--
Wait(2)
--
local Window = ui:NewWindow{window = {Name = [[<b>osiris.<font color="rgb(220, 20, 60)">cool</font></b>]], Description = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name}, User = {Name = LocalPlayer.Name,Role = 'Buyer Build'}}
local flags = Window.flags
-- Functions , Renders 
local Backtrack = Instance.new("Folder")
Backtrack.Parent = Workspace.Terrain 
Backtrack.Name = "Backtrack"
-- 
local NovaPart = game:GetObjects("rbxassetid://14745759584")[1]; NovaPart.Parent = game:GetService("ReplicatedStorage");
local Nova = NovaPart.Attachment 
-- 
local HitChams = Instance.new("Folder")
HitChams.Parent = Workspace.Terrain 
HitChams.Name = "HitChams"
-- 
local VisualizeCFrame = game:GetObjects("rbxassetid://8246626421")[1]; VisualizeCFrame.Humanoid:Destroy(); VisualizeCFrame.Head.Face:Destroy(); VisualizeCFrame.Parent = game.Workspace; VisualizeCFrame.HumanoidRootPart.Velocity = Vector3.new(); VisualizeCFrame.HumanoidRootPart.CFrame = CFrame.new(9999,9999,9999); VisualizeCFrame.HumanoidRootPart.Transparency = 1; VisualizeCFrame.HumanoidRootPart.CanCollide = false; local hitmodule = game:GetObjects("rbxassetid://7255773215")[1]; hitmodule.Parent = game:GetService("ReplicatedStorage")
-- 
for i,v in pairs(VisualizeCFrame:GetChildren()) do 
	if v:IsA("BasePart") then 
		v.CanCollide = false 
		v.Material = Enum.Material.Neon 
		v.Transparency= 0.99
	end 
end 
-- 
local Chams = {} 
do 
	function Lynx:Cham_Character(Player, Color1, Color2, Fill1, Fill2) 
		local Highlight = NewInstance("Highlight", Highlights)
		Highlight.Adornee = Player.Character
		Highlight.Enabled = true
		Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		Highlight.FillColor = Color1
		Highlight.OutlineColor = Color2
		Highlight.OutlineTransparency = Fill1
		Highlight.FillTransparency = Fill2
		-- 
		Chams[Player] = Highlight
		-- 
		Player.CharacterAdded:Connect(function(Character)
			Highlight.Adornee = Character 
			Highlight.Parent = game.CoreGui 
		end)
	end 

	function Lynx:Cham_Remove(Player)
		if Player and Chams[Player] then 
			Chams[Player]:Destroy()
			Chams[Player].Parent = nil 
			Chams[Player].Adornee = nil 
		end 
	end 
	-- 
	function Lynx:PlayerDraw(Type, Outline, Name, Filled)
        local drawing = Drawing.new(Type)
        for i, v in pairs(Visuals["Settings"][Type]) do
            drawing[i] = v
        end
        --
        if Outline then
            drawing.Color = Color3.new(0,0,0)
            drawing.Thickness = 3
        end
        --
        if Filled then 
            drawing.Filled = true 
        end 
        --
        return drawing
    end
    -- 
    function Lynx:Add(Player)
        if not Visuals["Drawings"][Player] then
            Visuals["Drawings"][Player] = {
                Name = Lynx:PlayerDraw("Text", nil, "Name", false),
                Tool = Lynx:PlayerDraw("Text", nil, "Tool", false),
                BoxOutline = Lynx:PlayerDraw("Square", true, "BoxOutline", false),
                Box = Lynx:PlayerDraw("Square", nil, "Box",false),
                HealthOutline = Lynx:PlayerDraw("Square", false, "HealthOutline", false),
                Health = Lynx:PlayerDraw("Square", nil, "Health", false),
                HealthText = Lynx:PlayerDraw("Text",nil, "HealthText", false),
                HealthBarGradient = Lynx:PlayerDraw("Image", nil, "HealthBarGradient", false), 
                BoxFill = Lynx:PlayerDraw("Square", nil, "BoxFill", true),
                ArmorBar = Lynx:PlayerDraw("Line", nil, "ArmorBar", false),
                ArrowOutline = Lynx:PlayerDraw("Triangle", false, "ArrowOutline", false),
                Arrow = Lynx:PlayerDraw("Triangle", nil, "Arrow", false),
				Flag = Lynx:PlayerDraw("Text",nil, "Flag", false)
            }
            -- 
            Visuals["Drawings"][Player]["Corners"] = {}
            -- 
            for Index = 9, 16 do
                Visuals["Drawings"][Player]["Corners"][Index] = Lynx:PlayerDraw("Line", nil, "Corners", false)
                Visuals["Drawings"][Player]["Corners"][Index].Thickness = 3
            end
            --
            for Index = 1, 8 do
                Visuals["Drawings"][Player]["Corners"][Index] = Lynx:PlayerDraw("Line", nil, "Corners", false)
                Visuals["Drawings"][Player]["Corners"][Index].Thickness = 0 
            end
        end
    end
	-- 
	function HitMarker(Gap, Color, Time) 
        local Lines = {} 
        -- 
        for i = 1, 4 do 
            Lines[i] = Lynx:newDrawing("Line", {Color = Color, Visible = true, Transparency = 1, Thickness = 1})
        end 
        -- 
        Lines[1].From = Vector2.new(Mouse.X + Gap, (Mouse.Y + 36) + Gap)
        Lines[1].To = Vector2.new(Mouse.X + (Gap * 2.5), (Mouse.Y + 36) + (Gap * 2.5))
        --
        Lines[2].From = Vector2.new(Mouse.X + Gap, (Mouse.Y + 36) - Gap)
        Lines[2].To = Vector2.new(Mouse.X + (Gap * 2.5), (Mouse.Y + 36) - (Gap * 2.5))
        --
        Lines[3].From = Vector2.new(Mouse.X - Gap, (Mouse.Y + 36) + Gap)
        Lines[3].To = Vector2.new(Mouse.X - (Gap * 2.5), (Mouse.Y + 36) + (Gap * 2.5))
        --
        Lines[4].From = Vector2.new(Mouse.X - Gap, (Mouse.Y + 36) - Gap)
        Lines[4].To = Vector2.new(Mouse.X - (Gap * 2.5), (Mouse.Y + 36) - (Gap * 2.5))
        -- 
        delay(Time, function()
            for i = Time, 0, -0.1 do
                task.wait()
                for _, Value in next, Lines do
                    Value.Transparency = i
                end
            end
            -- 
            for _, Value in next, Lines do
                Value:Remove()
            end
        end)
    end 
    -- 
    function HitMarker3D(Gap, Color, Time, Hit) 
        local Lines = {} 
        -- 
        for i = 1, 4 do 
            Lines[i] = Lynx:newDrawing("Line", {Color = Color, Visible = true, Transparency = 1, Thickness = 1})
        end     
        -- 
        local Loop = RunService.RenderStepped:Connect(function()
            local Position3D, OnScreen = Camera:WorldToViewportPoint(Hit)
            -- 
			Lines[1].From = Vector2.new(Position3D.X + Gap, Position3D.Y + Gap)
			Lines[1].To = Vector2.new(Position3D.X + (Gap * 2.5), Position3D.Y + (Gap * 2.5))
			--
			Lines[2].From = Vector2.new(Position3D.X + Gap, Position3D.Y - Gap)
			Lines[2].To = Vector2.new(Position3D.X + (Gap * 2.5), Position3D.Y - (Gap * 2.5))
			--
			Lines[3].From = Vector2.new(Position3D.X - Gap, Position3D.Y + Gap)
			Lines[3].To = Vector2.new(Position3D.X - (Gap * 2.5), Position3D.Y + (Gap * 2.5))
			--
			Lines[4].From = Vector2.new(Position3D.X - Gap, Position3D.Y - Gap)
			Lines[4].To = Vector2.new(Position3D.X - (Gap * 2.5), Position3D.Y - (Gap * 2.5))
			-- 
			for _, Value in next, Lines do
				Value.Visible = OnScreen
			end
        end)
        -- 
        delay(Time, function()
            for i = Time, 0, -0.1 do
                task.wait()
                for _, Value in next, Lines do
                    Value.Transparency = i
                end
            end
            -- 
            for _, Value in next, Lines do
                Value:Remove()
            end
            Loop:Disconnect()
        end)
    end 
	--
	function Lynx:HitEffect(Type, Character)
		local function convert(color)
			return color.r/5, color.g/5, color.b/5
		end 
		-- 
		local function Weld(x,y)
			local W = Instance.new("Weld")
			W.Part0 = x
			W.Part1 = y
			local CJ = CFrame.new(x.Position)
			local C0 = x.CFrame:inverse()*CJ
			local C1 = y.CFrame:inverse()*CJ
			W.C0 = C0
			W.C1 = C1
			W.Parent = x
		end
		-- 
		if Type == "Confetti" then 
			task.spawn(function()
				local Confetti_Amount = 20000
				local RootPart = Character.HumanoidRootPart
				local ConfettiClone = hitmodule:Clone()
				ConfettiClone.RainbowParticles.Rate = Confetti_Amount
				ConfettiClone.Parent = workspace
				ConfettiClone.CanCollide = false
				ConfettiClone.CFrame = RootPart.CFrame
				-- 
				for i = Confetti_Amount, 0 , -(Confetti_Amount/50) do 
					task.wait()
					ConfettiClone.RainbowParticles.Rate = i
				end 
				-- 
				delay(5, function()
					ConfettiClone:Destroy()
				end)
			end)
		else 
			local Effect = Nova:Clone() 
			Effect.Parent = Character.HumanoidRootPart
			--	
			for i,v in pairs(Effect:GetChildren()) do 
				v.Rate = 0
				v.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(convert(flags["Hit Effects Color"].Color))),ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0)),})
				v:Emit()
			end 
			-- 	
			delay(2, function()
				Effect:Destroy()
			end)
		end 
	end 
	-- 
	Lynx:HitEffect("Confetti", LocalPlayer.Character)
	-- 
	function Lynx:ThreadFunction(Func, Name, ...)
        local Func = Name and function()
            local Passed, Statement = pcall(Func)
            --
            if not Passed and not Lynx.Safe then
                warn("Lynx:\n", "              " .. Name .. ":", Statement)
            end
        end or Func
        local Thread = Create(Func)
        --
        Resume(Thread, ...)
        return Thread
    end
    -- 
    function Lynx:RayCast(Part, Origin, Ignore, Distance)
        local IgnoreList = Ignore
        local Distance = Distance or 5000
        --
        local Cast = Ray.new(Origin, (Part.Position - Origin).Unit * Distance)
        local Hit = Workspace:FindPartOnRayWithIgnoreList(Cast, IgnoreList)
        --
        return (Hit and Hit:IsDescendantOf(Part.Parent)) == true, Hit
    end
	-- 
	function Lynx:KnockCheck(Player)
		if Player.Character then 
			if Player.Character.BodyEffects ~= nil then
				if Player.Character.BodyEffects["K.O"].Value == true then 
					return false 
				end 
			end 
		end 
		return true
	end 
    -- 
    function Lynx:newDrawing(type, prop)
        local obj = Drawing.new(type)
        --
        if prop then
            for i,v in next, prop do
                obj[i] = v
            end
        end
        return obj  
    end
    -- 
    function Lynx:GetPlayerStatus(Player)
        if not Player then Player = LocalPlayer end
        return Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.Humanoid.Health > 0 and true or false
    end 
    --
    function Lynx:CreateBeam(Origin, End, Color1, Color2, Texture)
        local BeamPart = NewInstance("Part", workspace)
        BeamPart.Name = "BeamPart"
        BeamPart.Transparency = 1
        --
        local Part = NewInstance("Part", BeamPart)
        Part.Size = NewVector3(1, 1, 1)
        Part.Transparency = 1
        Part.CanCollide = false
        Part.CFrame = typeof(Origin) == "CFrame" and Origin or CFrame.new(Origin)
        Part.Anchored = true
        local Attachment = NewInstance("Attachment", Part)
        local Part2 = NewInstance("Part", BeamPart)
        Part2.Size = NewVector3(1, 1, 1)
        Part2.Transparency = 1
        Part2.CanCollide = false
        Part2.CFrame = typeof(End) == "CFrame" and End or CFrame.new(End)
        Part2.Anchored = true
        Part2.Color = Color3.fromRGB(255, 255, 255)
        local Attachment2 = NewInstance("Attachment", Part2)
        local Beam = NewInstance("Beam", Part)
        Beam.FaceCamera = true
        Beam.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0.00, Color1),
            ColorSequenceKeypoint.new(1, Color2),
        }
        Beam.Attachment0 = Attachment
        Beam.Attachment1 = Attachment2
        Beam.LightEmission = 6
        Beam.LightInfluence = 1
        Beam.Width0 = 1
        Beam.Width1 = 0.6
        Beam.Texture = "rbxassetid://".. Texture ..""
        Beam.LightEmission = 1
        Beam.LightInfluence = 1
        Beam.TextureMode = Enum.TextureMode.Wrap 
        Beam.TextureLength = 3 
        Beam.TextureSpeed = 3
        delay(1, function()
			for i = 0.5, 1, 0.02 do
				wait()
				Beam.Transparency = NumberSequence.new(i)
			end
			Part:Destroy()
			Part2:Destroy()
			BeamPart:Destroy()
        end)
    end
    -- 
    function Lynx:GetTool() 
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA("Tool") and Lynx:GetPlayerStatus() then 
            return LocalPlayer.Character:FindFirstChildWhichIsA("Tool") 
        end 
    end 
	-- 
	function Lynx:Map(N, OldMin, OldMax, Min, Max)
		return (N - OldMin) / (OldMax - OldMin) * (Max - Min) + Min
	end
    -- 
    function Lynx:Rainbow(Speed)
        return Color3.fromHSV(Abs(Sin(tick()) / (5 - Speed)),1,1)
    end 
    --
    function Lynx:CheckIfEven(Number)
        if (Number % 2 == 0) then
            return true
        else
            return false 
        end
    end
    --
    function Lynx:Connection(Type, Callback)
        local Connection = Type:Connect(Callback)
        Lynx.Connections[#Lynx.Connections + 1] = Connection
        --
        return Connection
    end
    --
    function Lynx:GetBodyParts(Character, RootPart, Indexes, Hitboxes)
        local Parts = {}
        local Hitboxes = Hitboxes or {"Head", "Torso", "Arms", "Legs"}
        --
        for Index, Part in pairs(Character:GetChildren()) do
            if Part:IsA("BasePart") and Part ~= RootPart then
                if Find(Hitboxes, "Head") and Part.Name:lower():find("head") then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                elseif Find(Hitboxes, "Torso") and Part.Name:lower():find("torso") then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                elseif Find(Hitboxes, "Arms") and Part.Name:lower():find("arm") then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                elseif Find(Hitboxes, "Legs") and Part.Name:lower():find("leg") then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                elseif (Find(Hitboxes, "Arms") and Part.Name:lower():find("hand")) or (Find(Hitboxes, "Legs ") and Part.Name:lower():find("foot")) then
                    Parts[Indexes and Part.Name or #Parts + 1] = Part
                end
            end
        end
        --
        return Parts
    end
    -- 
    function Lynx:GetClosestPlayer()
        local shortestDistance = Huge
        --  
        local closestPlayer
        for _, Player in pairs(Players:GetPlayers()) do
            if Player ~= LocalPlayer and Lynx:GetPlayerStatus(Player) then
                local pos, OnScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
                --
                if magnitude < shortestDistance and OnScreen then
                        closestPlayer = Player
                        shortestDistance = magnitude
                    end
                end
            end 
        return closestPlayer
    end

	-- 
    function Lynx:UpdateVisuals()
        if flags["lighting_masterswitch"] then 
            if flags["lighting_ambient"] then 
                if Lighting.Ambient ~= flags["lighting_ambient1"] then 
                    Lighting.Ambient = flags["lighting_ambient1"]
                end 
                if Lighting.OutdoorAmbient ~= flags["lighting_ambient2"] then 
                    Lighting.OutdoorAmbient = flags["lighting_ambient2"]
                end 
            end 
            --
            if flags["lighting_ambientcolorshift"] then 
                if Lighting.ColorShift_Bottom ~= flags["lighting_ambientcolorshift1"] then 
                    Lighting.ColorShift_Bottom = flags["lighting_ambientcolorshift1"]
                end 
                if Lighting.ColorShift_Top ~= flags["lighting_ambientcolorshift2"] then 
                    Lighting.ColorShift_Top = flags["lighting_ambientcolorshift2"]
                end 
            end 
            --
            if flags["lighting_fog"] then 
                if Lighting.FogColor ~= flags["lighting_fog1"] then 
                    Lighting.FogColor = flags["lighting_fog1"]
                end 
                if Lighting.FogEnd ~= flags["lighting_fog_end"] then 
                    Lighting.FogEnd = flags["lighting_fog_end"]
                end 
                if Lighting.FogStart ~= flags["lighting_fog_start"] then 
                    Lighting.FogStart = flags["lighting_fog_start"]
                end 
            end 
            --
            if flags["lighting_clocktime"] then
                if Lighting.ClockTime ~= flags["lighting_clocktime_slider"] then 
                    Lighting.ClockTime = flags["lighting_clocktime_slider"]
                end 
            end
            --
            if flags["lighting_brightness"] then 
                if Lighting.Brightness ~= flags["lighting_brightness_slider"] then
                    Lighting.Brightness = flags["lighting_brightness_slider"]
                end
            end 
        end 
    end 
    --
    function Lynx:GetPlayerParent(Player)
        return Player.Parent
    end
	-- 
	function Lynx:AngleToEdge(angle, inset) -- pasted from the grenade indicators lmao
		local pos
		local ox = Cos(angle)
		local oy = Sin(angle)
		local slope = oy / ox
		-- 
		local h_edge = viewportSize.x - inset
		local v_edge = viewportSize.y - inset
		if oy < 0 then
			v_edge = inset
		end
		if ox < 0 then
			h_edge = inset
		end
		local y = (slope * h_edge) + (viewportSize.y / 2) - slope * (viewportSize.x / 2)
		if y > 0 and y < viewportSize.y - inset then
			pos = Vector2.new(h_edge, y)
		else
			pos = Vector2.new(
				(v_edge - viewportSize.y / 2 + slope * (viewportSize.x / 2)) / slope,
				v_edge
			)
		end
		return pos
	end
    --
    function Lynx:GetCharacter(Player)
        return Player.Character
    end
    --
    function Lynx:GetHumanoid(Player, Character)
        return Character:FindFirstChildOfClass("Humanoid")
    end
    --
    function Lynx:GetRootPart(Player, Character, Humanoid)
        return Humanoid.RootPart
    end
    --
    function Lynx:GetHealth(Player, Character, Humanoid)
        if Humanoid then
            return Clamp(Humanoid.Health, 0, Humanoid.MaxHealth), Humanoid.MaxHealth
        end
    end
    --
    function Lynx:ValidateClient(Player)
        local Object = Lynx:GetCharacter(Player)
        local Humanoid = (Object and Lynx:GetHumanoid(Player, Object))
        local RootPart = (Humanoid and Lynx:GetRootPart(Player, Object, Humanoid))
        --
        return Object, Humanoid, RootPart
    end
    -- 
    function Lynx:ClientAlive(Player, Character, Humanoid)
        local Health, MaxHealth = Lynx:GetHealth(Player, Character, Humanoid)
        --
        return (Health > 0)
    end
    --
	function Lynx:getRotate(Vec, Rads)
		local vec = Vec.Unit
		local sin = math.sin(Rads)
		local cos = math.cos(Rads)
		local x = (cos * vec.x) - (sin * vec.y)
		local y = (sin * vec.x) + (cos * vec.y)
		--
		return Vector2.new(x, y).Unit * Vec.Magnitude
	end
	-- 
    function Lynx:Unload()
        for Index, Connection in next, Lynx.Connections do
            Connection:Disconnect()
        end
		-- 
		if ui then 
			ui:Unload() 
		end 
		-- 

    end
	--[[
	function Lynx:Update_Configs()
		all_cfgs = listfiles("Lynx\\")
		for _,cfg in next, all_cfgs do
			all_cfgs[_] = string.gsub(string.gsub(cfg, "Lynx\\", ""), ".txt", "")
			list:add_value(all_cfgs[_])
		end
	end 
	Lynx:Update_Configs()
    --]]
    function Lynx:ClampString(String, Length, Font)
        local Font = (Font or 2)
        local Split = String:split("\n")
        --
        local Clamped = ""
        --
        for Index, Value2 in pairs(Split) do
            if (Index * 13) <= Length then
                Clamped = Clamped .. Value2 .. (Index == #Split and "" or "\n")
            end
        end
        --
        return (Clamped ~= String and (Clamped == "" and "" or Clamped:sub(0, #Clamped - 1) .. " ...") or Clamped)
    end
    -- 
    function Lynx:GetTeam(Player)
        return Player.Team
    end
    -- 
    function Lynx:CheckTeam(Player1, Player2)
        return (Lynx:GetTeam(Player1) ~= Lynx:GetTeam(Player2))
    end
    -- 
    function Lynx:GetClosestPart(Player, List)
        local shortestDistance = Huge
        local closestPart = nil
        if Lynx:GetPlayerStatus(Player) then
            for Index, Value in pairs(Player.Character:GetChildren()) do
                if Value:IsA("BasePart") then 
                    local pos = Camera:WorldToViewportPoint(Value.Position)
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y + 36)).magnitude
                    if magnitude < shortestDistance and Find(List, Value.Name) then
                        closestPart = Value
                        shortestDistance = magnitude
                    end
                end
            end 
            return closestPart
        end
    end 
	-- 
	function Lynx:findNearestTargetInRadius(origin, radius)
		local minDistance = radius
		local nearestTarget = nil
		-- 							
		for _, target in pairs(Players:GetPlayers()) do
			if target ~= LocalPlayer and Lynx:GetPlayerStatus() and Lynx:GetPlayerStatus(target) then
				local Object, Humanoid, RootPart = Lynx:ValidateClient(target)
				if Object and Humanoid and RootPart then 
					local Check = true 
					-- 
					if (Find(flags["Silent_Aim_Checks"], "Wall") and not Lynx:RayCast(RootPart, Lynx:GetOrigin("Handle"), {Lynx:GetCharacter(LocalPlayer)})) then Check = false end
					if (Find(flags["Silent_Aim_Checks"], "ForceField") and Object:FindFirstChildOfClass("ForceField")) then Check = false end
					if (Find(flags["Silent_Aim_Checks"], "Knocked") and not Lynx:KnockCheck(target)) then Check = false end
					-- 
					local distance = (target.Character.HumanoidRootPart.Position - origin).Magnitude
					if distance < minDistance and Check == true then
						minDistance = distance
						nearestTarget = target
					end
				end 
			end
		end
		-- 
		return nearestTarget
	end	
	-- 	
	function Lynx:movePlayerAlongPath(path, offset)
		local waypoints = path:GetWaypoints()
		-- 
		for _, waypoint in pairs(waypoints) do
			local waypointPosition = waypoint.Position + Vector3.new(0, offset, 0) 
			player.Character.HumanoidRootPart.CFrame = CFrame.new(waypointPosition)
			task.wait()
		end
	end
    -- 
    function Lynx:RandomChance(Percentage)
        local Chance = Percentage
        --
        if Random(1,100) <= Chance then
            return true 
        else
            return false
        end
    end
    -- 
	function Lynx:CloneCharacter(Player, Color, Material, Transparency, Parent, Time)
		Player.Character.Archivable = true
		local Clone = Player.Character:Clone()
		Clone.Parent = Parent
	
		for _, Part in pairs(Clone:GetDescendants()) do
			if Part:IsA("Highlight") or Part:IsA("Humanoid") or Part:IsA("LocalScript") or Part:IsA("Script") or Part:IsA("Decal") or Part:IsA("Accessory") then
				Part:Destroy()
			end 
			-- 
			if Part:IsA("BasePart") or Part:IsA("Meshpart") or Part:IsA("Part") then
				if Part.Transparency ~= 1 then
					Part.Anchored = true
					Part.Material = Material
					Part.Color = Color
					Part.Transparency = Transparency
					Part.Size = Part.Size + NewVector3(0.03, 0.03, 0.03)
				else
					Part:Destroy()
				end
			end
			-- 
			if Part:IsA("Attachment") or Part:IsA("StringValue") or Part:IsA("Shirt") or Part:IsA("Pants") or Part:IsA("Vector3Value") or Part:IsA("WrapTarget") or Part:IsA("Folder") or Part:IsA("Motor6D") or Part:IsA("BodyColors") then 
				Part:Destroy()
			end 
			-- 
			pcall(function()
				Part.CanCollide = false
			end)
		end
		-- 
		delay(Time, function()
			Clone:Destroy()
		end)
	end 
	-- 
	function Lynx:CloneCharacter2(Player, Color, Enabled, Time, Material, Transparency, Parent)
		local Model = NewInstance("Model")
		Model.Name = "Model"
		Model.Parent = Parent 		
		-- 
        for i,v in pairs(Player.Character:GetChildren()) do 
            if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then 
                local ClonedPart = Instance.new("Part")
                ClonedPart.Anchored = true 
                ClonedPart.CanCollide = false 
                ClonedPart.Position = v.Position
                ClonedPart.Parent = Model
                ClonedPart.Material = Enum.Material[Material]
                ClonedPart.Shape = Enum.PartType.Block 
                ClonedPart.Transparency = Transparency 
                ClonedPart.Color = Color
                ClonedPart.Size = v.Size + NewVector3(0.01,0.01,0.01)
                ClonedPart.Name = v.Name
                ClonedPart.Rotation = v.Rotation
            end 
		end 
		-- 
		if Enabled then 
			delay(Time, function()
				Model:Destroy()
			end)
		end 
	end 
    -- 
    function Lynx:CalculateAbsolutePosition(Player)
        if Lynx:GetPlayerStatus(Player) then
            local root = Player.Character.HumanoidRootPart
            local character = Player.Character 
            --
            local currentPosition = root.Position
            local currentTime = tick() 
            --
            Wait()
            --
            local newPosition = root.Position
            local newTime = tick()
            --
            local distanceTraveled = (newPosition - currentPosition) 
            --
            local timeInterval = newTime - currentTime
            local velocity = distanceTraveled / timeInterval
            currentPosition = newPosition
            currentTime = newTime
            --
            return velocity
        end
    end 
    -- 
    function Lynx:GetOrigin(Origin)
        if Origin == "Head" then
            local Object, Humanoid, RootPart = Lynx:ValidateClient(LocalPlayer)
            local Head = Object:FindFirstChild("Head")
            --
            if Head and Head:IsA("RootPart") then
                return Head.CFrame.Position
            end
        elseif Origin == "Torso" then
            local Object, Humanoid, RootPart = Lynx:ValidateClient(LocalPlayer)
            --
            if RootPart then
                return RootPart.CFrame.Position
            end
		elseif Origin == "Handle" then 
			local Tool = Lynx:GetTool()
			-- 
			if Tool then 
				return Tool.Handle.CFrame.Position
			end 
		end 
        --
        return Workspace.CurrentCamera.CFrame.Position
    end
	-- 
	function Lynx:HitSound(Id, Volume, Pitch)
		local Sound = Instance.new("Sound", Workspace); local PitchSound = Instance.new("PitchShiftSoundEffect", Sound)
		-- 
		Sound.SoundId = "rbxassetid://".. Id ..""
		Sound.Volume = Volume
		PitchSound.Octave = Pitch
		Sound:Play()
		Sound.Ended:Connect(function()
			Sound:Destroy()
			PitchSound:Destroy()
		end)	
	end 
    --
    function Lynx:ValidateArguments(Args, RayMethod)
        local Matches = 0
            --
        if #Args < RayMethod.ArgCountRequired then
            return false
        end
        --
        for Pos, Argument in next, Args do
            if typeof(Argument) == RayMethod.Args[Pos] then
                Matches = Matches + 1
            end
        end
            --
        return Matches >= RayMethod.ArgCountRequired
    end
    --
    function Lynx:GetDirection(Origin, Position)
        return (Position - Origin).Unit * 1000
    end
	-- 
	for Index = 1, 4 do
        local line = Lynx:newDrawing("Line",{
            Visible =  true,
            Color = NewRGB(255,255,255),
            Thickness = 2,
            ZIndex = 2,
            Transparency = 1
        })
        --
        local line_outline = Lynx:newDrawing("Line",{
            Visible =  true,
            Color = Color3.fromRGB(0, 0, 0),
            Thickness = 4,
            ZIndex = 1,
            Transparency = 1
        })
        --
        utility.Cursor.Lines[Index] = line
        utility.Cursor.Outlines[Index] = line_outline
    end
    -- 
    for Index = 1, 2 do 
        local Square = Lynx:newDrawing("Square",{
            Visible = true,
            Size = NewVector2(2, 2),
            Color = NewRGB(255,255,255),
            Filled = true,
            ZIndex = 1000,
            Transparency = 1
        })
        utility.Cursor.Dots[Index] = Square
    end     
    -- 
    for Index = 1, 5 do 
        local FieldOfView = Lynx:newDrawing("Circle",{
            Visible = false,
            Color = NewRGB(255,255,255),
            Thickness = 1,
            ZIndex = 2,
            Transparency = 0.5,
            Filled = true 
        })
        utility.Renders[Index] = FieldOfView
    end
	-- 
	utility.Parts[1] = NewInstance("Part")
	utility.Parts[1].Anchored = false 
	utility.Parts[1].CanCollide = false 
	utility.Parts[1].Parent = game.Workspace
	utility.Parts[1].Material = Enum.Material.Neon
	utility.Parts[1].Shape = Enum.PartType.Block 
	utility.Parts[1].Transparency = 0.8  
	utility.Parts[1].Color = Color3.fromRGB(255,255,255) 
	-- 
	for Index = 6, 7 do 
		utility.Renders[Index] = Lynx:newDrawing("Line", {Visible =  true, Color = Color3.fromRGB(255, 255, 255), Thickness = 1, ZIndex = 1, Transparency = 1})
	end 
	-- 
	utility.Renders[6].Thickness = 1
	utility.Renders[7].Color = Color3.fromRGB(255, 255, 255)
	utility.Renders[7].Thickness = 3
	utility.Renders[6].ZIndex = 999999
	utility.Renders[7].ZIndex = 1	
	utility.Renders[5].Radius = 2
	-- 
	local Visualize = Library:New3DCircle()
	Visualize.ZIndex = 4 
	Visualize.Visible = false 
	Visualize.Transparency = 1
	Visualize.Color = Color3.fromRGB(255,255,255)
	Visualize.Thickness = 1 
	Visualize.Position = LocalPlayer.Character.HumanoidRootPart.Position
	Visualize.Radius = 20
	-- 
	local Size = {200, 20}
	local Position = {10,(Workspace.CurrentCamera.ViewportSize.Y/2)-50}
	-- 
	Visuals["KeyBindList"] = {
		["Drawings"] = {
			Accent = Lynx:newDrawing("Square", {Size = NewVector2(Size[1] - 2,1.5), Color = Color3.fromRGB(0,193,255), Visible = false , Position = NewVector2(Position[1] + 1, Position[2]), Filled = true, ZIndex = 999}),
			Text = Lynx:newDrawing("Text", {Text = "Keybinds", Color = NewRGB(255,255,255), Size = 13, Center = false, Font = 1, Visible = false, Position = NewVector2(79,Position[2]+2), Outline = true, ZIndex = 9999}),
			Frame = Lynx:newDrawing("Square", {Size = NewVector2(Size[1],Size[2]), Visible = false, Color = NewRGB(0, 0, 0), Position = NewVector2(Position[1],Position[2]), Filled = true}),
			Inner = Lynx:newDrawing("Square", {Size = NewVector2(Size[1]-2,Size[2]-2), Visible = false , Color = NewRGB(30, 30, 30), Position = NewVector2(Position[1]+1,Position[2]+1), Filled = true}),
			Gradient = Lynx:newDrawing("Image", {Size = NewVector2(Size[1]-2,Size[2]-2), Visible = false , Position = NewVector2(Position[1]+1,Position[2]+1), Transparency = 1, Data = game:HttpGet("https://raw.githubusercontent.com/portallol/luna/main/gradient_new.png"), Transparency = 0.5}),
			Key = Lynx:newDrawing("Text", {Text = "", Color = NewRGB(255,255,255), Size = 13, Center = false, Font = 1, Visible = false, Position = NewVector2(13,Position[2]+17), Outline = true, ZIndex = 9999}),
		}, 
		["Text"] = ""
	} 
	-- 
	function Visuals.KeyBindList.SetVisibleList(Bool)
		for _, Drawing in next, Visuals["KeyBindList"]["Drawings"] do
			Drawing.Visible = Bool
		end 
	end 
	-- 
	function Visuals.KeyBindList.AddValue(Bool, Bool2, Name, Key)
		if Bool and Bool2 then 
			Visuals["KeyBindList"]["Text"] ..= ("%s\n"):format("".. Name .." [" .. Key .. "] ")
		end 
	end 
end
-- Combat
do 
	local Silent_Aim_Tab = Window:Tab{Name = 'Silent Aim', icon = "rbxassetid://6034509987"}
	local Aim_Assist_Tab = Window:Tab{Name = 'Assist Tab', icon = "rbxassetid://4483345998"}
	local On_Hit = Window:Tab{Name = 'Settings', icon = "rbxassetid://3605022185"}
    -- 
    local Aimbot = Aim_Assist_Tab:Sector{Side = 1}
    do 
		Aimbot:Title{Title = 'Aim Assist'}
		--
        THL = Aimbot:Toggle{Name = 'Enabled',flag = 'Aim Assist Enabled'}
		--
        S = THL:Settings()
		--
        S:Keybind{name = 'Key', flag = "Aim Assist Key", type = 1, callback = function(Bool)
			if Bool and flags["Aim Assist Enabled"] then 
				Lynx.Assist.Target = Lynx:GetClosestPlayer()
			end 
		end}
		--
        S:Toggle{Name = 'Sticky Aim', flag = 'Sticky Aim'}
		--
		Aimbot:Input({Name = "Prediction:", Flag = "Aim Assist Prediction", Focuses = true, Editable = true})
		--
        THL = Aimbot:Dropdown{Name = 'Hit-Part', flag = 'Aim Assist HitPart', options = bodyParts, min = 1}
		--
        Aimbot:Toggle{Name = 'Smoothness',flag = 'Smoothness'}
		--
        Aimbot:Slider{Name = 'Amount', flag = 'Smoothness Amount', min = 1, max = 100, default = 1, float = 0.1}
		--
        Aimbot:Dropdown{Name = 'Checks', flag = 'Aim_Assist_Checks', options = {"Visible", "Wall", "ForceField", "Knocked"}, min = 0}
		--
		local serversideQqwdqQW = Aimbot:CreateSegment{Name = 'Stutter'}
		--
		serversideQqwdqQW:Slider{flag = 'Stutter Amount', min = 0, max = 50, default = 0, float = 0.1}
		-- 
		Aimbot:Slider{Name = 'Distance', flag = 'Aim Assist Distance', min = 1, max = 7500, default = 7500, float = 0.1}
    end 
	-- 
	local CameraShake = Aim_Assist_Tab:Sector{Side = 2}
	do 
		CameraShake:Toggle{Name = "Camera Shake", flag = "Camera Shake"}
		--
		CameraShake:Slider{Name = 'X', flag = 'X', min = 0.01, max = 5, default = 0.00001, float = 0.01}
		--
		CameraShake:Slider{Name = 'Y', flag = 'Y', min = 0.01, max = 5, default = 0.00001, float = 0.01}
		--
		CameraShake:Slider{Name = 'Z', flag = 'Z', min = 0.01, max = 5, default = 0.00001, float = 0.01}
	end
	-- FOV
	local FieldOfView = On_Hit:Sector{Side = 2}
	do 
		FieldOfView:Title{Title = 'Field Of View', Description = "Only aimbots in the circle."}
		--
		S = FieldOfView:CreateSegment{Name = 'Silent Aim FOV'}
		--
		THL = S:Toggle{flag = 'Silent Aim FOV Enabled', callback = function(Bool)
			utility.Renders[1].Visible = Bool
		end}
		-- 
		Sl = THL:Settings()
		-- 
		Sl:Toggle{Name = "Filled", flag = 'Silent Aim FOV Filled', callback = function(Bool)
			utility.Renders[1].Filled = Bool
		end}
		--
		S:Colorpicker{flag = "Silent Aim FOV Color", transparency = 0.5, callback = function()
			utility.Renders[1].Color = flags["Silent Aim FOV Color"].Color
			utility.Renders[1].Transparency = 1 - flags["Silent Aim FOV Color"].Alpha
		end}
		--
		FieldOfView:Slider{Name = 'Radius', flag = 'Silent Aim FOV Radius', min = 1, max = 500, default = 1, float = 1, callback = function(Int)
			utility.Renders[1].Radius = Int
		end}
		--
		S = FieldOfView:CreateSegment{Name = 'Aim Assist FOV'}
		--
		THL = S:Toggle{flag = 'Aim Assist FOV Enabled', callback = function(Bool)
			utility.Renders[2].Visible = Bool
		end}
		-- 
		Sl = THL:Settings()
		-- 
		Sl:Toggle{Name = "Filled", flag = 'Aim Assist FOV Filled', callback = function(Bool)
			utility.Renders[2].Filled = Bool
		end}
		--
		S:Colorpicker{flag = "Aim Assist FOV Color", transparency = 0.5, callback = function()
			utility.Renders[2].Color = flags["Aim Assist FOV Color"].Color
			utility.Renders[2].Transparency = 1 - flags["Aim Assist FOV Color"].Alpha
		end}
		--
		FieldOfView:Slider{Name = 'Radius', flag = 'Aim Assist FOV Radius', min = 1, max = 500, default = 1, float = 0.1, callback = function(Int)
			utility.Renders[2].Radius = Int
		end}
		--
		S = FieldOfView:CreateSegment{Name = 'Render Deadzone'}
		-- 
		THL = S:Toggle{flag = 'Deadzone Enabled', callback = function(Bool)
			utility.Renders[3].Visible = Bool
		end}
		--
		Sl = THL:Settings()
		-- 
		Sl:Toggle{Name = "Filled", flag = 'Deadzone FOV Filled', callback = function(Bool)
			utility.Renders[3].Filled = Bool
		end}
		-- 
		S:Colorpicker{flag = 'Deadzone Color', transparency = 0.5, callback = function()
			utility.Renders[3].Color = flags["Deadzone Color"].Color
			utility.Renders[3].Transparency = 1 - flags["Deadzone Color"].Alpha
		end}
		-- 
		FieldOfView:Slider{Name = 'Radius', flag = 'Deadzone Radius', min = 1, max = 500, default = 1, float = 0.1, callback = function(Int)
			utility.Renders[3].Radius = Int
		end}
	end 
	-- 
	local GunShootSound = On_Hit:Sector{Side = 2}
	do 
		GunShootSound:Title{Title = 'Custom Gun Sound'}
		GunShootSound:Toggle{Name = "Enabled", flag = "Custom Gun Sounds"}
		GunShootSound:Dropdown{Name = 'Sound', flag = 'Sound Effect', options = {"Bameware", "Skeet", "Bonk", "Lazer Beam", "Windows XP Error", "TF2 Hitsound", "TF2 Critical", "TF2 Bat", "Bow Hit", "Bow", "OSU", "Minecraft Hit", "Steve", "1nn", "Rust", "TF2 Pan", "Neverlose", "Mario"}, min = 1, max = 1}
		GunShootSound:Slider{Name = 'Volume', flag = 'Volume', min = 0, max = 30, default = 3, float = 0.5}
		GunShootSound:Slider{Name = 'Pitch', flag = 'Play Back Time', min = 0, max = 10, default = 0, float = 0.5}
	end
    -- Silent Aim
    local Silent_Aim = Silent_Aim_Tab:Sector{Side = 1}
    do 
		Silent_Aim:Title{Title = 'Silent Aim'}
		S = Silent_Aim:CreateSegment{Name = 'On'}
		S:Dropdown{Name = 'Type', flag = 'Silent Aim Type', options = {"Target Aim", "Silent Aim"}, min = 1, max = 1}
		KHL = S:Toggle{Name = 'Enabled', flag = 'Silent Aim Enabled'}
		S = KHL:Settings()
		S:Keybind{name = 'Key', type = 1, flag = "Silent Aim Key", callback = function(Bool) 
			if flags["Silent Aim Enabled"] == true then 
				-- 
				if flags["Silent Aim Key"].Active then 
					Lynx.Silent.Target = Lynx:GetClosestPlayer()
					if not Lynx.Silent.Target then return end 
					if Lynx.Silent.Target.Character and flags["Silent Aim Type"] == "Target Aim" and flags["RageBot"] == false then 
						local currentHealth = Lynx.Silent.Target.Character:WaitForChild("Humanoid").Health
						-- 
						if Find(flags["Silent Aim Notify"], "Locked") then 
							ui:Notify{text = "Locked onto: ".. Lynx.Silent.Target.Name.. " (".. Lynx.Silent.Target.DisplayName .. ")", time = 2, style = "loading"}
						end 
						-- 
						if flags["Visualize Part Chams Enabled"] then 
							Lynx:CloneCharacter2(Lynx.Silent.Target, flags["Visualize Part Chams Color"].Color, false, 0, flags["Visualize Part Chams Material"],flags["Visualize Part Chams Color"].Alpha, Workspace.Terrain["Backtrack"])
						end 
						-- 
						if flags["Cham Player Enabled"] then 
							Highlight = NewInstance("Highlight", Lynx.Silent.Target.Character)
							Highlight.Enabled = true
							Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
							Highlight.FillColor = flags["Cham Player Color1"].Color
							Highlight.OutlineColor = flags["Cham Player Color2"].Color
							Highlight.OutlineTransparency = flags["Cham Player Color2"].Alpha
							Highlight.FillTransparency = flags["Cham Player Color1"].Alpha
						end 
						-- 
						--[[Lynx.Connections["On-Hit"] = Lynx.Silent.Target.Character:WaitForChild("Humanoid").HealthChanged:Connect(function(newHealth)
							if newHealth < currentHealth then 
								if Find(flags["Silent Aim Notify"], "Hit Log") then 
									ui:Notify{text = "".. Lynx.Silent.Target.Name.. " got hit for: ".. Floor(Abs(newHealth - currentHealth)), time = 5, style = "loading"}
								end 
							end 
							currentHealth = newHealth
						end)]]
						-- 
						Lynx.Connections["On-Respawn"] = Lynx.Silent.Target.CharacterAdded:Connect(function()
							Wait(2)
							if flags["Cham Player Enabled"] then 
								Highlight = NewInstance("Highlight", Lynx.Silent.Target.Character)
								Highlight.Enabled = true
								Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
								Highlight.FillColor = flags["Cham Player Color1"].Color
								Highlight.OutlineColor = flags["Cham Player Color2"].Color
								Highlight.OutlineTransparency = flags["Cham Player Color2"].Alpha
								Highlight.FillTransparency = flags["Cham Player Color1"].Alpha
							end 
						end)
					end 
				else 
					if Lynx.Connections["On-Hit"] then 
						Lynx.Connections["On-Hit"]:Disconnect() 
					end 
					-- 
					if Lynx.Connections["On-Respawn"] then 
						Lynx.Connections["On-Respawn"]:Disconnect() 
					end
					-- 
					if Find(flags["Silent Aim Notify"], "Unlocked") then 
						ui:Notify{text = "Unlocked !", time = 2, style = "loading"}
					end 
					-- 
					utility.Parts[1].CFrame = CFrame.new(9999,9999,9999)
					LocalPlayer.Character.Humanoid.AutoRotate = true 
					Workspace.Terrain["Backtrack"]:ClearAllChildren() 
					-- 
					for Index = 5, 7 do 
						utility.Renders[Index].Visible = false
					end 
					-- 
					if Highlight then 
					Highlight:Destroy()
					end 
				end 
			end 	
		end}
		S:Toggle{Name = 'Look-At', flag = 'Look-At'}	
		Lynx.Connections["Anti Aim Viewer"] = {}
		S:Toggle{Name = 'Bypass Aim Viewer', flag = 'Bypass Aim Viewer', callback = function(Bool) 
			if Bool then 
				for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") and not Lynx.Connections["Anti Aim Viewer"][v] then
						Lynx.Connections["Anti Aim Viewer"][v] = v.Activated:Connect(Lynx.AimViwerBypass)
					end
				end
				for i, v in pairs(LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") and not Lynx.Connections["Anti Aim Viewer"][v] then
						Lynx.Connections["Anti Aim Viewer"][v] = v.Activated:Connect(Lynx.AimViwerBypass)
					end
				end
				LocalPlayer.Character.ChildAdded:connect(function(v)
					if v:IsA("Tool") and not Lynx.Connections["Anti Aim Viewer"][v] then
						Lynx.Connections["Anti Aim Viewer"][v] = v.Activated:Connect(Lynx.AimViwerBypass)
					end
				end)
				LocalPlayer.CharacterAdded:connect(function(v)
					for i = 1, #Lynx.Connections["Anti Aim Viewer"] do
						Lynx.Connections["Anti Aim Viewer"][i]:Disconnect()
						Lynx.Connections["Anti Aim Viewer"][i] = nil
					end
					v.ChildAdded:connect(function(v)
						if v:IsA("Tool") and not Lynx.Connections["Anti Aim Viewer"][v] then
							Lynx.Connections["Anti Aim Viewer"][v] = v.Activated:Connect(Lynx.AimViwerBypass)
						end
					end)
				end)
			else 
				for i = 1, #Lynx.Connections["Anti Aim Viewer"] do
					Lynx.Connections["Anti Aim Viewer"][i]:Disconnect()
					Lynx.Connections["Anti Aim Viewer"][i] = nil
				end
			end 
		end}
		S:Toggle{Name = 'RageBot', flag = 'RageBot'}
		S:Toggle{Name = 'Auto-Shoot', flag = 'Auto-Shoot'}
		Silent_Aim:Input{Name = "Prediction:", flag = "Silent Aim Prediction", Focuses = true, Editable = true, callback = function(Text)
			Lynx.Silent.Prediction = flags["Silent Aim Prediction"]
		end}
		S:Toggle{Name = 'Auto Prediction', flag = 'Auto Prediction'}
		S:Toggle{Name = 'Use Ping', flag = 'Use Ping'}
		Silent_Aim:Dropdown{Name = 'Hit-Part', flag = 'Silent Aim HitPart', options = bodyParts, min = 1, default = {"HumanoidRootPart"}}
        Silent_Aim:Dropdown{Name = 'Checks', flag = 'Silent_Aim_Checks', options = {"Wall", "Visible", "ForceField", "Knocked"}, min = 0, max = 5}
		KHL = Silent_Aim:Toggle{Name = 'Resolver', flag = 'Resolver'}
		S = KHL:Settings()
		S:Keybind{name = 'Key', flag = "Resolver Key", type = 1}
		Silent_Aim:Dropdown{Name = 'Notify', flag = 'Silent Aim Notify', options = {"Locked", "Unlocked", "Hit Log", "Left"}, min = 1}
	end  
	-- 
	local AirPrediction = Silent_Aim_Tab:Sector{Side = 1}
	do 
		AirPrediction:Toggle{Name = "Air Prediction", flag = "Hits more shots."}
		--
		AirPrediction:Dropdown{Name = 'Method', flag = 'Air Prediction Method', options = {"Offset", "Part"}, default = {"Offset"}, min = 1, max = 1}
		-- 
		AirPrediction:Input{Name = "Jump Offset:", flag = "Jump Offset", Focuses = true, Editable = true, callback = function(Text)
			Lynx.Silent.Offset = flags["Jump Offset"]
		end}
		-- 
		AirPrediction:Dropdown{Name = 'Part', flag = 'Air Prediction Part', options = bodyParts, min = 1, max = 1}
	end
	-- 
	local VisualizeSilent = Silent_Aim_Tab:Sector{Side = 2}
	do 
		VisualizeSilent:Title{Title = 'Visualize', Description = "Shows ur targets position"}
		--
		S = VisualizeSilent:CreateSegment{Name = 'Part'}
        KHS = S:Toggle{flag = 'Visualize Part Enabled'}
        S:Colorpicker{flag = "Visualize Part Color", callback = function()
			utility.Parts[1].Color = flags["Visualize Part Color"].Color
			utility.Parts[1].Transparency = flags["Visualize Part Color"].Alpha
		end}
		Sl = KHS:Settings()
		Sl:Toggle{Name = "Show hitbox", flag = 'Hitbox', callback = function()
			utility.Parts[1].Size = Vector3.new(LocalPlayer.Character.HumanoidRootPart.Size.X * 3 ,5,LocalPlayer.Character.HumanoidRootPart.Size.X * 3)
		end}
		Sl:Toggle{Name = "Show Prediction", flag = 'Show Prediction'}
		VisualizeSilent:Slider{Name = 'Size', flag = 'Visualize Part Size', min = 1, max = 50, default = 1, callback = function()
			utility.Parts[1].Size = Vector3.new(flags["Visualize Part Size"],flags["Visualize Part Size"],flags["Visualize Part Size"])
			if flags["Hitbox"] then 
				utility.Parts[1].Size = Vector3.new(LocalPlayer.Character.HumanoidRootPart.Size.X * 3 ,5,LocalPlayer.Character.HumanoidRootPart.Size.X * 3)
			end 
		end}
		VisualizeSilent:Dropdown{Name = 'Material', flag = 'Part Material', options = {"ForceField", "Neon", "Plastic"}, min = 1,max = 1}
		-- 
		S = VisualizeSilent:CreateSegment{Name = 'Visualize Part Chams'}
        S:Toggle{flag = 'Visualize Part Chams Enabled'}
        S:Colorpicker{flag = "Visualize Part Chams Color"}
		VisualizeSilent:Dropdown{Name = 'Material', flag = 'Visualize Part Chams Material', options = {"ForceField", "Neon", "Plastic"}, min = 1,max = 1}
	end 
	-- 
	local VisualizeDrawings = Silent_Aim_Tab:Sector{Side = 2}
	do 
		S = VisualizeDrawings:CreateSegment{Name = 'Cham Player'}
		S:Toggle{flag = 'Cham Player Enabled'}
        S:Colorpicker{flag = "Cham Player Color1"}
		S:Colorpicker{flag = "Cham Player Color2"}
		-- 
		S = VisualizeDrawings:CreateSegment{Name = 'Draw Tracer'}
        KHS = S:Toggle{flag = 'Draw Tracer Enabled', function()
			utility.Renders[6].Visible = false 
			utility.Renders[7].Visible = false
		end}
        S:Colorpicker{flag = "Draw Tracer Settings", callback = function()
			utility.Renders[6].Color = flags["Draw Tracer Settings"].Color
			utility.Renders[6].Transparency = 1 - flags["Draw Tracer Settings"].Alpha
		end}
		Sl = KHS:Settings()
		Sl:Toggle{flag = 'Tracer Outline', callback = function(Bool)
			utility.Renders[7].Visible = false
		end}
		VisualizeDrawings:Slider{Name = 'Thickness', flag = 'Draw Tracer Thickness', min = 0, max = 3, default = 1, float = 0.1, callback = function(Int)
			utility.Renders[6].Thickness = Int
			utility.Renders[7].Thickness = Int + 3
		end}
		-- 
		S = VisualizeDrawings:CreateSegment{Name = 'Draw Dot'}
        S:Toggle{flag = 'Draw Dot', callback = function(Bool)
			if not Bool then 
				utility.Renders[5].Visible = false
			end 
		end}
        S:Colorpicker{flag = "Draw Dot Settings", callback = function()
			utility.Renders[5].Transparency = 1 - flags["Draw Dot Settings"].Alpha
			utility.Renders[5].Color = flags["Draw Dot Settings"].Color
		end}		
		utility.Renders[5].Filled = true 
		utility.Renders[5].Radius = 10
	end
	-- 
	local On_Hit_Sector = On_Hit:Sector{Side = 1}  
	do 
		On_Hit_Sector:Title{Title = 'On-Hit', Description = "Visualizes on target hit"}
		-- 
		On_Hit_Sector:Toggle{Name = 'Enabled', flag = "On-Hit-Raycast"}
		-- 
		local Hit_Chams = On_Hit:Sector{Side = 1}  
		do 
			Hit_Chams:Title{Title = 'Hit-Chams', Description = "Visualizes a clone"}
			S = Hit_Chams:CreateSegment{Name = 'Enabled'}
			S:Toggle{flag = 'Hit Chams Enabled'}
			S:Colorpicker{flag = "Hit Chams Color"}
			Hit_Chams:Toggle{flag = 'Optimized Chams', Name = "Optimized"}
			Hit_Chams:Dropdown{Name = 'Material', flag = 'Hit Chams Material', options = {"ForceField", "Neon", "Plastic"}, default = {"ForceField"}, min = 1, max = 1}
			Hit_Chams:Slider{Name = 'Time', flag = 'Hit Chams Time', min = 0.1, max = 5, default = 1, float = 0.1}
		end 
		-- 
		local Hit_Chams = On_Hit:Sector{Side = 1}  
		do 
			Hit_Chams:Title{Title = 'Hit-Markers', Description = "Shows a crosshair when shot"}
			S = Hit_Chams:CreateSegment{Name = 'Enabled'}
			S:Toggle{flag = 'Hit Markers Enabled'}
			S:Colorpicker{flag = "Hit Markers Color"}
			Hit_Chams:Dropdown{Name = 'Type', flag = 'HitMarker Type', options = {"3D", "2D"}, min = 1, max = 1}
			Hit_Chams:Slider{Name = 'Time', flag = 'Hit Markers Time', min = 0.1, max = 5, default = 1, float = 0.1}
		end 
		-- 
		local Hit_Sounds = On_Hit:Sector{Side = 1}  
		do 
			Hit_Sounds:Title{Title = 'Hit Sounds', Description = "Plays a sound when hit"}
			Hit_Sounds:Toggle{Name = "Hit Sound", flag = 'Hit Sound'}
			Hit_Sounds:Dropdown{Name = 'Sound', flag = 'Hit Sound Effect', options = {"Bameware", "Skeet", "Bonk", "Lazer Beam", "Windows XP Error", "TF2 Hitsound", "TF2 Critical", "TF2 Bat", "Bow Hit", "Bow", "OSU", "Minecraft Hit", "Steve", "1nn", "Rust", "TF2 Pan", "Neverlose", "Mario"}, min = 1, max = 1}
			Hit_Sounds:Slider{Name = 'Volume', flag = 'Hit Sound Volume', min = 0.1, max = 10, default = 10, float = 0.1}
			Hit_Sounds:Slider{Name = 'Pitch', flag = 'Hit Sound Pitch', min = 0.1, max = 10, default = 1, float = 0.1}
		end 
		-- 
		local Hit_Effects = On_Hit:Sector{Side = 1}  
		do 
			S = Hit_Effects:CreateSegment{Name = 'Hit Effects'}
			S:Toggle{flag = 'Hit Effects'}
			S:Colorpicker{flag = "Hit Effects Color"}
			Hit_Effects:Dropdown{Name = 'Texture', flag = 'Hit Effect', options = {"Bubble", "Confetti"}, min = 1, max = 1}
		end 
	end 
end 
Window:Separator()
-- ESP
do
    local ESP = Window:Tab{Name = 'ESP', icon = "rbxassetid://6031251516"}
    -- 
    local ESP1 = ESP:Sector{Side = 1}  
    ESP1:Title{Title = 'ESP'} 
    do 
		ESP1:Toggle{Name = 'Enabled', flag = 'PlayerESP_Enabled'}
		S = ESP1:CreateSegment{Name = 'Name'}
        S:Toggle{flag = 'PlayerESP_Name'}
        S:Colorpicker{flag = "PlayerESP_Name_Color"}
		S = ESP1:CreateSegment{Name = 'Box'}
        THL = S:Toggle{flag = 'PlayerESP_Box'}
        S:Colorpicker{flag = "PlayerESP_Box_Color1", default = {Color = NewRGB(255, 255, 255), Alpha = 1}}
		S:Colorpicker{flag = "PlayerESP_Box_Color2", default = {Color = NewRGB(0, 0, 0), Alpha = 1}}
		Se = THL:Settings()
		Se:Toggle{Name = 'Corner Boxes', flag = 'PlayerESP_Box_Type'}
		S = ESP1:CreateSegment{Name = 'Healthbar'}
        THL = S:Toggle{flag = 'PlayerESP_HealthBar'}
		S:Colorpicker{flag = "PlayerESP_HealthBar_Color_High", default = {Color = Color3.fromRGB(0, 255, 0), Alpha = 1}}
		S:Colorpicker{flag = "PlayerESP_HealthBar_Color_Low", default = {Color = Color3.fromRGB(255, 0, 0), Alpha = 1}}
		Se = THL:Settings()
		Se:Toggle{Name = 'Apply Gradient', flag = 'PlayerESP_HealthBarGradient'}
		Se:Toggle{Name = 'Health Text', flag = 'PlayerESP_HealthNumber'}
		ESP1:Slider{Name = 'Thickness', flag = 'PlayerESP_HealthBar_Thickness', min = 2, max = 5, default = 2, float = 0.01}
		S = ESP1:CreateSegment{Name = 'Weapon'}
        S:Toggle{flag = 'PlayerESP_Weapon'}
        S:Colorpicker{flag = "PlayerESP_Weapon_Color"}
		S = ESP1:CreateSegment{Name = 'Flag'}
        S:Toggle{flag = 'PlayerESP_Flags'}
        S:Colorpicker{flag = "PlayerESP_FlagsColor"}
		ESP1:Dropdown{Name = 'Flags:', flag = 'PlayerESP_Flag_Options', options = {"Distance", "Money", "Knocked"}, min = 0}
    end 
    -- 
    local ESP_Settings = ESP:Sector{Side = 2}
    ESP_Settings:Title{Title = 'Out Of View'}
    do 
		S = ESP_Settings:CreateSegment{Name = 'Out of view'}
        S:Toggle{flag = 'PlayerESP_Arrows'}
        S:Colorpicker{flag = "PlayerESP_ArrowColor", alpha = 0.5}
		S:Colorpicker{flag = "PlayerESP_ArrowOutline"}
		ESP_Settings:Slider{Name = 'Arrow Size', flag = 'PlayerESP_ArrowSize', min = 0, max = 30, default = 12, float = 1}
		ESP_Settings:Slider{Name = 'Arrow Radius', flag = 'PlayerESP_ArrowRadius', min = 0, max = 100, default = 50, float = 1}
		-- 
		S = ESP_Settings:CreateSegment{Name = 'Box-Fill'}
        S:Toggle{flag = 'PlayerESP_BoxFill'}
        S:Colorpicker{flag = "PlayerESP_BoxFill_Color"}
		-- 
		ESP_Settings:Slider{Name = 'Render Distance', flag = 'ESP Distance', min = 0, max = 10000, default = 7500, float = 1}
    end 
	-- 
	local ESP_Chams = ESP:Sector{Side = 2}
	do 
		ESP_Chams:Title{Title = 'Chams'}
		-- 
		S = ESP_Chams:CreateSegment{Name = 'Enabled'}
        S:Toggle{flag = 'PlayerESP_Chams', callback = function(Bool)
			for Index, Player in pairs(Players:GetPlayers()) do
				if Player ~= LocalPlayer then
					if Bool then 
						Lynx:Cham_Character(Player, flags["Highlight_Fill_Color"].Color, flags["Highlight_Outline_Color"].Color, flags["Highlight_Fill_Color"].Alpha, flags["Highlight_Outline_Color"].Alpha) 
					else 
						Lynx:Cham_Remove(Player)
					end 	
				end
			end
		end}
        S:Colorpicker{flag = "Highlight_Fill_Color", default = {Color = Color3.fromRGB(0, 255, 0), Alpha = 0.5}, callback = function()
			for i,v in pairs(game.CoreGui.Folder:GetChildren()) do 
				v.FillColor = flags["Highlight_Fill_Color"].Color
				v.FillTransparency = flags["Highlight_Fill_Color"].Alpha
			end 
		end}
		S:Colorpicker{flag = "Highlight_Outline_Color", default = {Color = Color3.fromRGB(255, 255, 0), Alpha = 0}, callback = function()
			for i,v in pairs(game.CoreGui.Folder:GetChildren()) do 
				v.OutlineColor = flags["Highlight_Outline_Color"].Color
				v.OutlineTransparency = flags["Highlight_Outline_Color"].Alpha
			end 
		end}
	end 
end  
-- Visuals
do 
	local Visuals = Window:Tab{Name = 'Visuals', icon = "rbxassetid://6031075931"}
    -- 
	local GunShootSound = Visuals:Sector{Side = 1}
	do 
		GunShootSound:Title{Title = 'Custom Stomps'}
		GunShootSound:Toggle{Name = "Enabled", flag = "Custom Stomps"}
		GunShootSound:Dropdown{Name = 'Stomp', flag = 'Stomp Effect', options = {"Glitch","Explosion","Airstrike","Heart","UFO"}, min = 1, max = 1}
	end
	-- 
    local Crosshair = Visuals:Sector{Side = 2}
    Crosshair:Title{Title = 'Crosshair'} 
    do 
		S = Crosshair:CreateSegment{Name = 'Enabled'}
		THS = S:Toggle{flag = 'Cursor', callback = LPH_JIT(function(Bool) 
            if flags["Cursor"] then 
                InputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
                for i,v in next, utility.Cursor.Outlines do 
                    v.Visible = true
                end 
                -- 
                for i,v in next, utility.Cursor.Lines do 
                    v.Visible = true
                end  
            else 
                InputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow 
                for i,v in next, utility.Cursor.Outlines do 
                    v.Visible = false
                end 
                -- 
                for i,v in next, utility.Cursor.Lines do 
                    v.Visible = false
                end 
            end 
        end)}
		S:Colorpicker{flag = "Cursor Color", callback = LPH_JIT(function(Color)
			for i,v in next, utility.Cursor.Lines do 
				v.Color = flags["Cursor Color"].Color
			end 
			--
			utility.Cursor.Dots[1].Color = flags["Cursor Color"].Color
		end)}
		--
		S = THS:Settings()
		--
        S:Toggle{Name = "Dot", flag = 'Dot', callback = LPH_JIT(function(Bool)
			utility.Cursor.Dots[1].Visible = Bool 
			utility.Cursor.Dots[2].Visible = Bool 
		end)}
		--
		S = Crosshair:CreateSegment{Name = 'Dynamic'}
		--
		S:Toggle{flag = 'Dynamic Gap Enabled'}
		--
		S:Slider{Name = "Speed", flag = 'Dynamic Gap Speed', min = 0, max = 5, default = 1, float = 0.01}
		--
		S = Crosshair:CreateSegment{Name = 'Spin'}
		--
		S:Toggle{flag = 'Spin'}
		--
        S:Slider{flag = 'Spin Speed', min = 0, max = 360, default = 90, float = 1}
		--
		Crosshair:Slider{Name = "Radius", flag = 'Cursor Radius', min = 0, max = 50, default = 5, float = 0.1}
		--
		Crosshair:Slider{Name = "Gap", flag = 'Cursor Gap', min = 0, max = 50, default = 10, float = 0.1}
		--
		Crosshair:Slider{Name = "Thickness", flag = 'Cursor Thickness', min = 0, max = 3, default = 1.5, float = 0.01, callback = LPH_JIT(function(int)
			for i,v in next, utility.Cursor.Outlines do 
				v.Thickness = int + 2
			end 
			--
			for i,v in next, utility.Cursor.Lines do 
				v.Thickness = int
			end 
		end)}
    end 
	-- 
	local DaHoodCursor = Visuals:Sector{Side = 2}
	do 
		DaHoodCursor:Title{Title = 'Da Hood Cursor'}
		DaHoodCursor:Toggle{Name = "Spin", flag = "Da Hood Cursor Spin", callback = function()
			LocalPlayer.PlayerGui.MainScreenGui.Aim.Rotation = 0
		end}
		DaHoodCursor:Slider{Name = 'Speed', flag = 'Cursor Spin Speed for DH', min = 2, max = 10, default = 2, float = 0.01}
		DaHoodCursor:Colorpicker{Name = "Color", flag = "Cursor Color", callback = function()
			LocalPlayer.PlayerGui.MainScreenGui.Aim.BackgroundColor3 = flags["Cursor Color"].Color
			for i,v in next, LocalPlayer.PlayerGui.MainScreenGui.Aim:GetChildren() do 
				v.BackgroundColor3 = flags["Cursor Color"].Color
			end 
		end}
	end
end 
-- World
do 
	local World_Visuals = Window:Tab{Name = 'World', icon = "rbxassetid://6026568295"}
	-- 
	local World = World_Visuals:Sector{Side = 1}
	-- 
    World:Title{Title = 'World'}
    do 
		World:Toggle{Name = 'Enabled', flag = "World Visuals Enabled", callback = function(Bool)
			if not Bool then 
				for i, v in pairs(utility.LightingBackUp) do 
					Lighting[i] = v 
				end
			end 
		end}
		S = World:CreateSegment{Name = 'Ambient'}
        S:Toggle{flag = 'Ambient Enabled'}
        S:Colorpicker{flag = "Ambient1 Color"}
		S:Colorpicker{flag = "Ambient2 Color"}
		S = World:CreateSegment{Name = 'Color Shift'}
		S:Toggle{flag = 'Color Shift'}
        S:Colorpicker{flag = 'Color Shift1'}
		S:Colorpicker{flag = 'Color Shift2'}
		S = World:CreateSegment{Name = 'Fog'}
        S:Toggle{flag = 'Fog Enabled'}
        S:Colorpicker{flag = "Fog Color"}
		World:Slider{Name = 'Fog Start', flag = 'Fog Start', min = 0, max = 10000, default = 7500, float = 1}
		World:Slider{Name = 'Fog End', flag = 'Fog Start', min = 0, max = 10000, default = 7500, float = 1}
		S = World:CreateSegment{Name = 'Time'}
        S:Toggle{flag = 'Time Enabled'}
		S:Slider{flag = 'Time', min = 1, max = 24, default = 12, float = 1}
		World:Toggle{Name = 'Custom Skybox', flag = "Custom Skybox"}
		World:Dropdown{Name = 'Skybox:', flag = 'Skybox', options = {"Normal", "DoomSpire", "CatGirl", "Vibe", "Blue Aurora","Purple Clouds","Purple Nebula","Purple and Blue","Vivid Skies","Twighlight"}, min = 1, max = 1, callback = function()
			local Sky = Lighting:FindFirstChildWhichIsA("Sky")
			if flags["Custom Skybox"] then 
				Sky.SkyboxLf = "rbxassetid:// "..utility.SkyBoxes[flags["Skybox"]][1]..""
				Sky.SkyboxBk = "rbxassetid:// "..utility.SkyBoxes[flags["Skybox"]][2]..""
				Sky.SkyboxDn = "rbxassetid:// "..utility.SkyBoxes[flags["Skybox"]][3]..""
				Sky.SkyboxFt = "rbxassetid:// "..utility.SkyBoxes[flags["Skybox"]][4]..""
				Sky.SkyboxRt = "rbxassetid:// "..utility.SkyBoxes[flags["Skybox"]][5]..""
				Sky.SkyboxUp = "rbxassetid:// "..utility.SkyBoxes[flags["Skybox"]][6]..""
			else 
				Sky.SkyboxLf = "rbxassetid://600886090"
				Sky.SkyboxBk = "rbxassetid://600830446"
				Sky.SkyboxDn = "rbxassetid://600831635"
				Sky.SkyboxFt = "rbxassetid://600832720"
				Sky.SkyboxRt = "rbxassetid://600833862"
				Sky.SkyboxUp = "rbxassetid://600835177"			
			end 
		end}
    end
	-- 
	local Effects = World_Visuals:Sector{Side = 1}
    Effects:Title{Title = 'World Effects'} 
    do 
		Effects:Toggle{Name = "Enabled", flag = 'Color Correction', callback = function(Bool)
			ColorCorrectionEffect.Enabled = Bool
		end}
		--
		Effects:Colorpicker{Name = "Tint", flag = "Tint Color", callback = function()
			ColorCorrectionEffect.TintColor = flags["Tint Color"].Color
		end}
		-- 
		Effects:Slider{Name = "Saturation", flag = 'Saturation', min = 0, max = 2, default = 0, float = 0.01, callback = function(s)
			ColorCorrectionEffect.Saturation = s
		end}
		-- 
		Effects:Slider{Name = "Contrast", flag = 'Contrast', min = 0, max = 5, default = 0, float = 0.01, callback = function(s)
			ColorCorrectionEffect.Contrast = s
		end}
		-- 
		Effects:Slider{Name = "Brightness", flag = 'Brightness', min = 0, max = 1, default = 0, float = 0.01, callback = function(s)
			ColorCorrectionEffect.Brightness = s
		end}
		-- 
    end
	-- 
	local Local = World_Visuals:Sector{Side = 2}
    Local:Title{Title = 'Local'}
    do 	
		S = Local:CreateSegment{Name = 'Bullet Tracers'}
    	KHL = S:Toggle{flag = 'Bullet Tracers Enabled'}
		S:Colorpicker{flag = "Bullet Tracers Color1"}
		S:Colorpicker{flag = "Bullet Tracers Color2"}
		Sl = KHL:Settings()
        Sl:Toggle{Name = "Rainbow", flag = 'Rainbow Bullet Tracers'}
		Local:Dropdown{Name = 'Texture:', flag = 'Bullet Tracers Texture', options = {"1", "2", "3", "4", "5", "6", "7", "8", "9"}, min = 1, max = 1}
		Local:Dropdown{Name = 'Type:', flag = 'Bullet Tracers Mode', options = {"Local", "Global"}, min = 1, max = 1}
		S = Local:CreateSegment{Name = 'Impact Points'}
    	KHL = S:Toggle{flag = 'Impact Points Enabled'}
		S:Colorpicker{flag = "Impact Points Color"}
		Local:Dropdown{Name = 'Material:', flag = 'Impact Points Material', options = {"ForceField", "Neon", "Plastic"}, min = 1, max = 1}
    end 	
end 
Window:Separator()
-- Character
do 
    local Character = Window:Tab{Name = 'Character', icon = "rbxassetid://6031215978"}	
	-- 
	local Movement = Character:Sector{Side = 1}
    do 
		Movement:Title{Title = 'Movement', Description = "Movement Stuffs >w<"}
		-- 
		local Speed = Movement:CreateSegment{Name = 'Speed'}
		Speed:Toggle{flag = 'Speed Enabled'}
		Movement:Slider{Name = "Speed", flag = 'Speed Amount', min = 1, max = 100, default = 1, editable = true}
		Movement:Slider{Name = "Float Height", flag = 'Float Height', min = 1, max = 100, default = 1, editable = true}
		S = Speed:Settings()
		S:Keybind{flag = "Speed Key", name = 'Key', type = 1}
		S:Toggle{Name = "Auto Jump", flag = 'Auto Jump'}
		S:Toggle{Name = "Float", flag = 'Float'}
		-- 
		local BHOP = Movement:CreateSegment{Name = "B-Hop"}
		BHOP:Toggle{flag = 'Bunny Hop'}
		Movement:Slider{Name = "Speed", flag = 'Bunny Hop Amount', min = 1, max = 10, default = 1, editable = true}
		S = BHOP:Settings()
		S:Keybind{Flag = "Bhop Key", name = 'Key', type = 1}
		-- 
		local Fly = Movement:CreateSegment{Name = 'Fly'}
		Fly:Toggle{flag = 'Fly Enabled', callback = function() 
			LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end}
		Movement:Slider{Name = "Fly Speed", flag = 'Fly Amount', min = 1, max = 200, default = 1, editable = true}
		S = Fly:Settings()
		S:Keybind{Flag = "Fly Key", name = 'Key', type = 1, callback = function()
			LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end}
    end 
	-- 
	local Character_Customization = Character:Sector{Side = 2}
	do 
		S = Character_Customization:CreateSegment{Name = 'Character Material'}
		KHL = S:Toggle{flag = 'Forcefield Character Enabled', callback = function()
			for i, v in pairs(LocalPlayer.Character:GetChildren()) do 
				if v:IsA("BasePart") then 
					v.Material = Enum.Material.Plastic
				end 
			end 
		end}
		S:Colorpicker{flag = "Forcefield Character Color"}
		Se = KHL:Settings()
		Se:Toggle{Name = "Rainbow", flag = "Rainbow Character"}
		S = Character_Customization:CreateSegment{Name = 'Gun Material'}
		KHL = S:Toggle{flag = 'Gun Material Enabled'}
		S:Colorpicker{flag = "Gun Material Color"}
		Sl = KHL:Settings()
		Sl:Toggle{Name = "Rainbow", flag = 'Rainbow Gun'}
		Sl:Toggle{Name = "Sine", flag = 'Sine Gun'}
		Character_Customization:Dropdown{Name = 'Material:', flag = 'Gun Material', options = {"ForceField", "Neon", "Plastic"}, min = 1, max = 1}
	end 
	-- 
	local Custom_Characters = Character:Sector{Side = 2}
	do 
		Custom_Characters:Title{Title = 'Custom Character'}
		Custom_Characters:Toggle{Name = "Enabled", flag = "Custom Character", callback = function()
			local function Weld(x,y)
				local W = Instance.new("Weld")
				W.Part0 = x
				W.Part1 = y
				local CJ = CFrame.new(x.Position)
				local C0 = x.CFrame:inverse()*CJ
				local C1 = y.CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = x
			end

			if flags["Custom Character"] then 
				for i,v in pairs(LocalPlayer.Character:GetDescendants()) do 
					if v:IsA("BasePart") or v:IsA("Decal") then 
						v.Transparency = 1 
					end 
				end 
				-- 
				Lynx["Connections"]["Custom Character"] = LocalPlayer.CharacterAdded:Connect(function()
					if Part then 
						Part:Destroy()
					end 
					-- 
					delay(5, function()
						Part = Instance.new("Part", Workspace) 
						Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
						Part.CanCollide = false
						--
						Character = Instance.new("SpecialMesh")
						Character.Parent = Part
						Character.MeshType = "FileMesh"
						--
						Character.Scale = utility.Characters[flags["CharacterFunny1"]][1]
						Character.TextureId= "http://www.roblox.com/asset/?id="..  utility.Characters[flags["CharacterFunny1"]][2]  .. "" 
						Character.MeshId="http://www.roblox.com/asset/?id="..  utility.Characters[flags["CharacterFunny1"]][3] ..""
						-- 
						Weld(LocalPlayer.Character.HumanoidRootPart, Part)
						-- 
						for i,v in pairs(LocalPlayer.Character:GetDescendants()) do 
							if v:IsA("BasePart") or v:IsA("Decal") then 
								v.Transparency = 1
							end 
						end 
					end)
				end)
				
				Part = Instance.new("Part", Workspace) 
				Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
				Part.CanCollide = false
				--
				Character = Instance.new("SpecialMesh")
				Character.Parent = Part
				Character.MeshType = "FileMesh"
				--
				Character.Scale = utility.Characters[flags["CharacterFunny1"]][1]
				Character.TextureId= "http://www.roblox.com/asset/?id="..  utility.Characters[flags["CharacterFunny1"]][2]  .. "" 
				Character.MeshId="http://www.roblox.com/asset/?id="..  utility.Characters[flags["CharacterFunny1"]][3] ..""
				-- 
				Weld(LocalPlayer.Character.HumanoidRootPart, Part)
			else 
				if Part then 
					Part:Destroy()
				end 
				-- 
				for i,v in pairs(LocalPlayer.Character:GetDescendants()) do 
                    if v:IsA("BasePart") or v:IsA("Decal") and v.Name ~= "CUFF" then 
                        v.Transparency = 0
                    end 
                    -- 
                    if v.Name == "CUFF" then 
                        v:Destroy()
                    end 
					-- 
					if v.Name == "LeftLowerArmFake" or v.Name == "HumanoidRootPart" or v.Name == "RightLowerArmFake" or v.Name == "LeftLowerLegFake" or v.Name == "RightLowerLegFake" then 
						v.Transparency = 1
					end 	
                end 
				-- 
				if Lynx["Connections"]["Custom Character"] then 
					Lynx["Connections"]["Custom Character"]:Disconnect()
				end 
				-- 
				if Lynx:GetTool() then 
					Lynx:GetTool().Handle.Transparency = 0 
				end 
			end 
		end}
		Custom_Characters:Dropdown{Name = 'Character', flag = 'CharacterFunny1', options = {"AmongUs", "SpongeBob", "Patrick", "Maxell", "Brian", "CapyBara", "Chicken", "Sonic"}, min = 1, max = 1, callback = function()
			if flags["Custom Character"] then 
				Character.Scale = utility.Characters[flags["CharacterFunny1"]][1]
				Character.TextureId = "http://www.roblox.com/asset/?id="..  utility.Characters[flags["CharacterFunny1"]][2]  .. "" 
				Character.MeshId ="http://www.roblox.com/asset/?id="..  utility.Characters[flags["CharacterFunny1"]][3] ..""
			end 
		end}
	end
	-- 
	local GripPosition = Character:Sector{Side = 2}
	do
		GripPosition:Title{Title = 'Grip Position', Description = "Changes Tool Position"}
		-- 
		GripPosition:Toggle{Name = "Enabled", flag = 'Grip Position'}
		--
		GripPosition:Slider{Name = 'X', flag = 'XX', min = -10, max = 10, default = 1, float = 0.01}
		GripPosition:Slider{Name = 'Y', flag = 'YY', min = -10, max = 10, default = 1, float = 0.01}
		GripPosition:Slider{Name = 'Z', flag = 'ZZ', min = -10, max = 10, default = 1, float = 0.01}
	end
end 
-- Anti-Aim
do 
    local Anti = Window:Tab{Name = 'Anti-Aim', icon = "rbxassetid://6034754445"}
    -- 
    local CFrame_Desync = Anti:Sector{Side = 1}
    do 
		CFrame_Desync:Title{Title = 'CFrame Desync', Description = "Serverside Position Changer"}
		-- 
		local THS = CFrame_Desync:Toggle{Name = "Enabled", flag = 'CFrame Desync', callback = function()
			if utility.Desyncs.OldCFrame then 
				LocalPlayer.Character.HumanoidRootPart.CFrame = utility.Desyncs.OldCFrame
			end 
		end}
		-- 
		S = THS:Settings()
		-- 
		S:Keybind{flag = "CFrame Desync Key", name = 'Key', type = 1, callback = LPH_JIT(function(Bool)
			if flags["CFrame Desync"] then 
				if not flags["CFrame Desync Key"].Active then 
					VisualizeCFrame:SetPrimaryPartCFrame(NewCFrame(999,999,999))
				end 
			end 
			-- 
			if utility.Desyncs.OldCFrame then 
				LocalPlayer.Character.HumanoidRootPart.CFrame = utility.Desyncs.OldCFrame
			end 
		end)}
		-- 
		CFrame_Desync:Dropdown{Name = 'Type', flag = 'CFrame Desync Preset', options = {"Nothing", "Upside Down", "Floor Plant", "Random", "Void"}, min = 1, max = 1}
		-- 
		CFrame_Desync:Slider{Name = "Random Range", flag = 'Random Teleport Range', min = 0, max = 30, default = 12, float = 1}
    end 
	-- 
	local CFrame_Desync1 = Anti:Sector{Side = 1}
	do  	
		CFrame_Desync1:Title{Title = 'Visualize', Description = "Visualizes Serverside Position"}
		-- 
		S = CFrame_Desync1:CreateSegment{Name = 'Enabled'}
		--
		S:Toggle{flag = "Visualize CFrame Desync", callback = function()
			VisualizeCFrame:SetPrimaryPartCFrame(CFrame.new(999,999,999))
		end}
		--
		S:Colorpicker{flag = "CFrame Visualizer Color", callback = function()
			for _, Part in next, VisualizeCFrame:GetChildren() do 
				if Part.Name ~= "HumanoidRootPart" then 
					Part.Color = flags["CFrame Visualizer Color"].Color
					Part.Transparency = flags["CFrame Visualizer Color"].Alpha
				end 
			end 
		end}
	end
	-- 
	local CFrame_Desync2 = Anti:Sector{Side = 1}
	do  	
		CFrame_Desync2:Title{Title = 'Custom Offset', Description = "Customize Your Position: XYZ"}
		-- 
		CFrame_Desync2:Slider{Name = "X", flag = 'XXX', min = -50, max = 50, default = 0, float = 0.5}
		-- 
		CFrame_Desync2:Slider{Name = "Y", flag = 'YYY', min = -50, max = 50, default = 0, float = 0.5}
		-- 
		CFrame_Desync2:Slider{Name = "Z", flag = 'ZZZ', min = -50, max = 50, default = 0, float = 0.5}
	end
	-- 
	local CFrame_Desync3 = Anti:Sector{Side = 1}
	do  	
		CFrame_Desync3:Title{Title = 'Custom Rotation', Description = "Customize Your Rotation: XYZ"}
		-- 
		CFrame_Desync3:Slider{Name = "X", flag = 'X Rotation', min = -180, max = 180, default = 0, float = 1}
		-- 
		CFrame_Desync3:Slider{Name = "Y", flag = 'Y Rotation', min = -180, max = 180, default = 0, float = 1}
		-- 
		CFrame_Desync3:Slider{Name = "Z", flag = 'Z Rotation', min = -180, max = 180, default = 0, float = 1}
		-- 
		CFrame_Desync3:Button{Name = 'Reset', callback = LPH_JIT(function()
			Window._FlagsSet["XXX"](0)
			Window._FlagsSet["YYY"](0)
			Window._FlagsSet["ZZZ"](0)
			Window._FlagsSet["X Rotation"](0)
			Window._FlagsSet["Y Rotation"](0)
			Window._FlagsSet["Z Rotation"](0)
		end)}
	end
    -- 
    local Velocity_Desync = Anti:Sector{Side = 2}
    do 
		Velocity_Desync:Title{Title = 'Anti-Lock', Description = "Messes up lockers prediction."}
		-- 
		local KHL = Velocity_Desync:Toggle{Name = "Enabled", flag = 'Velocity Desync'}
		-- 
		S = KHL:Settings()
		-- 
		S:Keybind{flag = "Velocity Desync Key", name = 'Key', type = 1, callback = LPH_JIT(function(Bool)
			if flags["Velocity Desync Notify"] then 
				ui:Notify{text = "Desync:".. tostring(flags["Velocity Desync Key"].Active).."", time = 5, style = "loading"}
			end 
		end)}
		-- 
		S:Toggle{Name = "Notify", flag = 'Velocity Desync Notify'}
		-- 
		Velocity_Desync:Dropdown{Name = 'Type', flag = 'Velocity Desync Preset', options = {"None", "HvH", "AntiBot", "Horizontal", "Sky", "Ground", "Desync"}, min = 1, max = 1}
	end 
end 
-- Misc
do 
	local Misc = Window:Tab{Name = 'Misc', icon = "rbxassetid://6031104650"}
	-- 
	local TargetStrafeSector = Misc:Sector{Side = 1}
	-- 
	do 
		TargetStrafeSector:Title{Title = 'Target Strafe', Description = "Strafes your target"}
		-- 
		TargetStrafeSector:Toggle{Name = "Enabled", flag = "Target Strafe"}
		-- 
		S = TargetStrafeSector:CreateSegment{Name = 'Visualize'}
		--
    	KHL = S:Toggle{flag = 'Visualize Strafe'}
		--
		S:Colorpicker{flag = "Visualize Strafe Color"}
		--
		TargetStrafeSector:Slider{Name = "Speed", flag = 'Target Strafe Speed', min = 0, max = 20, default = 5, float = 0.5}
		-- 
		TargetStrafeSector:Slider{Name = "Height", flag = 'Target Strafe Height', min = 0, max = 10, default = 0, float = 0.5}
		-- 
		TargetStrafeSector:Slider{Name = "Radius", flag = 'Target Strafe Radius', min = 0, max = 10, default = 5, float = 0.5}
	end 
	-- 
	local Teleports = Misc:Sector{Side = 2}
	do 
		Teleports:Title{Title = 'Buys', Description = "Auto-Buy Items"}
		-- 		
		Teleports:Toggle{Name = "Buy Ammo", flag = 'Buy Ammo'}
		-- 
		Teleports:Slider{Name = 'Amount', flag = 'Buy Ammo Amount', min = 1, max = 20, default = 5, float = 1}
		-- 
		Teleports:Button{Name = 'Buy', callback = LPH_JIT(function()
			local Old_Position = LocalPlayer.Character.HumanoidRootPart.CFrame
			-- 	
			LocalPlayer.Character.HumanoidRootPart.CFrame = utility["Auto Buy"]["Guns"][flags["Gun Name"]][1].Head.CFrame
			-- 
			Wait(0.3)
			-- 
			for i = 1, 20 do 
				Wait()
				fireclickdetector(utility["Auto Buy"]["Guns"][flags["Gun Name"]][1].ClickDetector)
			end 
			-- 
			Wait(0.3)
			-- 	
			LocalPlayer.Character.HumanoidRootPart.CFrame = Old_Position
			-- 
			if flags["Buy Ammo"] then 
				for i = 1, flags["Buy Ammo Amount"] do 
					Wait(0.175)
					local Old_Ammo_Position = LocalPlayer.Character.HumanoidRootPart.CFrame
					LocalPlayer.Character.HumanoidRootPart.CFrame = utility["Auto Buy"]["Guns"][flags["Gun Name"]][2].Head.CFrame
					Wait(0.175)
					-- 
					for i = 1, 10 do 
						Wait() 
						fireclickdetector(utility["Auto Buy"]["Guns"][flags["Gun Name"]][2].ClickDetector)
					end 
					-- 
					Wait(0.175)
					LocalPlayer.Character.HumanoidRootPart.CFrame = Old_Ammo_Position
					Wait(0.175)
				end 
			end 
		end)}	
		-- 
		Teleports:Toggle{Name = "Auto Buy Armor", flag = 'Auto Buy Armor'}
	end 
end 
Window:Separator()
-- Lua
do 
    local Settings = Window:Tab{Name = 'Settings', icon = "rbxassetid://6035067857"}
    -- 
    local Configs_Sector = Settings:Sector{Side = 1}
    Configs_Sector:Title{Title = 'Configuration', Description = "Save configurations."}
    do 
		Configs_Sector:Input({Name = "Name:", Flag = "Config Name", Focuses = true, Editable = true})
		--
		Configs_Sector:Button{Name = 'Save', callback = LPH_JIT(function()
			local config_name = flags["Config Name"]
            if config_name == "" then
                ui:Notify{text = 'Enter a config name!', time = 5, style = "loading"}
            end
            writefile("Lynx/Configs/" .. config_name .. ".cfg", Window:SaveConfig())
			ui:Notify{text = "Saved your config to: " .. config_name, time = 5, style = "loading"}
		end)}
		Configs_Sector:Button{Name = 'Load', callback = LPH_JIT(function()
			local config_name = flags["Config Name"]
			Window:LoadConfig(readfile("Lynx/Configs/" .. config_name .. ".cfg"))
			ui:Notify{text = "" .. config_name .. " has succesfully loaded!.", time = 5, style = "loading"}
		end)}
		Configs_Sector:Button{Name = 'Delete', callback = LPH_JIT(function()
			local selected_config = flags["Config Name"]
            if selected_config then
                delfile("Lynx/Configs/" .. selected_config .. ".cfg")
				ui:Notify{text = "" .. selected_config .. " has been deleted.", time = 5, style = "loading"}
			else 
				ui:Notify{text = "" .. selected_config .. " doesnt exist..", time = 5, style = "loading"}
            end
		end)}
    end Configs_Sector:Button{Name = 'Load', callback = LPH_JIT(function()
			local config_name = flags["Config Name"]
			Window:LoadConfig(readfile("Lynx/Configs/" .. config_name .. ".cfg"))
			ui:Notify{text = "" .. config_name .. " has succesfully loaded!.", time = 5, style = "loading"}
		end)}
    -- 
    local Settings_Sector = Settings:Sector{Side = 2}
    Settings_Sector:Title{Title = 'Settings'}
    do 
		Settings_Sector:Button{Name = 'Unload Cheat', callback = Lynx.Unload}
		-- 
		Settings_Sector:Keybind{Flag = "UI Bind", name = 'Key',key = Enum.KeyCode.Insert, type = 2, callback = LPH_JIT(function() ui:Toggle() end)}
		ui:Toggle()
		--
		Settings_Sector:Slider{Name = 'Rainbow Speed', flag = 'Rainbow Speed', min = 0.1, max = 5, default = 2, float = 0.1}
		-- 
		S = Settings_Sector:CreateSegment{Name = 'Keybind List'}
		-- 
		S:Toggle{Name = "Enabled", flag = "Keybind List", callback = function(Bool)
			Visuals.KeyBindList.SetVisibleList(Bool)
		end}
		-- 
		S:Colorpicker{flag = "Keybind List Color", callback = function()
			Visuals["KeyBindList"]["Drawings"]["Accent"].Color = flags["Keybind List Color"].Color
		end}
		-- 
		S = Settings_Sector:CreateSegment{Name = 'Watermark'}
		-- 
		S:Toggle{Name = "Enabled", flag = "Keybind List", callback = function(Bool)
			if Watermark ~= nil then 
				WatermarkLUA:SetVisible(Bool)
			end 
		end}
		-- 
		S:Colorpicker{flag = "Watermark Color", callback = function()
			WatermarkLUA["Drawings"].Accent.Color = flags["Watermark Color"].Color
		end}
	end 
end 
-- Scripts
do
    local Scripts = Window:Tab{Name = 'Scripts', icon = "rbxassetid://11419714821"}
    -- 
	local Settings_Sector = Scripts:Sector{Side = 1}
    Settings_Sector:Title{Title = 'Settings'}
    do 
		Settings_Sector:Dropdown{Name = 'LUAs', flag = 'LUAs', options = {"ChinaHat", "BetterGame", "Minecraft"}, min = 1, max = 1}
		-- 
		Settings_Sector:Button{Name = 'Load', callback = function()
			loadfile("Lynx/Luas/".. flags["LUAs"]..".lua")()
		end}
    end 
	-- 
	--[[local Map_Sector = Scripts:Sector{Side = 2}
	-- 
	Map_Sector:Dropdown{Name = 'Maps', flag = 'Map', options = {"MM2 MAP","Parkour","Office","Anarchy"}, min = 1, max = 1}
	-- 
	Map_Sector:Button{Name = 'Load', callback = function()
		LocalPlayer.Character.HumanoidRootPart.CFrame = utility["Maps"][flags["Map"]]--[[[2]]
	--end}
	--
end 
-- Looped Functions
do 
	--LOOPED FUNCTIONS
	function Lynx:Cursor(Frame)
		if flags["Cursor"] and flags["Spin"] then 
			local MousePosition = NewVector2(Mouse.X, Mouse.Y + 36)
			-- 
			local SpinSize = flags["Dynamic Gap Enabled"] and (Abs(Sin(tick() * flags["Dynamic Gap Speed"])) * flags["Cursor Gap"] / 4) + (flags['dot'] and 5 or 1) or flags["Cursor Gap"] / 4
			local SpinSpeed = flags["Spin Speed"] / 5
			local Radius = flags["Cursor Radius"] / 4 * 5
			-- 
			SpinAngle = SpinAngle + Rad((SpinSpeed * 10) * Frame);
			-- 
			if flags['Dot'] then 
				utility.Cursor.Dots[1].Position = NewVector2(Mouse.X - 1, Mouse.Y + 36 - 1)
				utility.Cursor.Dots[2].Position = NewVector2(Mouse.X - 2, Mouse.Y + 36 - 2)
				utility.Cursor.Dots[2].Color = NewRGB(0,0,0)
			end 
			--
			do -- // Inlines
				utility.Cursor.Lines[1].From = (MousePosition + (NewVector2(Cos(SpinAngle), Sin(SpinAngle))* (SpinSize + 1)))
				utility.Cursor.Lines[1].To = (utility.Cursor.Lines[1].From + (NewVector2(Cos(SpinAngle), Sin(SpinAngle)) * (Radius * 5)))
				--
				utility.Cursor.Lines[2].From = (MousePosition + (NewVector2(Cos(SpinAngle + Pi), Sin(SpinAngle + Pi))* (SpinSize + 1)))
				utility.Cursor.Lines[2].To = (utility.Cursor.Lines[2].From + (NewVector2(Cos(SpinAngle + Pi), Sin(SpinAngle + Pi)) * (Radius * 5)))
				--
				utility.Cursor.Lines[3].From = (MousePosition + (NewVector2(Cos(SpinAngle + Halfpi), Sin(SpinAngle + Halfpi))* (SpinSize + 1)))
				utility.Cursor.Lines[3].To = (utility.Cursor.Lines[3].From + (NewVector2(Cos(SpinAngle + Halfpi), Sin(SpinAngle + Halfpi)) * (Radius * 5)))
				--
				utility.Cursor.Lines[4].From = (MousePosition + (NewVector2(Cos(SpinAngle + Halfpi * 3), Sin(SpinAngle + Halfpi * 3)) * (SpinSize + 1)))
				utility.Cursor.Lines[4].To = (utility.Cursor.Lines[4].From + (NewVector2(Cos(SpinAngle + Halfpi * 3), Sin(SpinAngle + Halfpi * 3)) * (Radius * 5)))
			end
			--
			do -- // Outlines 
				utility.Cursor.Outlines[1].From = (MousePosition + (NewVector2(Cos(SpinAngle), Sin(SpinAngle)) * (SpinSize + 1)))
				utility.Cursor.Outlines[1].To = (utility.Cursor.Outlines[1].From + (NewVector2(Cos(SpinAngle), Sin(SpinAngle)) * ((Radius * 5) + 0.05)))
				--
				utility.Cursor.Outlines[2].From = (MousePosition + (NewVector2(Cos(SpinAngle + Pi), Sin(SpinAngle + Pi))* (SpinSize + 1)))
				utility.Cursor.Outlines[2].To = (utility.Cursor.Outlines[2].From + (NewVector2(Cos(SpinAngle + Pi), Sin(SpinAngle + Pi)) * ((Radius * 5) + 0.05)))
				--
				utility.Cursor.Outlines[3].From = (MousePosition + (NewVector2(Cos(SpinAngle + Halfpi), Sin(SpinAngle + Halfpi))* (SpinSize + 1)))
				utility.Cursor.Outlines[3].To = (utility.Cursor.Outlines[3].From + (NewVector2(Cos(SpinAngle + Halfpi), Sin(SpinAngle + Halfpi)) * ((Radius * 5) + 0.05)))
				--
				utility.Cursor.Outlines[4].From = (MousePosition + (NewVector2(Cos(SpinAngle + Halfpi * 3), Sin(SpinAngle + Halfpi * 3)) * (SpinSize + 1)))
				utility.Cursor.Outlines[4].To = (utility.Cursor.Outlines[4].From + (NewVector2(Cos(SpinAngle + Halfpi * 3), Sin(SpinAngle + Halfpi * 3)) * ((Radius * 5) + 0.05)))
			end
		end     
	end
	--
	function Lynx:CharacterMaterial()
		if flags["Forcefield Character Enabled"] then 
			for i, v in pairs(LocalPlayer.Character:GetChildren()) do 
				if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then 
					v.Material = Enum.Material.ForceField
					v.Transparency = flags["Forcefield Character Color"].Transparency
					if flags["Rainbow Character"] then 
						v.Color = Lynx:Rainbow(flags["Rainbow Speed"])
					else 
						v.Color = flags["Forcefield Character Color"].Color
					end 
				end 
			end 
		end 
	end 
	-- 
	function Lynx:GunMaterial()
		if flags["Gun Material Enabled"] then 
			local Tool = Lynx:GetTool()
			if Tool ~= nil then 
				for i, v in pairs(Tool:GetChildren()) do 
					if v:IsA("MeshPart") then 
						v.TextureID = ""
						v.Material = Enum.Material[flags["Gun Material"]]
						v.Color = flags["Rainbow Gun"] and Lynx:Rainbow(flags["Rainbow Speed"]) or flags["Gun Material Color"].Color
						v.Transparency = flags["Sine Gun"] and utility.Sine + 0.4 or flags["Gun Material Color"].Transparency
					end 
				end 
			end 
		end 
	end 
	-- 
	function Lynx:Speed()
		if flags["Speed Enabled"] and flags["Speed Key"].Active then 
			local Char, Humanoid, RootPart = Lynx:ValidateClient(LocalPlayer)
			if Char and Humanoid and RootPart then  
				RootPart.CFrame = RootPart.CFrame + (Humanoid.MoveDirection * flags["Speed Amount"] * 0.03) 
				-- 
				if flags["Auto Jump"] and Humanoid.FloorMaterial ~= Enum.Material.Air and not flags["Float"] then     
					Humanoid:ChangeState("Jumping")
					Humanoid.UseJumpPower = false  
				end 	
				-- 
				if flags["Float"] then 
					local X, Y, Z = RootPart.CFrame:ToEulerAnglesYXZ()
					RootPart.CFrame = NewCFrame(RootPart.CFrame.X, flags["Float Height"], RootPart.CFrame.Z) * NewAngle(X, Y, Z)
					Humanoid:ChangeState("Freefall")
				end 
			end 
		end 
	end 
	-- 
	function Lynx:Bhop()
		if flags["Bunny Hop"] and flags["Bhop Key"].Active then 
			local Char, Humanoid, RootPart = Lynx:ValidateClient(LocalPlayer)
			if Char and Humanoid and RootPart then 
				if Humanoid.FloorMaterial == Enum.Material.Air then 
					RootPart.CFrame = RootPart.CFrame + (Humanoid.MoveDirection * flags["Bunny Hop Amount"] * 0.03) 	
					Humanoid.UseJumpPower = false  
				end 
			end 
		end 
	end 
	-- 
	function Lynx:Fly() 
		if flags["Fly Enabled"] and flags["Fly Key"].Active then 
			local Char, Humanoid, RootPart = Lynx:ValidateClient(LocalPlayer)
			if Char and Humanoid and RootPart then 
				local FlyPosition = Vector3.new(0, 0, 0)
				local CCV = Camera.CFrame.lookVector
				-- 
				if InputService:IsKeyDown(Enum.KeyCode.W) then
					FlyPosition = FlyPosition + CCV
				end
				-- 
				if InputService:IsKeyDown(Enum.KeyCode.S) then
					FlyPosition = FlyPosition - CCV
				end
				-- 
				if InputService:IsKeyDown(Enum.KeyCode.D) then
					FlyPosition = FlyPosition + Vector3.new(-CCV.Z, 0, CCV.X)
				end
				-- 
				if InputService:IsKeyDown(Enum.KeyCode.A) then
					FlyPosition = FlyPosition + Vector3.new(CCV.Z, 0, -CCV.x)
				end
				-- 
				if InputService:IsKeyDown(Enum.KeyCode.Space) then
					FlyPosition = FlyPosition + Vector3.new(0, 1, 0)
				end
				-- 
				if InputService:IsKeyDown(Enum.KeyCode.LeftShift) then
					FlyPosition = FlyPosition - Vector3.new(0, 1, 0)
				end
				-- 
				if FlyPosition.Unit.y == FlyPosition.Unit.y then
					LocalPlayer.Character.HumanoidRootPart.Anchored = false 
					LocalPlayer.Character.HumanoidRootPart.Velocity = FlyPosition.Unit * flags["Fly Amount"]
				else 
					LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
					LocalPlayer.Character.HumanoidRootPart.Anchored = true
				end 
			end 
		end 
	end 
	-- 
	function Lynx:GripPosition()
		if flags["Grip Position"] and Lynx:GetTool() ~= nil and Lynx:GetTool().GripPos ~= Vector3.new(flags["XX"],flags["YY"],flags["ZZ"]) then 
			local tool = Lynx:GetTool()
			if tool ~= nil then 
				tool.Parent = LocalPlayer.Backpack
				tool.GripPos = Vector3.new(flags["XX"],flags["YY"],flags["ZZ"])
				tool.Parent = LocalPlayer.Character
			end 
		end 
	end  
	-- 
	function Lynx:RotateCursor() 
		if flags["Da Hood Cursor Spin"] then 
			LocalPlayer.PlayerGui.MainScreenGui.Aim.Rotation = LocalPlayer.PlayerGui.MainScreenGui.Aim.Rotation + flags["Cursor Spin Speed for DH"]
		end 
	end 
	-- 
	function Lynx:SilentAim()
		if flags["Silent Aim Enabled"] and flags["Silent Aim Key"].Active then 
			Lynx.Silent.Check = true 
			-- 
			if flags["Silent Aim Type"] ~= "Target Aim" and flags["RageBot"] == false then 
				Lynx.Silent.Target = Lynx:GetClosestPlayer()
			elseif (flags["RageBot"] == true) then 
				Lynx.Silent.Target = Lynx:findNearestTargetInRadius(LocalPlayer.Character.HumanoidRootPart.Position, math.huge)
			end 
			-- 
			if Lynx.Silent.Target and Lynx.Silent.Target.Character and Lynx:GetPlayerStatus() then 
				if (Find(flags["Silent_Aim_Checks"], "Wall") and not Lynx:RayCast(Lynx.Silent.Target.Character.HumanoidRootPart, Lynx:GetOrigin("Handle"), {Lynx:GetCharacter(LocalPlayer)})) then Lynx.Silent.Check = false end
				if (Find(flags["Silent_Aim_Checks"], "Visible") and (Lynx.Silent.Target.Character.HumanoidRootPart.Transparency ~= 1)) then Lynx.Silent.Check = false end 
				if (Find(flags["Silent_Aim_Checks"], "ForceField") and Lynx.Silent.Target.Character.HumanoidRootPart:FindFirstChildOfClass("ForceField")) then Lynx.Silent.Check = false end
				if (Find(flags["Silent_Aim_Checks"], "Knocked") and not Lynx:KnockCheck(Lynx.Silent.Target)) then Lynx.Silent.Check = false end
				-- 
				Lynx.Silent.HitPart = ((flags["Air Prediction Method"] == "Part" and Lynx.Silent.Target.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall) and flags["Air Prediction Part"]) or Lynx:GetClosestPart(Lynx.Silent.Target, flags["Silent Aim HitPart"]).Name
				Lynx.Silent.Prediction = (flags["Auto-Prediction"] and Lynx:AutoPrediction()) or Lynx.Silent.Prediction
				--
				if not Lynx.Silent.HitPart then return end 
				-- 
				if (flags["Resolver"] == true and flags["Resolver Key"].Active == true) then 
					Lynx.Silent.Resolver[1] = Lynx:CalculateAbsolutePosition(Lynx.Silent.Target)
				end 
				-- 
				if flags["Bypass Aim Viewer"] then 
					local Offset = (flags["Air Prediction Method"] == "Offset" and Lynx.Silent.Target.Character.Humanoid.FloorMaterial == Enum.Material.Air) and NewVector3(0.0001, Lynx.Silent.Offset, 0.0001) or NewVector3(0.001, 0.001, 0.001)
					-- 
					if (flags["Resolver"] == true and flags["Resolver Key"].Active == true and Lynx.Silent.Resolver[1]) then 
						Lynx.Silent.Position = (Lynx.Silent.Target.Character[Lynx.Silent.HitPart].Position + (Lynx.Silent.Resolver[1] * Lynx.Silent.Prediction) + Offset) 
					else 
						Lynx.Silent.Position = (Lynx.Silent.Target.Character[Lynx.Silent.HitPart].Position + (Lynx.Silent.Target.Character.HumanoidRootPart.Velocity * Lynx.Silent.Prediction) + Offset) 
					end 
				end 
				-- 
				if Lynx.Silent.Position then 
					if flags["Auto-Shoot"] then 
						local Tool = Lynx:GetTool()
						if Tool and Tool:FindFirstChild("Ammo") and Tool:FindFirstChild("Ammo") ~= 0 then
							if (Lynx.Silent.Check == true) and InputService:GetFocusedTextBox() == nil then  
								VirtualUser:Button1Down(Vector2.new(), Workspace.CurrentCamera.CFrame)
								RunService.RenderStepped:Wait()
								VirtualUser:Button1Down(Vector2.new(), Workspace.CurrentCamera.CFrame)
							end 
							-- 
							if Tool:FindFirstChild("Ammo") then
								local Ammo = Tool:FindFirstChild("Ammo").Value
								if Ammo == 0 then
									game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", Tool)
								end
							end
						end 
					end
					-- 
					local Position1, OnScreen = Camera:WorldToViewportPoint(Lynx.Silent.Position)
					local MousePosition = NewVector2(Mouse.X, Mouse.Y + 36)
					local Magn = (MousePosition - NewVector2(Position1.X, Position1.Y)).Magnitude
					-- 
					if utility.Renders[1].Visible then 
						if (Magn >= utility.Renders[1].Radius) then  Lynx.Silent.Check = false end 
					end
					-- 
					if flags["Visualize Part Enabled"] then 
						utility.Parts[1].CFrame = flags["Show Prediction"] and CFrame.new(Lynx.Silent.Position) or Lynx.Silent.Target.Character.HumanoidRootPart.CFrame 
						utility.Parts[1].Material = Enum.Material[flags["Part Material"]]
					else 
						utility.Parts[1].CFrame = CFrame.new(999,999,999)
					end 
					-- 
					if flags["Visualize Part Chams Enabled"] then 	
						if game.Workspace.Terrain["Backtrack"].Model == nil then return end 
						for _, Value in pairs(game.Workspace.Terrain["Backtrack"].Model:GetChildren()) do 
							if Value:IsA("BasePart") then 
								Value.Position = Lynx.Silent.Target.Character[Value.Name].Position + Lynx.Silent.Target.Character.HumanoidRootPart.Velocity * Lynx.Silent.Prediction
								Value.Rotation = Lynx.Silent.Target.Character[Value.Name].Rotation
							end     
						end 						
					end
					-- 
					if flags["Look-At"] then 
						LocalPlayer.Character.Humanoid.AutoRotate = false 
						local NearestPos = CFrame.new(LocalPlayer.Character.PrimaryPart.Position, Vector3.new(Lynx.Silent.Target.Character.HumanoidRootPart.Position.X, LocalPlayer.Character.PrimaryPart.Position.Y, Lynx.Silent.Target.Character.HumanoidRootPart.Position.Z))
						LocalPlayer.Character:SetPrimaryPartCFrame(NearestPos)
					end 
					-- 
					if flags["Draw Dot"] then 
						if OnScreen then 
							utility.Renders[5].Position = NewVector2(Position1.X, Position1.Y)
							utility.Renders[5].Visible = true  
						else 
							utility.Renders[5].Visible = false   
						end 
					end 
					-- 
					if flags["Draw Tracer Enabled"] then  
						if OnScreen then 
							utility.Renders[6].From = NewVector2(Mouse.X, Mouse.Y + 36)
							utility.Renders[6].To = NewVector2(Position1.X, Position1.Y)
							utility.Renders[6].Visible = true 
							utility.Renders[7].Color = Color3.fromRGB(0, 0, 0)
							-- 
							if flags["Tracer Outline"] then 
								utility.Renders[7].From = NewVector2(Mouse.X, Mouse.Y + 36)
								utility.Renders[7].To = NewVector2(Position1.X, Position1.Y)
								utility.Renders[7].Visible = true 
							end 
						else 
							utility.Renders[6].Visible = false   
							utility.Renders[7].Visible = false   
						end 
					end
				end 
			end 
		end 
	end 
	-- 
	Lynx.AimViwerBypass = function()
        if flags["Bypass Aim Viewer"] then 
			if flags["Silent Aim Enabled"] and flags["Silent Aim Key"].Active then 
				local Offset = (flags["Air Prediction Method"] == "Offset" and Lynx.Silent.Target.Character.Humanoid.FloorMaterial == Enum.Material.Air) and NewVector3(0.0001, Lynx.Silent.Offset, 0.0001) or NewVector3(0.001, 0.001, 0.001)
				--
				if (flags["Resolver"] == true and flags["Resolver Key"].Active == true and Lynx.Silent.Resolver[1]) then 
					ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Lynx.Silent.Target.Character[Lynx.Silent.HitPart].Position + (Lynx.Silent.Resolver[1] * Lynx.Silent.Prediction) + Offset) 
				else 
					ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Lynx.Silent.Target.Character[Lynx.Silent.HitPart].Position + (Lynx.Silent.Target.Character.HumanoidRootPart.Velocity * Lynx.Silent.Prediction) + Offset) 
				end 
			end 
        end 
    end
	-- 
	function Lynx:AimAssist()
		if flags["Aim Assist Enabled"] and flags["Aim Assist Key"].Active and Lynx.Assist.Target and Lynx:GetPlayerStatus(Lynx.Assist.Target) then 
			local Char, Humanoid, RootPart = Lynx:ValidateClient(Lynx.Assist.Target)
			if Char and Humanoid and RootPart then 
				-- 
				if not flags["Sticky Aim"] then 
					Lynx.Assist.Target = Lynx:GetClosestPlayer()
				end 
				--
				local MousePosition = NewVector2(Mouse.X, Mouse.Y + 36)
				local HitPart = Lynx:GetClosestPart(Lynx.Assist.Target, flags["Aim Assist HitPart"]).Name
				local Prediction = flags["Aim Assist Prediction"] or 0 
				local Shake = flags["Camera Shake"] and NewVector3(Random(0, flags["X"] * 20)/50, Random(0, flags["Y"] * 20)/50, Random(0, flags["Z"] * 20)/50) or NewVector3(0, 0, 0)
				--
				local Tick = tick()
				-- FOVs 
				local Position1, OnScreen = Camera:WorldToViewportPoint(Char[HitPart].Position)
				local Magn = (MousePosition - NewVector2(Position1.X, Position1.Y)).Magnitude
				--
				if flags["Aim Assist FOV Enabled"] then 
					if (Magn >= flags["Aim Assist FOV Radius"]) then return end 
				end 
				--
				if flags["Deadzone Enabled"] then 
					if (Magn <= flags["Deadzone Radius"]) then return end 
				end 
				-- Dropdown Checks
				if ((Find(flags["Aim_Assist_Checks"], "Wall")) and not Lynx:RayCast(Char[HitPart], Lynx:GetOrigin("Torso"), {Lynx:GetCharacter(LocalPlayer)})) then return end
				if ((Find(flags["Aim_Assist_Checks"], "Alive")) and not Lynx:ClientAlive(Lynx.Assist.Target, Char, Humanoid)) then return end
				if ((Find(flags["Aim_Assist_Checks"], "Team")) and not (Lynx:CheckTeam(LocalPlayer, Lynx.Assist.Target))) then return end
				if ((Find(flags["Aim_Assist_Checks"], "ForceField")) and Char:FindFirstChildOfClass("ForceField")) then return end 
				if (not ((Camera.CFrame.Position - RootPart.Position).Magnitude <= flags["Aim Assist Distance"])) then return end
				if (Find(flags["Aim_Assist_Checks"], "Knocked") and not Lynx:KnockCheck(Lynx.Assist.Target)) then return end

				-- Moving Camera
				if ((Tick - utility.LastTick) >= (flags["Stutter Amount"] / 1000)) then 
					utility.LastTick = Tick
					Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.p, Char[HitPart].Position + (RootPart.Velocity * Prediction) + (Shake)), (100 - flags["Smoothness Amount"]) / 100)
				end 
			end
		end 
	end 
	-- 
	function Lynx:AntiLock()
		local Character, Humanoid, RootPart = Lynx:ValidateClient(LocalPlayer)
		if Character and Humanoid and RootPart then 
			utility.Desyncs.OldVelocity = LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity
			utility.Desyncs.OldCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
			-- 	
			if flags["Velocity Desync"] and flags["Velocity Desync Key"].Active then 
				LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = utility.Desyncs[flags["Velocity Desync Preset"]]
				if flags["Velocity Desync Preset"] == "Desync" then 
					LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * NewAngle(0,Rad(0.001),0)   
				end 
			end 	
			--
			if flags["CFrame Desync"] and flags["CFrame Desync Key"].Active then 
				local CFramePositions = {
					["Nothing"] = LocalPlayer.Character.HumanoidRootPart.CFrame,
					["Random"] = (CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position) + NewVector3(Random(-flags["Random Teleport Range"], flags["Random Teleport Range"]), Random(-flags["Random Teleport Range"], flags["Random Teleport Range"]), Random(-flags["Random Teleport Range"], flags["Random Teleport Range"]))) * NewAngle(Rad(Random(-180, 180)), Rad(Random(-180, 180)), Rad(Random(-180, 180))),
					["Upside Down"] = LocalPlayer.Character.HumanoidRootPart.CFrame * NewAngle(0, 0, Rad(-180)),
					["Floor Plant"] = LocalPlayer.Character.HumanoidRootPart.CFrame * NewCFrame(0, -4, 0) * NewAngle(0, Rad(Random(1,360)), Rad(-180)),					
					["Void"] = LocalPlayer.Character.HumanoidRootPart.CFrame * NewCFrame(0, -2^20, 0)
				}
				-- 
				LocalPlayer.Character.HumanoidRootPart.CFrame = CFramePositions[flags["CFrame Desync Preset"]] * NewCFrame(flags["XXX"], flags["YYY"], flags["ZZZ"]) * NewAngle(Rad(flags["X Rotation"]), Rad(flags["Y Rotation"]), Rad(flags["Z Rotation"]))
				-- 
				if flags["Target Strafe"] and Lynx.Silent.Target and flags["Silent Aim Enabled"] and flags["Silent Aim Key"].Active and Lynx:GetPlayerStatus(Lynx.Silent.Target) then 
					utility.Angle += flags["Target Strafe Speed"]
					LocalPlayer.Character.HumanoidRootPart.CFrame = Lynx.Silent.Target.Character.HumanoidRootPart.CFrame * NewAngle(0, Rad(utility.Angle), 0) * NewCFrame(0, flags["Target Strafe Height"], flags["Target Strafe Radius"])
				end 
				-- 
				if flags["Visualize CFrame Desync"] then 
					VisualizeCFrame:SetPrimaryPartCFrame(LocalPlayer.Character.HumanoidRootPart.CFrame)
				end 
			end 
			-- 
			RunService.RenderStepped:Wait() 
			-- 	
			LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = utility.Desyncs.OldVelocity
			if flags["CFrame Desync"] and flags["CFrame Desync Key"].Active then
				LocalPlayer.Character.HumanoidRootPart.CFrame = utility.Desyncs.OldCFrame
			end 
		end 
	end 
	-- 
	function Lynx:GunSound() 
		local Tool = Lynx:GetTool()
		-- 
		if Tool and Tool:FindFirstChild("Handle") and flags["Custom Gun Sounds"] and Tool:FindFirstChild("Ammo") then 
			for _, Value in pairs(Tool.Handle:GetChildren()) do 
				if Value:IsA("Sound") and Value.Name ~= "NoAmmo" and Tool.Handle ~= nil then 
                    Value.SoundId = "rbxassetid://"..utility.sfx[flags["Sound Effect"]]
				end 
			end
		end 	
	end 
	-- 
	function Lynx:WorldVisuals() 
		if flags["World Visuals Enabled"] == true then 
			if flags["Ambient Enabled"] then 
                if Lighting.Ambient ~= flags["Ambient1 Color"].Color then 
                    Lighting.Ambient = flags["Ambient1 Color"].Color
                end 
                if Lighting.OutdoorAmbient ~= flags["Ambient2 Color"].Color then 
                    Lighting.OutdoorAmbient = flags["Ambient2 Color"].Color
                end 
            end 
			--
			if flags["Color Shift"] then 
                if Lighting.ColorShift_Bottom ~= flags["Color Shift1"].Color then 
                    Lighting.ColorShift_Bottom = flags["Color Shift1"].Color
                end 
                if Lighting.ColorShift_Top ~= flags["Color Shift2"].Color then 
                    Lighting.ColorShift_Top = flags["Color Shift2"].Color
                end 
            end 
			-- 
			if flags["Fog Enabled"] then 
                if Lighting.FogColor ~= flags["Fog Color"].Color then 
                    Lighting.FogColor = flags["Fog Color"].Color
                end 
                if Lighting.FogEnd ~= flags["Fog Start"] then 
                    Lighting.FogEnd = flags["Fog Start"]
                end 
                if Lighting.FogStart ~= flags["Fog End"] then 
                    Lighting.FogStart = flags["Fog End"]
                end 
            end 
			-- 
			if flags["Time Enabled"] then
                if Lighting.ClockTime ~= flags["Time"] then 
                    Lighting.ClockTime = flags["Time"]
                end 
            end
		end 
	end 
	-- 
	function Lynx:AutoPrediction()
		local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    	local split = string.split(pingvalue,'(')
    	local ping = tonumber(split[1])
		local Predictions = readfile("Lynx/Assets/Auto Prediction.txt"):split("\n")
		--  
		local Prediction = nil 
		--
		for Index = 1, #Predictions do 
			if ping < Index*10 then 
				Prediction = Predictions[Index]
				return Prediction
			end 
		end 
		-- 
		if flags["Ping Based"] then 
			Prediction = pingvalue/1000*2.5
			return Prediction
		end
		-- 
		if Prediction == nil then 
			return 0.1413
		end 
	end 
end 
-- Main Loop
Lynx:Connection(RunService.Heartbeat, LPH_JIT(function(Frame)
	Lynx:Cursor(Frame)
	-- 
	Lynx:SilentAim()
	-- 
	Lynx:Speed()
	-- 
	if flags["Target Strafe"] and Lynx.Silent.Target ~= nil and flags["Silent Aim Enabled"] == true and flags["Silent Aim Key"].Active and flags["CFrame Desync"] == false then 
		utility.Angle += flags["Target Strafe Speed"]
		LocalPlayer.Character.HumanoidRootPart.CFrame = Lynx.Silent.Target.Character.HumanoidRootPart.CFrame * NewAngle(0, Rad(utility.Angle), 0) * NewCFrame(0, flags["Target Strafe Height"], flags["Target Strafe Radius"])
	end 
	-- 
	if Lynx:GetPlayerStatus() then 
		Lynx:AimAssist()
		-- 
		Lynx:RotateCursor() 
		-- 
		Lynx:GripPosition()
		-- 
		Lynx:GunSound() 
		-- 
		for _, Script in pairs(LocalPlayer.Character:GetChildren()) do
			if Script:IsA("Script") and Script.Name ~= "Health" and Script.Name ~= "Sound" and Script:FindFirstChild("LocalScript") then
				Script:Destroy()
			end
		end
	end
	-- 
	if Visuals["KeyBindList"]["Drawings"]["Accent"].Visible == true then 
		Visuals["KeyBindList"]["Text"] = ""
		--
		Visuals.KeyBindList.AddValue(flags["Velocity Desync Key"].Active, flags["Velocity Desync"], "Velocity Desync", flags["Velocity Desync Key"].Key)
		Visuals.KeyBindList.AddValue(flags["Silent Aim Key"].Active, flags["Silent Aim Enabled"], flags["Silent Aim Type"], flags["Silent Aim Key"].Key)
		Visuals.KeyBindList.AddValue(flags["Aim Assist Key"].Active, flags["Aim Assist Enabled"], "Aim Assist", flags["Aim Assist Key"].Key)
		Visuals.KeyBindList.AddValue(flags["Speed Key"].Active, flags["Speed Enabled"], "CFrame Speed", flags["Speed Key"].Key)
		Visuals.KeyBindList.AddValue(flags["Fly Key"].Active, flags["Fly Enabled"], "Fly", flags["Fly Key"].Key)
		Visuals.KeyBindList.AddValue(flags["Bhop Key"].Active, flags["Bunny Hop"], "B-Hop", flags["Bhop Key"].Key)
		Visuals.KeyBindList.AddValue(flags["CFrame Desync Key"].Active, flags["CFrame Desync"], "CFrame Desync", flags["CFrame Desync Key"].Key)
		Visuals.KeyBindList.AddValue(flags["Resolver Key"].Active, flags["Resolver"], "Resolver", flags["Resolver Key"].Key)
		-- 
		Visuals["KeyBindList"]["Drawings"].Key.Text = Visuals["KeyBindList"]["Text"] 
		--
		Visuals["KeyBindList"]["Drawings"].Frame.Size = Vector2.new(Visuals["KeyBindList"]["Drawings"].Frame.Size.X, Visuals["KeyBindList"]["Drawings"].Key.TextBounds.Y + 20)
		Visuals["KeyBindList"]["Drawings"].Inner.Size = Vector2.new(Visuals["KeyBindList"]["Drawings"].Frame.Size.X - 2, Visuals["KeyBindList"]["Drawings"].Key.TextBounds.Y + 18)
		Visuals["KeyBindList"]["Drawings"].Gradient.Size = Visuals["KeyBindList"]["Drawings"].Inner.Size
	end 
	-- 
	Lynx:Bhop() 
	Lynx:Fly() 	
end))
-- 
Lynx:Connection(RunService.Heartbeat, LPH_JIT(function(Frame)
	Lynx:AntiLock()
end)) 
-- 
local Tick = tick() 
Lynx:Connection(RunService.RenderStepped, LPH_JIT(function()
	if flags["PlayerESP_Enabled"] then 
		for _,Player in pairs(Players:GetPlayers()) do
			local PlayerDrawing = Visuals["Drawings"][Player]
			-- 
			if not PlayerDrawing then continue end
			-- 
			for _,Drawing in pairs(PlayerDrawing) do
				Drawing.Visible = false
			end
			-- 
			for _, Drawing in pairs(Visuals["Drawings"][Player]["Corners"]) do
				if Drawing then 
					Drawing.Visible = false 
				end 
			end 
			-- 
			local Character = Player.Character
			local RootPart, Humanoid, Head = Character and Character:FindFirstChild("HumanoidRootPart"), Character and Character:FindFirstChildOfClass("Humanoid"), Character and Character:FindFirstChild("Head")
			-- 
			if not Character or not RootPart or not Humanoid then continue end
			-- 
			local DistanceFromCharacter = (Camera.CFrame.Position - RootPart.Position).Magnitude
			local MaxDistance = flags["ESP Distance"] or 25000
			local Hightlight_Target = false -- EDIT LATER or flags and flags["esp_hightlight_target"]
			-- 
			local Pos, OnScreen = Camera:WorldToViewportPoint(RootPart.Position)
			--
			if MaxDistance < DistanceFromCharacter then continue end 
			--
			if not OnScreen then
				if flags["PlayerESP_Enabled"] and flags["PlayerESP_Arrows"] then
					local Tri = PlayerDrawing.Arrow
					local Tri2 = PlayerDrawing.ArrowOutline
					-- 		
					local rootpartpos = RootPart.Position
					-- 
					Tri.Visible = true
					Tri2.Visible = true
					-- 
					local relativePos = Camera.CFrame:PointToObjectSpace(rootpartpos)
					local angle = math.atan2(-relativePos.y, relativePos.x)

					local size = Floor(viewportSize.x * 0.0078125)
					local max_size = Floor(viewportSize.x * 0.0260416666667)

					local distance = Vector3.new().Dot(relativePos.Unit, relativePos)
					local arrow_dist = flags["PlayerESP_ArrowRadius"]
					local arrow_size = flags["PlayerESP_ArrowSize"] and Lynx:Map(distance, 1, 100, max_size, size) or size
					-- 
					arrow_size = arrow_size > max_size and max_size or arrow_size < size and size or arrow_size
					direction = Vector2.new(math.cos(angle), math.sin(angle))
					-- 
					local pos
					if arrow_dist ~= 101 then
						pos = ( direction * viewportSize.x * arrow_dist / 200) + (viewportSize * 0.5)
					end
					-- 
					if not pos or pos.y > viewportSize.y - 5 or pos.y < 5 then
						pos = Lynx:AngleToEdge(angle, 5)
					end
					-- 
					Tri.PointA = pos
					Tri2.PointA = pos  
					Tri.PointB = pos - Lynx:getRotate(direction, 0.5) * arrow_size 
					Tri2.PointB = pos - Lynx:getRotate(direction, 0.5) * arrow_size 
					Tri.PointC = pos - Lynx:getRotate(direction, -0.5) * arrow_size 
					Tri2.PointC = pos - Lynx:getRotate(direction, -0.5) * arrow_size
					-- 
					Tri.Color = flags["PlayerESP_ArrowColor"].Color
					Tri.Transparency = 1 - flags["PlayerESP_ArrowColor"].Alpha
					-- 
					Tri2.Color = flags["PlayerESP_ArrowOutline"].Color
					Tri2.Transparency = 1 - flags["PlayerESP_ArrowOutline"].Alpha
					Tri2.Filled = false
				end
			else
				local Size = (Camera:WorldToViewportPoint(RootPart.Position - NewVector3(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPart.Position + NewVector3(0, 2.6, 0)).Y) / 2
				local BoxSize = NewVector2(Floor(Size * 1.5), Floor(Size * 1.9))
				local BoxPos = NewVector2(Floor(Pos.X - Size * 1.5 / 2), Floor(Pos.Y - Size * 1.6 / 2))
				-- 
				if flags["PlayerESP_Box"] and flags["PlayerESP_Box_Type"] then -- // Corner Boxes
					BoxCenter = Math:RoundVector(NewVector2(BoxPos.X + BoxSize.X / 2, BoxPos.Y + BoxSize.Y / 2));
					TL = Math:RoundVector(NewVector2(BoxCenter.X - BoxSize.X / 2, BoxCenter.Y - BoxSize.Y / 2));
					BL = Math:RoundVector(NewVector2(BoxCenter.X - BoxSize.X / 2, BoxCenter.Y + BoxSize.Y / 2));
					TR = Math:RoundVector(NewVector2(BoxCenter.X + BoxSize.X / 2, BoxCenter.Y - BoxSize.Y / 2));
					BR = Math:RoundVector(NewVector2(BoxCenter.X + BoxSize.X / 2, BoxCenter.Y + BoxSize.Y / 2));
				end
				-- 
				if flags["PlayerESP_Enabled"] and flags["PlayerESP_Box"] then
					local Box = PlayerDrawing.Box
					local BoxOutline = PlayerDrawing.BoxOutline
					if flags["PlayerESP_Box_Type"] then 
						local BoxCorners, BoxColor1, BoxColor2 = Visuals["Drawings"][Player]["Corners"], flags["PlayerESP_Box_Color1"].Color, flags["PlayerESP_Box_Color2"].Color
						-- Inlines
						do
							BoxCorners[1].Visible = true
							BoxCorners[1].From = TL
							BoxCorners[1].To = BoxCorners[1].From + NewVector2(0, BoxSize.X / 3)  
							BoxCorners[1].Color = BoxColor1
							--
							BoxCorners[2].Visible = true
							BoxCorners[2].From = TL + NewVector2(1, 0)
							BoxCorners[2].To = BoxCorners[2].From + NewVector2(BoxSize.X / 3, 0)
							BoxCorners[2].Color = BoxColor1
							--
							BoxCorners[3].Visible = true
							BoxCorners[3].From = TR
							BoxCorners[3].To = BoxCorners[3].From + NewVector2(-BoxSize.X / 3, 0)
							BoxCorners[3].Color = BoxColor1
							--
							BoxCorners[4].Visible = true
							BoxCorners[4].From = TR
							BoxCorners[4].To = BoxCorners[4].From + NewVector2(0, BoxSize.X / 3)
							BoxCorners[4].Color = BoxColor1
							--
							BoxCorners[5].Visible = true
							BoxCorners[5].From = BR + NewVector2(0, 1)
							BoxCorners[5].To = BoxCorners[5].From + NewVector2(0, -BoxSize.X / 3)
							BoxCorners[5].Color = BoxColor1
							--
							BoxCorners[6].Visible = true
							BoxCorners[6].From = BR
							BoxCorners[6].To = BoxCorners[6].From + NewVector2(-BoxSize.X / 3, 0)
							BoxCorners[6].Color = BoxColor1
							--
							BoxCorners[7].Visible = true
							BoxCorners[7].From = BL + NewVector2(0, 1)
							BoxCorners[7].To = BoxCorners[7].From + NewVector2(0, -BoxSize.X / 3)
							BoxCorners[7].Color = BoxColor1
							--
							BoxCorners[8].Visible = true
							BoxCorners[8].From = BL
							BoxCorners[8].To = BoxCorners[8].From + NewVector2(BoxSize.X / 3, 0)
							BoxCorners[8].Color = BoxColor1
						end
						-- // Outlines
						do
							BoxCorners[9].Visible = true
							BoxCorners[9].From = BoxCorners[1].From + NewVector2(0, -1)
							BoxCorners[9].To = BoxCorners[1].To + NewVector2(0, 1)
							BoxCorners[9].Color = BoxColor2
							--
							BoxCorners[10].Visible = true
							BoxCorners[10].From = BoxCorners[2].From
							BoxCorners[10].To = BoxCorners[2].To + NewVector2(1, 0)
							BoxCorners[10].Color = BoxColor2
							--
							BoxCorners[11].Visible = true
							BoxCorners[11].From = BoxCorners[3].From + NewVector2(2, 0)
							BoxCorners[11].To = BoxCorners[3].To + NewVector2(-1, 0)
							BoxCorners[11].Color = BoxColor2
							--
							BoxCorners[12].Visible = true
							BoxCorners[12].From = BoxCorners[4].From
							BoxCorners[12].To = BoxCorners[4].To + NewVector2(0, 1)
							BoxCorners[12].Color = BoxColor2
							--
							BoxCorners[13].Visible = true
							BoxCorners[13].From = BoxCorners[5].From
							BoxCorners[13].To = BoxCorners[5].To + NewVector2(0, -1)
							BoxCorners[13].Color = BoxColor2
							--
							BoxCorners[14].Visible = true
							BoxCorners[14].From = BoxCorners[6].From + NewVector2(2, 0)
							BoxCorners[14].To = BoxCorners[6].To + NewVector2(-1, 0)
							BoxCorners[14].Color = BoxColor2
							--
							BoxCorners[15].Visible = true
							BoxCorners[15].From = BoxCorners[7].From
							BoxCorners[15].To = BoxCorners[7].To + NewVector2(0, -1)
							BoxCorners[15].Color = BoxColor2
							--
							BoxCorners[16].Visible = true
							BoxCorners[16].From = BoxCorners[8].From + NewVector2(-1, 0)
							BoxCorners[16].To = BoxCorners[8].To + NewVector2(1, 0)
							BoxCorners[16].Color = BoxColor2
						end
					else 
						Box.Size = BoxSize
						Box.Position = BoxPos
						Box.Visible = true
						Box.Color = flags["PlayerESP_Box_Color1"].Color
						BoxOutline.Size = BoxSize
						BoxOutline.Color = flags["PlayerESP_Box_Color2"].Color
						BoxOutline.Position = BoxPos
						BoxOutline.Visible = true
					end 
				end
				-- 
				if flags["PlayerESP_Enabled"] and flags["PlayerESP_Name"] then
					local Name = PlayerDrawing.Name
					Name.Text = ""..Player.Name..""
					Name.Position = NewVector2(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
					Name.Color = flags["PlayerESP_Name_Color"].Color
					Name.Visible = true
				end
				-- 
				if flags["PlayerESP_Enabled"] and flags["PlayerESP_HealthBar"] then
					local Health         = PlayerDrawing.Health
					local HealthOutline  = PlayerDrawing.HealthOutline
					local HealthText     = PlayerDrawing.HealthText
					local HealthBarGradient = PlayerDrawing.HealthBarGradient
					local Color = Color:Lerp(Humanoid.Health / Humanoid.MaxHealth, flags["PlayerESP_HealthBar_Color_High"].Color, flags["PlayerESP_HealthBar_Color_Low"].Color)
					local HealthSize = (Floor(BoxSize.Y * (Humanoid.Health / Humanoid.MaxHealth)))
					local Height = ((BoxPos.Y + BoxSize.Y) - HealthSize) 
					-- 
					Health.Size = NewVector2(flags["PlayerESP_HealthBar_Thickness"], HealthSize)
					Health.Position = NewVector2(BoxPos.X - (flags["PlayerESP_HealthBar_Thickness"] * 2.5), Height)
					Health.Color = Color
					Health.Visible = true
					Health.Filled = true 
					-- 
					HealthOutline.Size = NewVector2(flags["PlayerESP_HealthBar_Thickness"] + 2, BoxSize.Y + 2)
					HealthOutline.Position = NewVector2(BoxPos.X - (flags["PlayerESP_HealthBar_Thickness"] * 2.5) - 1, BoxPos.Y - 1)
					HealthOutline.Visible = true 
					HealthOutline.Color = NewRGB(0, 0, 0)
					HealthOutline.Filled = true 
					-- 
					if flags["PlayerESP_HealthBarGradient"] then 
						HealthBarGradient.Size = NewVector2(flags["PlayerESP_HealthBar_Thickness"] + 2, BoxSize.Y + 2)
						HealthBarGradient.Position = NewVector2(BoxPos.X - (flags["PlayerESP_HealthBar_Thickness"] * 2.5) - 1, BoxPos.Y - 1)
						HealthBarGradient.Visible = true 
					end 
					-- 
					if flags["PlayerESP_Enabled"] and flags["PlayerESP_HealthNumber"] then
						HealthText.Text = "".. Floor(Humanoid.Health) .. ""
						HealthText.Color = Color
						HealthText.Visible = true
						-- 
						local HealthNumberPos = NewVector2((BoxPos.X + 1), BoxPos.Y + BoxSize.Y)
						HealthText.Position = NewVector2(HealthOutline.Position.X - (flags["PlayerESP_HealthBar_Thickness"] + 8), HealthNumberPos.Y - (Humanoid.Health / Humanoid.MaxHealth) * BoxSize.Y)
					end 
				end
				-- 
				if flags["PlayerESP_Enabled"] and flags["PlayerESP_Weapon"] then
					local Tool = PlayerDrawing.Tool
					local BottomOffset = BoxSize.Y + BoxPos.Y + 1
					local Equipped = Player.Character:FindFirstChildOfClass("Tool") and Player.Character:FindFirstChildOfClass("Tool").Name or ""
					Tool.Text = ""..Equipped..""
					Tool.Position = NewVector2(BoxSize.X / 2 + BoxPos.X, BottomOffset)
					Tool.Color = flags["PlayerESP_Weapon_Color"].Color
					Tool.Visible = true
					BottomOffset = BottomOffset + 15
				end
				-- 
				if flags["PlayerESP_Enabled"] and flags["PlayerESP_BoxFill"] then 
					local BoxFill = PlayerDrawing.BoxFill
					BoxFill.Size = BoxSize
					BoxFill.Position = BoxPos
					BoxFill.Visible = true
					BoxFill.Color = flags["PlayerESP_BoxFill_Color"].Color
					BoxFill.Transparency = 1 - flags["PlayerESP_BoxFill_Color"].Alpha
				end 
				-- 
				if flags["PlayerESP_Enabled"] and flags["PlayerESP_Distance"] then
					local BottomOffset = (BoxSize.Y * 2) + 1
					Distance.Text = ""..Floor(DistanceFromCharacter).."m"
					if flags["PlayerESP_Weapon"] and Tool.Text ~= "" then 
						Distance.Position = NewVector2(BoxSize.X / 2 + BoxPos.X, BottomOffset + 10)
					else 
						Distance.Position = NewVector2(BoxSize.X / 2 + BoxPos.X, BottomOffset)
					end 
					Distance.Color = flags["PlayerESP_Distance_Color"].Color
					Distance.Visible = true
					BottomOffset = BottomOffset + 15
				end 
				-- 
				if flags["PlayerESP_Enabled"] and flags["PlayerESP_Flags"] then
					local Flag = PlayerDrawing.Flag
					local FlagStr = ""
					-- 
					if Find(flags["PlayerESP_Flag_Options"], "Distance") then
						FlagStr ..= ("%sm\n"):format(Round(DistanceFromCharacter))
					end
					--
					if Find(flags["PlayerESP_Flag_Options"], "Money") and Player and Player.DataFolder then
						FlagStr ..= ("$%s\n"):format(tostring(Player.DataFolder.Currency.Value or 0))
					end
					-- 
					if Find(flags["PlayerESP_Flag_Options"], "Knocked") and Player.Character.BodyEffects then
						FlagStr ..= ("%s\n"):format(tostring(Player.Character.BodyEffects["K.O"].Value and "KNOCKED" or ""))
					end
					--
					Flag.Text = FlagStr
					Flag.Position = NewVector2(BoxSize.X + BoxPos.X + 3, BoxPos.Y - 2)
					Flag.Visible = true
					Flag.Color = flags["PlayerESP_FlagsColor"].Color
					Flag.Transparency = 1 - flags["PlayerESP_FlagsColor"].Alpha
				end
			end 
		end
	else 
		for _,Player in pairs(Players:GetPlayers()) do
			local PlayerDrawing = Visuals["Drawings"][Player]
			-- 
			if not PlayerDrawing then continue end
			-- 
			for _,Drawing in pairs(PlayerDrawing) do
				Drawing.Visible = false
			end
			-- 
			for _, Drawing in pairs(Visuals["Drawings"][Player]["Corners"]) do
				if Drawing then 
					Drawing.Visible = false 
				end 
			end 
		end 
	end  
end))
-- Bullet Tracers, Impacts, Shit Talk
task.spawn(LPH_JIT(function()
	while RunService.RenderStepped:Wait() do 
		utility.Rainbow = {Lynx:Rainbow(flags["Rainbow Speed"]), Lynx:Rainbow(flags["Rainbow Speed"]+1)}
		utility.Sine = Abs(Sin(tick())) + 0.4
		-- 
		Lynx:CharacterMaterial()
		-- 
		if flags["Auto Buy Armor"] then 
			if LocalPlayer.Character.BodyEffects.Armor.Value == 0 then 
				local Old_Ammo_Position = LocalPlayer.Character.HumanoidRootPart.CFrame
				-- 
				LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Ignored.Shop["[High-Medium Armor] - $2163"].Head.CFrame
				wait(0.1)
				fireclickdetector(workspace.Ignored.Shop["[High-Medium Armor] - $2163"].ClickDetector)
				wait(0.1)
				if LocalPlayer.Character.BodyEffects.Armor.Value > 0 then 
					LocalPlayer.Character.HumanoidRootPart.CFrame = Old_Ammo_Position
				else 
					fireclickdetector(workspace.Ignored.Shop["[High-Medium Armor] - $2163"].ClickDetector)
				end 
			end  
		end  
		-- 
		Lynx:WorldVisuals()
		-- 
		Lynx:GunMaterial()   
		-- 
		if Lynx:GetPlayerStatus() then 
			if Lynx["Connections"].Loop ~= nil then 
				Lynx["Connections"].Loop:Disconnect()
			end 
		end 
		-- 
		if Lynx:GetTool() and Lynx:GetTool():FindFirstChild("Ammo") then 
			Lynx["Connections"].Loop = Lynx:GetTool().Ammo:GetPropertyChangedSignal("Value"):Connect(function()
				if Lynx:GetTool().Ammo.Value ~= Lynx:GetTool().MaxAmmo.Value then 
					pcall(function()
						if flags["On-Hit-Raycast"] then 
							Lynx["Connections"]["On-Hit-Raycast"] = Workspace.Ignored.Siren.Radius.DescendantAdded:Connect(function(Beam)
								--
								Lynx["Connections"]["On-Hit-Raycast"]:Disconnect()
								--
								delay(0.05, function()
									if Beam.Name == "BULLET_RAYS" then 
										local Ray = Ray.new(Beam.Position, Beam.CFrame.LookVector * 200)
										local IgnoreList = {LocalPlayer.Character}
										local Hit, HitPosition = workspace:FindPartOnRayWithIgnoreList(Ray, IgnoreList);
										-- 
										if Hit then
											local InstanceHit = Hit:FindFirstAncestorOfClass('Model')

											if not InstanceHit then return end 
											
											if InstanceHit:FindFirstChild("Humanoid") and InstanceHit:FindFirstChild("HumanoidRootPart") then 
												if flags["Hit Sound"] then 
													Lynx:HitSound(utility.sfx[flags["Hit Sound Effect"]], flags["Hit Sound Volume"], flags["Hit Sound Pitch"])
												end 
												-- 
												if flags["Hit Chams Enabled"] then 
													if not flags["Optimized Chams"] then 
														Lynx:CloneCharacter(Players[InstanceHit.Name], flags["Hit Chams Color"].Color, flags["Hit Chams Material"], flags["Hit Chams Color"].Alpha, Workspace.Terrain["HitChams"], flags["Hit Chams Time"])
													else 
														Lynx:CloneCharacter2(Players[InstanceHit.Name], flags["Hit Chams Color"].Color, true, flags["Hit Chams Time"], flags["Hit Chams Material"], flags["Hit Chams Color"].Alpha, Workspace.Terrain["HitChams"])
													end 	
												end
												-- 
												if flags["Hit Markers Enabled"] then 
													if flags["HitMarker Type"] == "2D" then 
														HitMarker(4, flags["Hit Markers Color"].Color, flags["Hit Markers Time"])
													else 
														HitMarker3D(4, flags["Hit Markers Color"].Color, flags["Hit Markers Time"], HitPosition) 
													end 
												end 
												-- 
												if flags["Hit Effects"] then 
													Lynx:HitEffect(flags["Hit Effect"], Players[InstanceHit.Name].Character)
												end 
											end 
										end 	
									end 
								end)
							end) 
						end 
					end)
					--
					if flags["Bullet Tracers Enabled"] and flags["Bullet Tracers Mode"] == "Local" then 
						Lynx:CreateBeam(Lynx:GetTool().Handle.Position, LocalPlayer.Character.BodyEffects.MousePos.Value, flags["Rainbow Bullet Tracers"] and utility.Rainbow[1] or flags["Bullet Tracers Color1"].Color, flags["Rainbow Bullet Tracers"] and utility.Rainbow[2] or flags["Bullet Tracers Color2"].Color, utility.TracerTextures[flags["Bullet Tracers Texture"]])
						--
						RunService.RenderStepped:Wait()
						--
						for _, Value in pairs(Workspace.Ignored.Siren.Radius:GetChildren()) do 
							if Value:IsA("Part") and Value.Name == "BULLET_RAYS" then 
								Value:Destroy()
							end 
						end
					end
					-- 
					if flags["Impact Points Enabled"] then 
						local Impact = NewInstance("Part")
						Impact.Anchored = true 
						Impact.CanCollide = false 
						Impact.Parent = game.Workspace
						Impact.Material = Enum.Material[tostring(flags["Impact Points Material"])]
						Impact.Shape = Enum.PartType.Block 
						Impact.Transparency = flags["Impact Points Color"].Alpha
						Impact.Color = flags["Impact Points Color"].Color
						Impact.Size = NewVector3(0.5, 0.5, 0.5)
						Impact.CFrame = CFrame.new(LocalPlayer.Character.BodyEffects.MousePos.Value)
						delay(3, function()
							Impact:Destroy()
						end)
					end					
					--
					Lynx["Connections"].Loop:Disconnect()
				end 
			end)
		end 
	end 
end))
-- 
local function Global_Beam(Beam)
	local Part = Beam
	if Part ~= nil then 
		local Attachments = Part:GetChildren()
		if Attachments ~= nil and Attachments[1] ~= nil and Attachments[2] ~= nil then 
			local Origin = Attachments[1].WorldCFrame
			local End = Attachments[2].WorldCFrame
			local Tool = Lynx:GetTool()
			Lynx:CreateBeam(Origin, End, flags["Rainbow Bullet Tracers"] and utility.Rainbow[1] or flags["Bullet Tracers Color1"].Color, flags["Rainbow Bullet Tracers"] and utility.Rainbow[2] or flags["Bullet Tracers Color2"].Color, utility.TracerTextures[flags["Bullet Tracers Texture"]])
			Part:Destroy()
		end 
	end 
end 
--
Workspace.Ignored.Siren.Radius.DescendantAdded:Connect(function(a)
	pcall(function()
		if flags["Bullet Tracers Enabled"] and flags["Bullet Tracers Mode"] == "Global" then 
			if Workspace.Ignored.Siren.Radius.BULLET_RAYS then 
				Global_Beam(Workspace.Ignored.Siren.Radius.BULLET_RAYS)
			end 
		end 
	end)
end)
-- 
task.spawn(LPH_JIT(function()
	while true do 
		if flags["Shit Talk"] then 
			local RandomChat = Random(1,#utility["ShitTalk"][tostring(flags["Shit Talk Mode"])])
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(utility["ShitTalk"][tostring(flags["Shit Talk Mode"])][RandomChat], "All")
		end 
		task.wait(flags["Shit Talk Delay"])
	end 
end))
--
Lynx:Connection(Players.PlayerAdded, LPH_JIT(function(Player)
    Lynx:Add(Player)
	-- 
	if flags["PlayerESP_Chams"] then 
		Lynx:Cham_Character(Player, flags["Highlight_Fill_Color"].Color, flags["Highlight_Outline_Color"].Color, flags["Highlight_Fill_Color"].Alpha, flags["Highlight_Outline_Color"].Alpha) 
	end  
end))
-- 
Lynx:Connection(Players.PlayerRemoving, LPH_JIT(function(Player)
    if Visuals["Drawings"][Player] or Visuals["Drawings"][Player]["Corners"] then
        for Index, Drawing in pairs(Visuals["Drawings"][Player]) do
            if Drawing and Index ~= "Corners" then 
                Drawing:Remove()
            end 
        end        
        --
        for Index = 1, 16 do
            Visuals["Drawings"][Player]["Corners"][Index]:Remove()
        end
        -- 
        Visuals["Drawings"][Player]["Corners"] = nil
        Visuals["Drawings"][Player] = nil
    end
	-- 
	if Find(flags["Silent Aim Notify"], "Left") and Lynx.Silent.Target ~= nil and Player == Lynx.Silent.Target then 
		ui:Notify{text = "Locked user has left: ".. Lynx.Silent.Target.Name.. " (".. Lynx.Silent.Target.DisplayName .. ")", time = 2, style = "loading"}
	end 
	-- 
	if flags["PlayerESP_Chams"] then 
		Lynx:Cham_Remove(Player)
	end 
end))
-- Cursor, FOVs
Lynx:Connection(InputService.InputChanged, LPH_JIT(function(input, typing)
    if flags["Cursor"] then 
        if not flags["Spin"] then 
            InputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
            --
            if flags['Dot'] then 
                utility.Cursor.Dots[1].Position = NewVector2(Mouse.X - 1, Mouse.Y + 36 - 1)
                utility.Cursor.Dots[2].Position = NewVector2(Mouse.X - 2, Mouse.Y + 36 - 2)
                utility.Cursor.Dots[2].Color = NewRGB(0,0,0)
            end 
            -- 
            utility.Cursor.Lines[1].From = NewVector2(Mouse.X + flags["Cursor Gap"] * 5, Mouse.Y + 36)
            utility.Cursor.Lines[1].To = NewVector2(Mouse.X + flags["Cursor Radius"] * 5, Mouse.Y + 36)
            utility.Cursor.Outlines[1].From = NewVector2(Mouse.X + flags["Cursor Gap"] * 5, Mouse.Y + 36)
            utility.Cursor.Outlines[1].To = NewVector2(Mouse.X + flags["Cursor Radius"] * 5, Mouse.Y + 36)
            --
            utility.Cursor.Lines[2].From = NewVector2(Mouse.X - flags["Cursor Gap"] * 5, Mouse.Y + 36)
            utility.Cursor.Lines[2].To = NewVector2(Mouse.X - flags["Cursor Radius"] * 5, Mouse.Y + 36)
            utility.Cursor.Outlines[2].From = NewVector2(Mouse.X - flags["Cursor Gap"] * 5, Mouse.Y + 36)
            utility.Cursor.Outlines[2].To = NewVector2(Mouse.X - flags["Cursor Radius"] * 5, Mouse.Y + 36)
            --
            utility.Cursor.Lines[3].From = NewVector2(Mouse.X, Mouse.Y - flags["Cursor Gap"] * 5 + 36)
            utility.Cursor.Lines[3].To = NewVector2(Mouse.X, Mouse.Y - flags["Cursor Radius"] * 5 + 36)
            utility.Cursor.Outlines[3].From = NewVector2(Mouse.X, Mouse.Y - flags["Cursor Gap"] * 5 + 36)
            utility.Cursor.Outlines[3].To = NewVector2(Mouse.X, Mouse.Y - flags["Cursor Radius"] * 5 + 36)
            --
            utility.Cursor.Lines[4].From = NewVector2(Mouse.X, Mouse.Y + flags["Cursor Gap"] * 5 + 36)
            utility.Cursor.Lines[4].To = NewVector2(Mouse.X, Mouse.Y + flags["Cursor Radius"] * 5 + 36)
            utility.Cursor.Outlines[4].From = NewVector2(Mouse.X, Mouse.Y + flags["Cursor Gap"] * 5 + 36)
            utility.Cursor.Outlines[4].To = NewVector2(Mouse.X, Mouse.Y + flags["Cursor Radius"] * 5 + 36)
        end 
    end
    -- 
    if utility.Renders[1].Visible then 
        utility.Renders[1].Position = NewVector2(Mouse.X, Mouse.Y + 36)
    end 
    --
    if utility.Renders[2].Visible then 
        utility.Renders[2].Position = NewVector2(Mouse.X, Mouse.Y + 36)
    end 
    -- 
    if utility.Renders[3].Visible then 
        utility.Renders[3].Position = NewVector2(Mouse.X, Mouse.Y + 36)
    end 	
end))
-- 
Wanted:GetPropertyChangedSignal("Value"):Connect(function()
	if flags["Custom Stomps"] then 
		if tonumber(Wanted.Value) == tonumber(OldWanted + 50) then
			task.spawn(function()
				if Stomping == true then
					local Info = {
						Character = nil,
						Humanoid  = nil 
					}
					-- 
					local function GetTouchingParts(part)
						local connection = part.Touched:Connect(function() end)
						local results = part:GetTouchingParts()
						connection:Disconnect()
						return results
					end
					-- 
					for i,v in pairs(GetTouchingParts(LocalPlayer.Character["LeftFoot"])) do 
						if Find(bodyParts, v.Name) then 
							if v.Parent ~= LocalPlayer.Character then 
								Info.Character = v.Parent
							end 
						end 
					end 
					-- 
					Info.Humanoid = Info.Character.Humanoid
					-- 
					if Info.Humanoid and Info.Character.BodyEffects["K.O"].Value == true then
						--
						local vCharacter = Info.Humanoid.Parent
						local vPlayer = Players:GetPlayerFromCharacter(vCharacter)
						-- 
						if flags["Stomp Effect"] == "Explosion" then
							Stomps:Explode(vCharacter)
						end 
						if flags["Stomp Effect"] == "Airstrike" then
							Stomps:AirStrike(vCharacter)
						end
						if flags["Stomp Effect"] == "Heart" then
							Stomps:Heart(vCharacter)
						end
						if flags["Stomp Effect"] == "UFO" then
							Stomps:UFO(vCharacter)
						end
						if flags["Stomp Effect"] == "Glitch" then
							Stomps:Glitch(vCharacter)
						end
						if flags["Stomp Effect"] == "Cosmic Slash" then
							Stomps:CosmicSlash(vCharacter)
						end
					end
					
				end
			end)
		end
		OldWanted = Wanted.Value
	end 
end)
--
for Index, Player in pairs(Players:GetPlayers()) do
    if Player ~= LocalPlayer then
        Lynx:Add(Player)
    end
end
-- 
local Old 
Old = hookmetamethod(game, "__namecall", LPH_JIT(function(self, ...)
	if tostring(self.Name) == "MainEvent" and getnamecallmethod() == "FireServer" and flags["Custom Stomps"] or (flags["Silent Aim Enabled"] and flags["Silent Aim Key"].Active) then 
		local args = {...}
		-- 
		if flags["Custom Stomps"] and tostring(args[1]) == "Stomp" then 
			Stomping = true
			delay(0.8,function()
				Stomping = false 
			end)
		end 
		--
		if flags["Silent Aim Enabled"] and flags["Silent Aim Key"].Active and args[1] == "UpdateMousePos" and not flags["Bypass Aim Viewer"] then 
			if Lynx.Silent.Target ~= nil and Lynx.Silent.Target.Character ~= nil and Lynx.Silent.Target.Character.HumanoidRootPart ~= nil and Lynx.Silent.Check == true and Lynx.Silent.HitPart and Lynx.Silent.Target.Character.Head then 
				local Offset = (flags["Air Prediction Method"] == "Offset" and Lynx.Silent.Target.Character.Humanoid.FloorMaterial == Enum.Material.Air) and NewVector3(0.0001, Lynx.Silent.Offset, 0.0001) or NewVector3(0.001, 0.001, 0.001)
				--
				if (flags["Resolver"] == true and flags["Resolver Key"].Active == true and Lynx.Silent.Resolver[1] ~= nil) then 
					args[2] = Lynx.Silent.Target.Character[Lynx.Silent.HitPart].Position + (Lynx.Silent.Resolver[1] * Lynx.Silent.Prediction) + Offset 
				else 
					args[2] = Lynx.Silent.Target.Character[Lynx.Silent.HitPart].Position + (Lynx.Silent.Target.Character.HumanoidRootPart.Velocity * Lynx.Silent.Prediction) + Offset 
				end 
				-- 
				Lynx.Silent.Position = args[2]
				-- 
				return Old(self, unpack(args))
			end 
		end 
	end 		
    return Old(self, ...)
end))
--
local old
old = hookmetamethod(game, "__index", LPH_JIT(function(Self, Key)
	if not checkcaller() then
		if Key == "CFrame" and flags["CFrame Desync"] and flags["CFrame Desync Key"].Active and Lynx:GetPlayerStatus(LocalPlayer) then
			if Self == LocalPlayer.Character.HumanoidRootPart then 
				return utility.Desyncs.OldCFrame
			end 
		end
	end 
	return old(Self, Key)
end))
-- 
ui:Notify{text = "osiris.cool has loaded in ".. Round(tostring(tick() - utility.LastTick)).. " seconds !", time = 5, style = "loading"}