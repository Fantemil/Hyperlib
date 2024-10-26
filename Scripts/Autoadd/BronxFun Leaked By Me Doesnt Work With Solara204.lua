if string.match(identifyexecutor(), "Solara") then
    getgenv().sbbypassed = true
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "bronx.lol",
        Text = "Please be patient as we bypass their anticheat.",
        Icon = "", -- Optional: You can specify an icon for the notification
        Duration = 8 -- Optional: Duration in seconds, defaults to 5 seconds
    })
    local nums = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0}
    local remote1;
    local remote1args
    local remote2;
    local remote2args
    local remote3;
    local remote3args
    local remote4;
    local remote4args
    local index = 0
    
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        for z, x in pairs(nums) do
            if string.match(v.Name, tostring(x)) then
                index += 1
                if index == 1 then
                    remote1 = v:FindFirstChildOfClass("RemoteFunction")
                elseif index == 2 then
                    remote2 = v:FindFirstChildOfClass("RemoteFunction")
                elseif index == 3 then
                    remote3 = v:FindFirstChildOfClass("RemoteFunction")
                elseif index == 4 then
                    remote4 = v:FindFirstChildOfClass("RemoteFunction")
                end
            end
        end
    end
    function deepclone(table)
        local tbl = {}
        for i, v in pairs(table) do
            if typeof(v) == "table" then
                table.insert(tbl, deepclone(v))
            else
                table.insert(tbl, v)
            end
        end
        return tbl
    end
    hookfunction(remote1.InvokeServer, function(args)
        print("Found Remote1")
        if not remote1args then
            if typeof(args) == "table" then
                remote1args = deepclone(args)
            else
                remote1args = args
            end
        end
    end)
    hookfunction(remote2.InvokeServer, function(args)
        if not remote2args then
            print("Found Remote2")
            if typeof(args) == "table" then
                remote2args = deepclone(args)
            else
                remote2args = args
            end
        end
    end)
    hookfunction(remote3.InvokeServer, function(args)
        if not remote3args then
            print("Found Remote3")
            if typeof(args) == "table" then
                remote3args = deepclone(args)
            else
                remote3args = args
            end
        end
    end)
    hookfunction(remote4.InvokeServer, function(args)
        if not remote4args then
            print("Found Remote4")
            if typeof(args) == "table" then
                remote4args = deepclone(args)
            else
                remote4args = args
            end
        end
    end)
    
    task.spawn(function()
        repeat task.wait() until remote1args
        while task.wait(1) do
            remote1:InvokeServer(remote1args)
        end
    end)
    task.spawn(function()
        repeat task.wait() until remote2args
        while task.wait(1) do
            remote2:InvokeServer(remote2args)
        end
    end)
    task.spawn(function()
        repeat task.wait() until remote3args
        while task.wait(1) do
            remote3:InvokeServer(remote3args)
        end
    end)
    task.spawn(function()
        repeat task.wait() until remote2args
        while task.wait(1) do
            remote4:InvokeServer(remote2args)
        end
    end)
    getgenv().dsaofihndsavousdnvoiusd = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
    repeat task.wait() until remote1args or remote2args or remote3args or remote4args
    for _,v in next, getgc(true) do
        if type(v) == "function" then
          name = tostring(getinfo(v).name)
          if name == "delay" then
                local Old;Old = hookfunction(v, function(...)
                Args = {...}
                if type(Args[2]) ~= "function" then
                    Args[2] = function()
                        return game:WaitForChild(math.random(1000000, 9e9))
                    end
                end
                return Old(...)
                end)
        end
            if name == "find" or name == "string.find" then
                local new;new = hookfunction(v,function(...)
                    if string.match(tostring(getcallingscript()),"?") then
                        return game:WaitForChild(math.random(1000000, 9e9))
                    end
                    return new(...)
                end)
            end
        end
      end
      print("Bypassed")
    getgenv().sbbypassed = true
