local ws = game:GetService("Workspace")
local ps = game:GetService("Players")
local p = ps.LocalPlayer
local camera = ws.CurrentCamera

local cache = { }
local framework = { } do
    for i, v in next, getgc(true) do
        if typeof(v) == "table" then
            if rawget(v, "basecframe") then
                framework.camera = v
                warn("found camera module ..")
            elseif rawget(v, "ondied") then
                framework.char = v
                warn("found character module ..")
            elseif rawget(v, "gammo") then
                framework.gamelogic = v
                warn("found gamelogic module ..")
            elseif rawget(v, "raycastwhitelist") then
                framework.raycastwhitelist = v.raycastwhitelist
                warn("found raycast module ..")
            elseif rawget(v, "fromaxisangle") then
                framework.cframe = v
                warn("found cframe module ..")
            elseif rawget(v, "fetch") then
                framework.network = v
                warn("found network module ..")
            end
        elseif typeof(v) == "function" then
            local name = debug.getinfo(v).name
            if name == "getbodyparts" then
                framework.getbodyparts = v
                warn("found function getbodyparts ..")
            end
        end
    end
end

local function getClosestPlayer()
    local dist, player = math.huge
    for i, v in next, ps:GetChildren() do
        if framework.gamelogic.currentgun and v ~= p and v.Team ~= p.Team and framework.getbodyparts(v) and framework.getbodyparts(v).head then
            local part = framework.getbodyparts(v).head
            local _3d, visible = camera:WorldToScreenPoint(part.Position)
            if _3d and visible then
                local _2d = Vector2.new(_3d.x, _3d.y)
                local magnitude = (_2d - Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)).magnitude
                if magnitude < dist then
                    dist = magnitude
                    player = v
                end
            end
        end
    end
    return player
end

