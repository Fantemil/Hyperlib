local gui = Instance.new("ScreenGui")
gui.Name = "ButtonGUI"
gui.Parent = game.CoreGui

local buttonNames = {
    "CAT",
    "DOG",
    "LION",
    "TIGER",
    "RABBIT",
    "MOUSE",
    "BUTTERFLY",
    "BEE",
    "BIRD",
    "STEGOSAURUS"
}

local IsBlocked = false

local function animateButtonTransparency(button, transparency)
    local tweenInfo = TweenInfo.new(0.5)
    local buttonTween = game:GetService("TweenService"):Create(button, tweenInfo, { BackgroundTransparency = transparency })
    local textTween = game:GetService("TweenService"):Create(button, tweenInfo, { TextTransparency = transparency })
    buttonTween:Play()
    textTween:Play()
end

local function makeButtonsSemiTransparent()
    for i = 1, #buttonNames do
        local button = gui["Button" .. i]
        animateButtonTransparency(button, 0.75)
    end
end

local function makeButtonsSemiNormal()
    for i = 1, #buttonNames do
        local button = gui["Button" .. i]
        animateButtonTransparency(button, 0)
    end
end

for i = 1, #buttonNames do
    local button = Instance.new("TextButton")
    button.Name = "Button" .. i
    button.Text = buttonNames[i]
    button.Size = UDim2.new(0, 100, 0, 50)
    button.Position = UDim2.new(0, 10, 0.05, (i - 1) * 60 + 10)
    button.TextScaled = true
    button.Parent = gui

    button.MouseButton1Click:Connect(function()
        if IsBlocked == false then
            makeButtonsSemiTransparent()
            IsBlocked = true
            if i == 1 then
                printButton("Meshes/cat_baby (6)Accessory", 1, true)
            elseif i == 2 then
                printButton("Meshes/zhihegouAccessory", 1, true)
            elseif i == 3 then
                printButton("Lion Plushie", 1, true)
            elseif i == 4 then
                printButton("tigerAccessory", 1, true)
            elseif i == 5 then
                printButton("MeshPartAccessory", 1, false)
            elseif i == 6 then
                printButton("mouseMount_waistAccessory", 1, false)
            elseif i == 7 then
                printButton("butterflySwallowtail", 0, true)
            elseif i == 8 then
                printButton("Bee Face", 0, true)
            elseif i == 9 then
                printButton("SunConureAccessory", 0, true)
            elseif i == 10 then
                printButton("CuteStegosaurus", 1, false)
            end
        end
    end)
end

