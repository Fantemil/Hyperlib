--[[
--======================================================================--
 Phantom Forces Autofarm by Artemking4#2531
 
 made in a few days, applies frag tp, silent aimbot and knife aura, earns around 600k xp per 2 hours under normal conditions
 you can additionally implement a map check for it to only run on preferrable maps like second storm and so on 
 
 i will probably implement a few improvements later on, like some cool movement improvements and the map selecting feature mentioned above
 
 btw should run on almost any executor with almost no changes as it does not use many executor dependant functions ( except for a selected few ) 
--======================================================================--
]]--

local Teleport = game:GetService('TeleportService')
function connectToNewServer(reason)
    rconsoleprint("Reconnect! "..(reason or "").."\n")
    syn.set_thread_identity(6)
    
    local api = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/292439477/servers/Public?sortOrder=Asc&limit=100"))
    math.randomseed(tick())
    local instanceid;
    
    local num = math.random(1, 100)
    if api.data[num].playing ~= 32 then
        instanceid = api.data[num].id;
    end

    if not instanceid then
        for i = 1,100 do
            local num = math.random(1, 100)
            if api.data[num].playing ~= 32 then
                instanceid = api.data[num].id;
                break;
            end
        end
    end
    
    if instanceid then
        Teleport:TeleportToPlaceInstance(game.PlaceId, instanceid, LocalPlayer)
    end
    
    wait(5)
    
    --[[ 
    if syn and syn.queue_on_teleport then 
        syn.queue_on_teleport("PUT A PASTEBIN OR ANYTHING HERE") -- Made to not use autorun
    end 
    ]]--

    connectToNewServer(reason)
end

spawn(function()
    game:GetService('CoreGui'):WaitForChild('RobloxPromptGui'):WaitForChild("promptOverlay"):WaitForChild("ErrorPrompt")
    
    while wait() do 
        if game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ErrorPrompt.Visible then 
            connectToNewServer("Kicked/Error") 
        end 
    end 
end)

local canStart

orgp = hookfunction(getrenv().print, 
    function(msg, ...) 
        if type(msg) == "string" and string.match(msg, "Framework finished loading, duration:") then 
            canStart = true
        end
        
        return orgp(msg, ...) 
    end)

-- check if the game is loaded already
spawn(function()
    while wait() do 
        for k,v in ipairs(getloadedmodules()) do 
            if v.Parent == nil and tostring(v) == "camera" then 
                canStart = true
                break
            end
        end
    end
end)

while not canStart do wait() end
local LocalPlayer = game.Players.LocalPlayer

local Modules = { }

do
 -- if you want it to run faster you can localize rawget, type, etc
    local function FindModule(fingerprints) 
        local found = nil
        
        for k,gco in pairs(getgc()) do
            if type(gco) == "function" then
                for i,v in pairs(getupvalues(gco)) do
                    if type(v) == "table" then
                        local valid = true
                        
                        if type(fingerprints) == "table" then
                            for fk, fv in pairs(fingerprints) do
                                if rawget(v, fv) == nil then valid = false end  
                            end
                        elseif type(fingerprints) == "string" then
                            if rawget(v, fingerprints) == nil then valid = false end
                        else
                            error("Invalid fingerprints!")
                            valid = false
                        end
                        
                        if valid then found = v end
                    end
                end
            end
        end
        
        if found == nil then
            error("Could not find this module!")
        else
            return found
        end
    end

 -- superior method
    local function GetModule(name)
        for k, v in ipairs(getloadedmodules()) do
            if tostring(v) == name then return require(v) end
        end

        return error("Module " .. name .. " not found!")
    end

    Modules.Replication = FindModule({"getplayerhit", "removecharacterhash"})
    Modules.Character = FindModule({"setunaimedfov", "unloadguns"})
    Modules.Hud = FindModule({"voteyes", "voteno", "votedismiss"})
    Modules.Deploy = FindModule("deploy")
    Modules.GameLogic = FindModule("setsprintdisable")
    Modules.PublicSettings = FindModule("bulletLifeTime")
    
    Modules.Vector = GetModule("vector")
    Modules.Physics = GetModule("physics")
    Modules.Network = GetModule("network")
    Modules.Camera = GetModule("camera")
    Modules.RenderSteppedRunner = GetModule("RenderSteppedRunner")
    Modules.BulletCheck = GetModule("BulletCheck")
    
    Modules.RagdollOwners = debug.getupvalue(Modules.Replication.getplayerhit, 1)
end

local blacklist = { }

local function isPlayerBlocked(ply)
    return blacklist[ply] and blacklist[ply] > tick()
end

local function blockPlayer(ply, time) 
    if not isPlayerBlocked(ply) then
        blacklist[ply] = tick() + time
    end
end

