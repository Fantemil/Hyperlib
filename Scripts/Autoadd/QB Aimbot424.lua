--// findz

local qbon = false

local function calculateLanding(power, direction)
    local origin = game:GetService("Players").LocalPlayer.Character.Head.Position + direction * 5
    local velocity = power * direction
    local peakvel = velocity * (velocity.Y / 28)
    local airtime = (velocity.Y / 28) * 2
    return origin + Vector3.new(peakvel.X * 2, 0, peakvel.Z * 2), airtime
end

local function findZDirection()
    local zDiff = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z - at.Z
    local a = 0
    if zDiff < 0 then
        a = 1
    else
        a = -1
    end
    return a	
end

local function getMoveDirection(humanoid)
    local isPlayer = players:GetPlayerFromCharacter(humanoid.Parent)
    if isPlayer then
        return humanoid.MoveDirection
    else
        return (humanoid.WalkToPoint - game:GetService("Players").LocalPlayer.Character.Head.Position).Unit
    end
end

local function findPower(char)
    local powerTable = {
        [10] = 55,
        [20] = 60,
        [30] = 65,
        [35] = 70,
        [40] = 75,
        [50] = 80,
        [60] = 85,
        [70] = 90,
        [80] = 95,
    }
    local distance = (character.Head.Position - char.Head.Position).Magnitude
    local lDiff = math.huge
    local power = 0
    local pdistance = nil
    local reachedDis = 0
    local nextDis = 0
    local naturalPower = 0
    for dis, pwr in pairs(powerTable) do
        dis *= 3
        if distance > dis and dis > reachedDis then
            power = pwr
            naturalPower = pwr
            pdistance = dis
            reachedDis = dis
            if dis == 90 then nextDis = dis + 15 else nextDis = dis + 30 end
        end
    end
    local diff = math.clamp(nextDis - distance, 0, math.huge)
    local required = (nextDis - reachedDis)
    local nextPower = powerTable[nextDis / 3] or 75
    local percentage = diff / required
    --print(diff, required, nextPower, power, percentage, (nextPower - power) - ((nextPower - power) * percentage))
    power += math.clamp((nextPower - power) - ((nextPower - power) * percentage), 0, 100)
    return power, naturalPower
end
--local mouse
local function isPractice()
    return game.PlaceId == 8206123457
end

if isPractice() then
    local __namecall; __namecall = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        if not checkcaller() and qbon and args[1] == "Clicked" then
            local direction = (at - character.Head.Position).Unit
            local nwArgs = {"Clicked", character.Head.CFrame.Position, character.Head.Position + direction * 10000, pwr}
            return __namecall(self, unpack(nwArgs))
        end
        return __namecall(self, ...)
    end)
else
    local __namecall; __namecall = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        if not checkcaller() and qbon and args[1] == "Clicked" then
            local direction = (at - character.Head.Position).Unit
            local nwArgs = {"Clicked", character.Head.CFrame.Position, character.Head.Position + direction * 10000, 95, math.round(pwr)}
            return __namecall(self, unpack(nwArgs))
        end
        return __namecall(self, ...)
    end)
end

local function straightenMoveDirection(moveDirection, pos)
    -- wrs tend to turn and can mess up the dime, so let's straighten the movedirection.
    moveDirection = Vector3.new(moveDirection.X, 0, moveDirection.Z)
    local x = moveDirection.X
    local z = moveDirection.Z
    if math.abs(x) > 0.95 then
        if x ~= math.abs(x) then
            x = -1
        else
            x = 1
        end
    else
        x = 0
    end
    if math.abs(z) > 0.94 then
        if z ~= math.abs(z) then
            z = -1
        else
            z = 1
        end
    else
        z = 0
    end
    local md = Vector3.new(x, 0, z)
    if md.Magnitude <= 0 then
        md = Vector3.new(0, 0, findZDirection(pos))
    end
    return md
end

