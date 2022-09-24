local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "ð Cynacol's Script Hub", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "CynacolHubConfig"})

local InfoTab = Window:MakeTab({
 Name = "Info & Welcome",
 PremiumOnly = false
})

local Randomscripts = Window:MakeTab({
 Name = "Miscellaneous",
 PremiumOnly = false
})

local Specific = Window:MakeTab({
 Name = "Specific Games",
 PremiumOnly = false
})

local SpecificSection1 = Specific:AddSection({
 Name = "Rainbow Friends"
})

local SpecificSection2 = Specific:AddSection({
 Name = "Epic Minigames"
})

local SpecificSection3 = Specific:AddSection({
 Name = "Horrific Housing"
})

local SpecificSection4 = Specific:AddSection({
 Name = "Build A Boat For Treasure"
})

local SpecificSection5 = Specific:AddSection({
 Name = "Victory Race"
})

local SpecificSection6 = Specific:AddSection({
 Name = "Prison Life"
})

InfoTab:AddParagraph("Welcome","This is something I originally made for myself just for easily executing scripts, so I don't have to keep looking them up and pasting them into my executor. This mainly is for multiple games I play every now and then, and it may contain some remote event manipulation. It will mostly be scripts that I find for games that I play. If you want me to add something tell me at my discord: Cynacol#2589                        Made by Cynacol / DementedDivinity")
Randomscripts:AddButton({
    Name = "Infinite Yield FE Admin",
    Callback = function()
        loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

Randomscripts:AddButton({
    Name = "CMD-X FE Admin",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
    end
})

Randomscripts:AddButton({
    Name = "Remote Spy Developer Console Mode",
    Callback = function()
                --[[

            -Created by Vaeb.

        ]]

        _G.scanRemotes = true

        _G.ignoreNames = {
            Event = true;
            MessagesChanged = true;
        }

        setreadonly(getrawmetatable(game), false)
        local pseudoEnv = {}
        local gameMeta = getrawmetatable(game)

        local tabChar = "      "

        local function getSmaller(a, b, notLast)
            local aByte = a:byte() or -1
            local bByte = b:byte() or -1
            if aByte == bByte then
                if notLast and #a == 1 and #b == 1 then
                    return -1
                elseif #b == 1 then
                    return false
                elseif #a == 1 then
                    return true
                else
                    return getSmaller(a:sub(2), b:sub(2), notLast)
                end
            else
                return aByte < bByte
            end
        end

        local function parseData(obj, numTabs, isKey, overflow, noTables, forceDict)
            local objType = typeof(obj)
            local objStr = tostring(obj)
            if objType == "table" then
                if noTables then
                    return objStr
                end
                local isCyclic = overflow[obj]
                overflow[obj] = true
                local out = {}
                local nextIndex = 1
                local isDict = false
                local hasTables = false
                local data = {}

                for key, val in next, obj do
                    if not hasTables and typeof(val) == "table" then
                        hasTables = true
                    end

                    if not isDict and key ~= nextIndex then
                        isDict = true
                    else
                        nextIndex = nextIndex + 1
                    end

                    data[#data+1] = {key, val}
                end

                if isDict or hasTables or forceDict then
                    out[#out+1] = (isCyclic and "Cyclic " or "") .. "{"
                    table.sort(data, function(a, b)
                        local aType = typeof(a[2])
                        local bType = typeof(b[2])
                        if bType == "string" and aType ~= "string" then
                            return false
                        end
                        local res = getSmaller(aType, bType, true)
                        if res == -1 then
                            return getSmaller(tostring(a[1]), tostring(b[1]))
                        else
                            return res
                        end
                    end)
                    for i = 1, #data do
                        local arr = data[i]
                        local nowKey = arr[1]
                        local nowVal = arr[2]
                        local parseKey = parseData(nowKey, numTabs+1, true, overflow, isCyclic)
                        local parseVal = parseData(nowVal, numTabs+1, false, overflow, isCyclic)
                        if isDict then
                            local nowValType = typeof(nowVal)
                            local preStr = ""
                            local postStr = ""
                            if i > 1 and (nowValType == "table" or typeof(data[i-1][2]) ~= nowValType) then
                                preStr = "\n"
                            end
                            if i < #data and nowValType == "table" and typeof(data[i+1][2]) ~= "table" and typeof(data[i+1][2]) == nowValType then
                                postStr = "\n"
                            end
                            out[#out+1] = preStr .. string.rep(tabChar, numTabs+1) .. parseKey .. " = " .. parseVal .. ";" .. postStr
                        else
                            out[#out+1] = string.rep(tabChar, numTabs+1) .. parseVal .. ";"
                        end
                    end
                    out[#out+1] = string.rep(tabChar, numTabs) .. "}"
                else
                    local data2 = {}
                    for i = 1, #data do
                        local arr = data[i]
                        local nowVal = arr[2]
                        local parseVal = parseData(nowVal, 0, false, overflow, isCyclic)
                        data2[#data2+1] = parseVal
                    end
                    out[#out+1] = "{" .. table.concat(data2, ", ") .. "}"
                end

                return table.concat(out, "\n")
            else
                local returnVal = nil
                if (objType == "string" or objType == "Content") and (not isKey or tonumber(obj:sub(1, 1))) then
                    local retVal = '"' .. objStr .. '"'
                    if isKey then
                        retVal = "[" .. retVal .. "]"
                    end
                    returnVal = retVal
                elseif objType == "EnumItem" then
                    returnVal = "Enum." .. tostring(obj.EnumType) .. "." .. obj.Name
                elseif objType == "Enum" then
                    returnVal = "Enum." .. objStr
                elseif objType == "Instance" then
                    returnVal = obj.Parent and obj:GetFullName() or obj.ClassName
                elseif objType == "CFrame" then
                    returnVal = "CFrame.new(" .. objStr .. ")"
                elseif objType == "Vector3" then
                    returnVal = "Vector3.new(" .. objStr .. ")"
                elseif objType == "Vector2" then
                    returnVal = "Vector2.new(" .. objStr .. ")"
                elseif objType == "UDim2" then
                    returnVal = "UDim2.new(" .. objStr:gsub("[{}]", "") .. ")"
                elseif objType == "BrickColor" then
                    returnVal = "BrickColor.new(\"" .. objStr .. "\")"
                elseif objType == "Color3" then
                    returnVal = "Color3.new(" .. objStr .. ")"
                elseif objType == "NumberRange" then
                    returnVal = "NumberRange.new(" .. objStr:gsub("^%s*(.-)%s*$", "%1"):gsub(" ", ", ") .. ")"
                elseif objType == "PhysicalProperties" then
                    returnVal = "PhysicalProperties.new(" .. objStr .. ")"
                else
                    returnVal = objStr
                end
                return returnVal
            end
        end

        function tableToString(t)
            return parseData(t, 0, false, {}, nil, false)
        end

        local detectClasses = {
            BindableEvent = true;
            BindableFunction = true;
            RemoteEvent = true;
            RemoteFunction = true;
        }

        local classMethods = {
            BindableEvent = "Fire";
            BindableFunction = "Invoke";
            RemoteEvent = "FireServer";
            RemoteFunction = "InvokeServer";
        }

        local realMethods = {}

        for name, enabled in next, detectClasses do
            if enabled then
                realMethods[classMethods[name]] = Instance.new(name)[classMethods[name]]
            end
        end

        for key, value in next, gameMeta do pseudoEnv[key] = value end

        local incId = 0

        local function getValues(self, key, ...)
            return {realMethods[key](self, ...)}
        end

        gameMeta.__index, gameMeta.__namecall = function(self, key)
            if not realMethods[key] or _G.ignoreNames[self.Name] or not _G.scanRemotes then return pseudoEnv.__index(self, key) end
            return function(_, ...)
                incId = incId + 1
                local nowId = incId
                local strId = "[RemoteSpy_" .. nowId .. "]"

                local allPassed = {...}
                local returnValues = {}

                local ok, data = pcall(getValues, self, key, ...)

                if ok then
                    returnValues = data
                    print("\n" .. strId .. " ClassName: " .. self.ClassName .. " | Path: " .. self:GetFullName() .. " | Method: " .. key .. "\n" .. strId .. " Packed Arguments: " .. tableToString(allPassed) .. "\n" .. strId .. " Packed Returned: " .. tableToString(returnValues) .. "\n")
                else
                    print("\n" .. strId .. " ClassName: " .. self.ClassName .. " | Path: " .. self:GetFullName() .. " | Method: " .. key .. "\n" .. strId .. " Packed Arguments: " .. tableToString(allPassed) .. "\n" .. strId .. " Packed Returned: [ERROR] " .. data .. "\n")
                end

                return unpack(returnValues)
            end
        end

        print("\nRan Vaeb's RemoteSpy\n")
    end
})

Randomscripts:AddButton({
    Name = "helicopter",
    Callback = function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
  spawn(function()
   local speaker = game.Players.LocalPlayer
   local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://27432686"
        local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
   bruh:Play()
   bruh:AdjustSpeed(0)
   speaker.Character.Animate.Disabled = true
   local hi = Instance.new("Sound")
   hi.Name = "Sound"
   hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
   hi.Volume = 2
   hi.Looped = true
   hi.archivable = false
   hi.Parent = game.Workspace
   hi:Play()

   local spinSpeed = 40
   local Spin = Instance.new("BodyAngularVelocity")
   Spin.Name = "Spinning"
   Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
   Spin.MaxTorque = Vector3.new(0, math.huge, 0)
   Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
  end)
 else
  spawn(function()
   local speaker = game.Players.LocalPlayer
   local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://507776043"
        local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
   bruh:Play()
   bruh:AdjustSpeed(0)
   speaker.Character.Animate.Disabled = true
   local hi = Instance.new("Sound")
   hi.Name = "Sound"
   hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
   hi.Volume = 2
   hi.Looped = true
   hi.archivable = false
   hi.Parent = game.Workspace
   hi:Play()

   local spinSpeed = 40
   local Spin = Instance.new("BodyAngularVelocity")
   Spin.Name = "Spinning"
   Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
   Spin.MaxTorque = Vector3.new(0, math.huge, 0)
   Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
  end)    
 end
 local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
 local u = game.Players.LocalPlayer
 local urchar = u.Character

 task.spawn(function()
  qUp = Mouse.KeyUp:Connect(function(KEY)
   if KEY == 'q' then
    urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
   end
  end)
  eUp = Mouse.KeyUp:Connect(function(KEY)
  if KEY == 'e' then
   urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
  end
 end)
 end)
    end
})

Randomscripts:AddButton({
    Name = "DINO TRANSFORM (REQUIRES R6 AND A SPECIFIC AVATAR)",
    Callback = function()
        loadstring(game:HttpGetAsync(('https://raw.githubusercontent.com/PYXDYT/DinoBlox/main/FE%20Script'),true))()
    end
})

Randomscripts:AddButton({
    Name = "ZOMBIE SUMMON (REQUIRES R6 AND A SPECIFIC AVATAR)",
    Callback = function()
        loadstring(game:HttpGetAsync("https://gist.githubusercontent.com/someunknowndude/18f1d979ad9a25ad69064be75f55f735/raw/dc36f1e9ad906a7434bd77bcd0ce8218fb5f4d88/zombie.lua"))()
    end
})

Randomscripts:AddButton({
    Name = "backdoor.exe v8, allows you to run SS scripts on certain games",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua"))();
    end
})

Randomscripts:AddButton({
    Name = "Unanchored Part Bringer GUI",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/WkZwcGjf", true))()
    end
})

Randomscripts:AddButton({
    Name = "LeftCtrl+Click TP",
    Callback = function()
        local Plr = game:GetService("Players").LocalPlayer local Mouse = Plr:GetMouse()

 Mouse.Button1Down:connect( function() if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end if not Mouse.Target then return end Plr.Character:MoveTo(Mouse.Hit.p) end )
    end
})

Randomscripts:AddButton({
    Name = "Dark Dex V4",
    Callback = function()
        loadstring(game:HttpGetAsync(("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4")))()
    end
})

SpecificSection1:AddButton({
    Name = "Rainbow Friends GUI",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
    end
})

SpecificSection1:AddButton({
    Name = "Better Rainbow Friends GUI",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TweedLeak/Scripts/main/Rainbow-Friends.lua"))()
    end
})

SpecificSection2:AddButton({
    Name = "Epic Minigames GUI",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Epic%20Minigames/EpicMinigamesGUI"))()
    end
})


SpecificSection3:AddButton({
    Name = "Horrific Housing GUI",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/typical-overk1ll/scripts/main/HorrificHousing",true))()
    end
})

SpecificSection4:AddButton({
    Name = "Build A Boat For Treasure GUI",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/Build-A-Boat'))()
    end
})

SpecificSection5:AddButton({
    Name = "Victory Race GUI",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SmoxHub/SmoxHub-V2/main/Victory-Race-V2", true))()
    end
})

SpecificSection6:AddButton({
    Name = "M9 Giver",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "Remington 870 Giver",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "AK47 Giver",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "M4A1 Giver (must have the gamepass)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "Riot Shield Giver (must have the gamepass)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.giver["Riot Shield"].ITEMPICKUP)
    end
})

SpecificSection6:AddButton({
    Name = "Hammer Giver (check the console if it doesn't work)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        if game.Workspace.Prison_ITEMS.single["Hammer"].ITEMPICKUP then
            itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.single["Hammer"].ITEMPICKUP)
        else
            print("You need to wait for the Hammer to respawn in order to be given it. You also need to be a Prisoner.")
        end
    end
})

SpecificSection6:AddButton({
    Name = "Crude Knife Giver (check the console if it doesn't work)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        if game.Workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP then
            itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP)
        else
            print("You need to wait for the Crude Knife to respawn in order to be given it. You also need to be a Prisoner.")
        end
    end
})

SpecificSection6:AddButton({
    Name = "Key Card Giver (check the console if it doesn't work)",
    Callback = function()
        local itemhandler = game.Workspace.Remote.ItemHandler
        if game.Workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP then
            itemhandler:InvokeServer(game.Workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP)
        else
            print("There needs to be a key card that has been already dropped in the map. Such ways this could happen: A cop being killed, and it dropping a key card.")
        end
    end
})

SpecificSection6:AddButton({
    Name = "Prison Life Admin",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife"))()
    end
})


OrionLib:Init()