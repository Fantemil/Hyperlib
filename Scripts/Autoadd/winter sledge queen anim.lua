--I patched the damage, my bad for taking too long--

local cursorkey = "8"
local enemykey = "7"

local lp = game.Players.LocalPlayer
local gui = lp.PlayerGui
local rs = game.ReplicatedStorage
local ms = lp:GetMouse()

        local findorigin = game.ReplicatedStorage.animationSets.TPanimSets["2H"]:GetChildren()
        for i,findanim in ipairs(findorigin) do
            if findanim:IsA("Animation") then
            if findanim.Name == "swing" then
                findanim.AnimationId = game.ReplicatedStorage.animationSets.TPanimSets["2QU"].swing.AnimationId
            end
            if findanim.Name == "swing2" then
                findanim.AnimationId = game.ReplicatedStorage.animationSets.TPanimSets["2QU"].swing2.AnimationId
            end
            if findanim.Name == "block" then
                findanim.AnimationId = game.ReplicatedStorage.animationSets.TPanimSets["2QU"].bulletblock.AnimationId
            end
             if findanim.Name == "equip" then
                findanim.AnimationId = game.ReplicatedStorage.animationSets.TPanimSets["2QU"].equip.AnimationId
             end
         if findanim.Name == "charge" then
                findanim.AnimationId = game.ReplicatedStorage.animationSets.TPanimSets["2QU"].charge.AnimationId
            end
            end
end

local active = true
_G.Code1 = nil;
_G.Code2 = nil;

local function GrabMainScript()
    local Script = nil
    for i,v in pairs(game.Players.LocalPlayer.Backpack.GetChildren(game.Players.LocalPlayer.Backpack)) do
        if v:IsA("LocalScript") and v.Name ~= "ClickDetectorScript" then
            Script = v
        end
    end
    return Script
end

local function GrabEssentials()
    local FunnyPlace = getrenv()._G
    local TempEnv = getsenv(GrabMainScript())
    repeat
        FunnyPlace = getrenv()._G
        TempEnv = getsenv(GrabMainScript())
        wait(0.3)
    until FunnyPlace["keylist"] ~= nil and TempEnv["afflictstatus"] ~= nil
    wait(1)
    if TempEnv["afflictstatus"] ~= nil then
        local upvalues = getupvalues(TempEnv.afflictstatus)
        for i,v in pairs(upvalues) do
            if _G.Code1 ~= nil then
                break
            end
            if typeof(v) == "number" then
                for x,y in pairs(FunnyPlace) do
                    if y == v then
                        _G.Code1 = v
                        break
                    end
                end
            end
        end
        local CorrectIndex = math.huge
        for i,v in pairs(upvalues) do
            if v == _G.Code1 and tonumber(i) ~= nil then
                CorrectIndex = i + 1
            end
            if i == CorrectIndex then
                _G.Code2 = v
            end
        end
    end
    TempEnv = nil
    FunnyPlace = nil
end
GrabMainScript()
GrabEssentials()
if workspace:FindFirstChild("ServerKey") then
    else
local sid = Instance.new("NumberValue",workspace)
sid.Name = "ServerKey"
sid.Value = _G.Code1

local pid = Instance.new("NumberValue",workspace)
pid.Name = "PlayerKey"
pid.Value = _G.Code2
 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "😎😎😎",
	Text = "Loaded.",
	})
	 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "CONTROLS",
	Text = "7 to jump to nearest enemy",
})
 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "CONTROLS", 
	Text = "8 to jump to your cursor", 
})
end

local cooldown = false
ms.KeyDown:connect(function(Key)
  
if Key == enemykey and active == true then
    if cooldown == false then
        cooldown = true
    local queenanim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.animationSets.TPanimSets.special.queen_jump)
     queenanim:Play()
     local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_windup",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
     wait(0.3)
     game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,100,0)
    local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_fire",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
local args = {
    [1] = "shotshell_blast",
    [2] = game:GetService("Players").LocalPlayer.Character,
    [3] = game:GetService("Players").LocalPlayer,
    [4] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,1.5,0)
    }
}

