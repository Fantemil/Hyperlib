--[[---------Settings---------]]--
spawn(function()
    while wait() do
        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)
    end
end)
game.RunService.Stepped:Connect(function()
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
game.Players.LocalPlayer.MaximumSimulationRadius = math.huge
end)
local bodyTransparency = 0 --Change the transparency of your character (0 - 1)
local bodyVelocity = {-17.7, 0, -17.7} --Change your body parts velocity. First number value is the X value. Second number value is the Y value. Third number value is the Z value.
local hatVelocity = {-17.7, 0, -17.7} --Change your accessory's velocity. First number value is the X value. Second number value is the Y value. Third number value is the Z value.
--Velocity is not recommended to be (-17.7, 0, -17.7) in R15 since body parts often fall in R15.
--[[--------------------------]]--

local player1 = game.Players.LocalPlayer
local character1 = player1.Character

--Fake Character--
--Create Attachment Function
local function CreateAttachment(parent, position, orientation, axis, secondaryAxis, name)
    local newAttchment = Instance.new("Attachment", parent)
    newAttchment.Position = position
    newAttchment.Orientation = orientation
    newAttchment.Axis = axis
    newAttchment.SecondaryAxis = secondaryAxis
    newAttchment.Name = name
end

--Variables
local player1 = game:GetService("Players").LocalPlayer
local character1 = player1.Character
local hrp = character1.HumanoidRootPart

for i,v in pairs(character1:GetChildren()) do
    if v:IsA("LocalScript") then
        v:Destroy()
    end
end

local camera = workspace.CurrentCamera

local reanimFolder = Instance.new("Folder", character1)
reanimFolder.Name = "FakeCharacter"

local model = Instance.new("Model", reanimFolder)
model.Name = "Reanimation"

local userInputService = game:GetService("UserInputService")
local movingW, movingA, movingS, movingD, jumping = false

--Body Parts--
--Head
local cHead = Instance.new("Part", model)
cHead.Size = Vector3.new(2, 1, 1)
cHead.Name = "Head"

--Torso
local cTorso = Instance.new("Part", model)
cTorso.Size = Vector3.new(2, 2, 1)
cTorso.Name = "Torso"

--Left Arm
local cLArm = Instance.new("Part", model)
cLArm.Size = Vector3.new(1, 2, 1)
cLArm.Name = "Left Arm"

--Right Arm
local cRArm = Instance.new("Part", model)
cRArm.Size = Vector3.new(1, 2, 1)
cRArm.Name = "Right Arm"

--Left Leg
local cLLeg = Instance.new("Part", model)
cLLeg.Size = Vector3.new(1, 2, 1)
cLLeg.Name = "Left Leg"

--Right Leg
local cRLeg = Instance.new("Part", model)
cRLeg.Size = Vector3.new(1, 2, 1)
cRLeg.Name = "Right Leg"

--HumanoidRootPart
local cHRP = Instance.new("Part", model)
cHRP.Size = Vector3.new(2, 2, 1)
cHRP.Name = "HumanoidRootPart"
cHRP.Transparency = 1
cHRP.CanCollide = false

--Transparency
for i,v in pairs(model:GetChildren()) do
    if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 1--0.5
    end
end

--Joints--
--Right Shoulder
local rShoulder = Instance.new("Motor6D", cTorso)
rShoulder.Part0 = cTorso
rShoulder.Part1 = cRArm
rShoulder.Name = "Right Shoulder"
rShoulder.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
rShoulder.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)

--Left Shoulder
local lShoulder = Instance.new("Motor6D", cTorso)
lShoulder.Part0 = cTorso
lShoulder.Part1 = cLArm
lShoulder.Name = "Left Shoulder"
lShoulder.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
lShoulder.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

--Right Hip
local rHip = Instance.new("Motor6D", cTorso)
rHip.Part0 = cTorso
rHip.Part1 = cRLeg
rHip.Name = "Right Hip"
rHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
rHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)

--Left Hip
local lHip = Instance.new("Motor6D", cTorso)
lHip.Part0 = cTorso
lHip.Part1 = cLLeg
lHip.Name = "Left Hip"
lHip.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
lHip.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

--Neck
local neck = Instance.new("Motor6D", cTorso)
neck.Part0 = cTorso
neck.Part1 = cHead
neck.Name = "Neck"
neck.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
neck.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)

--RootJoint
local rootJoint = Instance.new("Motor6D", cHRP)
rootJoint.Part0 = cHRP
rootJoint.Part1 = cTorso
rootJoint.Name = "RootJoint"
rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
rootJoint.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)

--Humanoid--
local cHumanoid = Instance.new("Humanoid", model)
cHumanoid.DisplayDistanceType = "None"

--Head Mesh--
local headMesh = Instance.new("SpecialMesh", cHead)
headMesh.Scale = Vector3.new(1.25, 1.25, 1.25)

local reanimation = model