end
repeat task.wait() until getgenv().sbbypassed
getgenv().dsaofihndsavousdnvoiusd:Remove()
local tweenservice, runservice, uis, players, localplayer, camera, wtsp, wtvp, getplayers, findfirstchild, findfirstchildofclass, mouse, getchildren, getdescendants, isa, getpartsobscuringtarget, isfriendswith, random = game:GetService("TweenService"), game:GetService("RunService"), game.UserInputService, game.Players, game.Players.LocalPlayer, workspace.CurrentCamera, workspace.CurrentCamera.WorldToScreenPoint, workspace.CurrentCamera.WorldToViewportPoint, game.Players.GetPlayers, workspace.FindFirstChild, workspace.FindFirstChildOfClass, game.Players.LocalPlayer:GetMouse(), workspace.GetChildren, workspace.GetDescendants, workspace.IsA, workspace.CurrentCamera.GetPartsObscuringTarget, game.Players.LocalPlayer.IsFriendsWith, math.random
local noclippedparts = {}
local bodyparts = {"Head", "HumanoidRootPart", "Left Arm", "Left Leg", "Right Arm", "Right Leg"}
-- Drawing.Font.new("smallest_pixel", game:HttpGet("https://raw.githubusercontent.com/razorwarecc/custom-fonts/main/smallest-pixel.ttf"))
local letters = {
    "a", "A", "b", "B", "c", "C", "d", "D", "e", "E", "f", "F", "g", "G",
    "h", "H", "i", "I", "j", "J", "k", "K", "l", "L", "m", "M", "n", "N",
    "o", "O", "p", "P", "q", "Q", "r", "R", "s", "S", "t", "T", "u", "U",
    "v", "V", "w", "W", "x", "X", "y", "Y", "z", "Z"
}
local symbols = {
    "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".",
    "/", ":", ";", "<", "=", ">", "?", "@", "[", "\\", "]", "^", "_", "`",
    "{", "|", "}", "~", "Â±", "Ã·", "Ã", "â", "â", "â", "â", "â", "â",
    "â", "â", "â", "â", "â", "â¥", "â ", "â«", "â", "$", "â¬", "Â£", "Â¥",
    "â¹", "â½", "Â¢", "â£", "â¤", "â¨", "â©"
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/razorwarecc/bronx.fun/main/hitsounds"))() -- hitsounds
local esplibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/razorwarecc/esp-drawing/main/sb"))()
local utility = {}
function utility:draw(name, properties)
    local drawing = Drawing.new(name)
    for property, value in pairs(properties) do
        drawing[property] = value
    end
    return drawing
end
function utility:instance(name, properties)
    local instance = Instance.new(name)
    for property, value in pairs(properties) do
        instance[property] = value
    end
    return instance
end
function utility:beam(props)
    local timed = props.Timed or props.timed or false
    local duration = props.Duration or props.duration or 3
    local origin = props.origin or props.Origin or props.from or props.From or props.pos1 or props.pos1 or props.Pos1
    local to = props.to or props.To or props.pos2 or props.pos2 or props.Pos2
    local widthx = props.widthx or props.Widthx or props.x or props.X or props.width1 or props.Width1 or 0.5
    local widthy = props.widthy or props.Widthy or props.y or props.Y or props.width2 or props.Width2 or 0.5
    local texture = props.Texture or props.texture or ""
    local color = props.Color or props.color or ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 255, 255))
    local part1, part2 = Instance.new("Part", workspace), Instance.new("Part", workspace)
    part1.Anchored = true; part2.Anchored = true
    part1.Transparency = 1; part2.Transparency = 1
    part1.Size = Vector3.new(0, 0, 0); part2.Size = Vector3.new(0, 0, 0)
    part1.CanCollide = false; part2.CanCollide = false
    part1.Position = origin; part2.Position = to
    local attachment1, attachment2 = Instance.new("Attachment", part1), Instance.new("Attachment", part2)
    -----
    local beam = Instance.new("Beam", workspace)
    beam.TextureMode = "Static"
    beam.Texture = texture
    beam.Color = color
    beam.Width0 = widthx
    beam.Width1 = widthy
    beam.Attachment0 = attachment1
    beam.Attachment1 = attachment2
    beam.FaceCamera = true
    beam.TextureSpeed = 2
    task.spawn(function()
        if timed then
            delay(duration, function()
                part1:Destroy()
                part2:Destroy()
                beam:Remove()
            end)
        end
    end)
    return beam