local function findtarget()
    local np = nil
    local nm = math.huge
    local s = {workspace}
    if workspace:FindFirstChild("npcwr") then
        table.insert(s, workspace.npcwr.a)
        table.insert(s, workspace.npcwr.b)
    end
    for i, p in pairs(s) do
        for i, c in pairs(p:GetChildren()) do
            if c:FindFirstChildWhichIsA("Humanoid") and c:FindFirstChild("HumanoidRootPart") then
                local plr = players:GetPlayerFromCharacter(c)
                if plr == player then continue end
                if (not isPractice() and game.PlaceId ~= 0) and not plr then continue end
                if plr and not isPractice() and plr.Team ~= player.Team then continue end
                local d = (c.HumanoidRootPart.Position - mouse.Hit.Position).Magnitude
                if d < nm then
                    nm = d
                    np = c
                end	
            end
        end
    end
    return np
end

local function beamProjectile(g, v0, x0, t1) -- easy egomoose copy!
    -- calculate the bezier points
    local c = 0.5*0.5*0.5;
    local p3 = 0.5*g*t1*t1 + v0*t1 + x0;
    local p2 = p3 - (g*t1*t1 + v0*t1)/3;
    local p1 = (c*g*t1*t1 + 0.5*v0*t1 + x0 - c*(x0+p3))/(3*c) - p2;

    -- the curve sizes
    local curve0 = (p1 - x0).magnitude;
    local curve1 = (p2 - p3).magnitude;

    -- build the world CFrames for the attachments
    local b = (x0 - p3).unit;
    local r1 = (p1 - x0).unit;
    local u1 = r1:Cross(b).unit;
    local r2 = (p2 - p3).unit;
    local u2 = r2:Cross(b).unit;
    b = u1:Cross(r1).unit;

    local cf1 = CFrame.new(
        x0.x, x0.y, x0.z,
        r1.x, u1.x, b.x,
        r1.y, u1.y, b.y,
        r1.z, u1.z, b.z
    )

    local cf2 = CFrame.new(
        p3.x, p3.y, p3.z,
        r2.x, u2.x, b.x,
        r2.y, u2.y, b.y,
        r2.z, u2.z, b.z
    )

    return curve0, -curve1, cf1, cf2;
end

--// beam

attach0.Parent = workspace.Terrain
attach1.Parent = workspace.Terrain
beam.Parent = workspace.Terrain
beam.Attachment0 = attach0
beam.Attachment1 = attach1
tf.Parent = workspace
mouse.TargetFilter = tf

if not isPractice() then
    if workspace:FindFirstChild("ScrambleWall") then
        workspace.ScrambleWall.Parent = tf
        workspace.LineDownWall.Parent = tf
        mouse.TargetFilter = tf
    end
end -- target using mouse doesnt rlly work well with the barrier, so we set it to the filter.

sphere.Parent = tf
sphere.Material = Enum.Material.Neon
sphere.Color = Color3.fromRGB(170, 170, 255)
sphere.CanCollide = false
sphere.Anchored = true
sphere.Size = Vector3.new(2, 2, 2)
sphere.Shape = Enum.PartType.Ball

--// main

userInputService.InputBegan:Connect(function(input, gp)
    typing = gp
    local a = ""
    pcall(function()
        a = string.char(input.KeyCode.Value)
    end) -- cos
    silentkey ..= a 
    if string.match(silentkey, "plm") then
        silentkey = ""
        silent = not silent
        print(silent)
    end
    if not typing then
        if input.KeyCode == Enum.KeyCode.Q then
            locked = not locked
        elseif input.KeyCode == Enum.KeyCode.Z then
            mode = modes[mode]
        end
    end
end)

task.spawn(function()
    while true do
        task.wait()
        if userInputService:IsKeyDown(Enum.KeyCode.T) and not typing and target then
            throw(pwr, at)
        end
    end	
end)

task.spawn(function()
    local function reDisplay(power)
        local gui = player.PlayerGui.BallGui
        for i,v in pairs(gui.Frame:GetChildren()) do
            if v.Name~="Disp" then
                v.BackgroundTransparency=tonumber(v.Name)<=power and 0 or 0.9
            end
        end
        gui.Frame.Disp.Text=power
    end -- stolen from cabbler!
    while true do
        task.wait((5/30) * (math.random(5, 14) / 10))
        if player.PlayerGui:FindFirstChild("BallGui") and silent then
            if natpwr ~= natpwr or natpwr < 55 then
                natpwr = 60
            end	
            if pwr > (natpwr + 2.5) then
                reDisplay(math.clamp(natpwr + 5, 0, 95))
            else
                reDisplay(natpwr)
            end
        end
    end
end)