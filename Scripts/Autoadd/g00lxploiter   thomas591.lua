
local p = game.Players.LocalPlayer.Character
local weld = Instance.new("Weld",p.Torso)
weld.Part0 = p.Torso

local train = Instance.new("Part",p.Torso)
train.Anchored = true
train.CanCollide = false
train.Size = Vector3.new(3,2,6)
train.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = train
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(180),0)
train.Anchored = false
local TrainMesh = Instance.new("SpecialMesh",train)
TrainMesh.MeshType = Enum.MeshType.FileMesh
TrainMesh.Scale = Vector3.new(0.020,0.020,0.015)
TrainMesh.MeshId = "rbxassetid://431017802"
TrainMesh.TextureId = "rbxassetid://431017809"


local weld2 = Instance.new("Weld",p.Torso)
weld2.Part0 = p.Torso
local Smoke = Instance.new("Part",p.Torso)
Smoke.Anchored = true
Smoke.CanCollide = false
Smoke.Size = Vector3.new(1,1,1)
Smoke.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld2.Part1 = Smoke
weld2.C1 = CFrame.new(0,-4,3.5)-- * CFrame.Angles(0,math.rad(180),0)
Smoke.Anchored = false
Smoke.Transparency = 1;

local Particle = Instance.new("ParticleEmitter",Smoke)
Particle.Rate = 100;
Particle.Speed = NumberRange.new(30,60);
Particle.VelocitySpread = 4;
Particle.Texture = "rbxassetid://133619974"

local Light = Instance.new("SpotLight",train)
Light.Angle = 45;
Light.Brightness = 100;
Light.Face = Enum.NormalId.Back;
Light.Range = 30;

p.Humanoid.WalkSpeed = 80;

for i,v in pairs(p:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = 1;
	elseif v:IsA("Hat") then
		v:Destroy()
	elseif v:IsA("Model") then
		v:Destroy()
	end
end


local function SFX(id) local s=Instance.new("Sound",p.Torso); s.SoundId = "rbxassetid://"..id; s.Volume = 1; return s; end
train.Touched:connect(function(p)
	if p.Parent then
		if p.Parent:IsA("Model") then
			if game.Players:FindFirstChild(p.Parent.Name) then
				if p.Parent.Name ~= game.Players.LocalPlayer.Name then
					game.Players:FindFirstChild(p.Parent.Name)
					local Whistle = SFX(475073913)
					Whistle:Play()
				end
			end
		end
	end
end)

local Music = SFX(190819252)
Music.Looped = true;
wait(1)
Music:Play();
-- ~CL 2016

wait(0.9)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end

wait(0.1)

local lplr = game.Players.LocalPlayer

local check = function(character : Model)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 and (lplr.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude <= 9 then
        return true
    else
        return false
    end
end

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and check(v.Character) then
            game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
        end
    end
end
