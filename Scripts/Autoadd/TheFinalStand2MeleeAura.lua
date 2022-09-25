local localPlayer = game:GetService("Players").LocalPlayer

local function getClosest()
    local closestPlayer = nil
    local shortestDistance = math.huge
    
    for i, v in pairs(game:GetService("Workspace").Zombies:GetChildren()) do
        if v:FindFirstChild("Zombie") and v.Zombie.Health ~= 0 and v:FindFirstChild("Torso") and v:FindFirstChild("Head") then
            local magnitude = (v.Torso.Position - localPlayer.Character.Torso.Position).magnitude

            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end

    return closestPlayer
end
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("welcome to")

local b = w:CreateFolder("i forgor the name") 

b:Button("Knife aura",function()
  

while true do
    wait()

local args = {
    [1] = "Melee",
    [2] = {
        [1] = {
            [2] = {},
            [1] = getClosest():FindFirstChild("Head")
        }
    }
}

game:GetService("ReplicatedStorage").RemoteEvents.RemoteFireMelee:FireServer(unpack(args))


end

end)
b:Button("Bat aura",function()
    
local localPlayer = game:GetService("Players").LocalPlayer

while true do
    wait()
spawn(function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Baseball Bat"),
    [2] = {
        [1] = {
            [1] = getClosest():FindFirstChild("Head"),
            [2] = {
                ["Critical"] = true,
                ["OverDamage"] = true,
                ["ActiveAnimation"] = "Over"
            }
        }
    },
    [3] = {
        ["ActiveAnimation"] = "Over"
    }
}

game:GetService("ReplicatedStorage").RemoteEvents.RemoteFireMelee:FireServer(unpack(args))
end)
end
end)
b:Button("mil axe aura",function()
    
while true do
    wait()
spawn(function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Military Axe"),
    [2] = {
        [1] = {
            [1] = getClosest():FindFirstChild("Head"),
            [2] = {
                ["Critical"] = true,
                ["OverDamage"] = true,
                ["ActiveAnimation"] = "Over"
            }
        }
    },
    [3] = {
        ["ActiveAnimation"] = "Over"
    }
}

game:GetService("ReplicatedStorage").RemoteEvents.RemoteFireMelee:FireServer(unpack(args))
end)
end
end)
b:Button("katana aura",function()
    
while true do
    wait()

spawn(function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Katana"),
    [2] = {
        [1] = {
            [1] = getClosest():FindFirstChild("Head"),
            [2] = {
                ["Critical"] = true,
                ["OverDamage"] = true,
                ["ActiveAnimation"] = "Over"
            }
        }
    },
    [3] = {
        ["ActiveAnimation"] = "Over"
    }
}

game:GetService("ReplicatedStorage").RemoteEvents.RemoteFireMelee:FireServer(unpack(args))
end)
end
end)
b:Button("Energy sword aura",function()
    
while true do
    wait()
spawn(function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy Sword"),
    [2] = {
        [1] = {
            [1] = getClosest():FindFirstChild("Head"),
            [2] = {
                ["Critical"] = true,
                ["ActiveAnimation"] = "Right",
                ["AltDamage"] = true
            }
        }
    },
    [3] = {
        ["ActiveAnimation"] = "Right"
    }
}

game:GetService("ReplicatedStorage").RemoteEvents.RemoteFireMelee:FireServer(unpack(args))
end)
end
end)