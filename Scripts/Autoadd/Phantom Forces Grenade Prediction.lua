local pfCamera;
local cfModule;
local char;
local oldLoadGrenade;
local network;
local oldSend;
local roundsystem;
local beamStorage = Instance.new("Part", workspace.Terrain);
beamStorage.Anchored = true;
beamStorage.Transparency = 1;
beamStorage.CanCollide = false;
local runService = game:GetService("RunService");


--grenade constants
local castResolution = 1/60;
local nadeAcceleration = Vector3.new(0, -80, 0);
local bounceElasticity = 0.2;
local frictionConstant = 0.08;

local function isBadNumber(x)
    return x ~= x or math.abs(x) == 1 / 0;
end


local function bezier(origin, velocity, acceleration, time)
    local p3 = origin + time*(0.5*acceleration*time + velocity);
    local p2 = p3 - time*(acceleration*time + velocity)/3;
    local p1 = (origin*7/3) - p2 - p3/3 + (acceleration*time*time)/3 + (time*velocity*4/3);


    local curve0 = (p1 - origin).Magnitude;
    local curve1 = -((p2 - p3).Magnitude);


    local b = (origin - p3).Unit;
    local r1 = (p1 - origin).Unit;
    local u1 = r1:Cross(b).Unit;
    local r2 = (p2 - p3).Unit;
    local u2 = r2:Cross(b).Unit;
    b = u1:Cross(r1);

    return curve0, curve1, CFrame.fromMatrix(origin, r1, u1, b), CFrame.fromMatrix(p3, r2, u2, b);
end

local function nadeBeam(origin, velocity, acceleration, time)
    local curve0, curve1, cfA, cfB = bezier(origin, velocity, acceleration, time);

    local beam = Instance.new("Beam");
    local a0 = Instance.new("Attachment");
    local a1 = Instance.new("Attachment");

    a0.CFrame = cfA;
    a1.CFrame = cfB;

    a0.Parent = beamStorage;
    a1.Parent = beamStorage;

    beam.Attachment0 = a0;
    beam.Attachment1 = a1;
    beam.CurveSize0 = curve0;
    beam.CurveSize1 = curve1;
    beam.Segments = 10000;
    beam.Color = ColorSequence.new(Color3.new(1, 1, 1));
    beam.Transparency = NumberSequence.new(0);
    beam.Width0 = 0.05;
    beam.Width1 = 0.05;
    beam.FaceCamera = true;
    beam.Parent = beamStorage;
end


local function generateNadeArguments(flyingNade, nadeData, remainingSecond)
    local aimCf = pfCamera.cframe * CFrame.Angles(math.rad(nadeData.throwangle or 0), 0, 0);
    local position = flyingNade.Position;
    local velocity = aimCf.LookVector * nadeData.throwspeed + char.rootpart.Velocity;
    do
        --do a check incase nade clips inside a wall
        local p = pfCamera.basecframe.p;
        local _, pos, norm = workspace:FindPartOnRayWithWhitelist(Ray.new(p, position - p), roundsystem.raycastwhitelist);
        position = pos + 0.01*norm;
    end
    local av0 = (pfCamera.cframe - pfCamera.cframe.p) * Vector3.new(19.539, -5, 0);
    local rot0 = flyingNade.CFrame - flyingNade.CFrame.p;
    local offset = Vector3.new();
    local lastbounce = false;
    local glassCount = 0;
    local frames = {
        {
            t0 = 0,
            p0 = position,
            v0 = velocity,
            offset = offset,
            rot0 = rot0,
            rotv = av0,
            glassbreaks = {}
        }
    };

    for i = 1, remainingSecond/castResolution + 1 do
        local newPosition = position + castResolution*velocity + castResolution*castResolution/2*nadeAcceleration;
        local hit, pos, norm = workspace:FindPartOnRayWithWhitelist(Ray.new(position, newPosition - position - 0.05 * offset), roundsystem.raycastwhitelist);
        local time = i*castResolution;
        if hit and hit.Name ~= "Window" and hit.Name ~= "Col" then
            rot0 = flyingNade.CFrame - flyingNade.CFrame.p;
            offset = 0.2*norm;
            av0 = norm:Cross(velocity) / 0.2;
            local delta = pos - position;
            local fixpls = 1 - 0.001 / delta.Magnitude;
            fixpls = fixpls < 0 and 0 or fixpls;
            position = position + fixpls*delta + 0.05*norm;
            local normvel = norm:Dot(velocity)*norm;
            local tanvel = velocity - normvel;
            local geometricdeceleration;
            local d1 = -norm:Dot(nadeAcceleration);
            local d2 = -(1 + bounceElasticity) * norm:Dot(velocity);
            geometricdeceleration = 1 - frictionConstant * (10 * (d1 < 0 and 0 or d1) * castResolution + (d2 < 0 and 0 or d2)) / tanvel.Magnitude;
            geometricdeceleration = geometricdeceleration < 0 and 0 or geometricdeceleration;
            velocity = geometricdeceleration * tanvel - bounceElasticity * normvel;
            if velocity.Magnitude < 1 then
                frames[#frames + 1] = {
                    t0 = time - castResolution*newPosition:Dot(pos)/newPosition:Dot(position), --magnitude/magnitude = dot/dot
                    p0 = position,
                    v0 = Vector3.new(),
                    rot0 = cfModule.fromaxisangle(time * av0) * rot0,
                    b = true,
                    offset = 0.2 * norm,
                    rotv = Vector3.new(),
                    glassbreaks = {}
                };
                break;
            end
            frames[#frames + 1] = {
                t0 = time - castResolution*newPosition:Dot(pos)/newPosition:Dot(position),
                p0 = position,
                v0 = velocity,
                rot0 = cfModule.fromaxisangle(time * av0) * rot0,
                b = lastbounce,
                offset = 0.2 * norm,
                rotv = av0,
                glassbreaks = {}
            };
            lastbounce = true;
        else
            position = newPosition;
            velocity = velocity + castResolution*nadeAcceleration;
            lastbounce = false;
            if hit and hit.Name == "Window" and glassCount < 5 then
                glassCount = glassCount + 1;
                frames[#frames].glassbreaks[#frames[#frames].glassbreaks + 1] = {
                    t = time,
                    part = hit
                };
            end
        end
    end
    return frames;