--Creating Attachments
CreateAttachment(cHead, Vector3.new(0,0.60000002384186,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "HairAttachment")
CreateAttachment(cHead, Vector3.new(0,0.60000002384186,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "HatAttachment")
CreateAttachment(cHead, Vector3.new(0,0,-0.60000002384186), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "FaceFrontAttachment")
CreateAttachment(cHead, Vector3.new(0,0,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "FaceCenterAttachment")
CreateAttachment(cTorso, Vector3.new(0,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "NeckAttachment")
CreateAttachment(cTorso, Vector3.new(0,0,-0.5), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "BodyFrontAttachment")
CreateAttachment(cTorso, Vector3.new(0,0,0.5), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "BodyBackAttachment")
CreateAttachment(cTorso, Vector3.new(-1,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "LeftCollarAttachment")
CreateAttachment(cTorso, Vector3.new(1,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RightCollarAttachment")
CreateAttachment(cTorso, Vector3.new(0,-1,-0.5), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "WaistFrontAttachment")
CreateAttachment(cTorso, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "WaistCenterAttachment")
CreateAttachment(cTorso, Vector3.new(0,-1,0.5), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "WaistBackAttachment")
CreateAttachment(cLArm, Vector3.new(0,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "LeftShoulderAttachment")
CreateAttachment(cLArm, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "LeftGripAttachment")
CreateAttachment(cRArm, Vector3.new(0,1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RightShoulderAttachment")
CreateAttachment(cRArm, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RightGripAttachment")
CreateAttachment(cLLeg, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "LeftFootAttachment")
CreateAttachment(cRLeg, Vector3.new(0,-1,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RightFootAttachment")
CreateAttachment(cHRP, Vector3.new(0,0,0), Vector3.new(-0,0,0), Vector3.new(1,0,0), Vector3.new(0,1,0), "RootAttachment")

--Cloning Hats (For Netless)
for i,v in pairs(character1:GetChildren()) do
    if v:IsA("Accessory") then
        local clone = v:Clone()
        local weld = v.Handle:FindFirstChildWhichIsA("Weld")
        local weldPart1 = weld.Part1
        local newWeld = Instance.new("Weld", clone.Handle)
        local CFrame0 = v.Handle.AccessoryWeld.C0
        local CFrame1 = v.Handle.AccessoryWeld.C1
        
        clone.Handle:FindFirstChild("AccessoryWeld"):Destroy()
        clone.Parent = reanimation
        newWeld.Name = "AccessoryWeld"
        newWeld.C0 = CFrame0
        newWeld.C1 = CFrame1
        newWeld.Part0 = clone.Handle
        newWeld.Part1 = character1:FindFirstChild(weldPart1.Name)
        clone.Handle.Transparency = 1
    end
end

cHRP.CFrame = hrp.CFrame

-- CLOVR - FE FULL-BODY VR SCRIPT

-- April 21st Update - TOOL HOLDING ADDED

-- | made by 0866 and Abacaxl
-- | tysm unverified

--RagDollEnabled is set to true, DON'T set it to false or CLOVR won't work. Feel free to change the other settings though. -Abacaxl

--|| Settings:
local StudsOffset = 0 -- Character height (negative if you're too high)
local Smoothness = .5 -- Character interpolation (0.1 - 1 = smooth - rigid)
local AnchorCharacter = false -- Prevent physics from causing inconsistencies
local HideCharacter = false -- Hide character on a platform
local NoCollision = true-- Disable player collision
local ChatEnabled = true -- See chat on your left hand in-game
local ChatLocalRange = 75 -- Local chat range
local ViewportEnabled = true -- View nearby players in a frame
local ViewportRange = 30 -- Maximum distance players are updated
local RagdollEnabled = true -- Use your character instead of hats (NetworkOwner vulnerability)
local RagdollHeadMovement = true -- Move your head separately from your body (+9 second wait)
local AutoRun = false -- Run script on respawn
local AutoRespawn = true -- Kill your real body when your virtual body dies
local WearAllAccessories = true -- Use all leftover hats for the head
local AccurateHandPosition = true -- Move your Roblox hands according to your real hands
local AccessorySettings = {
    LeftArm = "",
    RightArm = "",
    LeftLeg = "",
    RightLeg = "",
    Torso = "",
    Head = true,
    BlockArms = true,
    BlockLegs = true,
    BlockTorso = true,
    LimbOffset = CFrame.Angles(math.rad(90), 0, 0)
}
local FootPlacementSettings = {
    RightOffset = Vector3.new(.5, 0, 0),
    LeftOffset = Vector3.new(-.5, 0, 0)
}
--|| Script:
local Script = nil
Script = function()
    --[[
 Variables
--]]
    local Players = game:GetService("Players")
    local Client = Players.LocalPlayer
    local Character = Client.Character or Client.CharacterAdded:Wait()
    local WeldBase = Character:WaitForChild("HumanoidRootPart")
    local ArmBase = Character:FindFirstChild("RightHand") or Character:FindFirstChild("Right Arm") or WeldBase
    local Backpack = Client:WaitForChild("Backpack")
    local Mouse = Client:GetMouse()
    local Camera = workspace.CurrentCamera
    local VRService = game:GetService("VRService")
    local VRReady = VRService.VREnabled
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local HttpService = game:GetService("HttpService")
    local StarterGui = game:GetService("StarterGui")
    local HeadAccessories = {}
    local UsedAccessories = {}
    local Pointer = false
    local Point1 = false
    local Point2 = false
    local VirtualRig = game:GetObjects("rbxassetid://4468539481")[1]
    local VirtualBody = game:GetObjects("rbxassetid://4464983829")[1]
    local Anchor = Instance.new("Part")
    Anchor.Anchored = true
    Anchor.Transparency = 1
    Anchor.CanCollide = false
    Anchor.Parent = workspace
    --[[
    if RagdollEnabled then
        print("RagdollEnabled, thank you for using CLOVR!")
        local NetworkAccess =
            coroutine.create(
            function()
                settings().Physics.AllowSleep = false
                while true do
                    game:GetService("RunService").RenderStepped:Wait()
                    for _, Players in next, game:GetService("Players"):GetChildren() do
                        if Players ~= game:GetService("Players").LocalPlayer then
                            Players.MaximumSimulationRadius = 0.1
                            Players.SimulationRadius = 0
                        end
                    end
                    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                    game:GetService("Players").LocalPlayer.SimulationRadius = math.huge * math.huge
                end
            end
        )
        coroutine.resume(NetworkAccess)
    end
    ]]
    StarterGui:SetCore("VRLaserPointerMode", 3)
    --[[
 Character Protection
--]]
    local CharacterCFrame = WeldBase.CFrame
    if not RagdollEnabled then
        Character.Humanoid.AnimationPlayed:Connect(
            function(Animation)
                Animation:Stop()
            end
        )
        for _, Track in next, Character.Humanoid:GetPlayingAnimationTracks() do
            Track:Stop()
        end
        if HideCharacter then
            local Platform = Instance.new("Part")
            Platform.Anchored = true
            Platform.Size = Vector3.new(100, 5, 100)
            Platform.CFrame = CFrame.new(0, 10000, 0)
            Platform.Transparency = 1
            Platform.Parent = workspace
            Character:MoveTo(Platform.Position + Vector3.new(0, 5, 0))
            wait(.5)
        end
        if AnchorCharacter then
            for _, Part in pairs(Character:GetChildren()) do
                if Part:IsA("BasePart") then
                    Part.Anchored = true
                end
            end
        end
    end
    --[[
 Functions
--]]
    function Tween(Object, Style, Direction, Time, Goal)
        local tweenInfo = TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction])
        local tween = game:GetService("TweenService"):Create(Object, tweenInfo, Goal)
        tween.Completed:Connect(
            function()
                tween:Destroy()
            end
        )
        tween:Play()
        return tween
    end
    local function GetMotorForLimb(Limb)
        for _, Motor in next, Character:GetDescendants() do
            if Motor:IsA("Motor6D") and Motor.Part1 == Limb then
                return Motor
            end
        end
    end
    local function CreateAlignment(Limb, Part0)
        local Attachment0 = Instance.new("Attachment", Part0 or Anchor)
        local Attachment1 = Instance.new("Attachment", Limb)
        local Orientation = Instance.new("AlignOrientation")
        local Position = Instance.new("AlignPosition")
        Orientation.Attachment0 = Attachment1
        Orientation.Attachment1 = Attachment0
        Orientation.RigidityEnabled = false
        Orientation.MaxTorque = 20000
        Orientation.Responsiveness = 40
        Orientation.Parent = reanimation["HumanoidRootPart"]
        
        Orientation.Name = Limb.Name.."'s AlignRot"
        Orientation.MaxAngularVelocity = 100
        
        Position.Attachment0 = Attachment1
        Position.Attachment1 = Attachment0
        Position.RigidityEnabled = false
        Position.MaxForce = 40000
        Position.Responsiveness = 40
        Position.Parent = reanimation["HumanoidRootPart"]
        
        Position.Name = Limb.Name.."'s AlignPos"
        Position.MaxVelocity = 100
        
        Limb.Massless = false
        local Motor = GetMotorForLimb(Limb)
        if Motor then
            Motor:Destroy()
        end
        return function(CF, Local)
            if Local then
                Attachment0.CFrame = CF
            else
                Attachment0.WorldCFrame = CF
            end
        end
    end
    local function GetExtraTool()
        for _, Tool in next, Character:GetChildren() do
            if Tool:IsA("Tool") and not Tool.Name:match("LIMB_TOOL") then
                return Tool
            end
        end
    end
    local function GetGripForHandle(Handle)
        for _, Weld in next, Character:GetDescendants() do
            if Weld:IsA("Weld") and (Weld.Part0 == Handle or Weld.Part1 == Handle) then
                return Weld
            end
        end
        wait(.2)
        for _, Weld in next, Character:GetDescendants() do
            if Weld:IsA("Weld") and (Weld.Part0 == Handle or Weld.Part1 == Handle) then
                return Weld
            end
        end
    end
    local function CreateRightGrip(Handle)
        local RightGrip = Instance.new("Weld")
        RightGrip.Name = "RightGrip"
        RightGrip.Part1 = Handle
        RightGrip.Part0 = WeldBase
        RightGrip.Parent = WeldBase
        return RightGrip
    end
    local function CreateAccessory(Accessory, DeleteMeshes)
        if not Accessory then
            return
        end
        local HatAttachment = Accessory.Handle:FindFirstChildWhichIsA("Attachment")
        local HeadAttachment = VirtualRig:FindFirstChild(HatAttachment.Name, true)
        local BasePart = HeadAttachment.Parent
        local HatAtt = HatAttachment.CFrame
        local HeadAtt = HeadAttachment.CFrame
        if DeleteMeshes then
            if Accessory.Handle:FindFirstChild("Mesh") then
                Accessory.Handle.Mesh:Destroy()
            end
        end
        wait()
        local Handle = Accessory:WaitForChild("Handle")
        if Handle:FindFirstChildWhichIsA("Weld", true) then
            Handle:FindFirstChildWhichIsA("Weld", true):Destroy()
            Handle:BreakJoints()
        else
            Handle:BreakJoints()
        end
        Handle.Massless = true
        Handle.Transparency = 0.5
        UsedAccessories[Accessory] = true
        local RightGrip = CreateRightGrip(Handle)
        wait()
        for _, Object in pairs(Handle:GetDescendants()) do
            if not Object:IsA("BasePart") then
                pcall(
                    function()
                        Object.Transparency = 1
                    end
                )
                pcall(
                    function()
                        Object.Enabled = false
                    end
                )
            end
        end
        return Handle, RightGrip, HatAtt, HeadAtt, BasePart
    end
    local function GetHeadAccessories()
        for _, Accessory in next, Character:GetChildren() do
            if Accessory:IsA("Accessory") and not UsedAccessories[Accessory] then
                local Handle, RightGrip, HatAtt, HeadAtt, BasePart = CreateAccessory(Accessory)
                table.insert(HeadAccessories, {Handle, RightGrip, HatAtt, HeadAtt, BasePart})
                do
                    Handle.Transparency = 1
                end
                if not WearAllAccessories then
                    break
                end
            end
        end
    end
    --[[
 VR Replication Setup
--]]
    if not RagdollEnabled then
        LeftHandle, LeftHandGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.LeftArm), AccessorySettings.BlockArms)
        RightHandle, RightHandGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.RightArm), AccessorySettings.BlockArms)
        LeftHipHandle, LeftLegGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.LeftLeg), AccessorySettings.BlockLegs)
        RightHipHandle, RightLegGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.RightLeg), AccessorySettings.BlockLegs)
        TorsoHandle, TorsoGrip =
            CreateAccessory(Character:FindFirstChild(AccessorySettings.Torso), AccessorySettings.BlockTorso)
        GetHeadAccessories()
    elseif RagdollEnabled then
        if RagdollHeadMovement then
            Permadeath()
            MoveHead = CreateAlignment(reanimation["Head"])
        end
        MoveRightArm = CreateAlignment(reanimation["Right Arm"])
        MoveLeftArm = CreateAlignment(reanimation["Left Arm"])
        MoveRightLeg = CreateAlignment(reanimation["Right Leg"])
        MoveLeftLeg = CreateAlignment(reanimation["Left Leg"])
        MoveTorso = CreateAlignment(reanimation["Torso"])
        MoveRoot = CreateAlignment(reanimation["HumanoidRootPart"])
        --
        if RagdollHeadMovement then
            for _, Accessory in next, reanimation:GetChildren() do
                if Accessory:IsA("Accessory") and Accessory:FindFirstChild("Handle") then
                    local Attachment1 = Accessory.Handle:FindFirstChildWhichIsA("Attachment")
                    local Attachment0 = reanimation:FindFirstChild(tostring(Attachment1), true)
                    local Orientation = Instance.new("AlignOrientation")
                    local Position = Instance.new("AlignPosition")
                    print(Attachment1, Attachment0, Accessory)
                    
                    Orientation.Attachment0 = Attachment1
                    Orientation.Attachment1 = Attachment0
                    Orientation.RigidityEnabled = false
                    Orientation.ReactionTorqueEnabled = true
                    Orientation.MaxTorque = 20000
                    Orientation.Responsiveness = 40
                    Orientation.Parent = reanimation["Head"]
                    
                    Position.Attachment0 = Attachment1
                    Position.Attachment1 = Attachment0
                    Position.RigidityEnabled = false
                    Position.ReactionForceEnabled = true
                    Position.MaxForce = 40000
                    Position.Responsiveness = 40
                    Position.Parent = reanimation["Head"]
                end
            end
        end
        
    end
    --[[
 Movement
--]]
    VirtualRig.Name = "VirtualRig"
    VirtualRig.RightFoot.BodyPosition.Position = CharacterCFrame.p
    VirtualRig.LeftFoot.BodyPosition.Position = CharacterCFrame.p
    VirtualRig.Parent = workspace
    VirtualRig:SetPrimaryPartCFrame(CharacterCFrame)
    VirtualRig.Humanoid.Health = 0
    --VirtualRig:FindFirstChild("HumanoidRootPart").CFrame = character1.HumanoidRootPart.CFrame
    VirtualRig:BreakJoints()
    for i,v in pairs(VirtualRig:GetChildren()) do
        if v:IsA("BasePart") then
            v.CFrame = character1.HumanoidRootPart.CFrame
        end
    end
    --
    VirtualBody.Parent = workspace
    VirtualBody.Name = "VirtualBody"
    VirtualBody.Humanoid.WalkSpeed = 8
    VirtualBody.Humanoid.CameraOffset = Vector3.new(0, StudsOffset, 0)
    VirtualBody:SetPrimaryPartCFrame(CharacterCFrame)
    VirtualBody.Humanoid.Died:Connect(
        function()
            print("Virtual death")
            if AutoRespawn then
                Character:BreakJoints()
                if RagdollHeadMovement and RagdollEnabled then
                    --Network:Unclaim()
                    Respawn()
                end
            end
        end
    )
    --
    Camera.CameraSubject = VirtualBody.Humanoid
    Character.Humanoid.WalkSpeed = 0
    Character.Humanoid.JumpPower = 1
    for _, Part in next, VirtualBody:GetChildren() do
        if Part:IsA("BasePart") then
            Part.Transparency = 1
        end
    end
    for _, Part in next, VirtualRig:GetChildren() do
        if Part:IsA("BasePart") then
            Part.Transparency = 1
        end
    end
    if not VRReady then
        VirtualRig.RightUpperArm.ShoulderConstraint.RigidityEnabled = true
        VirtualRig.LeftUpperArm.ShoulderConstraint.RigidityEnabled = true
    end
    local OnMoving =
        RunService.Stepped:Connect(
        function()
            local Direction = Character.Humanoid.MoveDirection
            local Start = VirtualBody.HumanoidRootPart.Position
            local Point = Start + Direction * 6
            VirtualBody.Humanoid:MoveTo(Point)
        end
    )
    Character.Humanoid.Jumping:Connect(
        function()
            VirtualBody.Humanoid.Jump = true
        end
    )
    UserInputService.JumpRequest:Connect(
        function()
            VirtualBody.Humanoid.Jump = true
        end
    )
    --[[
 VR Replication
--]]
    if RagdollEnabled then
        for _, Part in pairs(Character:GetDescendants()) do
            if Part:IsA("BasePart") and Part.Name == "Handle" and Part.Parent:IsA("Accessory") then
                Part.LocalTransparencyModifier = 1
            elseif Part:IsA("BasePart") and Part.Transparency < 0.5 and Part.Name ~= "Head" then
                Part.LocalTransparencyModifier = bodyTransparency
            elseif Part:IsA("BasePart") and Part.Name == "Head" then
                Part.LocalTransparencyModifier = 1
            end
            if not Part:IsA("BasePart") and not Part:IsA("AlignPosition") and not Part:IsA("AlignOrientation") then
                pcall(
                    function()
                        Part.Transparency = 1
                    end
                )
                pcall(
                    function()
                        Part.Enabled = false
                    end
                )
            end
        end
    end
    local FootUpdateDebounce = tick()
    local function FloorRay(Part, Distance)
        local Position = Part.CFrame.p
        local Target = Position - Vector3.new(0, Distance, 0)
        local Line = Ray.new(Position, (Target - Position).Unit * Distance)
        local FloorPart, FloorPosition, FloorNormal =
            workspace:FindPartOnRayWithIgnoreList(Line, {VirtualRig, VirtualBody, Character})
        if FloorPart then
            return FloorPart, FloorPosition, FloorNormal, (FloorPosition - Position).Magnitude
        else
            return nil, Target, Vector3.new(), Distance
        end
    end
    local function Flatten(CF)
        local X, Y, Z = CF.X, CF.Y, CF.Z
        local LX, LZ = CF.lookVector.X, CF.lookVector.Z
        return CFrame.new(X, Y, Z) * CFrame.Angles(0, math.atan2(LX, LZ), 0)
    end
    local FootTurn = 1
    local function FootReady(Foot, Target)
        local MaxDist
        if Character.Humanoid.MoveDirection.Magnitude > 0 then
            MaxDist = .5
        else
            MaxDist = 1
        end
        local PastThreshold = (Foot.Position - Target.Position).Magnitude > MaxDist
        local PastTick = tick() - FootUpdateDebounce >= 2
        if PastThreshold or PastTick then
            FootUpdateDebounce = tick()
        end
        return PastThreshold or PastTick
    end
    local function FootYield()
        local RightFooting = VirtualRig.RightFoot.BodyPosition
        local LeftFooting = VirtualRig.LeftFoot.BodyPosition
        local LowerTorso = VirtualRig.LowerTorso
        local Yield = tick()
        repeat
            RunService.Stepped:Wait()
            if
                (LowerTorso.Position - RightFooting.Position).Y > 4 or
                    (LowerTorso.Position - LeftFooting.Position).Y > 4 or
                    ((LowerTorso.Position - RightFooting.Position) * Vector3.new(1, 0, 1)).Magnitude > 4 or
                    ((LowerTorso.Position - LeftFooting.Position) * Vector3.new(1, 0, 1)).Magnitude > 4
             then
                break
            end
        until tick() - Yield >= .17
    end
    local function UpdateFooting()
        if not VirtualRig:FindFirstChild("LowerTorso") then
            wait()
            return
        end
        local Floor, FloorPosition, FloorNormal, Dist = FloorRay(VirtualRig.LowerTorso, 3)
        Dist = math.clamp(Dist, 0, 5)
        local FootTarget =
            VirtualRig.LowerTorso.CFrame * CFrame.new(FootPlacementSettings.RightOffset) - Vector3.new(0, Dist, 0) +
            Character.Humanoid.MoveDirection * (VirtualBody.Humanoid.WalkSpeed / 8) * 2
        if FootReady(VirtualRig.RightFoot, FootTarget) then
            VirtualRig.RightFoot.BodyPosition.Position = FootTarget.p
            VirtualRig.RightFoot.BodyGyro.CFrame = Flatten(VirtualRig.LowerTorso.CFrame)
        end
        FootYield()
        local FootTarget =
            VirtualRig.LowerTorso.CFrame * CFrame.new(FootPlacementSettings.LeftOffset) - Vector3.new(0, Dist, 0) +
            Character.Humanoid.MoveDirection * (VirtualBody.Humanoid.WalkSpeed / 8) * 2
        if FootReady(VirtualRig.LeftFoot, FootTarget) then
            VirtualRig.LeftFoot.BodyPosition.Position = FootTarget.p
            VirtualRig.LeftFoot.BodyGyro.CFrame = Flatten(VirtualRig.LowerTorso.CFrame)
        end
    end
    local function UpdateTorsoPosition()
        if not RagdollEnabled then
            if TorsoHandle then
                local Positioning = VirtualRig.UpperTorso.CFrame
                if not TorsoGrip or not TorsoGrip.Parent then
                    TorsoGrip = CreateRightGrip(TorsoHandle)
                end
                local Parent = TorsoGrip.Parent
                TorsoGrip.C1 = CFrame.new()
                TorsoGrip.C0 =
                    TorsoGrip.C0:Lerp(
                    WeldBase.CFrame:ToObjectSpace(Positioning * CFrame.new(0, -0.25, 0) * AccessorySettings.LimbOffset),
                    Smoothness
                )
                TorsoGrip.Parent = nil
                TorsoGrip.Parent = Parent
            end
        else
            local Positioning = VirtualRig.UpperTorso.CFrame
            MoveTorso(Positioning * CFrame.new(0, -0.25, 0))
            MoveRoot(Positioning * CFrame.new(0, -0.25, 0))
        end
    end
    local function UpdateLegPosition()
        if not RagdollEnabled then
            if RightHipHandle then
                local Positioning =
                    VirtualRig.RightLowerLeg.CFrame:Lerp(VirtualRig.RightFoot.CFrame, 0.5) + Vector3.new(0, 0.5, 0)
                if not RightHipHandle or not RightHipHandle.Parent then
                    RightLegGrip = CreateRightGrip(RightHipHandle)
                end
                local Parent = RightLegGrip.Parent
                RightLegGrip.C1 = CFrame.new()
                RightLegGrip.C0 =
                    RightLegGrip.C0:Lerp(
                    WeldBase.CFrame:ToObjectSpace(Positioning * AccessorySettings.LimbOffset),
                    Smoothness
                )
                RightLegGrip.Parent = nil
                RightLegGrip.Parent = Parent
            end
            if LeftHipHandle then
                local Positioning =
                    VirtualRig.LeftLowerLeg.CFrame:Lerp(VirtualRig.LeftFoot.CFrame, 0.5) + Vector3.new(0, 0.5, 0)
                if not LeftLegGrip or not LeftLegGrip.Parent then
                    LeftLegGrip = CreateRightGrip(LeftHipHandle)
                end
                local Parent = LeftLegGrip.Parent
                LeftLegGrip.C1 = CFrame.new()
                LeftLegGrip.C0 =
                    LeftLegGrip.C0:Lerp(
                    WeldBase.CFrame:ToObjectSpace(Positioning * AccessorySettings.LimbOffset),
                    Smoothness
                )
                LeftLegGrip.Parent = nil
                LeftLegGrip.Parent = Parent
            end
        else
            do
                local Positioning =
                    VirtualRig.RightLowerLeg.CFrame:Lerp(VirtualRig.RightFoot.CFrame, 0.5) *
                    CFrame.Angles(0, math.rad(180), 0) +
                    Vector3.new(0, 0.5, 0)
                MoveRightLeg(Positioning)
            end
            do
                local Positioning =
                    VirtualRig.LeftLowerLeg.CFrame:Lerp(VirtualRig.LeftFoot.CFrame, 0.5) *
                    CFrame.Angles(0, math.rad(180), 0) +
                    Vector3.new(0, 0.5, 0)
                MoveLeftLeg(Positioning)
            end
        end
    end
    warn("VRReady is", VRReady)
    local function OnUserCFrameChanged(UserCFrame, Positioning, IgnoreTorso)
        local Positioning = Camera.CFrame * Positioning
        if not IgnoreTorso then
            UpdateTorsoPosition()
            UpdateLegPosition()
        end
        if not RagdollEnabled then
            if UserCFrame == Enum.UserCFrame.Head and AccessorySettings.Head then
                for _, Table in next, HeadAccessories do
                    local Handle, RightGrip, HatAtt, HeadAtt, BasePart = unpack(Table)
                    local LocalPositioning = Positioning
                    if not RightGrip or not RightGrip.Parent then
                        RightGrip = CreateRightGrip(Handle)
                        Table[2] = RightGrip
                    end
                    local Parent = RightGrip.Parent
                    if BasePart then
                        LocalPositioning = BasePart.CFrame * HeadAtt
                    end
                    RightGrip.C1 = HatAtt
                    RightGrip.C0 = RightGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(LocalPositioning), Smoothness)
                    RightGrip.Parent = nil
                    RightGrip.Parent = Parent
                end
            elseif RightHandle and UserCFrame == Enum.UserCFrame.RightHand and AccessorySettings.RightArm then
                local HandPosition = Positioning
                local LocalPositioning = Positioning
                if not RightHandGrip or not RightHandGrip.Parent then
                    RightHandGrip = CreateRightGrip(RightHandle)
                end
                if AccurateHandPosition then
                    HandPosition = HandPosition * CFrame.new(0, 0, 1)
                end
                if not VRReady then
                    local HeadRotation = Camera.CFrame - Camera.CFrame.p
                    HandPosition =
                        VirtualRig.RightUpperArm.CFrame:Lerp(VirtualRig.RightLowerArm.CFrame, 0.5) *
                        AccessorySettings.LimbOffset
                    --LocalPositioning = (HeadRotation + (HandPosition * CFrame.new(0, 0, 1)).p) * CFrame.Angles(math.rad(-45), 0, 0)
                    LocalPositioning = HandPosition * CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(-180), 0, 0)
                    if Point2 then
                        VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        VirtualRig.RightUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
                    elseif VirtualRig.RightUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
                        VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
                    end
                elseif AccurateHandPosition then
                    LocalPositioning = HandPosition
                end
                local Parent = RightHandGrip.Parent
                RightHandGrip.C1 = CFrame.new()
                RightHandGrip.C0 = RightHandGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(HandPosition), Smoothness)
                RightHandGrip.Parent = nil
                RightHandGrip.Parent = Parent
                --
                local EquippedTool = GetExtraTool()
                if EquippedTool and EquippedTool:FindFirstChild("Handle") then
                    local EquippedGrip = GetGripForHandle(EquippedTool.Handle)
                    local Parent = EquippedGrip.Parent
                    local ArmBaseCFrame = ArmBase.CFrame
                    if ArmBase.Name == "Right Arm" then
                        ArmBaseCFrame = ArmBaseCFrame
                    end
                    EquippedGrip.C1 = EquippedTool.Grip
                    EquippedGrip.C0 = EquippedGrip.C0:Lerp(ArmBaseCFrame:ToObjectSpace(LocalPositioning), Smoothness)
                    EquippedGrip.Parent = nil
                    EquippedGrip.Parent = Parent
                end
            elseif LeftHandle and UserCFrame == Enum.UserCFrame.LeftHand and AccessorySettings.LeftArm then
                local HandPosition = Positioning
                if not LeftHandGrip or not LeftHandGrip.Parent then
                    LeftHandGrip = CreateRightGrip(LeftHandle)
                end
                if AccurateHandPosition then
                    HandPosition = HandPosition * CFrame.new(0, 0, 1)
                end
                if not VRReady then
                    HandPosition =
                        VirtualRig.LeftUpperArm.CFrame:Lerp(VirtualRig.LeftLowerArm.CFrame, 0.5) *
                        AccessorySettings.LimbOffset
                    --warn("Setting HandPosition to hands")
                    if Point1 then
                        VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        VirtualRig.LeftUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
                    elseif VirtualRig.LeftUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
                        VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
                    end
                end
                local Parent = LeftHandGrip.Parent
                LeftHandGrip.C1 = CFrame.new()
                LeftHandGrip.C0 = LeftHandGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(HandPosition), Smoothness)
                LeftHandGrip.Parent = nil
                LeftHandGrip.Parent = Parent
            end
        end
        if RagdollEnabled then
            if UserCFrame == Enum.UserCFrame.Head and RagdollHeadMovement then
                MoveHead(Positioning)
            elseif UserCFrame == Enum.UserCFrame.RightHand then
                local Positioning = Positioning
                if not VRReady then
                    Positioning = VirtualRig.RightUpperArm.CFrame:Lerp(VirtualRig.RightLowerArm.CFrame, 0.5)
                elseif AccurateHandPosition then
                    Positioning = Positioning * CFrame.new(0, 0, 1)
                end
                if VRReady then
                    Positioning = Positioning * AccessorySettings.LimbOffset
                end
                MoveRightArm(Positioning)
                if Point2 then
                    VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    VirtualRig.RightUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
                elseif VirtualRig.RightUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
                    VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
                end
            elseif UserCFrame == Enum.UserCFrame.LeftHand then
                local Positioning = Positioning
                if not VRReady then
                    Positioning = VirtualRig.LeftUpperArm.CFrame:Lerp(VirtualRig.LeftLowerArm.CFrame, 0.5)
                elseif AccurateHandPosition then
                    Positioning = Positioning * CFrame.new(0, 0, 1)
                end
                if VRReady then
                    Positioning = Positioning * AccessorySettings.LimbOffset
                end
                MoveLeftArm(Positioning)
                if Point1 then
                    VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    VirtualRig.LeftUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
                elseif VirtualRig.LeftUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
                    VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
                end
            end
        end
        if UserCFrame == Enum.UserCFrame.Head then
            VirtualRig.Head.CFrame = Positioning
        elseif UserCFrame == Enum.UserCFrame.RightHand and VRReady then
            VirtualRig.RightHand.CFrame = Positioning
        elseif UserCFrame == Enum.UserCFrame.LeftHand and VRReady then
            VirtualRig.LeftHand.CFrame = Positioning
        end
        if not VRReady and VirtualRig.LeftHand.Anchored then
            VirtualRig.RightHand.Anchored = false
            VirtualRig.LeftHand.Anchored = false
        elseif VRReady and not VirtualRig.LeftHand.Anchored then
            VirtualRig.RightHand.Anchored = true
            VirtualRig.LeftHand.Anchored = true
        end
    end
    local CFrameChanged = VRService.UserCFrameChanged:Connect(OnUserCFrameChanged)
    local OnStepped =
        RunService.Stepped:Connect(
        function()
            for _, Part in pairs(VirtualRig:GetChildren()) do
                if Part:IsA("BasePart") then
                    Part.CanCollide = false
                end
            end
            if RagdollEnabled then
                for _, Part in pairs(Character:GetChildren()) do
                    if Part:IsA("BasePart") then
                        Part.CanCollide = false
                    end
                end
            end
            if NoCollision then
                for _, Player in pairs(Players:GetPlayers()) do
                    if Player ~= Client and Player.Character then
                        local Descendants = Player.Character:GetDescendants()
                        for i = 1, #Descendants do
                            local Part = Descendants[i]
                            if Part:IsA("BasePart") then
                                Part.CanCollide = false
                                Part.Velocity = Vector3.new()
                                Part.RotVelocity = Vector3.new()
                            end
                        end
                    end
                end
            end
        end
    )
    local OnRenderStepped =
        RunService.Stepped:Connect(
        function()
            Camera.CameraSubject = VirtualBody.Humanoid
            if RagdollEnabled then
                Character.HumanoidRootPart.CFrame = VirtualRig.UpperTorso.CFrame
                --Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            end
            if not VRReady then
                OnUserCFrameChanged(Enum.UserCFrame.Head, CFrame.new(0, 0, 0))
                OnUserCFrameChanged(Enum.UserCFrame.RightHand, CFrame.new(0, 0, 0), true)
                OnUserCFrameChanged(Enum.UserCFrame.LeftHand, CFrame.new(0, 0, 0), true)
            end
        end
    )
    spawn(
        function()
            while Character and Character.Parent do
                FootYield()
                UpdateFooting()
            end
        end
    )
    --[[
 Non-VR Support + VR Mechanics
--]]
    local OnInput =
        UserInputService.InputBegan:Connect(
        function(Input, Processed)
            if not Processed then
                if Input.KeyCode == Enum.KeyCode.LeftControl or Input.KeyCode == Enum.KeyCode.ButtonL2 then
                    Tween(
                        VirtualBody.Humanoid,
                        "Elastic",
                        "Out",
                        1,
                        {
                            CameraOffset = Vector3.new(0, StudsOffset - 1.5, 0)
                        }
                    )
                end
                if Input.KeyCode == Enum.KeyCode.X then
                    if RagdollEnabled and RagdollHeadMovement then
                        --Network:Unclaim()
                        Respawn()
                    end
                end
                if Input.KeyCode == Enum.KeyCode.C then
                    VirtualBody:MoveTo(Mouse.Hit.p)
                    VirtualRig:MoveTo(Mouse.Hit.p)
                end
            end
            if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.ButtonR2 then
                Tween(
                    VirtualBody.Humanoid,
                    "Sine",
                    "Out",
                    1,
                    {
                        WalkSpeed = 16
                    }
                )
            end
            if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton1 then
                Point1 = true
            end
            if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton2 then
                Point2 = true
            end
            if VRReady and Input.KeyCode == Enum.KeyCode.ButtonY then
                Character:BreakJoints()
                if RagdollEnabled and RagdollHeadMovement then
                    --Network:Unclaim()
                    Respawn()
                end
            end
        end
    )
    local OnInputEnded =
        UserInputService.InputEnded:Connect(
        function(Input, Processed)
            if not Processed then
                if Input.KeyCode == Enum.KeyCode.LeftControl or Input.KeyCode == Enum.KeyCode.ButtonL2 then
                    Tween(
                        VirtualBody.Humanoid,
                        "Elastic",
                        "Out",
                        1,
                        {
                            CameraOffset = Vector3.new(0, StudsOffset, 0)
                        }
                    )
                end
            end
            if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.ButtonR2 then
                Tween(
                    VirtualBody.Humanoid,
                    "Sine",
                    "Out",
                    1,
                    {
                        WalkSpeed = 8
                    }
                )
            end
            if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton1 then
                Point1 = false
            end
            if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton2 then
                Point2 = false
            end
        end
    )
    --[[
 Proper Cleanup
--]]
    local OnReset
    OnReset =
        Client.CharacterAdded:Connect(
        function()
            OnReset:Disconnect()
            CFrameChanged:Disconnect()
            OnStepped:Disconnect()
            OnRenderStepped:Disconnect()
            OnMoving:Disconnect()
            OnInput:Disconnect()
            OnInputEnded:Disconnect()
            VirtualRig:Destroy()
            VirtualBody:Destroy()
            if RagdollEnabled then
                --Network:Unclaim()
            end
            if AutoRun then
                delay(
                    2,
                    function()
                        Script()
                    end
                )
            end
        end
    )
    if ChatEnabled then
        spawn(ChatHUDFunc)
    end
    if ViewportEnabled then
        spawn(ViewHUDFunc)
    end
    do
        --[[
 Functions
 --]]
        local Players = game:GetService("Players")
        local Client = Players.LocalPlayer
        local VRService = game:GetService("VRService")
        local VRReady = VRService.VREnabled
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local Camera = workspace.CurrentCamera
        --[[
 Code
 --]]
        if VRReady then
            local Pointer = game:GetObjects("rbxassetid://4476173280")[1]
            Pointer.Parent = workspace
            Pointer.Beam.Enabled = false
            Pointer.Target.ParticleEmitter.Enabled = false
            local RenderStepped =
                RunService.RenderStepped:Connect(
                function()
                    if Pointer.Beam.Enabled then
                        local RightHand = Camera.CFrame * VRService:GetUserCFrame(Enum.UserCFrame.RightHand)
                        local Target = RightHand * CFrame.new(0, 0, -10)
                        local Line = Ray.new(RightHand.p, (Target.p - RightHand.p).Unit * 128)
                        local Part, Position =
                            workspace:FindPartOnRayWithIgnoreList(Line, {VirtualRig, VirtualBody, Character, Pointer})
                        local Distance = (Position - RightHand.p).Magnitude
                        Pointer.Target.Position = Vector3.new(0, 0, -Distance)
                        Pointer.CFrame = RightHand
                    end
                end
            )
            local Input =
                UserInputService.InputBegan:Connect(
                function(Input)
                    if Input.KeyCode == Enum.KeyCode.ButtonB then
                        Pointer.Beam.Enabled = not Pointer.Beam.Enabled
                        Pointer.Target.ParticleEmitter.Enabled = not Pointer.Target.ParticleEmitter.Enabled
                    end
                end
            )
            --
            local CharacterAdded
            CharacterAdded =
                Client.CharacterAdded:Connect(
                function()
                    RenderStepped:Disconnect()
                    Input:Disconnect()
                    CharacterAdded:Disconnect()
                    Pointer:Destroy()
                    Pointer = nil
                end
            )
        else
            return
        end
    end
