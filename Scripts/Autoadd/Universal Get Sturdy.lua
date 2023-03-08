for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(1, 25, 1)
end)
end
end

wait(3)
local Frame = (60)
local chr = game.Players.LocalPlayer.Character
Service =
    setmetatable(
    {
        Get = function(Self, Serv)
            if Service[Serv] then
                return Service[Serv]
            end
            local S = game:GetService(Serv)
            if S then
                Service[Serv] = S
            end
            return S
        end
    },
    {
        __index = function(Self, Index)
            local S = game:GetService(Index)
            if S then
                Service[Index] = S
            end
            return S
        end
    }
)

local LP = Service["Players"].LocalPlayer
local Char = LP["Character"]
local Torso, Root, Humanoid = Char["UpperTorso"], Char["HumanoidRootPart"], Char["Humanoid"]
local TService, UIS = Service["TweenService"], Service["UserInputService"]

coroutine.wrap(
    function()
        Root["Anchored"] = true
        wait(.8)
        Root["Anchored"] = false
    end
)()

local Create = function(Obj, Parent)
    local I = Instance.new(Obj)
    I["Parent"] = Parent
    return I
end

local Contains = function(Table, KV)
    for K, V in next, Table do
        if rawequal(KV, K) or rawequal(KV, V) then
            return true
        end
    end
    return false
end

local PoseToCF = function(Pose, Motor)
    return (Motor["Part0"].CFrame * Motor["C0"] * Pose["CFrame"] * Motor["C1"]:Inverse()):ToObjectSpace(
        Motor["Part0"].CFrame
    )
end

local Joints = {
    ["LeftHand"] = game.Players.LocalPlayer.Character.LeftHand["LeftWrist"],
    ["LeftLowerArm"] = chr.LeftLowerArm["LeftElbow"],
    ["LeftUpperArm"] = chr.LeftUpperArm["LeftShoulder"],
    ["RightHand"] = chr.RightHand["RightWrist"],
    ["RightLowerArm"] = chr.RightLowerArm["RightElbow"],
    ["RightUpperArm"] = chr.RightUpperArm["RightShoulder"],
    ["UpperTorso"] = chr.UpperTorso["Waist"],
    ["LeftFoot"] = chr.LeftFoot["LeftAnkle"],
    ["LeftLowerLeg"] = chr.LeftLowerLeg["LeftKnee"],
    ["LeftUpperLeg"] = chr.LeftUpperLeg["LeftHip"],
    ["RightFoot"] = chr.RightFoot["RightAnkle"],
    ["RightLowerLeg"] = chr.RightLowerLeg["RightKnee"],
    ["RightUpperLeg"] = chr.RightUpperLeg["RightHip"],
    ["LowerTorso"] = chr.LowerTorso["Root"]
}

for K, V in next, Char:GetChildren() do
    if V:IsA("BasePart") then
        coroutine.wrap(
            function()
                repeat
                    V["CanCollide"] = false
                    Service["RunService"].Stepped:Wait()
                until Humanoid["Health"] < 1
            end
        )()
    end
end

for K, V in next, Joints do
    local AP, AO, A0, A1 =
        Create("AlignPosition", V["Part1"]),
        Create("AlignOrientation", V["Part1"]),
        Create("Attachment", V["Part1"]),
        Create("Attachment", V["Part0"])
    AP["RigidityEnabled"] = true
    AO["RigidityEnabled"] = true
    AP["Attachment0"] = A0
    AP["Attachment1"] = A1
    AO["Attachment0"] = A0
    AO["Attachment1"] = A1
    A0["Name"] = "CFAttachment0"
    A1["Name"] = "CFAttachment1"
    A0["CFrame"] = V["C1"] * V["C0"]:Inverse()
    V:Remove()
end

local Edit = function(Part, Value, Duration, Style, Direction)
    Style = Style or "Enum.EasingStyle.Linear"
    Direction = Direction or "Enum.EasingDirection.In"
    local Attachment = Part:FindFirstChild("CFAttachment0")
    if Attachment ~= nil then
        TService:Create(
            Attachment,
            TweenInfo.new(
                Duration,
                Enum["EasingStyle"][tostring(Style):split(".")[3]],
                Enum["EasingDirection"][tostring(Direction):split(".")[3]],
                0,
                false,
                0
            ),
            {CFrame = Value}
        ):Play()
    end
