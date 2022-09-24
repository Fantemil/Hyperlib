local UI = loadstring(game:HttpGet("https://pastebin.com/raw/tBv8Ex5G"))()
local Window = UI:Main("Death Zone", "", "RightShift", "OrangeTheme")

local CharacterTab = Window:Tab("Character")
local ItemESPTab = Window:Tab("Item ESP")
local PlayerESPTab = Window:Tab("Player ESP")
local MiscTab = Window:Tab("Misc")

local players = game:GetService("Players")
local runservice = game:GetService("RunService")
local player = players.LocalPlayer
local heartbeat = runservice.Heartbeat
local stepped = runservice.Stepped
local lighting = game:GetService("Lighting")
local camera = game:GetService("Workspace").CurrentCamera
local workspace = game:GetService("Workspace")

local CharSection = CharacterTab:Section()

wsBypass = false
CharSection:Toggle("Walk Speed", function(state)
    wsBypass = state
end)

wsSpeed = 16
CharSection:Slider(57, 0, "Walk Speed Value", function(value)
    wsSpeed = value
end)

do
    local oldindex; oldindex = hookmetamethod(game, "__index", function(a, b) -- step 1 / bypass walkspeed
        if tostring(a) == "Humanoid" and tostring(b) == "WalkSpeed" and wsBypass then
            return 16
        end return oldindex(a, b)
    end)
    
    local oldnewindex; oldnewindex = hookmetamethod(game, "__newindex", function(a,b,c) -- step 2 / bypass walkspeed
        if tostring(a) == "Humanoid" and tostring(b) == "WalkSpeed" and wsBypass then
            return oldnewindex(a, b, wsSpeed)
        end return oldnewindex(a, b, c)
    end)
end

jmpBypass = false
CharSection:Toggle("Jump Power", function(state)
    jmpBypass = state
end)

jmpPower = 50
CharSection:Slider(120, 0, "Jump Power Value", function(value)
    jmpPower = value
end)

do
    local oldindex; oldindex = hookmetamethod(game, "__index", function(a, b) -- step 1 / bypass jump power
        if tostring(a) == "Humanoid" and tostring(b) == "JumpPower" then
            return 50
        end return oldindex(a, b)
    end)
    
    heartbeat:Connect(function() -- step 2 / bypass jump power
        pcall(function()
            if jmpBypass then 
                player.Character.Humanoid.JumpPower = jmpPower
            else
                player.Character.Humanoid.JumpPower = 50
            end
        end)
    end)
end

noclip = false
CharSection:Toggle("No Clip", function(state)
    noclip = state
end)

CharSection:Button("No Jump Cooldown", function()
    while wait() do
        debug.setupvalue(getsenv(player.Backpack.JumpDisabler).f1, 3, 0)
        debug.setupvalue(getsenv(player.Backpack.JumpDisabler).f1, 2, function() return 1 end)
    end
end)