local function findPlayerCluster(ignorelist, radius)
    local enemies = { }

    for ragdoll, player in next, Modules.RagdollOwners do
        if player.Team ~= LocalPlayer.Team 
            and Modules.Hud:isplayeralive(player) 
            and Modules.Hud:getplayerhealth(player) > 0 
            and not ignorelist[player]
            and not isPlayerBlocked(player) then
            
            enemies[player] = ragdoll
        end
    end

    local bestplayer, bestragdoll
    local bestnear = { }

    for player, ragdoll in pairs(enemies) do
        local near = { }

        for splayer, sragdoll in pairs(enemies) do
            if splayer ~= player and (sragdoll.Torso.Position - ragdoll.Torso.Position).magnitude < radius then
                table.insert(near, splayer)
            end
        end

        if #near >= #bestnear then
            bestnear = near
            bestragdoll = ragdoll
            bestplayer = player
        end
    end

    return bestplayer, bestragdoll, bestnear
end

local update
local deadUpdate
local forceNextTickUpdate = false 

local netSend

do
    local repcd = 2 / 90
    local lastUpdate = tick()

    local function replicationUpdate()
        local time = tick()
        local char = Modules.Character

        if (lastUpdate <= time or forceNextTickUpdate) and char.alive then
            update()
            
            lastUpdate = time + repcd - (time - lastUpdate) % repcd
            local camangs = Modules.Camera.angles
            netSend("repupdate", char.rootpart.Position, Vector2.new(camangs.x, camangs.y), time)
        end
        
        if not char.alive then 
            deadUpdate()
        end
    end
    
 -- override original repupdate stepper and implement our own so we can do it faster
    local cont = Modules.RenderSteppedRunner._taskContainers
    while not cont["repupdate"] do wait() end
    next(cont["repupdate"].tasks).task = replicationUpdate

    _G.orgSend = _G.orgSend or Modules.Network.send
    netSend = function(name, ...)
        return _G.orgSend(Modules.Network, name, ...)
    end
    
    function Modules.Network:send(name, ...)
  -- somewhy doesnt work idk why, maybe its also serverside or im just retarded
        if name == "forcereset" then return warn("Protected from Reset!") end 
        
        return _G.orgSend(self, name, ...)
    end
end

local currentWeaponSlot
local function equip(slot)
    if currentWeaponSlot == slot then return end
    
    Modules.Network:send("equip", slot)
end

local function updateKnifeAura()
    local bestdist = 25
    local bestply, bestrag
    for ragdoll, ply in pairs(Modules.RagdollOwners) do 
        if ply.Team ~= LocalPlayer.Team
            and Modules.Hud:isplayeralive(ply)  then
            local root = ragdoll:FindFirstChild('Torso')
            
            if root ~= nil then
                local dist = (workspace.CurrentCamera.CFrame.p - root.CFrame.p).magnitude
                if bestdist > dist then
                    bestdist = dist
                    bestply = ply
                    bestrag = ragdoll
                end
            end
        end
    end
    
    if bestply and bestrag then
        equip(3)
        Modules.Network:send("knifehit", bestply, tick(), "Head")
    end
end

local function spawnGrenade(pos)
    Modules.Network:send("newgrenade", "FRAG", {
        time = tick(), 
        blowuptime = 0.15, 
        frames = { 
            {
             t0 = 0, 
             p0 = Modules.Character.rootpart.CFrame.p, 
             v0 = Vector3.new(0, 1, 0), 
          offset = Vector3.new(), 
          rot0 = CFrame.new(workspace.CurrentCamera.CFrame.p, Vector3.new(0, -1, 0)), 
          rotv = Vector3.new(0, 1, 0), 
          glassbreaks = { }
         },
            {
             t0 = 0.1, 
             p0 = pos, 
             v0 = Vector3.new(0, 1, 0), 
          offset = Vector3.new(), 
          b = true, 
          rot0 = CFrame.new(workspace.CurrentCamera.CFrame.p, Vector3.new(0, -1, 0)), 
          rotv = Vector3.new(0, 1, 0), 
          glassbreaks = { }
         } 
        }
    })
end

local function updateGrenadeAura()
    if Modules.GameLogic.gammo <= 0 then return end
    if not Modules.GameLogic.currentgun
        or not Modules.GameLogic.currentgun.data then return end
        
    Modules.GameLogic.gammo = 0
    
    local ignore = { }
    
    local function updateIgnoreList(list, ply)
        blockPlayer(ply, 5)
        ignore[ply] = true
        for k,v in ipairs(list) do 
            ignore[v] = true
        end
    end
    
    local pply
    for i = 1, 3 do
        local ply, rag, list = findPlayerCluster(ignore, 20)
        if ply and rag then
            updateIgnoreList(list, ply)
            warn("Fragging", ply)
            spawnGrenade(rag.Torso.Position)
        else
            local ply, rag = findPlayerCluster({ }, 25)
            if ply and rag then
                warn("Soft Fragging", ply)
                blockPlayer(ply, 1)
                spawnGrenade(rag.Torso.Position)
            end
        end
    end
end

local function performRaycast(from, dir)
 local rp = RaycastParams.new()
 rp.FilterDescendantsInstances = { workspace.Players, workspace.CurrentCamera }
 rp.FilterType = Enum.RaycastFilterType.Blacklist
 
 return workspace:Raycast(from, dir, rp)
end

