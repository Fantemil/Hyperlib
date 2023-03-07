local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Nicks Hours GUI")

local serv = win:Server("Main", "")

local btns = serv:Channel("Scripts")

btns:Button("All Hosts", function()
    local Remote = game.ReplicatedStorage['SaveRequest']

    local Arguments = {
        [1] = {

            ["Class1Win"] = true,
            ["Class2Win"] = true,
            ["Class3Win"] = true,
            ["Class4Win"] = true,
            ["Class5Win"] = true,
            ["Class6"] = true,
            ["Class7"] = true,
            ["Class6Win"] = true,
            ["Class7Win"] = true,
            ["Class8"] = true,
            ["Class2"] = true,
            ["Class3"] = true,
            ["Class4"] = true,
            ["Class5"] = true,
            ["Class8Win"] = true,
            ["Class9Win"] = true,
            ["Class9"] = true,
            ["Class2Win"] = true,
            ["Class1Win"] = true,
            ["Class3Win"] = true,
            ["Class4Win"] = true,
            ["Class5Win"] = true,
            ["Class6"] = true,
            ["Class7"] = true,
            ["Class6Win"] = true,
            ["Class7Win"] = true,
            ["Class8"] = true,
            ["Class2"] = true,
            ["Class3"] = true,
            ["Class4"] = true,
            ["Class5"] = true
        }
    }

    Remote:FireServer(unpack(Arguments))

    Remote:Remove()
end)

btns:Seperator()

btns:Button("All Boss Hosts", function()
    local Remote = game.ReplicatedStorage['SaveRequest']

    local Arguments = {
        [1] = {

            ["FutureMan"] = true,
            ["EchoAgent"] = true,
            ["MoverMan"] = true,
            ["Class8Win"] = true,
            ["Class5318008"] = true,
            ["Class01"] = true,
            ["Class999"] = true,
            ["Rider"] = true,

        }
    }

    Remote:FireServer(unpack(Arguments))

    Remote:Remove()
end)

btns:Seperator()

btns:Button("All Secret Hosts", function()
    local Remote = game.ReplicatedStorage['SaveRequest']

    local Arguments = {
        [1] = { 
            ["Class0"] = true,
            ["Class9"] = true,
            ["Class1338"] = true,
            ["Class1337"] = true,
            ["ClassDuck"] = true,
            ["MusicVolume"] = 100
        }
    }

    Remote:FireServer(unpack(Arguments))

    Remote:Remove()
 
end)

btns:Seperator()


btns:Button("All Tempos", function()
    local Remote = game.ReplicatedStorage['SaveRequest']

    local Arguments = {
        [1] = {
            
            
            ["Time2Win"] = true,
            ["Time3Win"] = true,
            ["Time4Win"] = true,
            ["Time5Win"] = true,
            ["Time6Win"] = true,
            ["Time7Win"] = true,
            ["Time8Win"] = true,
            ["Time9Win"] = true,
            ["Time24"] = true,
            ["Time10Win"] = true,
            ["Time11Win"] = true,
            ["Time12Win"] = true,
            ["Time13Win"] = true,
            ["Time14Win"] = true,
            ["Time15Win"] = true,
            ["Time16Win"] = true,
            ["Time17Win"] = true,
            ["Time18Win"] = true,
            ["Time19Win"] = true,
            ["Time20Win"] = true,
            ["Time21Win"] = true,
            ["Time22Win"] = true,
            ["Time23Win"] = true,
            ["Time24Win"] = true,
            ["Time25Win"] = true,
            ["Time26Win"] = true,
            ["Time27Win"] = true,
            ["Time69Win"] = true,
            ["Time420Win"] = true,
            ["Time1337Win"] = true,
            ["Time100Win"] = true,
            ["Time0Win"] = true,
            ["Time1"] = true,
            ["Time2"] = true,
            ["Time3"] = true,
            ["Time4"] = true,
            ["Time5"] = true,
            ["Time6"] = true,
            ["Time7"] = true,
            ["Time8"] = true,
            ["Time9"] = true,
            ["Time10"] = true,
            ["Time11"] = true,
            ["Time12"] = true,
            ["Time13"] = true,
            ["Time14"] = true,
            ["Time15"] = true,
            ["Time16"] = true,
            ["Time17"] = true,
            ["Time18"] = true,
            ["Time19"] = true,
            ["Time20"] = true,
            ["Time21"] = true,
            ["Time22"] = true,
            ["Time23"] = true,
            ["Time25"] = true,
            ["Time26"] = true,
            ["Time27"] = true,
            ["Time0"] = true,
            ["Time1337"] = true,
            ["Time100"] = true,
            ["Time420"] = true,
            ["Time69"] = true,
            ["Time1Win"] = true,
        }
    }

    Remote:FireServer(unpack(Arguments))

    Remote:Remove()

end)

