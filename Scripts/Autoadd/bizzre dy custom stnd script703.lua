local rs = game:GetService("ReplicatedStorage")
local plr = game:GetService("Players").LocalPlayer
local ui = game:GetService("UserInputService")
local rser = game:GetService("RunService")
local l = game:GetService("Lighting")
local ts = game:GetService("TweenService")
local sg = game:GetService("StarterGui")
local cam = game.Workspace.CurrentCamera
local chr = plr.Character
local hum = chr.Humanoid
local mouse = plr:GetMouse()
local s = chr:WaitForChild("Stand")
local shrp = s:WaitForChild("StandHumanoidRootPart")
local sh = s:WaitForChild("Stand Head")
local stor = s:WaitForChild("Stand Torso")
local sra = s:WaitForChild("Stand Right Arm")
local sla = s:WaitForChild("Stand Left Arm")
local srl = s:WaitForChild("Stand Right Leg")
local sll = s:WaitForChild("Stand Left Leg")
local hrp = chr.HumanoidRootPart
local h = chr["Head"]
local tor = chr["Torso"]
local ra = chr["Right Arm"]
local la = chr["Left Arm"]
local rl = chr["Right Leg"]
local ll = chr["Left Leg"]
local death = false
local deathevent = rs.Death
local vd = rs.VampireDash
local spe1 = rs.PlayerStrongPunch
local spe2 = rs.PlayerStrongPunch2
local sj = rs.Jump
local rj = rs.ReversedJump
local d1 = rs.Damage
local d2 = rs.Damage2
local d3 = rs.Damage3
local d11 = rs.Damage11
local d11s = rs.Damage11Sans
local d11e = rs.Damage11Enderman
local d12 = rs.Damage12
local d12s = rs.Damage12Sans
local d31 = rs.Damage31
local bd = rs.BurnDamage
local ftpd = rs.FOTPSDamageTeleport
local hd = rs.HamonSword
local ulfd = rs.ULFDamage
local a = rs.Anchor
local trans = rs.Transparency
local k = rs.Knock
local d = rs.Deflect
local tv = rs.Trail
local rtz = rs.RTZ
local taunts = rs.Taunt
local deletestand = nil
local antifling = true
local PlayerValues = {
    ["Active"] = false,
    ["Barrage"] = false,
    ["Mode"] = false,
    ["Zoom"] = false
}
local Colors = {
    "Crimson",
}
--Audio Player MADE BY PLANTMAN!!!!--
local MainSoundSystem = {
    ["Sounds"] = {},
    ["Preloaded"] = {}
}
function MainSoundSystem:Execute(Arguments)
    if Arguments["Action"] == "Preload" then
        local Audio = Instance.new("Sound")
        Audio.Parent = game.ReplicatedStorage
        Audio.SoundId = "rbxassetid://" .. Arguments["Id"]
        game.ContentProvider:PreloadAsync({ Audio })
        repeat
            game.RunService.RenderStepped:Wait()
        until Audio.TimeLength and Audio.TimeLength > 0
        table.insert(MainSoundSystem["Preloaded"], { Arguments["Id"], Audio.TimeLength })
        Audio:Destroy()
    elseif Arguments["Action"] == "Create" then
        MainSoundSystem:Execute({
            ["Action"] = "Preload",
            ["Id"] = Arguments["Id"]
        })
        if MainSoundSystem:Execute({ ["Action"] = "Return", ["Request"] = "IsPlaying", ["Id"] = Arguments["Id"] }) then
            MainSoundSystem:Execute({
                ["Action"] = "Destroy",
                ["Id"] = Arguments["Id"]
            })
        end
        local SoundSystem = {
            ["Id"] = Arguments["Id"],
            ["Pitch"] = Arguments["Pitch"] or 1,
            ["Volume"] = Arguments["Volume"] or 10,
            ["Loop"] = Arguments["Loop"] or false,
            ["StartPosition"] = Arguments["StartPosition"] or 0,
            ["Begin"] = tick(),
            ["Break"] = false,
            ["CoolDown"] = false
        }
        SoundSystem["TimeLength"] = MainSoundSystem:Execute({
            ["Action"] = "Return",
            ["Request"] = "TimeLength",
            ["Id"] = Arguments["Id"]
        })
        if SoundSystem["TimeLength"] then
            MainSoundSystem["Sounds"]["rbxassetid://" .. Arguments["Id"]] = SoundSystem
            function SoundSystem:Execute(SoundArguments)
                if not SoundSystem["CoolDown"] then
                    if SoundArguments["Action"] == "FixTimePosition" then
                        game.RunService.RenderStepped:Wait()
                        SoundArguments["Audio"].TimePosition = SoundSystem["StartPosition"] + ((tick() - SoundSystem["Begin"]) * SoundSystem["Pitch"])
                    elseif SoundArguments["Action"] == "Create" then
                        game.ReplicatedStorage.Damage11Sans:FireServer(game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"), game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame or CFrame.new(), 0, 0, Vector3.new(), math.huge, "rbxassetid://" .. Arguments["Id"], SoundSystem["Pitch"], SoundSystem["Volume"])
                    elseif SoundArguments["Action"] == "Play" then
                        local function Play()
                            SoundSystem["Begin"] = (tick() - 0.015)
                            for Index = 1, SoundArguments["Updates"] do
                                if SoundSystem["Break"] or not SoundSystem then
                                    break
                                end
                                SoundSystem:Execute({
                                    ["Action"] = "Create"
                                })
                                task.wait(0.69625)
                            end
                            if not SoundSystem["Break"] and SoundSystem and SoundSystem["Loop"] then
                                SoundSystem["StartPosition"] = 0
                                SoundArguments["Updates"] = math.ceil(((SoundSystem["TimeLength"] / 0.69625) / SoundSystem["Pitch"]))
                                Play()
                            else
                                SoundSystem:Execute({
                                    ["Action"] = "Break"
                                })
                                MainSoundSystem["Sounds"]["rbxassetid://" .. Arguments["Id"]] = nil
                                System = nil
                            end
                        end
                        Play()
                    elseif SoundArguments["Action"] == "Break" then
                        SoundSystem["Break"] = true
                        SoundSystem["CoolDown"] = true
                    elseif SoundArguments["Action"] == "Change" then
                        SoundSystem[SoundArguments["Change"]] = SoundArguments["Value"]
                    end
                end
            end

            if (SoundSystem["TimeLength"] - SoundSystem["StartPosition"]) <= 0.69625 then
                SoundSystem:Execute({
                    ["Action"] = "Create"
                })
            elseif (SoundSystem["TimeLength"] - SoundSystem["StartPosition"]) > 0.69625 then
                task.spawn(function()
                    SoundSystem:Execute({
                        ["Action"] = "Play",
                        ["Updates"] = math.ceil(((SoundSystem["TimeLength"] - SoundSystem["StartPosition"]) / 0.69625) / SoundSystem["Pitch"])
                    })
                end)
            end
        end
    elseif Arguments["Action"] == "Destroy" then
        if Arguments["Id"] ~= "All" then
            for Id, System in pairs(MainSoundSystem["Sounds"]) do
                if System["Id"] == Arguments["Id"] then
                    System["Loop"] = false
                    System:Execute({
                        ["Action"] = "Break"
                    })
                    MainSoundSystem["Sounds"][Id] = nil
                    System = nil
                end
            end
        else
            for Id, System in pairs(MainSoundSystem["Sounds"]) do
                System["Loop"] = false
                System:Execute({
                    ["Action"] = "Break"
                })
                MainSoundSystem["Sounds"][Id] = nil
                System = nil
            end
            MainSoundSystem["Sounds"] = {}
        end
    elseif Arguments["Action"] == "Change" then
        if Arguments["Id"] ~= "All" then
            for Id, System in pairs(MainSoundSystem["Sounds"]) do
                if System["Id"] == Arguments["Id"] then
                    System:Execute({
                        ["Action"] = "Change",
                        ["Change"] = Arguments["Change"],
                        ["Value"] = Arguments["Value"]
                    })
                end
            end
        else
            for Id, System in pairs(MainSoundSystem["Sounds"]) do
                System:Execute({
                    ["Action"] = "Change",
                    ["Change"] = Arguments["Change"],
                    ["Value"] = Arguments["Value"]
                })
            end
        end
    elseif Arguments["Action"] == "Return" then
        if Arguments["Request"] == "Preloaded" then
            for Index, Table in pairs(MainSoundSystem["Preloaded"]) do
                if Table[1] == Arguments["Id"] then
                    return true
                end
            end
            return false
        elseif Arguments["Request"] == "TimeLength" then
            for Index, Table in pairs(MainSoundSystem["Preloaded"]) do
                if Table[1] == Arguments["Id"] then
                    return Table[2]
                end
            end
            return nil
        elseif Arguments["Request"] == "IsPlaying" then
            for Id, System in pairs(MainSoundSystem["Sounds"]) do
                if System["Id"] == Arguments["Id"] then
                    return true
                end
            end
            return false
        end
    end
end
game.Workspace.Effects.DescendantAdded:Connect(function(Object)
    if Object.ClassName == "Sound" then
        if MainSoundSystem["Sounds"][Object.SoundId] then
            MainSoundSystem["Sounds"][Object.SoundId]:Execute({
                ["Action"] = "FixTimePosition",
                ["Audio"] = Object
            })
        end
    end
end)
--main
local MainValues = {
    ["WhiteListedScripts"] = {
        "Clean&Misc.",
        "MrPresidentAnimation",
        "DimensionLighting",
        "QualityScript",
        "Animate",
        "UnStun",
        "DismAnimation",
        "SP3_Effect"
    },
    ["AntiAnchor"] = true
}
function MainValues:Execute(Arguments)
    if Arguments["Action"] == "OnSpawn" then
        game.Players.LocalPlayer.Character:WaitForChild("Stand")
        game.Players.LocalPlayer.Character.Stand.JumpCooldown:Destroy()
        MainValues:Execute({
            ["Action"] = "DestroyStand"
        })
        MainSoundSystem:Execute({
            ["Action"] = "Create",
            ["Id"] = 1425088608,
            ["Volume"] = math.huge
        })
        for Index, StandPart in pairs(game.Players.LocalPlayer.Character.Stand:GetDescendants()) do
            if StandPart.Name ~= "Stand Left Leg" and StandPart.Name ~= "Stand Right Leg" and StandPart.Name ~= "Stand Torso" and StandPart.ClassName:match("Part") or StandPart.ClassName == "Decal" or StandPart.ClassName == "Texture" or StandPart.ClassName == "UnionOperation" then
                game.ReplicatedStorage.Transparency:FireServer(StandPart, 1)
            elseif StandPart.Name == "Stand Left Leg" or StandPart.Name == "Stand Right Leg" or StandPart.Name == "Stand Torso" then
                game.ReplicatedStorage.Transparency:FireServer(StandPart, 0)
            end
        end
        function godmode()
            rs.Block:FireServer(true)
            rs.BurnDamage:FireServer(hum, CFrame.new(0, -50, 0), -0 * math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "rbxassetid://260430079", 0, 0)
            wait()
            rs.BurnDamage:FireServer(hum, CFrame.new(0, -50, 0), 0 * math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "rbxassetid://260430079", 0, 0)
       end
       godmode()
        game.ReplicatedStorage.Remotes.SummonFX:FireServer()
        game.ReplicatedStorage.Deflect:FireServer(game.Players.LocalPlayer.Character.Humanoid, CFrame.new(), 0 * math.huge, 0, Vector3.new(), "rbxassetid://241837157", 0, Color3.new(), "", 0, 0)
        MainValues:Execute({
            ["Action"] = "PlayAnimation",
            ["Id"] = 5626397526
        })
        local AmongUs = Instance.new("Decal")
        AmongUs.Parent = game.Players.LocalPlayer.Character.Stand["Stand Torso"]
        AmongUs.Face = Enum.NormalId.Front
        AmongUs.Texture = "http://www.roblox.com/asset/?id=8484931367"
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://3451300838"
        game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = "rbxassetid://3451300838"
        game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = "rbxassetid://3451300838"
        game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://4513292196"
    elseif Arguments["Action"] == "DestroyStand" then
        local function Return(ReturnArguments)
            if ReturnArguments["Request"] == "WhiteListed" then
                for Index, String in pairs(MainValues["WhiteListedScripts"]) do
                    if ReturnArguments["String"] == String then
                        return true
                    end
                end
                return false
            elseif ReturnArguments["Request"] == "StandName" then
                for Index, Instance in pairs(game.Lighting:GetChildren()) do
                    if Instance.ClassName == "LocalScript" and ReturnArguments["String"] == Instance.Name then
                        return Instance.Name
                    end
                end
                return false
            end
        end
        for Index, Instance in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if Instance.ClassName == "LocalScript" and not Return({ ["Request"] = "WhiteListed", ["String"] = Instance.Name }) and Return({ ["Request"] = "StandName", ["String"] = Instance.Name }) then
                game.Players.LocalPlayer.Character[Return({ ["Request"] = "StandName", ["String"] = Instance.Name })]:Destroy()
            end
        end
    elseif Arguments["Action"] == "GetNearPlayers" then
        local Players = {}
        for Index, Instance in pairs(game.Workspace.Entities:GetChildren()) do
            if Instance ~= game.Players.LocalPlayer.Character and Instance:FindFirstChild("Torso") and (Instance.Torso.Position - Arguments["Position"]).Magnitude < Arguments["Range"] / 2 then
                Players[Instance] = Instance
            end
        end
        return Players
    elseif Arguments["Action"] == "PlayAnimation" then
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://" .. Arguments["Id"]
        local Loaded = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Animation)
        Loaded:Play()
        return Loaded
    elseif Arguments["Action"] == "Input" then
        if Arguments["Type"] == "Began" then
            if Arguments["Input"] == "V" and not PlayerValues["Active"] then
                PlayerValues["Active"] = true
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
                local Melt = MainValues:Execute({
                    ["Action"] = "PlayAnimation",
                    ["Id"] = 5214216154
                })
                Melt:AdjustSpeed(2)
                MainSoundSystem:Execute({
                    ["Action"] = "Create",
                    ["Id"] = 930613220,
                    ["Volume"] = math.huge
                })
                task.wait(0.5)
                Melt:AdjustSpeed(0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer:GetMouse().Hit * CFrame.new(0, 4, 0)
                task.wait(0.5)
                Melt:Stop()
                MainValues:Execute({
                    ["Action"] = "PlayAnimation",
                    ["Id"] = 5214217344
                })
                task.wait(0.2)
                PlayerValues["Active"] = false
            elseif Arguments["Input"] == "Q" and not PlayerValues["Active"] then
                MainSoundSystem:Execute({
                    ["Action"] = "Create",
                    ["Id"] = 1497457250,
                    ["Volume"] = math.huge
                })
                for Index, Player in pairs(game.Players:GetPlayers()) do
                    if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                        game.ReplicatedStorage.HamonSword:FireServer(Player.Character.Humanoid, 0.0001, 1, (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position) * 0.75)
                    end
                end
            elseif Arguments["Input"] == "E" and not PlayerValues["Active"] then
                PlayerValues["Active"] = true
                PlayerValues["Barrage"] = true
                local KickBarrage = MainValues:Execute({
                    ["Action"] = "PlayAnimation",
                    ["Id"] = 3445781532
                })
                KickBarrage:AdjustSpeed(4)
                MainSoundSystem:Execute({
                    ["Action"] = "Create",
                    ["Id"] = 921897274,
                    ["Loop"] = false,
                    ["Pitch"] = 1,
                    ["Volume"] = math.huge
                })
                local Hit = {}
                repeat
                    for Index, Player in pairs(MainValues:Execute({ ["Action"] = "GetNearPlayers",
                        ["Position"] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position, ["Range"] = 20 })) do
                        if not PlayerValues["Mode"] then
                            game.ReplicatedStorage.Damage11Sans:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame, 0, 0, Vector3.new(), math.huge, "rbxassetid://926058764", 1, math.huge)
                            game.ReplicatedStorage.Damage3:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame, 99, 0, Vector3.new(), 0, "", 0, 0)
                            game.ReplicatedStorage.Damage12:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame, 99, 0, Vector3.new(), 0.25, "", 0, 0)
                        elseif PlayerValues["Mode"] and not Hit[Player] then
                            Hit[Player] = Player
                            task.spawn(function()
                                local Color = 1
                                for Index = -3.75, 0, 0.25 do
                                    Color = Color + 1
                                    if Color >= #Colors then
                                        Color = 1
                                    end
                                    game.ReplicatedStorage.Damage:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame * CFrame.new(Index * math.sin(Index), 0, Index * math.cos(Index)), 0, 0, Vector3.new(), "", 0, BrickColor.new(Colors[Color]).Color, "", 0, 0)
                                    task.wait(0.1)
                                end
                                for Index = 1, 10 do
                                    game.ReplicatedStorage.Damage:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame, 199, 0, Vector3.new(), "", 0.25, BrickColor.new(Colors[math.random(1, #Colors)]).Color, "", 0, 0)
                                    game.ReplicatedStorage.Damage3:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame, 99, 0, Vector3.new(), 0, "", 0, 0)
                                    game.ReplicatedStorage.HamonSword:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame, 94, math.huge, Vector3.new(0, math.huge, 0))
                                    task.wait()
                                end
                                Hit[Player] = nil
                            end)
                        end
                    end
                    task.wait(0.075)
                until not PlayerValues["Barrage"]
                PlayerValues["Active"] = false
                KickBarrage:Stop()
                MainSoundSystem:Execute({
                    ["Action"] = "Destroy",
                    ["Id"] = 5676756526,
                })
            elseif Arguments["Input"] == "R" and not PlayerValues["Active"] and not PlayerValues["Mode"] then
                local function Lerp(A, B, Time)
                    return A + (B - A) * Time
                end
                local Player = nil
                if game.Players.LocalPlayer:GetMouse().Target and game.Players.LocalPlayer:GetMouse().Target.Parent ~= game.Players.LocalPlayer.Character and game.Players.LocalPlayer:GetMouse().Target.Parent:FindFirstChild("HumanoidRootPart") then
                    Player = game.Players.LocalPlayer:GetMouse().Target.Parent
                elseif game.Players.LocalPlayer:GetMouse().Target and game.Players.LocalPlayer:GetMouse().Target.Parent.Parent ~= game.Players.LocalPlayer.Character and game.Players.LocalPlayer:GetMouse().Target.Parent.Name == "Stand" then
                    Player = game.Players.LocalPlayer:GetMouse().Target.Parent.Parent
                end
                if Player then
                    PlayerValues["Active"] = true
                    MainValues["AntiAnchor"] = false
                    game.ReplicatedStorage.Anchor:FireServer(Player.HumanoidRootPart, true)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.HumanoidRootPart.CFrame * CFrame.new(0, 0.5, 5)
                    task.wait(0.2)
                    MainSoundSystem:Execute({
                        ["Action"] = "Create",
                        ["Id"] = 926058764,
                        ["Volume"] = math.huge
                    })
                    game.ReplicatedStorage.Anchor:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart, true)
                    local ShadowTheWorldKnifeThrowTimeStop = MainValues:Execute({
                        ["Action"] = "PlayAnimation",
                        ["Id"] = 3894577205
                    })
                    ShadowTheWorldKnifeThrowTimeStop:AdjustSpeed(2)
                    task.wait(0.5)
                    game.ReplicatedStorage.Damage3:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame, 99, 0, Vector3.new(), 0, "", 0, 0)
                    game.ReplicatedStorage.Damage12:FireServer(Player.Humanoid, Player.HumanoidRootPart.CFrame, 99, 0, Vector3.new(), 0.25, "", 0, 0)
                    local QuickShot = MainValues:Execute({
                        ["Action"] = "PlayAnimation",
                        ["Id"] = 3906344573
                    })
                    QuickShot:AdjustSpeed(2)
                    task.wait(0.125)
                    for Index = 1, 5 do
                        game.ReplicatedStorage.Damage:FireServer(game.Players.LocalPlayer.Character.Humanoid, CFrame.new(Lerp(game.Players.LocalPlayer.Character["Right Arm"].Position, Player.Head.Position, Index / 1000)), 0, 0, Vector3.new(), "", 0, Color3.fromRGB(255, 255, 0), "", 0, 0)
                        task.wait()
                    end
                    game.ReplicatedStorage.KQRGrab:FireServer(Player.Humanoid, 199, 1.25, Vector3.new(0, 0, 0))
                    task.wait(0.5)
                    PlayerValues["Active"] = false
                    MainValues["AntiAnchor"] = true
                    game.ReplicatedStorage.Anchor:FireServer(Player.HumanoidRootPart, false)
                end
            elseif Arguments["Input"] == "F" and not PlayerValues["Active"] and not PlayerValues["Mode"] then
                PlayerValues["Mode"] = true
                MainSoundSystem:Execute({
                    ["Action"] = "Create",
                    ["Id"] = 844208899,
                    ["Loop"] = true,
                    ["Volume"] = math.huge
                })
                local Color = 1
                local ParticlePosition = 0
                game.Workspace.Gravity = 150
                task.spawn(function()
                    repeat
                        Color = Color + 1
                        game.ReplicatedStorage.VampireDash:FireServer(BrickColor.new(Colors[Color]))
                        task.wait(0.075)
                    until not PlayerValues["Mode"]
                end)
                repeat
                    ParticlePosition = ParticlePosition + 0.125
                    if Color >= #Colors then
                        Color = 1
                    end
                    game.ReplicatedStorage.Damage:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(4 * math.sin(ParticlePosition), 0, 4 * math.cos(ParticlePosition)), 0, 0, Vector3.new(), "", 0, BrickColor.new(Colors[Color]).Color, "", 0, 0)
                    task.wait(0.0125)
                until not PlayerValues["Mode"]
                MainSoundSystem:Execute({
                    ["Action"] = "Destroy",
                    ["Id"] = 1836057235
                })
                game.Workspace.Gravity = 196.19999694824
            elseif Arguments["Input"] == "F" and not PlayerValues["Active"] and PlayerValues["Mode"] then
                PlayerValues["Mode"] = false
            elseif Arguments["Input"] == "C" and not PlayerValues["Active"] and not PlayerValues["Mode"] then
                PlayerValues["Active"] = true
                PlayerValues["Zoom"] = true
                local BodyVelocity = Instance.new("BodyVelocity")
                BodyVelocity.Parent = game.Players.LocalPlayer.Character.Torso
                BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                local ULFFly = MainValues:Execute({
                    ["Action"] = "PlayAnimation",
                    ["Id"] = 5209511450
                })
                local ParticlePosition = 0
                repeat
                    BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 150
                    ParticlePosition = ParticlePosition + 0.125
                    game.ReplicatedStorage.VampireDash:FireServer(game.Players.LocalPlayer.Character.Stand["Stand Torso"].BrickColor)
                    game.ReplicatedStorage.Damage:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 4 * math.sin(ParticlePosition), 4 * math.cos(ParticlePosition)), 0, 0, Vector3.new(), "", 0, game.Players.LocalPlayer.Character.Stand["Stand Torso"].Color, "", 0, 0)
                    task.wait()
                until not PlayerValues["Zoom"]
                PlayerValues["Active"] = false
                BodyVelocity:Destroy()
                ULFFly:Stop()
            end
        else
            if Arguments["Input"] == "E" and PlayerValues["Barrage"] then
                PlayerValues["Barrage"] = false
            elseif Arguments["Input"] == "C" and PlayerValues["Zoom"] then
                PlayerValues["Zoom"] = false
            end
        end
    end
