if not game:IsLoaded() then game.Loaded:Wait() end

local lPlayer = game.Players.LocalPlayer
-- thanks 3ds and kiko metatables r hard
if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://raw.githubusercontent.com/KikoTheDon/MT-Api-v2/main/__source/mt-api%20v2.lua", true))() end

if game.PlaceId == 111311599 then -- Critical Strike
    local anticheat = game:GetService("ReplicatedFirst")["Serverbased AntiCheat"] -- then why put it in a localscript?
    -- I literally copied the rest of this from the "Serverbased Anticheat"
    local sValue = game:GetService("Players").LocalPlayer:WaitForChild("SValue")
    local function constructAnticheatString()
    	return "CS-" .. math.random(11111, 99999) .. "-" .. math.random(1111, 9999) .. "-" .. math.random(111111, 999999) .. math.random(1111111, 9999999) .. (sValue.Value * 6) ^ 2 + 18;
    end
    -- to be fair the game hasn't been updated in over a year
    task.spawn(function()
	    while true do task.wait(2)
	    	game:GetService("ReplicatedStorage").ACDetect:FireServer(sValue.Value, constructAnticheatString());
	    end
    end)
    anticheat.Disabled = true
end

local playerNames = {}
--local npcNames = {} -- I was planning on adding npc support
local teamNames = {}

-- thanks inori and wally
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/Library.lua'))()
local SaveManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/addons/SaveManager.lua'))()
SaveManager:SetLibrary(Library)
SaveManager:SetFolder("HitboxExtender")
Library:Notify("hai :3")
local mainWindow = Library:CreateWindow("Personal object of abuse")

local mainTab = mainWindow:AddTab("Main")
local mainGroupbox = mainTab:AddLeftGroupbox("Hitbox Extender")
local ignoresGroupbox = mainTab:AddRightGroupbox("Ignores")
local miscGroupbox = mainTab:AddLeftGroupbox("Misc")