btns:Seperator()

btns:Button("All of everything", function()
    local Remote = game.ReplicatedStorage['SaveRequest']

    local Arguments = {
        [1] = {
          
            ["Time2Win"] = true,
            ["Time3Win"] = true,
            ["Time4Win"] = true,
            ["Time5Win"] = true,
            ["Time6Win"] = true,
            ["Time7Win"] = true,
            ["Time8Win"] = true,
            ["Time9Win"] = true,
            ["Time24"] = true,
            ["Time10Win"] = true,
            ["Time11Win"] = true,
            ["Time12Win"] = true,
            ["Time13Win"] = true,
            ["Time14Win"] = true,
            ["Time15Win"] = true,
            ["Time16Win"] = true,
            ["Time17Win"] = true,
            ["Time18Win"] = true,
            ["Time19Win"] = true,
            ["Time20Win"] = true,
            ["Time21Win"] = true,
            ["Time22Win"] = true,
            ["Time23Win"] = true,
            ["Time24Win"] = true,
            ["Time25Win"] = true,
            ["Time26Win"] = true,
            ["Time27Win"] = true,
            ["Time69Win"] = true,
            ["Time420Win"] = true,
            ["Time1337Win"] = true,
            ["Time100Win"] = true,
            ["Time0Win"] = true,
            ["Time1"] = true,
            ["Time2"] = true,
            ["Time3"] = true,
            ["Time4"] = true,
            ["Time5"] = true,
            ["Time6"] = true,
            ["Time7"] = true,
            ["Time8"] = true,
            ["Time9"] = true,
            ["Time10"] = true,
            ["Time11"] = true,
            ["Time12"] = true,
            ["Time13"] = true,
            ["Time14"] = true,
            ["Time15"] = true,
            ["Time16"] = true,
            ["Time17"] = true,
            ["Time18"] = true,
            ["Time19"] = true,
            ["Time20"] = true,
            ["Time21"] = true,
            ["Time22"] = true,
            ["Time23"] = true,
            ["Time25"] = true,
            ["Time26"] = true,
            ["Time27"] = true,
            ["Time0"] = true,
            ["Time1337"] = true,
            ["Time100"] = true,
            ["Time420"] = true,
            ["Time69"] = true,
            ["Time1Win"] = true,
            ["Class1Win"] = true,
            ["Class2Win"] = true,
            ["Class3Win"] = true,
            ["Class4Win"] = true,
            ["Class5Win"] = true,
            ["Class6"] = true,
            ["Class7"] = true,
            ["Class6Win"] = true,
            ["Class7Win"] = true,
            ["Class8"] = true,
            ["Class2"] = true,
            ["Class3"] = true,
            ["Class4"] = true,
            ["Class5"] = true,
            ["Class8Win"] = true,
            ["Class9Win"] = true,
            ["Class9"] = true,
            ["Class2Win"] = true,
            ["Class1Win"] = true,
            ["Class3Win"] = true,
            ["Class4Win"] = true,
            ["Class5Win"] = true,
            ["Class6"] = true,
            ["Class7"] = true,
            ["Class6Win"] = true,
            ["Class7Win"] = true,
            ["Class8"] = true,
            ["Class2"] = true,
            ["Class3"] = true,
            ["Class4"] = true,
            ["Class5"] = true,
            ["FutureMan"] = true,
            ["EchoAgent"] = true,
            ["MoverMan"] = true,
            ["Class8Win"] = true,
            ["Class5318008"] = true,
            ["Class0"] = true,
            ["Class01"] = true,
            ["Class999"] = true,
            ["Class9"] = true,
            ["Class1338"] = true,
            ["Class1337"] = true,
                        ["ClassDuck"] = true,
                        ["Rider"] = true,
            ["MusicVolume"] = 100
                    }
    }

    Remote:FireServer(unpack(Arguments))

    Remote:Remove()
    end)

btns:Label("Rejoin after each Button")

btns:Seperator()