workspace.ServerStuff.applyGore:FireServer(unpack(args))

wait(0.4)
local args = {
    [1] = "shotshell_blast",
    [2] = game:GetService("Players").LocalPlayer.Character,
    [3] = game:GetService("Players").LocalPlayer,
    [4] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*-2.5
    }
}

workspace.ServerStuff.applyGore:FireServer(unpack(args))
  local bp = Instance.new("BodyPosition",game:GetService("Players").LocalPlayer.Character.HumanoidRootPart)
     bp.MaxForce = Vector3.new(10000000,10000000,10000000)
     bp.P = 27500
     local closestDistance, closestHumanoid = math.huge, nil
		for _, humanoid in ipairs(workspace.activeHostiles:GetDescendants()) do
			if humanoid:IsA("Humanoid") then
				local humanModel = humanoid:FindFirstAncestorOfClass("Model")
				if humanModel then
					if humanModel.PrimaryPart then
						local distance = game.Players.LocalPlayer:DistanceFromCharacter(humanModel.PrimaryPart.Position)
						if distance < closestDistance then
							closestDistance = distance
							closestHumanoid = humanModel
						end
					end
				end
			end
		end
		if closestHumanoid ~= nil then
		    bp.Position = closestHumanoid.HumanoidRootPart.Position
		    end
     spawn(function()
         wait(0.6)
         bp:Destroy()
         end)
local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_fire",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
wait(0.1)
  local queenanim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.animationSets.TPanimSets.special.queen_jump_attack)
     queenanim:Play()
wait(0.4)

local args = {
    [1] = {
        [1] = "general"
    },
    [2] = "mineexplosion",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
local args = {
    [1] = "shotshell_blast",
    [2] = game:GetService("Players").LocalPlayer.Character,
    [3] = game:GetService("Players").LocalPlayer,
    [4] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,1.5,0)
    }
}

workspace.ServerStuff.applyGore:FireServer(unpack(args))
local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_punch_hit",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "tick_explosion",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,1.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}

workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,6.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}

workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,-3.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}

workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,1.5,5)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}
workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(5,1.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}
workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(-5,1.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}
workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,1.5,-5)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}

workspace.ServerStuff.dealDamage:FireServer(unpack(args))
wait(0.4)
 local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_pump",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
wait(15)
cooldown = false
end
end
if Key == cursorkey and active == true then
    if cooldown == false then
        cooldown = true
        local hitpos = ms.hit.Position
    local queenanim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.animationSets.TPanimSets.special.queen_jump)
     queenanim:Play()
     local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_windup",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
     wait(0.3)
     game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,100,0)
    local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_fire",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
local args = {
    [1] = "shotshell_blast",
    [2] = game:GetService("Players").LocalPlayer.Character,
    [3] = game:GetService("Players").LocalPlayer,
    [4] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,1.5,0)
    }
}

workspace.ServerStuff.applyGore:FireServer(unpack(args))

wait(0.4)
local args = {
    [1] = "shotshell_blast",
    [2] = game:GetService("Players").LocalPlayer.Character,
    [3] = game:GetService("Players").LocalPlayer,
    [4] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*-2.5
    }
}

workspace.ServerStuff.applyGore:FireServer(unpack(args))
  local bp = Instance.new("BodyPosition",game:GetService("Players").LocalPlayer.Character.HumanoidRootPart)
     bp.MaxForce = Vector3.new(10000000,10000000,10000000)
     bp.P = 27500
    bp.Position = hitpos
     spawn(function()
         wait(0.6)
         bp:Destroy()
         end)
local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_fire",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
wait(0.1)
  local queenanim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.animationSets.TPanimSets.special.queen_jump_attack)
     queenanim:Play()
wait(0.4)

local args = {
    [1] = {
        [1] = "general"
    },
    [2] = "mineexplosion",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
local args = {
    [1] = "shotshell_blast",
    [2] = game:GetService("Players").LocalPlayer.Character,
    [3] = game:GetService("Players").LocalPlayer,
    [4] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,1.5,0)
    }
}