end
function utility:wallcheck(playerCharacter)
    local ignoreList = {}
    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if isa(v, "MeshPart") or isa(v, "BasePart") or isa(v, "MeshPart") or isa(v, "Part") or isa(v, "UnionOperation") then
            table.insert(ignoreList, v)
        end
    end
    local cameraPosition = camera.CFrame.Position
    local direction = (playerCharacter.PrimaryPart.Position - cameraPosition).unit
    local castPoints = {cameraPosition}
    local step = 10
    for distance = step, (playerCharacter.PrimaryPart.Position - cameraPosition).magnitude, step do
        table.insert(castPoints, cameraPosition + direction * distance)
    end
    for _, part in ipairs(getchildren(playerCharacter)) do
        if isa(part, "BasePart") then
            local isVisible = getpartsobscuringtarget(camera, {part.Position}, ignoreList)
            if #isVisible == 0 then
                return true
            end
        end
    end
    return false
end
function utility:tracer(from, to, duration, color)
    local fromwts, onscreen = camera:WorldToViewportPoint(from)
    local towts, _ = camera:WorldToViewportPoint(from)
    local drawing = utility:draw("Line", {Color = color, From = Vector2.new(fromwts.X, fromwts.Y), To = Vector2.new(towts.X, towts.Y), Visible = false})
    local drawingoutline = utility:draw("Line", {Color = Color3.fromRGB(0, 0, 0), From = Vector2.new(fromwts.X, fromwts.Y), To = Vector2.new(towts.X, towts.Y), Visible = false})
    local c1 = game:GetService("RunService").RenderStepped:Connect(function()
        fromwts, onscreen = wtvp(camera, from)
        towts, _ = wtvp(camera, to)
        drawing.Visible = onscreen
        drawingoutline.Visible = onscreen
        drawing.From = Vector2.new(fromwts.X, fromwts.Y)
        drawing.To = Vector2.new(towts.X, towts.Y)
        drawingoutline.From = drawing.From
        drawingoutline.To = drawing.To
    end)
    task.spawn(function()
        task.wait(duration)
        c1:Disconnect()
        drawing:Remove()
    end)
end

