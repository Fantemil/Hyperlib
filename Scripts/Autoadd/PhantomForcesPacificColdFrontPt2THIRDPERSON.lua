local keybind = Enum.KeyCode.P;
local hideArms = true; --will hide the arm if u toggle the thirdperson
local thirdPersonDistance = 10;

local camera = workspace.CurrentCamera;
local userInputService = game:GetService("UserInputService");
local replicatedStorage = game:GetService("ReplicatedStorage");
local RunService = game:GetService("RunService")
local localPlayer = game:GetService("Players").LocalPlayer;
local zPercentage = Instance.new("NumberValue");
local robloxRequire = getrenv().require;
local gunModules = replicatedStorage:WaitForChild("GunModules");
local externalModels = replicatedStorage:WaitForChild("ExternalModels");

local thirdPersonEnabled = true;
local localUpdater; --the updater (will be nil when dead)
local thirdPersonStep;
local transparencyFix;
local fakeModel; --the model pf uses for third person
local originalFakeModelData = {};
local originalArmsData = {
    left = {},
    right = {}
};


local lastPosition;
local lastTick;
local currentAngle;


local function setThirdPersonEnabled(enabled)
    for i = enabled and 0 or 1, enabled and 1 or 0, enabled and 1/10 or -1/10 do
        zPercentage.Value = i;
        task.wait();
    end
    zPercentage.Value = enabled and 1 or 0;
end



userInputService.InputBegan:Connect(function(key, gp)
    if gp then return; end
    if key.KeyCode == keybind then
        thirdPersonEnabled = not thirdPersonEnabled;
        setThirdPersonEnabled(thirdPersonEnabled);
    end
end);


local char;
local oldUpdateCharacter;
local network;
local oldSend;
local loadplayer;
local cameraStep;
local oldCameraTask;
local gameLogic;

for i,v in ipairs(getgc(true)) do
    if type(v) == "table" then
        if rawget(v, "send") and rawget(v, "fetch") then
            network = v;
            oldSend = v.send;
        elseif rawget(v, "jump") then
            char = v;
            oldUpdateCharacter = v.updatecharacter;
        elseif rawget(v, "name") and rawget(v, "task") and v.name == "camera" then
            cameraStep = v;
            oldCameraTask = v.task;
        elseif rawget(v, "gammo") then
            gameLogic = v;
        end
    elseif type(v) == "function" then
        if debug.getinfo(v).name == "loadplayer" then
            loadplayer = v;
        end
    end
end


char.ondied:connect(function() --ugly but fuck u
    localUpdater.died();
    thirdPersonStep:Disconnect();
    transparencyFix:Disconnect();
    localUpdater = nil; --shush
    thirdPersonStep = nil;
    transparencyFix = nil;
    lastPosition = nil;
    lastTick = nil;
    currentAngle = nil;
    fakeModel = nil;
    table.clear(originalFakeModelData);
    for i,v in pairs(originalArmsData) do
        table.clear(v);
    end
end);