do
    stepped:Connect(function()
        pcall(function() if noclip then for i,v in pairs(player.Character:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end end end)
    end)
end


local MiscSection = MiscTab:Section()

alwaysday = false
MiscSection:Toggle("Always Day", function(state)
    alwaysday = state
end)

do
    lighting.Changed:Connect(function()
        if alwaysday then
            lighting.TimeOfDay = "13:00:00"
        end
    end)
end

MiscSection:KeyBind("Phase Through Wall", "LeftAlt", function()
    local oldNState = noclip
    local nCounter = 0
    noclip = true

    spawn(function()
        for i=1, 15 do
            wait(.5)
            nCounter += 1
        end
    end)

    local a = player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.CFrame.lookVector
    repeat wait() player.Character:MoveTo(a) until nCounter == 1

    local b = player.Character.HumanoidRootPart.Position - Vector3.new(0,10,0)
    repeat wait() player.Character:MoveTo(b) until nCounter == 3

    local c = player.Character.HumanoidRootPart.Position + player.Character.HumanoidRootPart.CFrame.lookVector*7
    repeat wait() player.Character:MoveTo(c) until nCounter == 5

    local d = player.Character.HumanoidRootPart.Position + Vector3.new(0,11,0)
    repeat wait() player.Character:MoveTo(d) until nCounter == 7

    noclip = oldNState
end)

leaveifstaff = false
MiscSection:Toggle("Leave If Staff Join", function(state)
    leaveifstaff = state
    for i,v in pairs(players:GetPlayers()) do
        if isStaff(player.UserId) and leaveifstaff then
            player:Kick("Left due to staff joining!")
        end
    end
end)

function isStaff(playerid)
    staffids = {367786152, 2573930396, 161219416, 501061949, 83353996, 46127169}
    for i,v in pairs(staffids) do
        if playerid == v then
            return true
        end
    end return false
end

do
    players.PlayerAdded:Connect(function(player)
        if isStaff(player.UserId) and leaveifstaff then
            player:Kick("Left due to staff joining!")
        end
    end)
end

MiscSection:Button("Rejoin Same Server", function(state)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)


local EspSection = PlayerESPTab:Section()

pName = false
EspSection:Toggle("Name", function(state)
    pName = state
end)

pHp = false
EspSection:Toggle("Health", function(state)
    pHp = state
end)

pDistance = false
EspSection:Toggle("Distance", function(state)
    pDistance = state
end)

pTracers = false
EspSection:Toggle("Tracers", function(state)
    pTracers = state
end)

pBoxes = false
EspSection:Toggle("Boxes", function(state)
    pBoxes = state
end)

pEnableRenderRange = false
EspSection:Toggle("Enable Render Range", function(state)
    pEnableRenderRange = state
end)

pRenderRange = 1500
EspSection:Slider(3000, 0, "Render Range", function(value)
    pRenderRange = value
end)

function isCloseEnough(plr)
    if not pEnableRenderRange then return true end
    local estimation;

    if plr.Character:FindFirstChild("HumanoidRootPart") == nil then
        estimation = Vector3.new(plr.Character.CamCFrame.Value.X, plr.Character.CamCFrame.Value.Y, plr.Character.CamCFrame.Value.Z)
    else
        estimation = plr.Character.HumanoidRootPart.Position
    end

    if ((estimation-player.Character.HumanoidRootPart.Position).Magnitude * 0.28) < pRenderRange then
        return true
    else
        return false
    end
end

function tracerPlr(plr)
    local overRun = 0
    repeat wait() overRun += 1 until not plr or not plr.Character or plr.Character:FindFirstChild("HumanoidRootPart") ~= nil or not plr.Character or overRun > 400 or plr.Character:FindFirstChild("CamCFrame")
    if overRun > 400 or not plr.Character or not plr then return end


    local pos, vis;
    if plr.Character:FindFirstChild("HumanoidRootPart") == nil then
        local estimation = Vector3.new(plr.Character.CamCFrame.Value.X, plr.Character.CamCFrame.Value.Y, plr.Character.CamCFrame.Value.Z)
        pos, vis = camera:WorldToScreenPoint(estimation)
    elseif plr.Character:FindFirstChild("HumanoidRootPart") ~= nil then
        pos, vis = camera:WorldToScreenPoint(plr.Character.HumanoidRootPart.Position)
    end

    local line = Drawing.new("Line")
    line.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
    line.To = Vector2.new(pos.x, pos.y - 20)
    line.Color = Color3.fromRGB(255,255,255)
    line.Thickness = 1.5
    line.Transparency = 0.5

    local update
    update = stepped:connect(function()
        if (not plr.Character:FindFirstChild("HumanoidRootPart") and not plr.Character:FindFirstChild("CamCFrame")) or not isCloseEnough(plr) or not pTracers then
            line.Visible = false
        else
            local estimation = Vector3.new(plr.Character.CamCFrame.Value.X, plr.Character.CamCFrame.Value.Y, plr.Character.CamCFrame.Value.Z)
            if plr.Character:FindFirstChild("Head") == nil then
                pos, vis = camera:WorldToScreenPoint(estimation)
            else
                pos, vis = camera:WorldToScreenPoint(plr.Character.Head.Position - Vector3.new(0,3,0))
            end
            if vis then line.To = Vector2.new(pos.x, pos.y) line.Visible = true else line.Visible = false end
        end
    end)

    local leaveManager
    leaveManager = players.PlayerRemoving:Connect(function(lplr)
        if lplr.Name == plr.Name then update:Disconnect() line:Remove() leaveManager:Disconnect() end
    end)
end

function boxPlr(plr)
    local overRun = 0
    repeat wait() overRun += 1 until not plr or not plr.Character or plr.Character:FindFirstChild("HumanoidRootPart") ~= nil or not plr.Character or overRun > 400
    if overRun > 400 or not plr.Character or not plr then return end

    local pos, vis = camera:WorldToScreenPoint(plr.Character.HumanoidRootPart.Position)

    local box = Drawing.new("Quad")
    box.PointA = Vector2.new()
    box.PointB = Vector2.new()
    box.PointC = Vector2.new()
    box.PointD = Vector2.new()
    box.Color = Color3.fromRGB(255,255,255)
    box.Thickness = 1.5
    box.Transparency = 1

    local update
    update = stepped:connect(function()
        if not plr.Character:FindFirstChild("HumanoidRootPart") or not isCloseEnough(plr) or not pBoxes then
            box.Visible = false
        else
            local pos, vis = camera:WorldToScreenPoint(plr.Character.HumanoidRootPart.Position)

            local size = Vector3.new(2,3,0) * plr.Character.Head.Size.Y
            local topright = (plr.Character.HumanoidRootPart.CFrame * CFrame.new(-size.X, -size.Y, 0)).Position
            local topleft = (plr.Character.HumanoidRootPart.CFrame * CFrame.new(size.X, -size.Y, 0)).Position
            local bottomright = (plr.Character.HumanoidRootPart.CFrame * CFrame.new(-size.X, size.Y, 0)).Position
            local bottomleft = (plr.Character.HumanoidRootPart.CFrame * CFrame.new(size.X, size.Y, 0)).Position

            local convertedTopright, visrt = camera:WorldToScreenPoint(topright)
            local convertedTopleft, vislt = camera:WorldToScreenPoint(topleft)
            local convertedBottomright, visrb = camera:WorldToScreenPoint(bottomright)
            local convertedBottomleft, vislb = camera:WorldToScreenPoint(bottomleft)

            if vis then
                box.Visible = true
                box.PointA = Vector2.new(convertedTopright.X, convertedTopright.Y + 36)
                box.PointB = Vector2.new(convertedTopleft.X, convertedTopleft.Y + 36)
                box.PointC = Vector2.new(convertedBottomleft.X, convertedBottomleft.Y + 36)
                box.PointD = Vector2.new(convertedBottomright.X, convertedBottomright.Y + 36) 
            else 
                box.Visible = false 
            end
        end
    end)

    local leaveManager
    leaveManager = players.PlayerRemoving:Connect(function(lplr)
        if lplr.Name == plr.Name then update:Disconnect() box:Remove() leaveManager:Disconnect() end
    end)
end

function nametagPlr(plr)
    local overRun = 0
    repeat wait() overRun += 1 until not plr or not plr.Character or plr.Character:FindFirstChild("HumanoidRootPart") ~= nil or not plr.Character or overRun > 400 or plr.Character:FindFirstChild("CamCFrame")
    if overRun > 400 or not plr.Character or not plr then return end

    local pos, vis;
    if plr.Character:FindFirstChild("HumanoidRootPart") == nil then
        local estimation = Vector3.new(plr.Character.CamCFrame.Value.X, plr.Character.CamCFrame.Value.Y, plr.Character.CamCFrame.Value.Z)
        pos, vis = camera:WorldToScreenPoint(estimation)
    elseif plr.Character:FindFirstChild("HumanoidRootPart") ~= nil then
        pos, vis = camera:WorldToScreenPoint(plr.Character.HumanoidRootPart.Position)
    end


    local nametag = Drawing.new("Text")
    nametag.Text = plr.Name
    nametag.Position = Vector2.new(pos.x, pos.y)
    nametag.Size = 18
    nametag.Color = Color3.fromRGB(255,255,255)
    nametag.Outline = true
    nametag.Center = true

    local update
    update = stepped:connect(function()
        if (not plr.Character:FindFirstChild("HumanoidRootPart") and not plr.Character:FindFirstChild("CamCFrame")) or not isCloseEnough(plr) then
            nametag.Visible = false
        else
            local estimation = Vector3.new(plr.Character.CamCFrame.Value.X, plr.Character.CamCFrame.Value.Y, plr.Character.CamCFrame.Value.Z)
            if plr.Character:FindFirstChild("HumanoidRootPart") == nil then
                pos, vis = camera:WorldToScreenPoint(estimation)
            else
                pos, vis = camera:WorldToScreenPoint(plr.Character.HumanoidRootPart.Position)
            end

            if vis then
                nametag.Position = Vector2.new(pos.x, pos.y) 
                nametag.Visible = true
                nametag.Text = ""

                if pName then
                    nametag.Text = plr.Name
                end

                local distance;
                if pDistance then
                    if plr.Character:FindFirstChild("HumanoidRootPart") == nil then
                        local estimation = Vector3.new(plr.Character.CamCFrame.Value.X, plr.Character.CamCFrame.Value.Y, plr.Character.CamCFrame.Value.Z)
                        distance = math.floor((estimation-player.Character.HumanoidRootPart.Position).Magnitude*0.28)
                    else
                        distance = math.floor((plr.Character.HumanoidRootPart.Position-player.Character.HumanoidRootPart.Position).Magnitude*0.28)
                    end
                    nametag.Text = nametag.Text.." | "..tostring(distance).."m"
                end

                if pHp then
                    nametag.Text = nametag.Text.." | "..tostring(math.floor(plr.leaderstats.Health.Value)).."hp"
                end
            else
                nametag.Visible = false
            end
        end
    end)

    local leaveManager
    leaveManager = players.PlayerRemoving:Connect(function(lplr)
        if lplr.Name == plr.Name then update:Disconnect() nametag:Remove() leaveManager:Disconnect() end
    end)
end

function applyEsp(plr)
    spawn(function() boxPlr(plr) tracerPlr(plr) nametagPlr(plr) end)
end

for i,v in pairs(players:GetPlayers()) do
    if v ~= player and v.Character and v then applyEsp(v) end
end

players.PlayerAdded:Connect(function(plr)
    wait(2) applyEsp(plr)
end)

local foodEsp = false
local ammoEsp = false
local gunEsp = false
local matEsp = false
local miscEsp = false
local attachmentsEsp = false
local armorEsp = false
local vehicleEsp = false
local deathbagEsp = false

local updatingI = false

local iRenderRange = 200
local counter = 0

local types = setmetatable({
    ["WaterBottle"] = "food",
    ["Chips"] = "food",
    ["FirstAidKit"] = "food",
    ["CannedSoup"] = "food",
    ["Lemonade"] = "food",
    ["Soda"] = "food",
    ["Bandage"] = "food",
    ["MRE"] = "food",
    
    ["Stone"] = "mats",
    ["Metal"] = "mats",
    ["Wood"] = "mats",
    
    ["Fuel"] = "misc",
    ["BloodBag"] = "misc",
    
    ["SCARL"] = "guns",
    ["ASVAL"] = "guns",
    ["Beretta"] = "guns",
    ["ACWR"] = "guns",
    ["Magnum"] = "guns",
    ["M60"] = "guns",
    ["SPAS12"] = "guns",
    ["AK74M"] = "guns",
    ["M16"] = "guns",
    ["M1014"] = "guns",
    ["AK47"] = "guns",
    ["AEK971"] = "guns",
    ["MP7"] = "guns",
    ["M1911"] = "guns",
    ["P90"] = "guns",
    ["Minigun"] = "guns",
    ["Deagle"] = "guns",
    ["870MCS"] = "guns",
    ["AWP"] = "guns",
    ["M1Garand"] = "guns",
    ["PPSH41"] = "guns",
    ["DoubleBarrel"] = "guns",
    ["AUG"] = "guns"
}, {
    __index = function(a, b)
        if string.find(b, "Mag") ~= nil then
            return "ammo"
        elseif string.find(b, "Barricade") ~= nil then
            return "misc"
        elseif string.find(b, "Attach") ~= nil then
            return "attachments"
        elseif string.find(b, "Vest") ~= nil or string.find(b, "Helmet") ~= nil or string.find(b, "Backpack") ~= nil or string.find(b, "Nightvision") ~= nil then
            return "armor" 
        end return nil
    end
})

function isOn(itype)
    if itype == "food" then
        return foodEsp
    elseif itype == "ammo" then
        return ammoEsp
    elseif itype == "guns" then 
        return gunEsp
    elseif itype == "mats" then
        return matEsp
    elseif itype == "misc" then
        return miscEsp
    elseif itype == "attachments" then
        return attachmentsEsp
    elseif itype == "armor" then
        return armorEsp
    elseif type == "car" then
        return vehicleEsp
    end
end

function addEsp(item, itemType)
    local partSet = "MainPart"
    if itemType == "mats" then partSet = "Union" elseif itemType == "car" then partSet = "Chassis" end
    
    if item == nil or item:FindFirstChild(partSet) == nil then return end

    local removed = not item:IsDescendantOf(workspace.GameStructures)
    if removed then return end

    local mainpart = item[partSet]
    
    local pos,vis = camera:WorldToScreenPoint(mainpart.Position)
    
    local nametag = Drawing.new("Text")
    if itemType == "car" then 
        nametag.Text = tostring(item)
    else
        nametag.Text = tostring(item.Config.ItemName.Value)
    end
    nametag.Position = Vector2.new(pos.x, pos.y)
    nametag.Size = 18
    nametag.Color = Color3.fromRGB(255,255,255)
    nametag.Outline = true
    nametag.Center = true
    
    counter += 1
    
    local update
    update = stepped:connect(function()
        pcall(function()
            local removed = not item:IsDescendantOf(workspace.GameStructures)
            if removed or updatingI then
                counter -= 1
                nametag:Remove()
                update:Disconnect()
            end
            local pos,vis = camera:WorldToScreenPoint(mainpart.Position)
            if vis and isOn(itemType) then
                if ((mainpart.Position-player.Character.HumanoidRootPart.Position).Magnitude * 0.28) < iRenderRange then
                    nametag.Position = Vector2.new(pos.x, pos.y)
                    nametag.Visible = true
                else
                    nametag.Visible = false
                end
            else
                nametag.Visible = false
            end
        end)
    end)
end

local ItemEspSection = ItemESPTab:Section()

ItemEspSection:Button("Update Item Esp", function()
    updatingI = true
    repeat wait() until counter == 0 wait()
    updatingI = false

    for i,v in pairs(workspace.GameStructures:GetChildren()) do
        for i2, a in pairs(v.Items:GetChildren()) do
            addEsp(a, types[tostring(a)]) 
        end
    end

    for i,v in pairs(workspace.Cars:GetChildren()) do
        addEsp(a, "car")
    end
end)

ItemEspSection:Toggle("Food/Meds", function(state)
    foodEsp = state
end)

ItemEspSection:Toggle("Ammo", function(state)
    ammoEsp = state
end)

ItemEspSection:Toggle("Guns", function(state)
    gunEsp = state
end)

ItemEspSection:Toggle("Mats", function(state)
    matEsp = state
end)

ItemEspSection:Toggle("Misc", function(state)
    miscEsp = state
end)

ItemEspSection:Toggle("Attachments", function(state)
    attachmentsEsp = state
end)

ItemEspSection:Toggle("Armor", function(state)
    armorEsp = state
end)

ItemEspSection:Toggle("Vehicles", function(state)
    vehicleEsp = state
end)

ItemEspSection:Slider(2500, 0, "Render Range", function(value)
    iRenderRange = value
end)

warn(tostring(math.random(11111,99999)).." | ".."Ran successfully!")