local bronxfun = {
    ["aiming"] = {
        ["aimbot"] = {
            ["enabled"] = false,
            ["keybind"] = nil,
            ["targetpart"] = "Head",

            ["friendcheck"] = false,
            ["visiblecheck"] = false,
            ["alivecheck"] = false,

            ["showfov"] = false,
            ["fovcolor"] = Color3.fromRGB(255, 255, 255),
            ["fovradius"] = 90,
            ["fovsides"] = 90,

            ["snapline"] = false,
            ["snaplinecolor"] = Color3.fromRGB(255, 255, 255),

            ["smoothing"] = 0,
            ["smoothingstyle"] = Enum.EasingStyle.Linear,
            ["easingdirection"] = Enum.EasingDirection.InOut

        },
        ["silent"] = {
            ["enabled"] = false,
            ["keybind"] = nil,
            ["toggled"] = true,

            ["hitchance"] = 100,
            ["hitchancemode"] = "Complete Miss",
            
            ["targetpart"] = "Head",
            ["targetmode"] = "Auto",

            ["friendcheck"] = false,
            ["visiblecheck"] = false,
            ["alivecheck"] = false,

            ["showfov"] = false,
            ["fovcolor"] = Color3.fromRGB(255, 255, 255),
            ["fovradius"] = 90,
            ["fovsides"] = 90,

            ["snapline"] = false,
            ["snaplinecolor"] = Color3.fromRGB(255, 255, 255),

            ["wallbang"] = false,

            ["triggerbot"] = false,
        } 
    },
    ["visuals"] = {
        ["world"] = {
            ["changeambient"] = false,
            ["ambient"] = Color3.fromRGB(255, 255, 255),

            ["changefogcolor"] = false,
            ["fogcolor"] = Color3.fromRGB(255, 255, 255),

            ["nofog"] = false,

            ["changefov"] = false,
            ["fov"] = 70,
        },
        ["tracers"] = {
            ["enabled"] = false,
            ["drawing"] = false,
            ["usecustomtexture"] = false,
            ["width"] = 0.5,
            --[[
                        ["texture"] = getcustomasset("fentanyl.club/tracerassets/arrow1.png"),
            ["textures"] = {
                ["Arrow 1"] = getcustomasset("fentanyl.club/tracerassets/arrow1.png"),
                ["Arrow 2"] = getcustomasset("fentanyl.club/tracerassets/arrow2.png"),
                --["Hanime"] = getcustomasset("fentanyl.club/tracerassets/hanime.png"),
                ["Hexagon"] = getcustomasset("fentanyl.club/tracerassets/hexagon.png"),
                ["George"] = getcustomasset("fentanyl.club/tracerassets/troll.png"),
            },]]
            ["duration"] = 5,
            ["color"] = Color3.fromRGB(255, 255, 255)
        }
    },
    ["misc"] = {
        ["movement"] = {
            ["cframespeed"] = false,
            ["speedkeybind"] = nil,
            ["speeding"] = false,
            ["speed"] = 0.5,
            ["noclip"] = false,
        },
        ["gunmods"] = {
            ["maxammoonequip"] = false,
            ["norecoil"] = false,
            ["nojam"] = false,

            ["nochambersound"] = false,
        },
        ["antiaim"] = {
            ["velocitydesync"] = false,
            ["spin"] = {["enabled"] = false, ["type"] = "Spin", ["spinspeed"] = 90}
        },
        ["spoofer"] = {
            ["namespoofer"] = {["enabled"] = false, ["mode"] = "Custom", ["customname"] = ""}
        },
        ["hitsound"] = {
            ["enabled"] = false,
            ["volume"] = 1,
            ["hitsounds"] = {
                ["Banana"]      = getcustomasset("bronx.lol/hitsounds/banana.mp3"),
                ["Generic"]     = getcustomasset("bronx.lol/hitsounds/generic.mp3"),
                ["LOL"]         = getcustomasset("bronx.lol/hitsounds/lol.mp3"),
                ["Minecraft"]   = getcustomasset("bronx.lol/hitsounds/minecraft.mp3"),
                ["Nerverlose"]  = getcustomasset("bronx.lol/hitsounds/neverlose.mp3"),
                ["Pokimane"]    = getcustomasset("bronx.lol/hitsounds/pokimane.mp3"),
                ["Rust"]        = getcustomasset("bronx.lol/hitsounds/rust.mp3"),
                ["Skeet"]       = getcustomasset("bronx.lol/hitsounds/skeet.mp3"),
                ["TF2"]         = getcustomasset("bronx.lol/hitsounds/tf2.mp3"),
                ["UwU"]         = getcustomasset("bronx.lol/hitsounds/uwu.mp3"),
            },
            ["hitsound"] = ""
        }
        
    }
}
getgenv().bronxfun = bronxfun
getgenv().esplibrary = esplibrary
local tracerdrawings = {}
function utility:getclosestplayertomouse(fovradius, friendcheck, alivecheck, vischeck)
    local curdistance, plr = fovradius
    local targetpart = bronxfun.aiming.aimbot.targetpart
    for _, player in pairs(getplayers(game.Players)) do
        if player ~= game.Players.LocalPlayer and player.Character then
            local targetpart = findfirstchild(player.Character, targetpart)
            if targetpart then
                local wts, onscreen = wtsp(camera, targetpart.Position)
             if onscreen then
                local distance = (Vector2.new(wts.X, wts.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                if distance < curdistance then
                        if friendcheck then if isfriendswith(localplayer, player.UserId) then continue end end
                        if alivecheck then if findfirstchildofclass(player.Character, "Humanoid").Health <= 0 then continue end end
                        if vischeck and not utility:wallcheck(player.Character) then continue end
                        curdistance = distance
                        plr = player 
                    end
                end
            end
        end
    end
    return plr
end

function utility:calcdistance(org, pos)
    return (pos - org).Unit * 1000
end
function utility:getwallbangabletable(player)
    local tbl = {}
    if player.Character then
        for _, part in pairs(getdescendants(player.Character)) do
            if isa(part, "Part") or isa(part, "BasePart") or isa(part, "MeshPart") then
                table.insert(tbl, part)
            end
        end
    end
    return tbl
end
local aimbotfov = utility:draw("Circle", {Visible = false, Color = Color3.new(1, 1, 1), Radius = 100, NumSides = 100, ZIndex = 2, Thickness = 2})
local aimbotfovoutline = utility:draw("Circle", {Visible = false, Color = Color3.new(0, 0, 0), Radius = 100, NumSides = 100, Thickness = 3})

local aimbotsnapline = utility:draw("Line", {Visible = false, Color = Color3.new(1, 1, 1), ZIndex = 2})
local aimbotsnaplineoutline = utility:draw("Line", {Visible = false, Color = Color3.new(0, 0, 0), Thickness = 3})

local silentfov = utility:draw("Circle", {Visible = false, Color = Color3.new(1, 1, 1), Radius = 100, NumSides = 100, ZIndex = 2, Thickness = 2})
local silentfovoutline = utility:draw("Circle", {Visible = false, Color = Color3.new(0, 0, 0), Radius = 100, NumSides = 100, Thickness = 3})

local silentsnapline = utility:draw("Line", {Visible = false, Color = Color3.new(1, 1, 1), ZIndex = 2})
local silentsnaplineoutline = utility:draw("Line", {Visible = false, Color = Color3.new(0, 0, 0), Thickness = 3})

local silentclosest
local aimbotclosest
local holding = false



local aimbottween = nil

function runaimbot(part)
    aimbottween = tweenservice:Create(workspace.CurrentCamera, TweenInfo.new(bronxfun.aiming.aimbot.smoothing, bronxfun.aiming.aimbot.smoothingstyle), {CFrame = CFrame.new(camera.CFrame.Position, part.Position)})
    aimbottween:Play()
end
local setfog, setfov = false, false
local defambient = game.Lighting.Ambient
local deffogcolor = game.Lighting.FogColor
local tint = Instance.new("ColorCorrectionEffect", game.Lighting) 
task.spawn(function()
    while task.wait() do
        if bronxfun.misc.movement.cframespeed and bronxfun.misc.movement.speeding then
            if localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = localplayer.Character:FindFirstChild("HumanoidRootPart")
                local humanoid = localplayer.Character:FindFirstChild("Humanoid")
                hrp.CFrame = hrp.CFrame + humanoid.MoveDirection * bronxfun.misc.movement.speed / 4
            end
        end
    end
end)
function generaterandomname()
    local name = ""
    name = name + letters[math.random(1, #letters)]
    name = name + symbols[math.random(1, #symbols)]
    name = name + letters[math.random(1, #letters)]
    name = name + symbols[math.random(1, #symbols)]
    name = name + letters[math.random(1, #letters)]
    name = name + symbols[math.random(1, #symbols)]
    name = name + letters[math.random(1, #letters)]
    name = name + symbols[math.random(1, #symbols)]
    name = name + letters[math.random(1, #letters)]
    name = name + symbols[math.random(1, #symbols)]
    return name
end
runservice.RenderStepped:Connect(function()
    if localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
        local humanoid = localplayer.Character:FindFirstChild("Humanoid")
        humanoid.AutoRotate = not bronxfun.misc.antiaim.spin.enabled
    end
    if bronxfun.misc.antiaim.spin.enabled then
        local method = bronxfun.misc.antiaim.spin.type
        local speed = bronxfun.misc.antiaim.spin.spinspeed

        if method == "Jitter" then
            if localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = localplayer.Character:FindFirstChild("HumanoidRootPart")
                hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.random(45, 90), 0)
            end
        else
            if localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = localplayer.Character:FindFirstChild("HumanoidRootPart")
                hrp.CFrame = hrp.CFrame * CFrame.Angles(0, speed, 0)
            end
        end
    end
    if bronxfun.misc.spoofer.namespoofer.enabled then
        if localplayer.Character then
            if localplayer.Character:FindFirstChild("Head") then
                local head = localplayer.Character.Head
                local ranktag = head:FindFirstChild("RankTag")
                if ranktag then
                    if bronxfun.misc.spoofer.namespoofer.mode == "Randomize" then 
                        ranktag.MainFrame.NameLabel.Text = generaterandomname()
                    else
                        ranktag.MainFrame.NameLabel.Text = bronxfun.misc.spoofer.namespoofer.customname
                    end
                end
            end
        end
    else
        if localplayer.Character then
            if localplayer.Character:FindFirstChild("Head") then
                local head = localplayer.Character.Head
                local ranktag = head:FindFirstChild("RankTag")
                if ranktag then
                    ranktag.MainFrame.NameLabel.Text = localplayer.Name

                end
            end
        end
    end
    if not string.match(identifyexecutor(), "Solara") then
        if bronxfun.misc.antiaim.velocitydesync then
            if localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
                    setfflag("S2PhysicsSenderRate", 2)
                    sethiddenproperty(localplayer.Character.HumanoidRootPart, "NetworkIsSleeping", true)
            end
        else
            setfflag("S2PhysicsSenderRate", 13)
            sethiddenproperty(localplayer.Character.HumanoidRootPart, "NetworkIsSleeping", false)
        end
    end
    if bronxfun.misc.movement.noclip then
        if #noclippedparts == 0 then
            if localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") and localplayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
                for i, v in pairs(localplayer.Character:GetChildren()) do
                    if v:IsA("BasePart") and v.CanCollide then
                        v.CanCollide = false
                        table.insert(noclippedparts, v)
                    end
                end
            end
        else
            table.clear(noclippedparts)
        end
    else
        table.clear(noclippedparts)
    end
    if localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") and localplayer.Character:FindFirstChild("Humanoid").Health <= 0 then
        table.clear(noclippedparts)
    end
    

    if bronxfun.visuals.world.changefov then
        setfov = false
        camera.FieldOfView = bronxfun.visuals.world.fov
    else
        if not setfov then
            setfov = true
            camera.FieldOfView = 70
        end
    end
    if bronxfun.visuals.world.changeambient then
        
        tint.TintColor = bronxfun.visuals.world.ambient
    else
        tint.TintColor = Color3.new(1, 1, 1)
    end
    if bronxfun.visuals.world.changefogcolor then
        setfog = false
        game.Lighting.FogColor = bronxfun.visuals.world.fogcolor
    else
        if not setfog then
            setfog = true
            game.Lighting.FogColor = deffogcolor
        end
    end
    if not holding then
        aimbotclosest = utility:getclosestplayertomouse(bronxfun.aiming.aimbot.fovradius, bronxfun.aiming.aimbot.friendcheck, bronxfun.aiming.aimbot.alivecheck, bronxfun.aiming.aimbot.visiblecheck)
    end
    if bronxfun.aiming.silent.targetmode == "Auto" then
        silentclosest = utility:getclosestplayertomouse(bronxfun.aiming.silent.fovradius, bronxfun.aiming.silent.friendcheck, bronxfun.aiming.silent.alivecheck, bronxfun.aiming.silent.visiblecheck)
    end
    aimbotfov.Visible = bronxfun.aiming.aimbot.enabled and bronxfun.aiming.aimbot.showfov
    aimbotfovoutline.Visible = aimbotfov.Visible
    aimbotfov.Radius = bronxfun.aiming.aimbot.fovradius
    aimbotfovoutline.Radius = bronxfun.aiming.aimbot.fovradius + 1
    aimbotfov.Color = bronxfun.aiming.aimbot.fovcolor
    aimbotfov.NumSides = bronxfun.aiming.aimbot.fovsides
    aimbotfovoutline.NumSides = bronxfun.aiming.aimbot.fovsides
    local mouselocation = uis:GetMouseLocation()
    aimbotfov.Position = Vector2.new(mouselocation.X, mouselocation.Y)
    aimbotfovoutline.Position = aimbotfov.Position

    aimbotsnaplineoutline.Visible = aimbotsnapline.Visible
    aimbotsnapline.Color = bronxfun.aiming.aimbot.snaplinecolor
    if aimbotclosest and bronxfun.aiming.aimbot.enabled and bronxfun.aiming.aimbot.snapline and not holding then
        if aimbotclosest.Character and aimbotclosest.Character:FindFirstChild(bronxfun.aiming.aimbot.targetpart) then
            local wts, onscreen = camera:WorldToViewportPoint(aimbotclosest.Character:FindFirstChild(bronxfun.aiming.aimbot.targetpart).Position)
            aimbotsnapline.Visible = onscreen
            aimbotsnapline.From = Vector2.new(mouselocation.X, mouselocation.Y)
            aimbotsnapline.To = Vector2.new(wts.X, wts.Y)
            aimbotsnaplineoutline.From = aimbotsnapline.From
            aimbotsnaplineoutline.To = aimbotsnapline.To
        else
            aimbotsnapline.Visible = false
        end
    else
        aimbotsnapline.Visible = false
    end


    silentfov.Visible = bronxfun.aiming.silent.enabled and bronxfun.aiming.silent.showfov
    silentfovoutline.Visible = silentfov.Visible
    silentfov.Radius = bronxfun.aiming.silent.fovradius
    silentfovoutline.Radius = bronxfun.aiming.silent.fovradius + 1
    silentfov.Color = bronxfun.aiming.silent.fovcolor
    silentfov.NumSides = bronxfun.aiming.silent.fovsides
    silentfovoutline.NumSides = bronxfun.aiming.silent.fovsides
    local mouselocation = uis:GetMouseLocation()
    silentfov.Position = Vector2.new(mouselocation.X, mouselocation.Y)
    silentfovoutline.Position = silentfov.Position

    silentsnaplineoutline.Visible = silentsnapline.Visible
    silentsnapline.Color = bronxfun.aiming.silent.snaplinecolor
    if silentclosest and bronxfun.aiming.silent.enabled and bronxfun.aiming.silent.snapline and not holding then
        local targetpart
        if bronxfun.aiming.silent.targetpart == "Random" then targetpart = "HumanoidRootPart" else targetpart = bronxfun.aiming.silent.targetpart end
        if silentclosest.Character and silentclosest.Character:FindFirstChild(targetpart) then
            local wts, onscreen = camera:WorldToViewportPoint(silentclosest.Character:FindFirstChild(targetpart).Position)
            silentsnapline.Visible = onscreen
            silentsnapline.From = Vector2.new(mouselocation.X, mouselocation.Y)
            silentsnapline.To = Vector2.new(wts.X, wts.Y)
            silentsnaplineoutline.From = silentsnapline.From
            silentsnaplineoutline.To = silentsnapline.To
        else
            silentsnapline.Visible = false
        end
    else
        silentsnapline.Visible = false
    end
    if silentclosest and not silentclosest.Parent or silentclosest and not silentclosest.Character or not silentclosest then
        silentclosest = nil
    end
    if silentclosest and silentclosest.Character and silentclosest.Character:FindFirstChildOfClass("Humanoid") and silentclosest.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
        silentclosest = nil
    end
    
    if holding then
        local char = aimbotclosest.Character
        if char then
            local targetpart = char:FindFirstChild(bronxfun.aiming.aimbot.targetpart)
            if targetpart then
                runaimbot(targetpart)
            end 
        end
    else
        if aimbottween then
            aimbottween:Cancel()
            aimbottween = nil
        end
    end
    for _, child in pairs(localplayer.Backpack:GetChildren()) do
        if child:FindFirstChild("Ammo") and child:FindFirstChild("Mag") and bronxfun.misc.gunmods.maxammoonequip then
            local setting =  require(child:FindFirstChild("Setting"))
            local reserve = child:FindFirstChild("Ammo")
            local ammo = child:FindFirstChild("Mag")
            local defreserve = setting.MaxAmmo
            local defammo = setting.Ammo
            reserve.Value = defreserve
            ammo.Value = defammo
        end
    end
end)
uis.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == bronxfun.aiming.aimbot.keybind and aimbotclosest and bronxfun.aiming.aimbot.enabled then
        holding = true
    end
    if not gameProcessedEvent and input.KeyCode == bronxfun.misc.movement.speedkeybind and bronxfun.misc.movement.cframespeed then
        bronxfun.misc.movement.speeding = not bronxfun.misc.movement.speeding
    end
    if not gameProcessedEvent and input.KeyCode == bronxfun.aiming.silent.keybind then
        if bronxfun.aiming.silent.targetmode == "Target" then
            if silentclosest then
                silentclosest = nil
            else
                silentclosest = utility:getclosestplayertomouse(bronxfun.aiming.silent.fovradius, bronxfun.aiming.silent.friendcheck, bronxfun.aiming.silent.alivecheck, bronxfun.aiming.silent.visiblecheck)
            end
        else
            bronxfun.aiming.silent.toggled = not bronxfun.aiming.silent.toggled
        end
    end
end)
uis.InputEnded:Connect(function(input)
    if input.KeyCode ==  bronxfun.aiming.aimbot.keybind then
        holding = false
    end
end)

local silenthook; silenthook = hookmetamethod(workspace, "__namecall", newcclosure(function(...)
    local method = getnamecallmethod()
    if bronxfun.aiming.silent.enabled and silentclosest and tostring(method) == "Raycast" then
        --if not bronxfun.aiming.silent.toggled and bronxfun.aiming.silent.targetmode == "Auto" then return silenthook(...) end
        local args = {...}
        local origin = args[2]
        local targetpart
        if bronxfun.aiming.silent.targetpart == "Random" then
            targetpart = findfirstchild(silentclosest.Character, bodyparts[math.random(1, #bodyparts)])
        else
            targetpart = findfirstchild(silentclosest.Character, bronxfun.aiming.silent.targetpart)
        end
        if targetpart then
            if bronxfun.aiming.silent.hitchance ~= 100 then
                local hitchance = random(0, 100)
                if hitchance >= bronxfun.aiming.silent.hitchance then
                    args[3] = utility:calcdistance(origin, targetpart.Position)
                else
                    if bronxfun.aiming.silent.hitchancemode == "Complete Miss" then
                        args[3] = utility:calcdistance(origin, Vector3.new(targetpart.Position.X + random(4.5, 8), targetpart.Position.Y + random(2, 3), targetpart.Position.Z + random(4.5, 8)))
                    end
                    
                end
            else
                args[3] = utility:calcdistance(origin, targetpart.Position)
            end
        end
        if bronxfun.aiming.silent.wallbang then
            local params = RaycastParams.new()
            params.FilterType = Enum.RaycastFilterType.Include
            params.IgnoreWater = false
            params.RespectCanCollide = false
            params.FilterDescendantsInstances = utility:getwallbangabletable(silentclosest)
            args[4] = params
        end
        --utility:tracer(findfirstchildofclass(localplayer.Character, "Tool").Barrel.Position, findfirstchild(silentclosest.Character, bronxfun.aiming.silent.targetpart).Position, 5, Color3.fromRGB(255, 255, 255))
        return silenthook(unpack(args))
    end
    return silenthook(...)
end))
local hithook; hithook = hookmetamethod(game, "__namecall", newcclosure(function(...)
    local args = {...}
    if tostring(args[1]) == "InflictTarget" then
        
    end
    return hithook(...)
end))
local nochambersoundhook; nochambersoundhook = hookmetamethod(game.ReplicatedStorage, "__namecall", newcclosure(function(...)
    local args = {...}
    if tostring(args[1]) == "ClientEffects" and bronxfun.misc.gunmods.nochambersound then
        return nil
    end
    return nochambersoundhook(...)
end))


--[[
local MakeImpactFX = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.BulletVisualizerClientScript).MakeImpactFX

local tracerhook; tracerhook = hookfunction(MakeImpactFX, function(p_u_12, p13, p14, p_u_15, p_u_16) 
    local v17 = CFrame.new(p13, p13 + p14)
    local gun = findfirstchildofclass(localplayer.Character, "Tool")
    if gun then
        utility:tracer(findfirstchild(gun, "Barrel").Position, Vector3.new(v17.X, v17.Y, v17.Z), 4, Color3.fromRGB(255, 255, 255))
    end
    return tracerhook(p_u_12, p13, p14, p_u_15, p_u_16)
end)

]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/razorwarecc/core-drawing/main/bronxloluii"))()