end
MainValues:Execute({
    ["Action"] = "OnSpawn"
})
game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
    game.Workspace.Entities:WaitForChild(Character.Name)
    task.wait(1.5)
    MainValues:Execute({
        ["Action"] = "OnSpawn"
    })
end)
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
    for Index, Values in pairs(PlayerValues) do
        Values = false
    end
end)
game.RunService.Stepped:Connect(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for Index, Instance in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if Instance.ClassName == "Part" and Instance.Anchored == true and MainValues["AntiAnchor"] then
                game.ReplicatedStorage.Anchor:FireServer(Instance, false)
            end
        end
        for Index, Instance in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
            if string.match(Instance.ClassName, "Body") then
                Instance:Destroy()
            end
        end
        if game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true then
            game.ReplicatedStorage.GetUp:FireServer()
            game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(3, true)
            game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
        end
        if not PlayerValues["Active"] and not PlayerValues["Mode"] then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 75
        elseif not PlayerValues["Active"] and PlayerValues["Mode"] then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 64
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
        end
        for Index, BillBoardGui in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
            if BillBoardGui.Name == "BillboardGui" then
                BillBoardGui:Destroy()
            end
        end
    end
end)
for Index, Instance in pairs(game.Lighting:GetChildren()) do
    if Instance.ClassName == "BoolValue" then
        Instance.Changed:Connect(function()
            if Instance.Value == true then
                game.ReplicatedStorage.RTZEffect:FireServer(true)
                Instance.Value = false
            end
        end)
    end
end
game.UserInputService.InputBegan:Connect(function(Input, GameProccessed)
    if not GameProccessed and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local InputSent
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            InputSent = "LMB"
        else
            InputSent = Input.KeyCode.Name
        end
        if InputSent then
            MainValues:Execute({
                ["Action"] = "Input",
                ["Input"] = InputSent,
                ["Type"] = "Began"
            })
        end
    end
end)
game.UserInputService.InputEnded:Connect(function(Input, GameProccessed)
    if not GameProccessed and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local InputSent
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            InputSent = "LMB"
        else
            InputSent = Input.KeyCode.Name
        end
        if InputSent then
            MainValues:Execute({
                ["Action"] = "Input",
                ["Input"] = InputSent,
                ["Type"] = "Ended"
            })
        end
    end
end)