local extenderToggled = mainGroupbox:AddToggle("extenderToggled", {Text = "Toggle"})
local extenderSize = mainGroupbox:AddSlider("extenderSize", {Text = "Size", Min = 2, Max = 100, Default = 10, Rounding = 0})
local extenderTransparency = mainGroupbox:AddSlider("extenderTransparency", {Text = "Transparency", Min = 0, Max = 1, Default = 0.5, Rounding = 2})
-- for some reason the save manager doesn't save inputs, idk how to fix it
local customPartNameInput = mainGroupbox:AddInput("customPartList", {Text = "Custom Part Name", Default = "HeadHB"})
local extenderPartList = mainGroupbox:AddDropdown("extenderPartList", {Text = "Body Parts", AllowNull = true, Multi = true, Values = {"Custom Part", "Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}, Default = "Head"})
local extenderUpdateRate = miscGroupbox:AddSlider("extenderUpdateRate", {Text = "Update Rate", Min = 0, Max = 1000, Default = 0, Rounding = 0, Suffix = "ms"})

local extenderSitCheck = ignoresGroupbox:AddToggle("extenderSitCheck", {Text = "Ignore Sitting Players"})
local ignoreSelectedPlayersToggled = ignoresGroupbox:AddToggle("ignoreSelectedPlayersToggled", {Text = "Ignore Selected Players"})
local ignorePlayerList = ignoresGroupbox:AddDropdown("ignorePlayerList", {Text = "Players", AllowNull = true, Multi = true, Values = playerNames})
--local ignoreSelectedNpcsToggled = ignoresGroupbox:AddToggle("ignoreSelectedNpcsToggled", {Text = "Ignore Selected Npcs"})
--local ignoreNpcList = ignoresGroupbox:AddDropdown("ignoreNpcList", {Text = "Npcs", AllowNull = true, Multi = true, Values = npcNames})
local ignoreSelfTeamToggled = ignoresGroupbox:AddToggle("ignoreSelfTeamToggled", {Text = "Ignore Own Team"})
local ignoreSelectedTeamsToggled = ignoresGroupbox:AddToggle("ignoreSelectedTeamsToggled", {Text = "Ignore Selected Teams"})
local ignoreTeamList = ignoresGroupbox:AddDropdown("ignoreTeamList", {Text = "Teams", AllowNull = true, Multi = true, Values = teamNames})

-- thanks roblox dev forum
local function CheckTableEquality(t1,t2)
    for i,v in next, t1 do if t2[i]~=v then return false end end
    for i,v in next, t2 do if t1[i]~=v then return false end end
    return true
end

-- updates the player list
task.spawn(function()
    while true do task.wait() -- if you cry about while true do loops then kys
        local temp = {}
        for i,v in ipairs(game.Players:GetPlayers()) do
            if v ~= lPlayer then
                temp[i] = v.Name
            end
        end
        if not CheckTableEquality(playerNames, temp) then
            playerNames = temp
            ignorePlayerList.Values = temp
            ignorePlayerList:SetValues()
            ignorePlayerList:Display()
        end
    end
end)

-- updates the team list
task.spawn(function()
    while true do task.wait()
        local temp = {}
        for i,v in pairs(game.Teams:GetTeams()) do
            temp[i] = v.Name
        end
        if not CheckTableEquality(teamNames, temp) then
            teamNames = temp
            ignoreTeamList.Values = temp
            ignoreTeamList:SetValues()
            ignoreTeamList:Display()
        end
    end
end)

--task.spawn(function()
--    while true do task.wait()
--        local temp = {}
--        for i,v in ipairs(npcs) do
--            temp[i] = v.Name
--        end
--        if not CheckTableEquality(npcNames, temp) then
--            ignoreNpcList.Values = temp
--            ignoreNpcList:SetValues()
--            ignoreNpcList:Display()
--        end
--    end
--end)

SaveManager:BuildConfigSection(mainTab)
SaveManager:LoadAutoloadConfig()

-- Returns a table of every possible bodypart in a character, or nil if the character does not exist.
local function getBodyParts(character)
    local humanoid = character:WaitForChild("Humanoid")
    local parts = {
        Head = character:WaitForChild("Head"),
        HumanoidRootPart = character:WaitForChild("HumanoidRootPart"),
        Humanoid = character:WaitForChild("Humanoid")
    }
    if humanoid.RigType == Enum.HumanoidRigType.R6 then
        parts.Torso = {Torso = character:WaitForChild("Torso")}
        parts["Left Arm"] = {LeftArm = character:WaitForChild("Left Arm")}
        parts["Right Arm"] = {RightArm = character:WaitForChild("Right Arm")}
        parts["Left Leg"] = {LeftLeg = character:WaitForChild("Left Leg")}
        parts["Right Leg"] = {RightLeg = character:WaitForChild("Right Leg")}
    elseif humanoid.RigType == Enum.HumanoidRigType.R15 then
        parts.Torso = {
            UpperTorso = character:WaitForChild("UpperTorso"),
            LowerTorso = character:WaitForChild("LowerTorso")
        }
        parts["Left Arm"] = {
            LeftHand = character:WaitForChild("LeftHand"),
            LeftLowerArm = character:WaitForChild("LeftLowerArm"),
            LeftUpperArm = character:WaitForChild("LeftUpperArm")
        }
        parts["Right Arm"] = {
            RightHand = character:WaitForChild("RightHand"),
            RightLowerArm = character:WaitForChild("RightLowerArm"),
            RightUpperArm = character:WaitForChild("RightUpperArm")
        }
        parts["Left Leg"] = {
            LeftFoot = character:WaitForChild("LeftFoot"),
            LeftLowerLeg = character:WaitForChild("LeftLowerLeg"),
            LeftUpperLeg = character:WaitForChild("LeftUpperLeg")
        }
        parts["Right Leg"] = {
            RightFoot = character:WaitForChild("RightFoot"),
            RightLowerLeg = character:WaitForChild("RightLowerLeg"),
            RightUpperLeg = character:WaitForChild("RightUpperLeg")
        }
    end
    return parts
end

-- Main function that allows the character passed to be expanded at will
local function extendCharacter(character)
    local player = game.Players:GetPlayerFromCharacter(character)
    local timer = 0
    local originals = {}
    local collisions = {}
    local CharacterAdded = {}
    local bodyParts = getBodyParts(character)
    --Sets up original sizes, creates collision constraints, and creates hooks to bypass localscript anticheats
    local function setup(i, v)
        if not originals[i] then
            originals[i] = {}
            originals[i].Size = v.Size
            originals[i].Transparency = v.Transparency
            originals[i].CanCollide = v.CanCollide
            originals[i].Massless = v.Massless
            local sizeHook = v:AddGetHook("Size", originals[i].Size)
            local transparencyHook = v:AddGetHook("Transparency", originals[i].Transparency)
            local canCollideHook = v:AddGetHook("CanCollide", originals[i].CanCollide)
            local masslessHook = v:AddGetHook("Massless", originals[i].Massless)
            v:AddSetHook("Size", function(self, value)
                originals[i].Size = value
                sizeHook:Modify("Size", value)
                return value
            end)
            v:AddSetHook("Transparency", function(self, value)
                originals[i].Transparency = value
                transparencyHook:Modify("Transparency", value)
                return value
            end)
            v:AddSetHook("CanCollide", function(self, value)
                originals[i].CanCollide = value
                canCollideHook:Modify("CanCollide", value)
                return value
            end)
            v:AddSetHook("Massless", function(self, value)
                originals[i].Massless = value
                masslessHook:Modify("Massless", value)
                return value
            end)
        end
        if not collisions[i] then
            collisions[i] = {}
            -- thanks to GameGuy#5286 for telling me collision constraints exist
            for o,b in pairs(getBodyParts(lPlayer.Character)) do
                if o ~= "Humanoid" and type(b) ~= "table" then
                    collisions[i][o] = Instance.new("NoCollisionConstraint", v)
                    collisions[i][o].Enabled = false
                    collisions[i][o].Part0 = v
                    collisions[i][o].Part1 = b
                    CharacterAdded[i] = lPlayer.CharacterAdded:Connect(function(char)
                        local temp = char:WaitForChild(o)
                        collisions[i][o].Part1 = temp
                    end)
                elseif type(b) == "table" then
                    for g,z in pairs(b) do
                        if z:IsA("BasePart") then
                            collisions[i][g] = Instance.new("NoCollisionConstraint", v)
                            collisions[i][g].Enabled = false
                            collisions[i][g].Part0 = v
                            collisions[i][g].Part1 = z
                            CharacterAdded[i] = lPlayer.CharacterAdded:Connect(function(char)
                                local temp = char:WaitForChild(g)
                                if temp:IsA("BasePart") then
                                    collisions[i][g].Part1 = temp
                                end
                            end)
                        end
                    end
                end
            end
        end
    end
    do
        local customPart = character:FindFirstChild(customPartNameInput.Value)
        if customPart and customPart:IsA("BasePart") then
            if not originals[customPart.Name] then
                setup(customPart.Name, customPart)
            end
        end
        for i,v in pairs(bodyParts) do
            if i ~= "Humanoid" and type(v) ~= "table" then
                if not originals[i] then
                    setup(i,v)
                end
            elseif type(v) == "table" then
                for o,b in pairs(v) do
                    if not originals[o] then
                        setup(o,b)
                    end
                end
            end
        end
    end
    -- resets the properties of the selected part.
    -- if "all" is passed, will reset every part
    local function reset(part)
        if part == "custompart" or part == "all" then
            local customPart = character:FindFirstChild(customPartNameInput.Value)
            if customPart and customPart:IsA("BasePart") then
                customPart.Size = originals[customPart.Name].Size
                customPart.Transparency = originals[customPart.Name].Transparency
                customPart.CanCollide = originals[customPart.Name].CanCollide
                customPart.Massless = originals[customPart.Name].Massless
            end
        end
        for i,v in pairs(bodyParts) do
            if string.lower(part) == string.lower(i) or part == "all" then
                if i ~= "Humanoid" and type(v) ~= "table" then
                    v.Size = originals[i].Size
                    v.Transparency = originals[i].Transparency
                    v.CanCollide = originals[i].CanCollide
                    v.Massless = originals[i].Massless
                elseif type(v) == "table" then
                    for o,b in pairs(v) do
                        b.Size = originals[o].Size
                        b.Transparency = originals[o].Transparency
                        b.Massless = originals[o].Massless
                        for _,z in pairs(collisions[o]) do
                            if z.Enabled == true and z.Part0 == b then
                                z.Enabled = false
                            end
                        end
                    end
                end
            end
        end
    end
    local function getChecks()
        if bodyParts.Humanoid:GetState() == Enum.HumanoidStateType.Dead then
            return 2
        end
        if extenderSitCheck.Value then
            if bodyParts.Humanoid.Sit then
                return 1
            end
        end
        if ignoreSelfTeamToggled.Value then
            if game.PlaceId == 2039118386 then -- Neighborhood War
                local selfTeam
                local playerTeam
                pcall(function()
                    selfTeam = lPlayer.Character.HumanoidRootPart.BrickColor
                    playerTeam = bodyParts.HumanoidRootPart.BrickColor
                end)
                if selfTeam == playerTeam then
                    return 1
                end
            else
                if lPlayer.Team == player.Team then
                    return 1
                end
            end
        end
        if ignoreSelectedTeamsToggled.Value then
            local teamList = ignoreTeamList:GetActiveValues()
            if table.find(teamList, tostring(player.Team)) then
                return 1
            end
        end
        if ignoreSelectedPlayersToggled.Value then
            local playerList = ignorePlayerList:GetActiveValues()
            if table.find(playerList, tostring(player.Name)) then
                return 1
            end
        end
        return 0
    end
    -- here's the actual expander code
    local Heartbeat
    Heartbeat = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
        timer += deltaTime
        if timer >= (extenderUpdateRate.Value / 100) then -- divided by 100 because milliseconds
            timer = 0
            local bodyPartList = extenderPartList:GetActiveValues()
            local checks = getChecks()
            if checks == 2 then
                reset("all")
                for _,v in pairs(CharacterAdded) do
                    v:Disconnect()
                end
                Heartbeat:Disconnect()
                return
            elseif checks == 1 then
                reset("all")
                return
            end
            if extenderToggled.Value then
                if table.find(bodyPartList, "Custom Part") then
                    local customPart = character:FindFirstChild(customPartNameInput.Value)
                    if customPart then
                        customPart.Size = Vector3.new(extenderSize.Value, extenderSize.Value, extenderSize.Value)
                        customPart.Transparency = extenderTransparency.Value
                        customPart.CanCollide = false
                        customPart.Massless = true
                    end
                else
                    reset("custompart")
                end
                for i,v in pairs(bodyParts) do
                    if table.find(bodyPartList, i) then
                        if type(v) ~= "table" then
                            if i ~= "HumanoidRootPart" then
                                v.Massless = true
                            end
                            v.Size = Vector3.new(extenderSize.Value, extenderSize.Value, extenderSize.Value)
                            v.Transparency = extenderTransparency.Value
                            v.CanCollide = false
                        else
                            for o,b in pairs(v) do
                                b.Massless = true
                                b.Size = Vector3.new(extenderSize.Value, extenderSize.Value, extenderSize.Value)
                                b.Transparency = extenderTransparency.Value
                                for _,z in pairs(collisions[o]) do
                                    if z.Enabled == false and z.Part0 == b then
                                        z.Enabled = true
                                    end
                                end
                            end
                        end
                    else
                        reset(i)
                    end
                end
            else
                reset("all")
            end
        end
    end)
    local PlayerRemoving
    PlayerRemoving = game.Players.PlayerRemoving:Connect(function(v)
        if v == player then
            Heartbeat:Disconnect()
            PlayerRemoving:Disconnect()
        end
    end)
end
for _,player in ipairs(game.Players:GetPlayers()) do
    if player ~= lPlayer then
        task.spawn(function()
            if player.Character then
                -- why use coroutine.wrap after I've been abusing task.spawn? fuck you that's why
                coroutine.wrap(extendCharacter)(player.Character)
            end
            player.CharacterAdded:Connect(function(v)
                coroutine.wrap(extendCharacter)(v)
            end)
        end)
    end
end
game.Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function(v)
        coroutine.wrap(extendCharacter)(v)
    end)
end)
-- now, where are my schizo meds?