local function canShootPlayer(rag)
    local firepos = Modules.Character.rootpart.Position
    local pos = rag.Head.Position
    
    if not performRaycast(firepos, pos - firepos) then return true end
    
    return Modules.BulletCheck(
            firepos, pos,
            (pos - firepos).unit * Modules.GameLogic.currentgun.data.bulletspeed,
            Modules.PublicSettings.bulletAcceleration, 
            Modules.GameLogic.currentgun.data.penetrationdepth
        )
end

local trajectory = debug.getupvalue(debug.getupvalue(Modules.Character.animstep, 5), 10)

-- umm im pretty sure i need to apply velocity somewhere in there but idk
local bulletIndex = 0
local function shootBullet(ply, rag)
    bulletIndex = bulletIndex + 1

    local char = Modules.Character
    local firepos = Modules.Character.rootpart.Position
    local pos = rag.Head.Position

    local drop = trajectory(firepos, 
        Modules.PublicSettings.bulletAcceleration, 
        pos, 
        Modules.GameLogic.currentgun.data.bulletspeed
    )

    pos = pos + drop

    local bulletVel = (pos - char.rootpart.Position).Unit

    Modules.Network:send("newbullets", {
        bullets = {
            { bulletVel, bulletIndex }
        },
        camerapos = firepos,
        firepos = firepos
    }, tick())

    Modules.Network:send("bullethit", ply, rag.Head.Position, "Head", bulletIndex)
    blockPlayer(ply, 1)
    warn("Shot", ply)
end

local function updateFiring()
    equip(1)
    
    for ragdoll, ply in pairs(Modules.RagdollOwners) do 
        if ply.Team ~= LocalPlayer.Team
            and Modules.Hud:isplayeralive(ply) 
            and not isPlayerBlocked(ply) then
            local root = ragdoll:FindFirstChild('Torso')
            
            if root ~= nil and canShootPlayer(ragdoll) then
                shootBullet(ply, ragdoll)
            end
        end
    end
end

-- the currentupdater logic is just a leftover now
local currentUpdater
function update() 
    updateKnifeAura()
    updateGrenadeAura()
    updateFiring()
    if currentUpdater then currentUpdater() end
end

local currentTarget
local function findNewTarget()
    local newtarget = { findPlayerCluster({ }, 25) }
    while not newtarget[1] or not newtarget[2] or (currentTarget and newtarget[1] == currentTarget[1]) do
        wait(1)
        newtarget = { findPlayerCluster({ }, 25) }
    end

    currentTarget = newtarget
end

-- stolen.
local function randomUnitVector()
 local sqrt = math.sqrt(-2 * math.log(math.random()))
 local angle = 2 * math.pi * math.random()

 return Vector3.new(
  sqrt * math.cos(angle),
  sqrt * math.sin(angle),
  math.sqrt(-2 * math.log(math.random())) * math.cos(2 * math.pi * math.random())
 ).Unit
end

-- funny shit
local function selectRandomPos()
    local pos = Modules.Character.rootpart.Position
    
    local dir = randomUnitVector() * 8
        
    local rr = performRaycast(pos, dir)
    if not rr then 
        return pos + dir
    else
        if (pos - rr.Position).Magnitude > 4 then 
            return rr.Position - dir.Unit * 4
        end
    end
    
    if not performRaycast(pos, Vector3.new(0, 4, 0)) then 
        return pos + Vector3.new(0, 4, 0)
    end
end

local jumpPerTick = 8 -- max, can probably cause desync on unstable connections
local function updatePosition()
    local result = false

    local char = Modules.Character

    local pos = char.rootpart.Position
    local delta = targetPos - pos
    if delta.Magnitude > jumpPerTick then 
        pos = pos + (delta / delta.Magnitude * jumpPerTick)
    elseif delta.Magnitude <= 1e-5 then
        result = true
    else
        pos = pos + delta
    end
    
    char.rootpart.Position = pos
    char.rootpart.Velocity = Vector3.new()
    char.rootpart.Anchored = true

    forceNextTickUpdate = true
    return result
end

local function updateKnifeAttackPos()
    local char = Modules.Character
    
    for ragdoll, ply in pairs(Modules.RagdollOwners) do 
        if ply.Team ~= LocalPlayer.Team
            and Modules.Hud:isplayeralive(ply) then
            local root = ragdoll:FindFirstChild('Torso')
            
            if root ~= nil then
                local dir = root.Position - char.rootpart.Position
                local rr = performRaycast(char.rootpart.Position, dir)
                if not rr 
                    or (root.Position - rr.Position).Magnitude < 20 then 
                    
                    if not rr then 
                        targetPos = root.Position
                    else
                        targetPos = rr.Position - dir.Unit * 4
                    end
                    
                    break
                end
            end
        end
    end
end

local function travelUpdate()
    targetPos = selectRandomPos() 
    updateKnifeAttackPos()
    
    if targetPos then
        updatePosition()
    end
end

local function deploy()
    Modules.Deploy.deploy()
    
    while not Modules.Character.alive do 
        wait(0.1)
        Modules.Deploy.deploy()
        return true
    end
end

function deadUpdate()
    points = { }
    targetPos = nil
    
    deploy()
end

local function init()
    currentUpdater = travelUpdate
end

init()