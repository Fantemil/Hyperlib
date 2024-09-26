local plr = game.Players.LocalPlayer
local tool = Instance.new("Tool", plr.Backpack)
tool.GripPos = Vector3.new(0, 0, -1.5)
tool.GripForward = Vector3.new(0, -1, 0)  -- Adjusted to face upward
tool.GripRight = Vector3.new(1, 0, 0)
tool.GripUp = Vector3.new(0, 0, 1)
tool.Name = "ClassicSword"
tool.TextureId = "rbxasset://Textures/Sword128.png"
tool.RequiresHandle = true
tool.CanBeDropped = true

local k = Instance.new("Part", tool)
k.Name = "Handle"
k.Size = Vector3.new(1, 0.8, 4)
k.Anchored = false
k.CanCollide = false


local mesh = Instance.new("SpecialMesh", k)
mesh.MeshId = "rbxasset://fonts/sword.mesh" -- Replace with your mesh ID
mesh.TextureId = "rbxasset://textures/SwordTexture.png" 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.Offset = Vector3.new(0, 0, 0)
mesh.VertexColor = Vector3.new(1, 1, 1)

local Unsheath = Instance.new("Sound", k)
Unsheath.SoundId = "http://www.roblox.com/asset/?id=12222225"
Unsheath.Volume = "1"
Unsheath.TimePosition = 0

local SwordSlash = Instance.new("Sound", k)
SwordSlash.SoundId = "http://www.roblox.com/asset/?id=12222216"
SwordSlash.Volume = "1"
SwordSlash.TimePosition = 0


local l = Instance.new("Animation", tool)
l.AnimationId = "rbxassetid://94161088"
local m = plr.Character.Humanoid:LoadAnimation(l)

local db = true
local da = false

tool.Equipped:Connect(function()
Unsheath:Play()
wait(1)
    tool.Activated:Connect(function()
        if db == true then
            db = false
			SwordSlash:Play()
            m:Play()
            wait()
            da = true
            db = true
            wait(2)
            da = false
			m:Stop()
        end
    end)
end)

k.Touched:Connect(function(n)
    if da == true then
        local o = n.Parent:FindFirstChild("Humanoid")
        if o ~= nil then
            local p = game.Players:FindFirstChild(n.Parent.Name)
            for j = 1, 10 do
                if p.Name ~= "FunnyVideo15" then
                    if game:GetService("ReplicatedStorage"):FindFirstChild("juisdfj0i32i0eidsuf0iok") then
                        hiddenfling = true
                    else
                        hiddenfling = true
                        local detection = Instance.new("Decal")
                        detection.Name = "juisdfj0i32i0eidsuf0iok"
                        detection.Parent = game:GetService("ReplicatedStorage")
                        
                        local function fling()
                            local hrp, c, vel, movel = nil, nil, nil, 0.1
                            while true do
                                game:GetService("RunService").Heartbeat:Wait()
                                if hiddenfling then
                                    local lp = game.Players.LocalPlayer
                                    while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
                                        game:GetService("RunService").Heartbeat:Wait()
                                        c = lp.Character
                                        hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
                                    end
                                    if hiddenfling then
                                        vel = hrp.Velocity
                                        hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
                                        game:GetService("RunService").RenderStepped:Wait()
                                        if c and c.Parent and hrp and hrp.Parent then
                                            hrp.Velocity = vel
                                        end
                                        game:GetService("RunService").Stepped:Wait()
                                        if c and c.Parent and hrp and hrp.Parent then
                                            hrp.Velocity = vel + Vector3.new(0, movel, 0)
                                            movel = movel * -1
                                        end
                                    end
                                end
                            end
                        end
                        
                        fling()
                    end
                end 
            end
        end 
    end
	
	wait(2)
	
	hiddenfling = false
end)