end
Permadeath = function()
    local ch = game.Players.LocalPlayer.Character
    local prt = Instance.new("Model", workspace)
    local z1 = Instance.new("Part", prt)
    z1.Name = "Torso"
    z1.CanCollide = false
    z1.Anchored = true
    local z2 = Instance.new("Part", prt)
    z2.Name = "Head"
    z2.Anchored = true
    z2.CanCollide = false
    local z3 = Instance.new("Humanoid", prt)
    z3.Name = "Humanoid"
    z1.Position = Vector3.new(0, 9999, 0)
    z2.Position = Vector3.new(0, 9991, 0)
    game.Players.LocalPlayer.Character = prt
    wait(game.Players.RespawnTime/2)
    warn("50%")
    game.Players.LocalPlayer.Character = ch
    wait(game.Players.RespawnTime/2 + 0.5)
    warn("100%")
end
Respawn = function()
    local ch = game.Players.LocalPlayer.Character
    local prt = Instance.new("Model", workspace)
    local z1 = Instance.new("Part", prt)
    z1.Name = "Torso"
    z1.CanCollide = false
    z1.Anchored = true
    local z2 = Instance.new("Part", prt)
    z2.Name = "Head"
    z2.Anchored = true
    z2.CanCollide = false
    local z3 = Instance.new("Humanoid", prt)
    z3.Name = "Humanoid"
    z1.Position = Vector3.new(0, 9999, 0)
    z2.Position = Vector3.new(0, 9991, 0)
    game.Players.LocalPlayer.Character = prt
    wait(game.Players.RespawnTime)
    game.Players.LocalPlayer.Character = ch
