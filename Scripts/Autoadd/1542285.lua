getgenv().LoadLibrary = function(lib) return loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox/Core-Scripts/master/CoreScriptsRoot/Libraries/" .. lib .. ".lua"))() end
local delremote = game.ReplicatedStorage.DeleteCar
local function delete(v)
    delremote:FireServer(v)
end

local hatNames = {
    "Robloxclassicred",
    "LavanderHair",
    "Pal Hair",
    "Pink Hair",
    "MeshPartAccessory"
}

-- 29532720,451220849,62724852,63690008,48474294
HumanDied = false

local localPlayer = game.Players.LocalPlayer
local char = localPlayer.Character
local rchar = char
local connections = {}
local rs = game:GetService("RunService")
local physics = settings().Physics
local ti = table.insert
local rad = math.rad
local sethiddenproperty = sethiddenproperty or function(i,k,v) pcall(function() i[k] = v end) end
local mouse = localPlayer:GetMouse()
char.Archivable = true
local reanim = char:Clone()


local function breakJoints(instance)
    for i,v in pairs(instance:GetDescendants()) do
        if not (v:IsA("Weld") or v:IsA("WeldConstraint") or v:IsA("JointInstance")) then continue end
        delete(v)
    end
end

local function removeMesh(hat)
    local hat = char[hat]
    for i,mesh in pairs(hat:GetDescendants()) do
        if hat.Name == "MeshPartAccessory" or not (mesh:IsA("Mesh") or mesh:IsA("SpecialMesh")) then continue end
        delete(mesh)
    end
end

for i,v in pairs(char:GetDescendants()) do
    if not v:IsA("BasePart") then continue end
    rs.Heartbeat:connect(function()
        v.Velocity = Vector3.new(25.05,25.05,25.05)
        sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999)
    end)
end

sethiddenproperty(char.Humanoid, "InternalBodyScale", Vector3.new(9e9,9e9,9e9))
sethiddenproperty(Workspace, "PhysicsSteppingMethod", Enum.PhysicsSteppingMethod.Fixed)
sethiddenproperty(Workspace, "SignalBehavior", "Immediate")
Workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Disabled
physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
physics.AllowSleep = false
physics.ForceCSGv2 = false
physics.DisableCSGv2 = false
physics.UseCSGv2 = false
physics.ThrottleAdjustTime = 1/0
Workspace.Retargeting = "Disabled"

reanim.Name = "quirky reanim"
reanim.PrimaryPart = reanim["HumanoidRootPart"]
reanim.Parent = workspace

local function align(part, parent, p, r)
    ti(connections, rs.RenderStepped:Connect(function()
        local posOffset = p or CFrame.new(0,0,0)
        local rotOffset = r or CFrame.Angles(0,0,0)
        part.CFrame = parent.CFrame * posOffset * rotOffset
    end))
end
local hats = {
    LA = reanim["Robloxclassicred"].Handle,
    RA = reanim["LavanderHair"].Handle,
    LL = reanim["Pal Hair"].Handle,
    RL = reanim["Pink Hair"].Handle,
    T = reanim["MeshPartAccessory"].Handle
}

for i,v in pairs(hats) do
    v.AccessoryWeld.C1 = CFrame.new(0,0,0)*CFrame.Angles(rad(90),0,0)
    v.AccessoryWeld.C0 = CFrame.new(0,0,0)*CFrame.Angles(rad(90),0,0)
end

for i,v in pairs(char:GetChildren()) do
    if not v:IsA("Accessory") then continue end
    breakJoints(v.Handle)
    
    if v.Name == "MeshPartAccessory" then
        align(v.Handle,hats.T, CFrame.new(0,0,0), CFrame.Angles(0,0,rad(-10)))
        continue
    end

    if table.find(hatNames, v.Name) and v.Name ~= "MeshPartAccessory" then 
        align(v.Handle,reanim:FindFirstChild(v.Name).Handle, CFrame.new(0,0,0), CFrame.Angles(rad(90),0,0))
        continue
    end
    align(v.Handle,reanim:FindFirstChild(v.Name).Handle, CFrame.new(0,0,0), CFrame.Angles(0,0,0))
end




hats.LA.AccessoryWeld.Part1 = reanim["Left Arm"]
hats.RA.AccessoryWeld.Part1 = reanim["Right Arm"]
hats.RL.AccessoryWeld.Part1 = reanim["Right Leg"]
hats.LL.AccessoryWeld.Part1 = reanim["Left Leg"]
hats.T.AccessoryWeld.Part1 = reanim["Torso"]

for i,v in pairs(reanim:GetDescendants()) do
    if not (v:IsA("BasePart") or v:IsA("Decal")) then continue end
    v.Transparency = 1
end

for i,v in pairs(char:GetDescendants()) do
    if not v:IsA("BasePart") then continue end
    ti(connections,rs.Stepped:Connect(function()
        v.CanCollide = false
    end))
end

for i,v in pairs(reanim:GetDescendants()) do
    if not v:IsA("BasePart") then continue end
    ti(connections,rs.Stepped:Connect(function()
        v.CanCollide = false
    end))
end

delete(char:FindFirstChildOfClass("Humanoid"))

for i,v in pairs(char:GetChildren()) do
    if not v:IsA("BasePart") then continue end
    delete(v)
end

for i,v in pairs(reanim:GetDescendants()) do
    if v:IsA("BasePart") then
        ti(connections,rs.RenderStepped:Connect(function()
            v.CanCollide = false
        end))
    end
end

for i,v in pairs(hatNames) do
    removeMesh(v)
end

localPlayer.Character = reanim
workspace.CurrentCamera.CameraSubject = reanim

mouse.TargetFilter = char

ti(connections,reanim.Humanoid.Died:Connect(function()
    for i,v in pairs(connections) do
        v:Disconnect()
    end
    char:PivotTo(CFrame.new(0,workspace.FallenPartsDestroyHeight-10,0))
    reanim:Destroy()
    --game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,localPlayer)
end))

for i,v in pairs(char:GetDescendants()) do
    if not v:IsA("TouchTransmitter") then continue end
    delete(v)
end

for i,v in pairs(reanim:GetChildren()) do
    if not v:IsA("ForceField") then continue end
    v:Destroy()
end

char.DescendantAdded:Connect(function(v)
    if not v:IsA("TouchTransmitter") then return end
    delete(v)
end)

reanim.Animate.Disabled = true
reanim.Animate.Disabled = false