end

if not Service["RunService"]:FindFirstChild("Delta") then
    local Delta = Create("BindableEvent", Service["RunService"])
    Delta["Name"] = "Delta"
    local A, B = 0, tick()
    Service["RunService"].Delta:Fire()
    Service["RunService"].Heartbeat:Connect(
        function(C, D)
            A = A + C
            if A >= (1 / Frame) then
                for I = 1, math.floor(A / (1 / Frame)) do
                    Service["RunService"].Delta:Fire()
                end
                B = tick()
                A = A - (1 / Frame) * math.floor(A / (1 / Frame))
            end
        end
    )
end

coroutine.wrap(
    function()
        Humanoid["Died"]:Wait()
        for K, V in next, Char:GetDescendants() do
            if V["Name"]:match("Align") then
                V:Destroy()
            end
        end
    end
)()

local PreloadAnimation = function(AssetId)
    local Sequence = game:GetObjects("rbxassetid://" .. AssetId)[1]
    assert(Sequence:IsA("KeyframeSequence"), "Instance is not a KeyframeSequence.")
    wait(.06)
    local Class = {}
    Class["Speed"] = 1
    local Yield = function(Seconds)
        local Time = Seconds * (Frame + Sequence:GetKeyframes()[#Sequence:GetKeyframes()].Time)
        for I = 1, Time, Class["Speed"] do
            Service["RunService"].Delta["Event"]:Wait()
        end
    end
    Class["Stopped"] = false
    Class["Complete"] = Instance.new("BindableEvent")
    Class["Play"] = function()
        Class["Stopped"] = false
        coroutine.wrap(
            function()
                repeat
                    for K = 1, #Sequence:GetKeyframes() do
                        local K0, K1, K2 =
                            Sequence:GetKeyframes()[K - 1],
                            Sequence:GetKeyframes()[K],
                            Sequence:GetKeyframes()[K + 1]
                        if Class["Stopped"] ~= true and Humanoid["Health"] > 0 then
                            if K0 ~= nil then
                                Yield(K1["Time"] - K0["Time"])
                            end
                            coroutine.wrap(
                                function()
                                    for I = 1, #K1:GetDescendants() do
                                        local Pose = K1:GetDescendants()[I]
                                        if Contains(Joints, Pose["Name"]) then
                                            local Duration =
                                                K2 ~= nil and (K2["Time"] - K1["Time"]) / Class["Speed"] or .5
                                            Edit(
                                                Char[Pose["Name"]],
                                                PoseToCF(Pose, Joints[Pose["Name"]]),
                                                Duration,
                                                Pose["EasingStyle"],
                                                Pose["EasingDirection"]
                                            )
                                        end
                                    end
                                end
                            )()
                        end
                    end
                    Class["Complete"]:Fire()
                until Sequence["Loop"] ~= true or Class["Stopped"] ~= false or Humanoid["Health"] < 1
            end
        )()
    end
    Class["Stop"] = function()
        Class["Stopped"] = true
    end
    Class["Reset"] = function()
        coroutine.wrap(
            function()
                wait(.02)
                assert(Class["Stopped"], "Track Must Be Stopped First!")
                for K, V in next, Joints do
                    local Part = Char[K]
                    if Part ~= nil then
                        local Attachment = Part:FindFirstChild("CFAttachment0")
                        if Attachment ~= nil then
                            Attachment["CFrame"] = V["C1"] * V["C0"]:Inverse()
                        end
                    end
                end
            end
        )()
    end
    return Class
end

Humanoid.WalkSpeed = 16

local Anims = {
    ["Idle"] = PreloadAnimation(4211217646),
    ["Walk"] = PreloadAnimation(913376220),
    ["Run"] = PreloadAnimation(913376220),
    ["Jump"] = PreloadAnimation(507765000),
    ["Fall"] = PreloadAnimation(507767968)
}

wait(1)
local Connections = {}

Mouse = LP:GetMouse()
local Dancing, Running = false, false

local StopAll = function()
    for K, V in next, Anims do
        if V["Stopped"] ~= true then
            V:Stop()
        end
    end
end

Anims["Idle"]:Play()
Dancing = false
Anims["Walk"].Stopped = true
Anims["Run"].Stopped = true

Connections["Run"] =
    Humanoid["Running"]:Connect(
    function(Speed)
        if Speed > 6 and Dancing ~= true and Anims["Walk"].Stopped ~= false and runnning ~= true then
            Anims["Idle"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Walk"]:Play()
        elseif Speed < 5 and Dancing ~= true and Anims["Walk"].Stopped ~= true and runnning ~= true then
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Idle"]:Play()
        elseif Speed < 5 and Dancing ~= true and Anims["Jump"].Stopped ~= true or Anims["Fall"].Stopped ~= true then
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Idle"]:Play()
        end
    end
)
Connections["Jumping"] =
    Humanoid["Jumping"]:Connect(
    function(active)
        if active and Dancing ~= true and Anims["Jump"].Stopped ~= false then
            Anims["Idle"]:Stop()
            Anims["Walk"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Jump"]:Play()
        end
    end
)
Connections["FreeFalling"] =
    Humanoid["FreeFalling"]:Connect(
    function(active)
        if active and Dancing ~= true and Anims["Jump"].Stopped ~= false then
            Anims["Idle"]:Stop()
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Run"]:Stop()
            Anims["Fall"]:Play()
        end
    end
)

Mouse.KeyDown:connect(
    function(key)
        if key:lower() == string.char(48) then --string.char(48) is just shift
            if Humanoid and Anims["Walk"].Stopped ~= true then
                Anims["Walk"]:Stop()
                Anims["Jump"]:Stop()
                Anims["Fall"]:Stop()
                Anims["Idle"]:Stop()
                Anims["Run"]:Play()
                runnning = true
                Humanoid.WalkSpeed = 26
            end
        end
    end
)

--When button is lifted
Mouse.KeyUp:connect(
    function(key)
        if key:lower() == string.char(48) then --string.char(48) is just shift
            if Humanoid then
                runnning = false
                Humanoid.WalkSpeed = 16
            end
        end
    end
)

wait(1)
local Bind = function(Id, Key, Speed)
    Speed = Speed or 1
    local Animation = PreloadAnimation(Id)
    table.insert(Anims, Animation)
    local V =
        UIS.InputBegan:Connect(
        function(Input, P)
            if Input.KeyCode == Enum.KeyCode[Key] and P ~= true then
                if Dancing ~= true then
                    Dancing = true
                    StopAll()
                    wait(.1)
                    Animation:Play()
                    Animation["Speed"] = Speed
                else
                    Dancing = false
                    StopAll()
                    wait(.1)
                    Anims["Idle"]:Play()
                end
            end
        end
    )
end

Bind(10507080897, "Q", 1)
wait(0.1)
Bind(10731649737, "Y", 1)
wait(0.1)
Bind(10724052169  , "E", 1)
wait(0.1)
Bind(10722615238 , "R", 1)
wait(0.1)
Bind(5971749922, "T", 1)
wait(0.1)
Bind(5349599731, "U", 2)
wait(0.1)
Bind(5641878449, "F", 1)
wait(0.1)
Bind(5943669474, "O", 1)
wait(0.1)
Bind(6024896974, "G", 1)
wait(0.1)
Bind(10881761394, "H", 1)
wait(0.1)
Bind(1574383214, "J", 1)
wait(0.1)
Bind(10881753261, "K", 1)
wait(0.1)
Bind(5349600811, "L", 1)
wait(0.1)
Bind(10881645631, "Z", 1)
wait(0.1)
Bind(10881661040, "X", 1)
wait(0.1)
Bind(10881685708, "C", 1)
wait(0.1)
Bind(5943658900, "V", 1)
wait(0.1)
Bind(10881733560, "B", 1)
wait(0.1)
Bind(10881694331, "N", 1)
wait(0.1)
Bind(5927871610, "M", 1)