function printButton(Name, mode, turn)

    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local LocalPlayer = Players.LocalPlayer

    if not getgenv().Network then
        getgenv().Network = {
            BaseParts = {};
            FakeConnections = {};
            Connections = {};
            Output = {
                Enabled = true;
                Prefix = "[NETWORK] ";
                Send = function(Type,Output,BypassOutput)
                    if typeof(Type) == "function" and (Type == print or Type == warn or Type == error) and typeof(Output) == "string" and (typeof(BypassOutput) == "nil" or typeof(BypassOutput) == "boolean") then
                        if Network["Output"].Enabled or BypassOutput then
                            Type(Network["Output"].Prefix..Output);
                        end;
                    elseif Network["Output"].Enabled then
                        error(Network["Output"].Prefix.."Output Send Error : Invalid syntax.");
                    end;
                end;
            };
            LostParts = {};
            CharacterRelative = true;
            LastCharacter = nil;
            TryKeep = true;
            PartOwnership = {
                PreMethodSettings = {};
                Enabled = false;
            };
        }

        Network["Output"].Send(print,": Loading.")

        Network["RetainPart"] = function(Part,Silent,ReturnFakePart)
            assert(Network["PartOwnership"]["Enabled"], Network["Output"].Prefix.." RetainPart Error : PartOwnership is Disabled.")
            assert(typeof(Part) == "Instance" and Part:IsA("BasePart") and not Part:IsGrounded(),Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg1 (Part) must be an ungrounded BasePart which is a descendant of workspace.")
            if not Part:IsDescendantOf(workspace) then
                Network["Output"].Send(error,"RetainPart Error : Invalid syntax: Arg1 (Part) must be an ungrounded BasePart which is a descendant of workspace.")
                local Index = table.find(Network["LostParts"],Part)
                if Index then
                    table.remove(Network["LostParts"],Index)
                end
                return false
            end
            assert(typeof(Silent) == "boolean" or typeof(Silent) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg2 (Silent) must be a boolean or nil.")
            assert(typeof(ReturnFakePart) == "boolean" or typeof(ReturnFakePart) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg3 (ReturnFakePart) must be a boolean or nil.")
            if not table.find(Network["BaseParts"],Part) and not table.find(Network["LostParts"],Part) then
                table.insert(Network["BaseParts"],Part)
                Part.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
                if not Silent then
                    Network["Output"].Send(print,"PartOwnership Output : PartOwnership applied to BasePart "..Part:GetFullName()..".")
                end
                if ReturnFakePart then
                    local workspaceParts = {}
                    return FakePart
                end
            else
                Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it already active.")
                return false
            end
        end

        Network["RemovePart"] = function(Part,Silent)
            assert(typeof(Part) == "Instance" and Part:IsA("BasePart"),Network["Output"].Prefix.."RemovePart Error : Invalid syntax: Arg1 (Part) must be a BasePart.")
            local Index1 = table.find(Network["BaseParts"],Part)
            local Index2 = table.find(Network["LostParts"],Part)
            if Index1 then
                table.remove(Network["BaseParts"],Index1)
            else
                if not Silent then
                    Network["Output"].Send(warn,"RemovePart Warning : BasePart "..Part:GetFullName().." not found in BaseParts table.")
                end
                return
            end
            if Index2 then
                table.remove(Network["LostParts"],Index2)
            end
            if not Silent then
                Network["Output"].Send(print,"RemovePart Output: PartOwnership removed from BasePart "..Part:GetFullName()..".")
            end
        end

        Network["PartOwnership"]["PartCoroutine"] = coroutine.create(function(Part)
            if Part:IsDescendantOf(workspace) then
                if Network.CharacterRelative then
                    local Character = Network["LastCharacter"];
                    if not Character.PrimaryPart then
                        for _,Inst in pairs(Character:GetDescendants()) do
                            if Inst:IsA("BasePart") then
                                Character.PrimaryPart = Inst
                                break
                            end
                        end
                    end
                    if Character and Character.PrimaryPart then
                        local Distance = (Character.PrimaryPart.Position - Part.Position).Magnitude
                        if Distance > gethiddenproperty(LocalPlayer,"MaximumSimulationRadius") and not isnetworkowner(Part) then
                            Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
                            Network["RemovePart"](Part)
                            if not Part:IsGrounded() then
                                table.insert(Network["LostParts"],Part)
                            else
                                Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is grounded.")
                            end
                        end
                    else
                        Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
                    end
                end
                Part.AssemblyLinearVelocity = (Part.AssemblyLinearVelocity.Unit+Vector3.new(.01,.01,.01))*(50+math.cos(tick()*10))
            else
                Network["RemovePart"](Part)
            end
        end)

        Network["PartOwnership"]["Enable"] = coroutine.create(function()
            if not Network["PartOwnership"]["Enabled"] then
                Network["PartOwnership"]["Enabled"] = true
                Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus = LocalPlayer.ReplicationFocus
                LocalPlayer.ReplicationFocus = workspace
                Network["PartOwnership"]["PreMethodSettings"].SimulationRadius = gethiddenproperty(LocalPlayer,"SimulationRadius")
                Network["PartOwnership"]["Connection"] = RunService.Stepped:Connect(function()
                    Network["LastCharacter"] = pcall(function() return LocalPlayer.Character end) or Network["LastCharacter"]
                    sethiddenproperty(LocalPlayer,"SimulationRadius",1/0)
                    coroutine.wrap(function()
                        for _,Part in pairs(Network["BaseParts"]) do
                            coroutine.resume(Network["PartOwnership"]["PartCoroutine"],Part)
                        end
                    end)()
                    coroutine.wrap(function()
                        for _,Part in pairs(Network["LostParts"]) do
                            Network.RetainPart(Part,true)
                        end
                    end)()
                end)
                Network["Output"].Send(print,"PartOwnership Output : PartOwnership enabled.")
            else
                Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already enabled.")
            end
        end)

        Network["PartOwnership"]["Disable"] = coroutine.create(function()
            if Network["PartOwnership"]["Connection"] then
                Network["PartOwnership"]["Connection"]:Disconnect()
                LocalPlayer.ReplicationFocus = Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus
                sethiddenproperty(LocalPlayer,"SimulationRadius",Network["PartOwnership"]["PreMethodSettings"].SimulationRadius)
                Network["PartOwnership"]["PreMethodSettings"] = {}
                for _,Part in pairs(Network["BaseParts"]) do
                    Network["RemovePart"](Part)
                end
                for Index,Part in pairs(Network["LostParts"]) do
                    table.remove(Network["LostParts"],Index)
                end
                Network["PartOwnership"]["Enabled"] = false
                Network["Output"].Send(print,"PartOwnership Output : PartOwnership disabled.")
            else
                Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already disabled.")
            end
        end)

        Network["Output"].Send(print,": Loaded.")
    end
    coroutine.resume(Network["PartOwnership"]["Enable"])


    player = game:GetService("Players").LocalPlayer
    camera = workspace.CurrentCamera
    character = player.Character
    local vbreak = false
    character.Archivable = true

    player.Character = nil
    player.Character = character:Clone()

    wait(game:GetService("Players").RespawnTime+.3)

    character.Humanoid.Health = 0


    stuff = Instance.new("Folder",workspace)
    center = Instance.new("Part",stuff)
    input = game:GetService("UserInputService")

    
    center.Size = Vector3.new(1,1,1)
    center.Position = character.Head.Position
    center.Transparency = 1
    if mode == 0 then
        center.CanCollide = false
        center.Anchored = true
    else
        center.CanCollide = true
        center.Anchored = false
    end

    camera.CameraSubject = center

    points = {}

    last_pos = character.Head.Position
    coroutine.wrap(function()
        while task.wait() do
            if vbreak == true then break end
            local cameraPosition = game.Workspace.CurrentCamera.CFrame.Position

        local partPosition = center.Position

        local direction = (cameraPosition - partPosition).Unit

        local lookVector = Vector3.new(direction.X, 0, direction.Z)
        if Name == "Bee Face" then
            center.CFrame = CFrame.new(center.Position) * camera.CFrame.Rotation * CFrame.Angles(math.rad(-100), math.rad(-30), math.rad(-30))
        else
            if mode == 1 then
                if turn then
                    center.CFrame = CFrame.lookAt(partPosition, partPosition + lookVector) * CFrame.Angles(0, math.rad(180), 0)
                else
                    center.CFrame = CFrame.lookAt(partPosition, partPosition + lookVector)
                end
            else
                if turn then
                    center.CFrame = CFrame.new(center.Position) * camera.CFrame.Rotation * CFrame.Angles(0, math.rad(180), 0)
                else
                    center.CFrame = CFrame.new(center.Position) * camera.CFrame.Rotation
                end
            end
        end
            wait(0)
            if (last_pos - center.Position).magnitude > 1 then
                local marker = Instance.new("Part",stuff)
                marker.Anchored = true
                marker.Size = Vector3.new(1,1,1)
                marker.CFrame = CFrame.lookAt(last_pos,center.Position)
                marker.CanCollide = false
                marker.Transparency = 1
                last_pos = center.Position
                table.insert(points,marker)
            end
            if points[#points-9] then
                points[#points-9]:Destroy()
                table.remove(points,#points-9)
            end
        end
    end)()

        handle = character:FindFirstChild(Name).Handle
        handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
        Network.RetainPart(handle)
        coroutine.wrap(function()
            while handle:FindFirstAncestor("Game") do
                handle.CFrame = center.CFrame
                task.wait()
                if input:IsKeyDown(Enum.KeyCode.Z) then
                    break
                end
            end
            vbreak = true
            player.Character = character
            makeButtonsSemiNormal()
            IsBlocked = false
        end)()


    current_position = character.Head.Position
    wait(.5)
    local IsJump = true
    if mode == 0 then
        while wait() do
            if vbreak == true then break end
            if input:IsKeyDown(Enum.KeyCode.D) then
                current_position += camera.CFrame.RightVector * speed
            end
            if input:IsKeyDown(Enum.KeyCode.A) then
                current_position += camera.CFrame.RightVector * -speed
            end
            if input:IsKeyDown(Enum.KeyCode.W) then
                current_position += camera.CFrame.LookVector * speed
            end
            if input:IsKeyDown(Enum.KeyCode.S) then
                current_position += camera.CFrame.LookVector * -speed
            end
            if input:IsKeyDown(Enum.KeyCode.E) then
                current_position += camera.CFrame.UpVector * speed
            end
            if input:IsKeyDown(Enum.KeyCode.Q) then
                current_position += camera.CFrame.UpVector * -speed
            end
            if input:IsKeyDown(Enum.KeyCode.LeftShift) then do
                    speed = 1.5
                end else
                speed = 0.75
            end
        center.Position = current_position
    end
    else
        while wait() do
            lookVector = camera.CFrame.LookVector
            lookVector = Vector3.new(lookVector.X, 0, lookVector.Z).Unit
            rightVector = camera.CFrame.RightVector
            rightVector = Vector3.new(rightVector.X, 0, rightVector.Z).Unit
            if vbreak == true then break end
            if input:IsKeyDown(Enum.KeyCode.D) then
                center.Velocity = rightVector * speed
            end
            if input:IsKeyDown(Enum.KeyCode.A) then
                center.Velocity = rightVector * -speed
            end
            if input:IsKeyDown(Enum.KeyCode.W) then
                center.Velocity = lookVector * speed
            end
            if input:IsKeyDown(Enum.KeyCode.S) then
                center.Velocity = lookVector * -speed
            end

            if input:IsKeyDown(Enum.KeyCode.Space) then
                if IsJump then
                    center.Velocity = Vector3.new(center.Velocity.x, speed*5, center.Velocity.z)
                    IsJump = false
                end
            else
                IsJump = true
            end
            
            if input:IsKeyDown(Enum.KeyCode.LeftShift) then do
                    speed = 25
                end else
                speed = 13.5
            end
        end
    end
end