workspace.ServerStuff.applyGore:FireServer(unpack(args))
local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_punch_hit",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "tick_explosion",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,1.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}

workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,6.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}

workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,-3.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}

workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,1.5,5)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}
workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(5,1.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}
workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(-5,1.5,0)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}
workspace.ServerStuff.dealDamage:FireServer(unpack(args))
local args = {
    [1] = "shotshell",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*2.5 - Vector3.new(0,1.5,-5)
    },
    [3] = workspace.ServerKey.Value,
    [4] = workspace.PlayerKey.Value
}

workspace.ServerStuff.dealDamage:FireServer(unpack(args))
wait(0.4)
 local args = {
    [1] = {
        [1] = "perks"
    },
    [2] = "shotshell_pump",
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
wait(15)
cooldown = false
end
end
if key == "n" and active == true then
    active = false
    end
end)
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
wait(0.25)
local queenanim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.animationSets.TPanimSets.global.queen_fall)
     queenanim:Play()
     queenanim:AdjustSpeed(0.75)
     wait(0.2)
          local args = {
    [1] = {
        [1] = "AGENT",
         [2] = "hvt",
    },
    [2] = game.ReplicatedStorage.soundLibrary.AGENT.hvt:GetChildren()[math.random(1,#game.ReplicatedStorage.soundLibrary.AGENT.hvt:GetChildren())].Name,
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
  local args = {
    [1] = {
        [1] = "AGENT",
         [2] = "hvt",
    },
    [2] = game.ReplicatedStorage.soundLibrary.AGENT.hvt:GetChildren()[math.random(1,#game.ReplicatedStorage.soundLibrary.AGENT.hvt:GetChildren())].Name,
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
end)
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(gui)
    if gui.Name == "mainHUD" then
        game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "wait bro",
	Text = "Spawn Found, Loading...",
})
   wait(3)
   
   GrabMainScript()
        GrabEssentials()
        if workspace:FindFirstChild("ServerKey") then
            local sid = workspace.ServerKey
sid.Name = "ServerKey"
sid.Value = _G.Code1

local pid = workspace.PlayerKey
pid.Name = "PlayerKey"
pid.Value = _G.Code2
 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "fucking awesome",
	Text = "Loaded.", 
	})
	 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "CONTROLS", 
	Text = "7 to jump to nearest enemy",
})
 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "CONTROLS", 
	Text = "8 to jump to your cursor", 
})
    else
local sid = Instance.new("NumberValue",workspace)
sid.Name = "ServerKey"
sid.Value = _G.Code1

local pid = Instance.new("NumberValue",workspace)
pid.Name = "PlayerKey"
pid.Value = _G.Code2
 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "fucking awesome",
	Text = "Loaded.", 
	})
	 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "CONTROLS",
	Text = "7 to jump to nearest enemy",
})
 game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "CONTROLS",
	Text = "8 to jump to your cursor",
})
end
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
wait(0.25)
local queenanim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.animationSets.TPanimSets.global.queen_fall)
     queenanim:Play()
     queenanim:AdjustSpeed(0.75)
     wait(0.2)
          local args = {
    [1] = {
        [1] = "AGENT",
         [2] = "hvt",
    },
    [2] = game.ReplicatedStorage.soundLibrary.AGENT.hvt:GetChildren()[math.random(1,#game.ReplicatedStorage.soundLibrary.AGENT.hvt:GetChildren())].Name,
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
  local args = {
    [1] = {
        [1] = "AGENT",
         [2] = "hvt",
    },
    [2] = game.ReplicatedStorage.soundLibrary.AGENT.hvt:GetChildren()[math.random(1,#game.ReplicatedStorage.soundLibrary.AGENT.hvt:GetChildren())].Name,
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

workspace.ServerStuff.playAudio:FireServer(unpack(args))
end)
end
end)
workspace.CurrentCamera.ChildAdded:Connect(function(idiot)
    spawn(function()
        wait(2)
    if idiot:IsA("BasePart") then
        idiot:Destroy()
    end
    end)
end)