end
ChatHUDFunc = function()
    --[[
 Variables
 --]]
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local VRService = game:GetService("VRService")
    local VRReady = VRService.VREnabled
    local Players = game:GetService("Players")
    local Client = Players.LocalPlayer
    local ChatHUD = game:GetObjects("rbxassetid://4476067885")[1]
    local GlobalFrame = ChatHUD.GlobalFrame
    local Template = GlobalFrame.Template
    local LocalFrame = ChatHUD.LocalFrame
    local Global = ChatHUD.Global
    local Local = ChatHUD.Local
    local Camera = workspace.CurrentCamera
    Template.Parent = nil
    ChatHUD.Parent = game:GetService("CoreGui")
    --[[
 Code
 --]]
    local Highlight = Global.Frame.BackgroundColor3
    local Deselected = Local.Frame.BackgroundColor3
    local OpenGlobalTab = function()
        Global.Frame.BackgroundColor3 = Highlight
        Local.Frame.BackgroundColor3 = Deselected
        Global.Font = Enum.Font.SourceSansBold
        Local.Font = Enum.Font.SourceSans
        GlobalFrame.Visible = true
        LocalFrame.Visible = false
    end
    local OpenLocalTab = function()
        Global.Frame.BackgroundColor3 = Deselected
        Local.Frame.BackgroundColor3 = Highlight
        Global.Font = Enum.Font.SourceSans
        Local.Font = Enum.Font.SourceSansBold
        GlobalFrame.Visible = false
        LocalFrame.Visible = true
    end
    Global.MouseButton1Down:Connect(OpenGlobalTab)
    Local.MouseButton1Down:Connect(OpenLocalTab)
    Global.MouseButton1Click:Connect(OpenGlobalTab)
    Local.MouseButton1Click:Connect(OpenLocalTab)
    OpenLocalTab()
    --
    local function GetPlayerDistance(Sender)
        if Sender.Character and Sender.Character:FindFirstChild("Head") then
            return math.floor((Sender.Character.Head.Position - Camera:GetRenderCFrame().p).Magnitude + 0.5)
        end
    end
    local function NewGlobal(Message, Sender, Color)
        local Frame = Template:Clone()
        Frame.Text = ("[%s]: %s"):format(Sender.Name, Message)
        Frame.User.Text = ("[%s]:"):format(Sender.Name)
        Frame.User.TextColor3 = Color
        Frame.BackgroundColor3 = Color
        Frame.Parent = GlobalFrame
        delay(
            60,
            function()
                Frame:Destroy()
            end
        )
    end
    local function NewLocal(Message, Sender, Color, Dist)
        local Frame = Template:Clone()
        Frame.Text = ("(%s) [%s]: %s"):format(tostring(Dist), Sender.Name, Message)
        Frame.User.Text = ("(%s) [%s]:"):format(tostring(Dist), Sender.Name)
        Frame.User.TextColor3 = Color
        Frame.BackgroundColor3 = Color
        Frame.Parent = LocalFrame
        delay(
            60,
            function()
                Frame:Destroy()
            end
        )
    end
    local function OnNewChat(Message, Sender, Color)
        if not ChatHUD or not ChatHUD.Parent then
            return
        end
        NewGlobal(Message, Sender, Color)
        local Distance = GetPlayerDistance(Sender)
        if Distance and Distance <= ChatLocalRange then
            NewLocal(Message, Sender, Color, Distance)
        end
    end
    local function OnPlayerAdded(Player)
        if not ChatHUD or not ChatHUD.Parent then
            return
        end
        local Color = BrickColor.Random().Color
        Player.Chatted:Connect(
            function(Message)
                OnNewChat(Message, Player, Color)
            end
        )
    end
    Players.PlayerAdded:Connect(OnPlayerAdded)
    for _, Player in pairs(Players:GetPlayers()) do
        OnPlayerAdded(Player)
    end
    --
    local ChatPart = ChatHUD.Part
    ChatHUD.Adornee = ChatPart
    if VRReady then
        ChatHUD.Parent = game:GetService("CoreGui")
        ChatHUD.Enabled = true
        ChatHUD.AlwaysOnTop = true
        local OnInput =
            UserInputService.InputBegan:Connect(
            function(Input, Processed)
                if not Processed then
                    if Input.KeyCode == Enum.KeyCode.ButtonX then
                        ChatHUD.Enabled = not ChatHUD.Enabled
                    end
                end
            end
        )
        local RenderStepped =
            RunService.RenderStepped:Connect(
            function()
                local LeftHand = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
                ChatPart.CFrame = Camera.CFrame * LeftHand
            end
        )
        local CharacterAdded
        CharacterAdded =
            Client.CharacterAdded:Connect(
            function()
                OnInput:Disconnect()
                RenderStepped:Disconnect()
                CharacterAdded:Disconnect()
                ChatHUD:Destroy()
                ChatHUD = nil
            end
        )
    end
    wait(9e9)