camera.ChildAdded:Connect(function(child)
    if child.Name == "Left Arm" or child.Name == "Right Arm" then
        local type = child.Name == "Left Arm" and "left" or "right";
        for i,v in pairs(child:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("Texture") or v:IsA("Decal") and v.Transparency < 1 then
                originalArmsData[type][v] = {
                    trans = v.Transparency
                };
            end
        end
        child.DescendantAdded:Connect(function(v)
            if v:IsA("BasePart") or v:IsA("Texture") or v:IsA("Decal") and v.Transparency < 1 then
                originalArmsData[type][v] = {
                    trans = v.Transparency
                };
            end
        end);
    end
end);


function char.updatecharacter(spawnPosition)
    oldUpdateCharacter(spawnPosition);
    --call loadplayer on localPlayer
    debug.setupvalue(loadplayer, 1, "");
    localUpdater = loadplayer(localPlayer);
    debug.setupvalue(loadplayer, 1, localPlayer);
    --spawn it retard
    localUpdater.spawn(spawnPosition);

    --maybe fix the spring? lmfao retard
    local positionSpring;
    local anglesSpring;
    for i,v in pairs(debug.getupvalues(localUpdater.step)) do
        --check if its a spring
        if type(v) == "table" then
            if rawget(v, "update") and rawget(v, "accelerate") then
                if v._s == 32 then
                    positionSpring = v;
                elseif v._s == 12 then
                    anglesSpring = v;
                end
            elseif rawget(v, "makesound") ~= nil then
                v.makesound = false; --stfu
            end
        end
    end
    for i,v in pairs(debug.getupvalues(localUpdater.spawn)) do
        if typeof(v) == "Instance" and v:IsA("Model") and v.Name == "Player" then
            fakeModel = v;
            break;
        end
    end
    if fakeModel then
        for i,v in pairs(fakeModel:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("Texture") or v:IsA("Decal") and v.Transparency < 1 then
                originalFakeModelData[v] = {
                    trans = v.Transparency
                };
            end
        end
        fakeModel.DescendantAdded:Connect(function(v)
            if v:IsA("BasePart") or v:IsA("Texture") or v:IsA("Decal") and v.Transparency < 1 then
                originalFakeModelData[v] = {
                    trans = v.Transparency
                };
            end
        end);
    else
        print("yo retard u didnt get the fake model");
    end
    if positionSpring and anglesSpring then
        positionSpring.s = 100; --change this to something higher if u want ur thirdperson to move faster, default is 32
    else
        print("yo retard u didnt get the position spring");
    end
    thirdPersonStep = RunService.RenderStepped:Connect(function()
        if localUpdater and currentAngle then
            anglesSpring.t = Vector2.new(currentAngle.x, currentAngle.y); --my brain is out of this world
            localUpdater.step(3, true);
        end
    end);
    transparencyFix = RunService.Heartbeat:Connect(function()
        if localUpdater and fakeModel then
            for part,data in pairs(originalFakeModelData) do
                part.Transparency = zPercentage.Value == 0 and 1 or data.trans;
            end
            for i,v in pairs(originalArmsData) do
                for part,data in pairs(v) do
                    part.Transparency = not hideArms and data.trans or (thirdPersonEnabled and 1 or data.trans);
                end
            end
        end
    end);
end

function networkConfusedend(name, ...)
    local args = {...};
    if localUpdater then
        if name == "repupdate" then
            currentAngle = args[2];
            local velocity = (args[1] - (lastPosition or args[1]))/(args[3] - (lastTick or args[3]));
            localUpdater.receivedFrameTime = args[3];
            localUpdater.receivedPosition = args[1];
            localUpdater.receivedLookAngles = args[2];
            localUpdater.receivedVelocity = velocity == velocity and velocity or Vector3.new();
            localUpdater.receivedDataFlag = true;
            lastTick = args[3];
            lastPosition = args[1];
        elseif name == "stance" or name == "sprint" or name == "aim" then
            localUpdater["set" .. name](args[1]);
        elseif name == "equip" then
            if gameLogic.currentgun and gameLogic.currentgun.name then
                local data = robloxRequire(gunModules[gameLogic.currentgun.name]); --this should NOT error unless pf is retarded
                local model = externalModels[gameLogic.currentgun.name];
                localUpdater[gameLogic.currentgun.knife and "equipknife" or "equip"](data, model);
            end
        end
    end
    if name == "state" and args[1] == localPlayer then
        return;
    end
    return oldSend(self, name, unpack(args));
end

function cameraStep.task(...)
    oldCameraTask(...);
    local originCframe = camera.CFrame;
    if localUpdater then
        local finalDistance = thirdPersonDistance*zPercentage.Value;
        originCframe = originCframe * CFrame.new(0, 0, finalDistance);
    end
    camera.CFrame = originCframe;
end