btns:Button("God Mode", function()
local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Wraith)a.Stats.Speed=0;a.Stats.MaxHealth=-1;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Dummy)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Blossom)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Gale)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Maul)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Nowing)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Shatter)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Stubbs)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Infinity)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Residenta)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Lightage)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Vile)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Korblox)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Feder)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.RedCliff)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Overseer)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Ori)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Darkage)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Giant)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.OverseerMinion)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Ekotss)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Agni)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Astral)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Dusk)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.BloxxerMinion)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Archer)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Lol)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Healer)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Egg)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Rider)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Diver)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Noob)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Cube)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Horse)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.NoobSummon)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Dread)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Army)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Bloxxer)a.Stats.MaxHealth=-1;a.Stats.Speed=0;local b=game:GetService("ReplicatedStorage").Creatures.Enemies:FindFirstChild("Residentx")if b then local a=require(game:GetService("ReplicatedStorage").Creatures.Enemies.Residentx)a.Stats.MaxHealth=-1;a.Stats.Speed=0 end;wait()game:GetService"RunService".RenderStepped:Connect(function()local c=game.Workspace:FindFirstChild("Class8BallSmall")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Block")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Class8BallBig")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Ring3")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Class8BallSmall2")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Class8StunBlast")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Class8")if c then local d=c:FindFirstChild("Decor")if d then d:Destroy()end end;local c=game.Workspace:FindFirstChild("Class8ChaseBlast")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Class8Attack")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Class8ChaseBlastb")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Orb")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Trail")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Class8StunBlastb")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Cylinder")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("SoundPart")if c then c:Destroy()end;local c=game.Workspace:FindFirstChild("Ball")if c then c:Destroy()end end)
end)

btns:Seperator()

btns:Button("Ronin:Hitbox extender", function()
game:GetService("Workspace").Class5318008.Katana.HitBox.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("Invader:Hitbox extender", function()
game:GetService("Workspace").Class1.HitBoxes.HitBoxLeft.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class1.HitBoxes.HitBoxRight.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class1.HitBoxes.HitBoxDash.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("Parting:Hitbox extender", function()
game:GetService("Workspace").Class9.Functional.HitBoxRight.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class9.Functional.HitBoxLeft.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class9.Functional.BHitBoxKick.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class9.Functional.HitBoxKick.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class9.Functional.BRootPart.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class9.Functional.BHitBoxRight.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class9.Functional.BHitBoxRight.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Class9.BHitBoxOra.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("Equinox:Hitbox extender", function()
game:GetService("Workspace").Dusk.Illumina.RightHitBox.Size = Vector3.new(999, 999, 999)
game:GetService("Workspace").Dusk.DarkHeart.LeftHitBox.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("Prophet:Hitbox extender", function()
game:GetService("Workspace").Class2.Weapon.HitBox.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("HotRash:Hitbox extender", function()
game:GetService("Workspace").Class0.Sword.HitBox.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("Witness:Hitbox extender", function()
game:GetService("Workspace").Class3.Weapon.HitBoxWeapon.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("Hellion:Carbox extender", function()
game:GetService("Workspace").Rider.Car.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("Dreamer:PianoBox extender", function()
game:GetService("Workspace").Class8.Decor.PianoBox.Size = Vector3.new(999, 999, 999)
end)

btns:Seperator()

btns:Button("Get all Badges", function()
local A_1 = "2124626061"
local Event = game:GetService("ReplicatedStorage").BadgeEvent
Event:FireServer(A_1)
wait()
local A_1 = "2124626062"
local Event = game:GetService("ReplicatedStorage").BadgeEvent
Event:FireServer(A_1)
wait()
local A_1 = "2124626060"
local Event = game:GetService("ReplicatedStorage").BadgeEvent
Event:FireServer(A_1)
wait()
local A_1 = "2124626059"
local Event = game:GetService("ReplicatedStorage").BadgeEvent
Event:FireServer(A_1)
wait()
local A_1 = "2125281456"
local Event = game:GetService("ReplicatedStorage").BadgeEvent
Event:FireServer(A_1)
wait()
local A_1   = "2124984207"
local Event = game:GetService("ReplicatedStorage").BadgeEvent
Event:FireServer(A_1)
wait()
local A_1   = "2125660193"
local Event = game:GetService("ReplicatedStorage").BadgeEvent
Event:FireServer(A_1)
wait()
local A_1 = "2125705092"
local Event = game:GetService("ReplicatedStorage").BadgeEvent
Event:FireServer(A_1)
end)