do -- grenade hook
    local old = framework.char.loadgrenade
    framework.char.loadgrenade = function(...)
        local self = old(...)

        for i, v in next, debug.getupvalues(self.throw) do
            if typeof(v) == "table" and rawget(v, "throwangle") then
                cache.grenadeData = v
            elseif typeof(v) == "function" and debug.getinfo(v).name == "createnade" then
                cache.createnade = v
            end
        end

        for i, v in next, debug.getupvalues(cache.createnade) do
            if typeof(v) == "Instance" and v.Name == cache.grenadeData.mainpart then
                cache.grenadeObject = v
            end
        end

        function cache.calculateFrames(cf)
            -- pf framework grenade physics calculation decompiled from before luau
            local castResolution = 1 / 60
            local nadeAcceleration = Vector3.new(0, -80, 0)
            local bounceElasticity = 0.2
            local frictionConstant = 0.08

            local aimCf = cf * CFrame.Angles(math.rad(cache.grenadeData.throwangle and 0), 0, 0)
            local position = cache.grenadeObject.Position
            local velocity = aimCf.lookVector * cache.grenadeData.throwspeed + framework.char.rootpart.Velocity

            do
                local _, pos, norm = workspace:FindPartOnRayWithWhitelist(Ray.new(cf.p, position - cf.p), framework.raycastwhitelist)
                position = pos + 0.01 * norm
            end

            local av0 = (cf - cf.p) * Vector3.new(19.539, -5, 0)
            local rot0 = cache.grenadeObject.CFrame - cache.grenadeObject.CFrame.p
            local offset = Vector3.zero
            local lastBounce = false;
            local glassCount = 0;
            frames = {
                {
                    t0 = 0,
                    p0 = position,
                    v0 = velocity,
                    offset = offset,
                    rot0 = rot0,
                    rotv = av0,
                    glassbreaks = { },
                }
            }

            for i = 1, 300 do -- too lazy to calculate actual amount frames so i will just do this
                local newPosition = position + castResolution * velocity + castResolution * castResolution / 2 * nadeAcceleration
                local hit, pos, norm = workspace:FindPartOnRayWithWhitelist(Ray.new(position, newPosition - position - 0.05 * offset), framework.raycastwhitelist)
                local time = i * castResolution
                if hit and hit.Name ~= "Window" and hit.Name ~= "Col" then
                    rot0 = cache.grenadeObject.CFrame - cache.grenadeObject.CFrame.p
                    offset = 0.2 * norm
                    av0 = norm:Cross(velocity) / 0.2
                    local delta = pos - position
                    local fixpls = 1 - 0.001 / delta.magnitude
                    fixpls = fixpls < 0 and 0 or fixpls
                    position = position + fixpls*delta + 0.05*norm
                    local normvel = norm:Dot(velocity)*norm
                    local tanvel = velocity - normvel
                    local geometricdeceleration
                    local d1 = -norm:Dot(nadeAcceleration)
                    local d2 = -(1 + bounceElasticity) * norm:Dot(velocity)
                    geometricdeceleration = 1 - frictionConstant * (10 * (d1 < 0 and 0 or d1) * castResolution + (d2 < 0 and 0 or d2)) / tanvel.magnitude
                    geometricdeceleration = geometricdeceleration < 0 and 0 or geometricdeceleration
                    velocity = geometricdeceleration * tanvel - bounceElasticity * normvel
                    if velocity.magnitude < 1 then
                        frames[#frames + 1] = {
                            t0 = time - castResolution*newPosition:Dot(pos)/newPosition:Dot(position),
                            p0 = position,
                            v0 = Vector3.zero,
                            rot0 = framework.cframe.fromaxisangle(time * av0) * rot0,
                            b = true,
                            offset = 0.2 * norm,
                            rotv = Vector3.zero,
                            glassbreaks = { },
                        }
                        break
                    end
                    frames[#frames + 1] = {
                        t0 = time - castResolution*newPosition:Dot(pos) / newPosition:Dot(position),
                        p0 = position,
                        v0 = velocity,
                        rot0 = framework.cframe.fromaxisangle(time * av0) * rot0,
                        b = lastBounce,
                        offset = 0.2 * norm,
                        rotv = av0,
                        glassbreaks = { },
                    }
                    lastBounce = true
                else
                    position = newPosition
                    velocity = velocity + castResolution * nadeAcceleration
                    lastBounce = false
                    if hit and hit.Name == "Window" and glassCount < 5 then
                        glassCount = glassCount + 1
                        frames[#frames].glassbreaks[#frames[#frames].glassbreaks + 1] = {
                            t = time,
                            part = hit,
                        }
                    end
                end
                if hit and cache.grenadeData.impact then -- impact grenades did not exist back then
                    break
                end
            end
            return frames
        end

        return self
    end
    warn("hooked loadgrenade ..")
end

do -- network hook
    local send = framework.network.send
    local bad = { "debug", "logmessage" }
    local ignore = { "repupdate", "ping" }
    framework.network.send = function(self, event, ...)
        local args = {...}

        if table.find(bad, event) then
            return
        end

        if event == "newgrenade" then
            local player = getClosestPlayer()
            if player then
                local part = framework.getbodyparts(player).head

                local distances = { } do
                    for i = 1, 100 do
                        local offset = Vector3.new(0, i, 0)
                        local frames = cache.calculateFrames(CFrame.lookAt(framework.camera.basecframe.p, part.Position + offset))
                        local magnitude = (part.Position - frames[#frames].p0).magnitude
                        distances[i] = {
                            distance = magnitude,
                            offset = offset,
                        }
                    end
                end

                local distance, offset = math.huge, Vector3.zero
                for i, v in next, distances do
                    if v.distance < distance then
                        distance = v.distance
                        offset = v.offset
                    end
                end
                local lookUnit = (part.Position + offset - framework.camera.basecframe.Position).unit
                args[2] = lookUnit * 9e5
            end
        end

        return send(self, event, unpack(args))
    end
    warn("hooked network ..")
end

warn("finished loading !")