end
ViewHUDFunc = function()
    --[[
 Variables
 --]]
    local ViewportRange = ViewportRange or 32
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local VRService = game:GetService("VRService")
    local VRReady = VRService.VREnabled
    local Players = game:GetService("Players")
    local Client = Players.LocalPlayer
    local Mouse = Client:GetMouse()
    local Camera = workspace.CurrentCamera
    local CameraPort = Camera.CFrame
    local ViewHUD = script:FindFirstChild("ViewHUD") or game:GetObjects("rbxassetid://4480405425")[1]
    local Viewport = ViewHUD.Viewport
    local Viewcam = Instance.new("Camera")
    local ViewPart = ViewHUD.Part
    ViewHUD.Parent = game:GetService("CoreGui")
    Viewcam.Parent = Viewport
    Viewcam.CameraType = Enum.CameraType.Scriptable
    Viewport.CurrentCamera = Viewcam
    Viewport.BackgroundTransparency = 1
    --[[
 Code
 --]]
    local function Clone(Character)
        local Arc = Character.Archivable
        local Clone
        Character.Archivable = true
        Clone = Character:Clone()
        Character.Archivable = Arc
        return Clone
    end
    local function GetPart(Name, Parent, Descendants)
        for i = 1, #Descendants do
            local Part = Descendants[i]
            if Part.Name == Name and Part.Parent.Name == Parent then
                return Part
            end
        end
    end
    local function OnPlayerAdded(Player)
        if not ViewHUD or not ViewHUD.Parent then
            return
        end
        local function CharacterAdded(Character)
            if not ViewHUD or not ViewHUD.Parent then
                return
            end
            Character:WaitForChild("Head")
            Character:WaitForChild("Humanoid")
            wait(3)
            local FakeChar = Clone(Character)
            local Root = FakeChar:FindFirstChild("HumanoidRootPart") or FakeChar:FindFirstChild("Head")
            local RenderConnection
            local Descendants = FakeChar:GetDescendants()
            local RealDescendants = Character:GetDescendants()
            local Correspondents = {}
            FakeChar.Humanoid.DisplayDistanceType = "None"
            for i = 1, #Descendants do
                local Part = Descendants[i]
                local Real = Part:IsA("BasePart") and GetPart(Part.Name, Part.Parent.Name, RealDescendants)
                if Part:IsA("BasePart") and Real then
                    Part.Anchored = true
                    Part:BreakJoints()
                    if Part.Parent:IsA("Accessory") then
                        Part.Transparency = 0
                    end
                    table.insert(Correspondents, {Part, Real})
                end
            end
            RenderConnection =
                RunService.RenderStepped:Connect(
                function()
                    if not Character or not Character.Parent then
                        RenderConnection:Disconnect()
                        FakeChar:Destroy()
                        return
                    end
                    if
                        (Root and (Root.Position - Camera.CFrame.p).Magnitude <= ViewportRange) or Player == Client or
                            not Root
                     then
                        for i = 1, #Correspondents do
                            local Part, Real = unpack(Correspondents[i])
                            if Part and Real and Part.Parent and Real.Parent then
                                Part.CFrame = Real.CFrame
                            elseif Part.Parent and not Real.Parent then
                                Part:Destroy()
                            end
                        end
                    end
                end
            )
            FakeChar.Parent = Viewcam
        end
        Player.CharacterAdded:Connect(CharacterAdded)
        if Player.Character then
            spawn(
                function()
                    CharacterAdded(Player.Character)
                end
            )
        end
    end
    local PlayerAdded = Players.PlayerAdded:Connect(OnPlayerAdded)
    for _, Player in pairs(Players:GetPlayers()) do
        OnPlayerAdded(Player)
    end
    ViewPart.Size = Vector3.new()
    if VRReady then
        Viewport.Position = UDim2.new(.62, 0, .89, 0)
        Viewport.Size = UDim2.new(.3, 0, .3, 0)
        Viewport.AnchorPoint = Vector2.new(.5, 1)
    else
        Viewport.Size = UDim2.new(0.3, 0, 0.3, 0)
    end
    local RenderStepped =
        RunService.RenderStepped:Connect(
        function()
            local Render = Camera.CFrame
            local Scale = Camera.ViewportSize
            if VRReady then
                Render = Render * VRService:GetUserCFrame(Enum.UserCFrame.Head)
            end
            CameraPort = CFrame.new(Render.p + Vector3.new(5, 2, 0), Render.p)
            Viewport.Camera.CFrame = CameraPort
            ViewPart.CFrame = Render * CFrame.new(0, 0, -16)
            ViewHUD.Size = UDim2.new(0, Scale.X - 6, 0, Scale.Y - 6)
        end
    )
    --
    local CharacterAdded
    CharacterAdded =
        Client.CharacterAdded:Connect(
        function()
            RenderStepped:Disconnect()
            CharacterAdded:Disconnect()
            PlayerAdded:Disconnect()
            ViewHUD:Destroy()
            ViewHUD = nil
        end
    )
    
    ------------------------Part of modification------------------------
    for i,v in pairs(character1:GetDescendants()) do
        if v:IsA("Motor6D") then
            v:Destroy()
        end
    end
    
    if character1.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        character1:BreakJoints()
    end
    
    for i,v in pairs(reanimation:GetChildren()) do
        if v:IsA("BasePart") then
            v.Anchored = false
        end
    end
    
    game:GetService("RunService").Heartbeat:Connect(function()
        for i,v in pairs(character1:GetChildren()) do
            if v:IsA("BasePart") then
                v.Velocity = Vector3.new(bodyVelocity[1], bodyVelocity[2], bodyVelocity[3])
                if character1.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                    v.CFrame = reanimation:FindFirstChild(v.Name).CFrame
                else
                    --Head
                    if character1:FindFirstChild("Head") then
                        character1.Head.CFrame = reanimation.Head.CFrame
                    end
                    
                    --Torso
                    if character1:FindFirstChild("UpperTorso") then
                        character1.UpperTorso.CFrame = reanimation.Torso.CFrame * CFrame.new(0, 0.185, 0)
                    end
                    if character1:FindFirstChild("LowerTorso") then
                        character1.LowerTorso.CFrame = reanimation.Torso.CFrame * CFrame.new(0, -0.8, 0)
                    end
                    
                    --HumanoidRootPart
                    if character1:FindFirstChild("HumanoidRootPart") then
                        character1.HumanoidRootPart.CFrame = cHRP.CFrame
                    end
                    
                    --Left Arm
                    if character1:FindFirstChild("LeftUpperArm") then
                        character1.LeftUpperArm.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, 0.4, 0)
                    end
                    if character1:FindFirstChild("LeftLowerArm") then
                        character1.LeftLowerArm.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, -0.19, 0)
                    end
                    if character1:FindFirstChild("LeftHand") then
                        character1.LeftHand.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, -0.84, 0)
                    end
                    
                    --Right Arm
                    if character1:FindFirstChild("RightUpperArm") then
                        character1.RightUpperArm.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, 0.4, 0)
                    end
                    if character1:FindFirstChild("RightLowerArm") then
                        character1.RightLowerArm.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, -0.19, 0)
                    end
                    if character1:FindFirstChild("RightHand") then
                        character1.RightHand.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, -0.84, 0)
                    end
                    
                    --Left Leg
                    if character1:FindFirstChild("LeftUpperLeg") then
                        character1.LeftUpperLeg.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, 0.55, 0)
                    end
                    if character1:FindFirstChild("LeftLowerLeg") then
                        character1.LeftLowerLeg.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, -0.19, 0)
                    end
                    if character1:FindFirstChild("LeftFoot") then
                        character1.LeftFoot.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, -0.85, 0)
                    end
                    
                    --Right Leg
                    if character1:FindFirstChild("RightUpperLeg") then
                        character1.RightUpperLeg.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, 0.55, 0)
                    end
                    if character1:FindFirstChild("RightLowerLeg") then
                        character1.RightLowerLeg.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, -0.19, 0)
                    end
                    if character1:FindFirstChild("RightFoot") then
                        character1.RightFoot.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, -0.85, 0)
                    end
                end
            end
            
            if v:IsA("Accessory") then
                v.Handle.Velocity = Vector3.new(hatVelocity[1], hatVelocity[2], hatVelocity[3])
                v.Handle.CFrame = reanimation:FindFirstChild(v.Name).Handle.CFrame
            end
        end
    end)
    
    game:GetService("RunService").Stepped:Connect(function()
        for i,v in pairs(reanimation:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end)
    
    
    --------------------------------------------------------------------
    
    wait(9e9)
end
Script()
wait(2)
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local character = reanimation--lp.Character
local A0LL = Instance.new("Attachment", character["Left Leg"])
A0LL.Position = Vector3.new(0, 1, 0)
local A1LL = Instance.new("Attachment", character["Torso"])
A1LL.Position = Vector3.new(-0.5, -1, 0)
local socket1 = Instance.new("BallSocketConstraint", character["Left Leg"])
socket1.Attachment0 = A0LL
socket1.Attachment1 = A1LL
local A0RL = Instance.new("Attachment", character["Right Leg"])
A0RL.Position = Vector3.new(0, 1, 0)
local A1RL = Instance.new("Attachment", character["Torso"])
A1RL.Position = Vector3.new(0.5, -1, 0)
local socket2 = Instance.new("BallSocketConstraint", character["Right Leg"])
socket2.Attachment0 = A0RL
socket2.Attachment1 = A1RL
local A0H = Instance.new("Attachment", character["Head"])
A0H.Position = Vector3.new(0, -0.5, 0)
local A1H = Instance.new("Attachment", character["Torso"])
A1H.Position = Vector3.new(0, 1, 0)
local socket5 = Instance.new("BallSocketConstraint", character["Head"])
socket5.Attachment0 = A0H
socket5.Attachment1 = A1H
--loadstring(game:HttpGet("https://ghostbin.co/paste/krmyf/raw", true))()
-----------------------------------------------------------
wait(9e9)
spawn(function()
    while wait() do
        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)
    end
end)
game.RunService.Stepped:Connect(function()
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
game.Players.LocalPlayer.MaximumSimulationRadius = math.huge
end)