end




for i,v in ipairs(getgc(true)) do
    if type(v) == "table" then
        if rawget(v, "basecframe") then
            pfCamera = v;
        elseif rawget(v, "fromaxisangle") then
            cfModule = v;
        elseif rawget(v, "jump") then
            char = v;
            oldLoadGrenade = v.loadgrenade;
        elseif rawget(v, "send") then
            network = v;
            oldSend = v.send;
        elseif rawget(v, "raycastwhitelist") then
            roundsystem = v;
        end
    end
end


char.loadgrenade = function(...)
    local _, nadeName = ...;
    local self = oldLoadGrenade(...);
    local oldEquip = self.setequipped;
    local oldThrow = self.throw;
    local oldCreatenade;
    local nadeData;
    local start, blowUp;
    local connection;
    local frames;
    local appliedConnection = false;
    for i,v in next, debug.getupvalues(oldThrow) do
        if type(v) == "function" and debug.getinfo(v).name == "createnade" then
            oldCreatenade = v;
            print("createnade found");
            debug.setupvalue(oldThrow, i, function(...)
                v(...);
                for j,k in next, debug.getupvalues(v) do
                    if type(k) == "table" and rawget(k, "frames") then
                        k.frames = frames;
                    end
                end
            end);
            break;
        end
    end
    for i,v in next, debug.getupvalues(oldEquip) do
        if type(v) == "table" and rawget(v, "type") and rawget(v, "crosssize") then
            nadeData = v;
            print("nade data found");
            break;
        end
    end



    self.setequipped = function(this, on)
        if on then
            local lastRan = tick();
            start = lastRan;
            blowUp = start + 5;
            connection = runService.RenderStepped:Connect(function()
                if not char.alive then
                    if connection then
                        connection:Disconnect();
                        beamStorage:ClearAllChildren();
                    end
                end
                local now = tick();
                if lastRan <= now then
                    lastRan = now + castResolution - (now - lastRan)%castResolution;
                    local remaining = blowUp - now;
                    local flyingNade = debug.getupvalue(oldCreatenade, 2);
                    if flyingNade then
                        if not appliedConnection then
                            --gay but kys
                            appliedConnection = true;
                            flyingNade.AncestryChanged:Connect(function(_, new)
                                if new == nil then
                                    beamStorage:ClearAllChildren();
                                end
                            end);
                        end
                        frames = generateNadeArguments(flyingNade, nadeData, remaining);
                        beamStorage:ClearAllChildren();
                        for j,currentFrame in next, frames do
                            local nextFrame = frames[j + 1];
                            if nextFrame then
                                local origin = currentFrame.p0 + currentFrame.offset;
                                local time = nextFrame.t0 - currentFrame.t0;
                                local acceleration = currentFrame.b and Vector3.new() or nadeAcceleration;
                                local velocity = ((nextFrame.p0 + nextFrame.offset) - origin - 0.5*acceleration*time*time)/time;
                                nadeBeam(origin, velocity, acceleration, time);
                            end
                        end
                    end
                end
            end);
        end
        return oldEquip(this, on);
    end

    self.throw = function(...)
        appliedConnection = false;
        if connection then
            connection:Disconnect();
            --beamStorage:ClearAllChildren();
        end
        if frames then
            oldSend(network, "newgrenade", nadeName, {
                time = tick(),
                blowuptime = blowUp - tick(),
                frames = frames
            });
        end
        return oldThrow(...);
    end
    return self;
end

network.send = function(self, name, ...)
    if name == "newgrenade" then
        return;
    end
    return oldSend(self, name, ...);
end