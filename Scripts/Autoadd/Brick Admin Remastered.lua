--[[
Made by rawr/SawconBestShow/ted.#2538, code is open so everyone can skid it :v
]]
if not getgenv().BrickAdminRunning then
alreadyrunning = false
getgenv().BrickAdminRunning = true
else
alreadyrunning = true
if getgenv().alert then
alert("Brick Admin already running.")
end
end
if isfile("Brick-Admin/MaxMsgsLimit") then
getgenv().MML = tonumber(readfile("Brick-Admin/MaxMsgsLimit"))
else
getgenv().MML = math.huge
writefile("Brick-Admin/MaxMsgsLimit", tostring(tonumber(math.huge)))
end
repeat task.wait() until not alreadyrunning
local MarketplaceService = game:GetService("MarketplaceService")

local function getGameName()
    local success, result = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId).Name
    end)

    if success then
        return result
    else
        warn("Failed to retrieve game name:", result)
        return "Unknown"
    end
end
--[[
Services
]]
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local UserInputService = game:GetService("UserInputService")
local TextChatService = game:GetService("TextChatService")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local StarterGui = game:GetService("StarterGui")
local StarterPack = game:GetService("StarterPack")

--[[
Variables
]]
local voidCFrame = game:GetService("Workspace").FallenPartsDestroyHeight - 5
local part = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local humanoid = part.Parent.Humanoid
local antivoid = false
local voiding = false
local players = game:GetService("Players")
local player = game:GetService("Players").LocalPlayer
local date = os.date("*t")
local highNumber = math.huge 

local function void(sec)
if not sec then
local sec = 3
end
local cf = part.CFrame
local height = game:GetService("Workspace").FallenPartsDestroyHeight
voiding = true
game:GetService("Workspace").FallenPartsDestroyHeight = "nan"
part.CFrame -= Vector3.new(0, 9999, 0)
task.wait(sec)
part.CFrame = cf
game:GetService("Workspace").FallenPartsDestroyHeight = height
voiding = false
end

local startuptime = tick()
local tweenservice = game:GetService("TweenService")
local function findPlayer(playerName)
    local players = game:GetService("Players")

    if playerName == "me" then
        return players.LocalPlayer
    elseif playerName == "random" then
        local randomPlayer = nil
        local allPlayers = players:GetPlayers()

        repeat
            randomPlayer = allPlayers[math.random(1, #allPlayers)]
        until randomPlayer ~= players.LocalPlayer

        return randomPlayer
    else
        for _, player in pairs(players:GetPlayers()) do
            if player.Name == playerName or
                player.DisplayName:lower():sub(1, #playerName) == playerName:lower() or
                player.Name:find(playerName:sub(1, #playerName)) or
                player.DisplayName:find(playerName:sub(1, #playerName)) then
                return player
            else
            if getgenv().alert then
            alert("Couldnt find player.")
            end
            end
        end
    end

    return nil
end

local function chat(msg)
if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents") then
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All")
else
TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
end
end

local function applyHooks(g)
    local lp = game:GetService("Players").LocalPlayer
    local hooks = {
        walkspeed = humanoid.WalkSpeed,
        jumppower = humanoid.JumpPower
    }
    local index
    local newindex

    index = hookmetamethod(game, "__index", function(self, property)
        if not checkcaller() and self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) and hooks[property:lower()] then
            return hooks[property:lower()]
        end
        return index(self, property)
    end)

    newindex = hookmetamethod(game, "__newindex", function(self, property, value)
        if not checkcaller() and self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) and hooks[property:lower()] then
            return value
        end
        return newindex(self, property, value)
    end)
 lp.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = g
end
local function applyHooks2(g)
    local lp = game:GetService("Players").LocalPlayer
    local hooks = {
        walkspeed = humanoid.WalkSpeed,
        jumppower = humanoid.JumpPower
    }
    local index
    local newindex

    index = hookmetamethod(game, "__index", function(self, property)
        if not checkcaller() and self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) and hooks[property:lower()] then
            return hooks[property:lower()]
        end
        return index(self, property)
    end)

    newindex = hookmetamethod(game, "__newindex", function(self, property, value)
        if not checkcaller() and self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) and hooks[property:lower()] then
            return value
        end
        return newindex(self, property, value)
    end) lp.Character:FindFirstChildWhichIsA("Humanoid").JumpPower = g
end
local function applyHooks3(g)
    local lp = game:GetService("Players").LocalPlayer
    local hooks = {
        gravity = game:GetService("Workspace").Gravity
    }
    local index
    local newindex

    index = hookmetamethod(game, "__index", function(self, property)
        if not checkcaller() and self:IsA("Property") and self:IsDescendantOf(lp.Character) and hooks[property:lower()] then
            return hooks[property:lower()]
        end
        return index(self, property)
    end)

    newindex = hookmetamethod(game, "__newindex", function(self, property, value)
        if not checkcaller() and self:IsA("Property") and self:IsDescendantOf(lp.Character) and hooks[property:lower()] then
            return value
        end
        return newindex(self, property, value)
    end)
    hookmetamethod(game, "__index", index)
    hookmetamethod(game, "__newindex", newindex)

    game:GetService("Workspace").Gravity = g
end

local humanoidRootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local position = humanoidRootPart.Position
    
        local isSpin = false
        local player = game:GetService("Players").LocalPlayer
local function spinCharacter(speed)
    local character = player.Character
    if not character then
        return
    end
    while isSpin do
        character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(speed), 0)
        task.wait()
    end
end
--vars
local singleCopy = false
local count = 0
local i = 0
local prefix
local showonstart = true
local isFollow = false
local isAnnoy = false
local isSpam = false
local isCopy = false
local isSit = false
local isLog = false
local character = game:GetService("Players").LocalPlayer.Character 
local rootpart = character.HumanoidRootPart
local humanoid = character.Humanoid
local plr = game:GetService("Players").LocalPlayer
local workspace = game:GetService("Workspace")
local gravity = workspace.Gravity
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


if not isfolder("Brick-Admin") then
    makefolder("Brick-Admin")
end
if not isfolder("Brick-Admin/Extensions") then
makefolder("Brick-Admin/Extensions")
end


if not isfolder("Brick-Admin/Scripts") then
    makefolder("Brick-Admin/Scripts")
end

if not isfile("Brick-Admin/Scripts/Script1") and not isfile("Brick-Admin/Scripts/Name1")then
    writefile("Brick-Admin/Scripts/Script1", 'print("Brick Admin Scripthub")')
    writefile("Brick-Admin/Scripts/Name1", "YOUR_SCRIPT_NAME")
end

if not isfile("Brick-Admin/Scripts/Script2") and not isfile("Brick-Admin/Scripts/Name2")then
    writefile("Brick-Admin/Scripts/Script2", 'print("Brick Admin Scripthub")')
    writefile("Brick-Admin/Scripts/Name2", "YOUR_SCRIPT_NAME")
end

if not isfile("Brick-Admin/Scripts/Script3") and not isfile("Brick-Admin/Scripts/Name3")then
    writefile("Brick-Admin/Scripts/Script3", 'print("Brick Admin Scripthub")')
    writefile("Brick-Admin/Scripts/Name3", "YOUR_SCRIPT_NAME")
end

if not isfile("Brick-Admin/Scripts/Script4") and not isfile("Brick-Admin/Scripts/Name4")then
    writefile("Brick-Admin/Scripts/Script4", 'print("Brick Admin Scripthub")')
    writefile("Brick-Admin/Scripts/Name4", "YOUR_SCRIPT_NAME")
end

if not isfile("Brick-Admin/Scripts/Script5") and not isfile("Brick-Admin/Scripts/Name5")then
    writefile("Brick-Admin/Scripts/Script5", 'print("Brick Admin Scripthub")')
    writefile("Brick-Admin/Scripts/Name5", "YOUR_SCRIPT_NAME")
end


if isfile("Brick-Admin/Settings") then

local s = readfile("Brick-Admin/Settings")

if s:find("Themes: OFF") then
themes = false

elseif s:find("Themes: ON") then
themes = true
end

if s:find("UOD: U") then
welcomemsg = game:GetService("Players").LocalPlayer.Name

elseif s:find("UOD: D") then
welcomemsg = game:GetService("Players").LocalPlayer.DisplayName

end
if s:find("CGC: ON") then
cgc = true

elseif s:find("CGC: OFF") then
cgc = false

end
if not s:find("CGC:") then
cgc = true
appendfile("Brick-Admin/Settings", " CGC: ON")
end
if not s:find("Themes:") then
themes = true
appendfile("Brick-Admin/Settings", " Themes: ON")
end
if not s:find("UOD:") then
welcomemsg = game:GetService("Players").LocalPlayer.Name
appendfile("Brick-Admin/Settings", " UOD: U")
end
end
if not isfile("Brick-Admin/Settings") then
writefile("Brick-Admin/Settings", "CGC: ON, Themes: ON, UOD: U")
welcomemsg = game:GetService("Players").LocalPlayer.Name
themes = true
cgc = true
end
local colors = {
Color3.fromHex('#FF6FDA'),
Color3.fromHex('#3FC082'),
Color3.fromHex('#AB4A63'),
Color3.fromHex('#88300C'),
Color3.fromHex('#0854D3'),
Color3.fromHex('#FE19EE'),
Color3.fromHex('#F6102A'),
Color3.fromHex('#697E4E'),
Color3.fromHex('#A62031'),
Color3.fromHex('#8E178D'),
Color3.fromHex('#3FA40C'),
Color3.fromHex('#1DC9C8'),
Color3.fromHex('#755B17'),
Color3.fromHex('#F96008'),
Color3.fromHex('#D51754'),
Color3.fromHex('#B1B9A6'),
Color3.fromHex('#08658B'),
Color3.fromHex('#036424'),
Color3.fromHex('#A8D91C'),
Color3.fromHex('#6477B4'),
Color3.fromHex('#4067D1'),
Color3.fromHex('#DDA1DE'),
Color3.fromHex('#303213'),
Color3.fromHex('#14C913'),
Color3.fromHex('#305F51'),
Color3.fromHex('#F4B4C0'),
Color3.fromHex('#94875B'),
Color3.fromHex('#FCB55F'),
Color3.fromHex('#BF3DB5'),
Color3.fromHex('#476EBA'),
Color3.fromHex('#EB1A94'),
Color3.fromHex('#27F537'),
Color3.fromHex('#B53373'),
Color3.fromHex('#0C0CE0'),
Color3.fromHex('#5EA772'),
Color3.fromHex('#50EA2E'),
Color3.fromHex('#F4B535'),
Color3.fromHex('#4562FD'),
Color3.fromHex('#511ADD'),
Color3.fromHex('#1D85E3'),
Color3.fromHex('#E17F8E'),
Color3.fromHex('#0EBC28'),
Color3.fromHex('#0E8FBC'),
Color3.fromHex('#716ACD'),
Color3.fromHex('#2FDA8E'),
Color3.fromHex('#48E39E'),
Color3.fromHex('#76D32F'),
Color3.fromHex('#E2ECB3'),
Color3.fromHex('#3C6E2E'),
Color3.fromHex('#EAE5CB')
}

if isfile("Brick-Admin/Color") and cgc then
    local file = readfile("Brick-Admin/Color")
    if file then
        randomColor = Color3.fromHex(file)
        end
    elseif not cgc and isfile("Brick-Admin/Color") then
    randomColor = Color3.fromHex("#1f1b1b")
elseif not isfile("Brick-Admin/Color") then
randomColor = colors[math.random(1, #colors)]
end
local date = os.date("*t")
local i = 0

local Converted = {
	["_MainGui"] = Instance.new("ScreenGui");
	["_MainUI"] = Instance.new("Frame");
	["_MainCorner"] = Instance.new("UICorner");
	["_StartUp"] = Instance.new("Folder");
	["_LoginDate"] = Instance.new("TextLabel");
	["_Name"] = Instance.new("TextLabel");
	["_Date"] = Instance.new("TextLabel");
	["_BugFixes"] = Instance.new("TextLabel");
	["_Prefix"] = Instance.new("TextLabel");
	["_Lines"] = Instance.new("Folder");
	["_Line1"] = Instance.new("Frame");
	["_Line2"] = Instance.new("Frame");
	["_Line3"] = Instance.new("Frame");
	["_ImagesContainer"] = Instance.new("Folder");
	["_Home"] = Instance.new("ImageButton");
	["_Close"] = Instance.new("ImageButton");
	["_Edit"] = Instance.new("ImageButton");
	["_Scripthub"] = Instance.new("ImageButton");
	["_Main"] = Instance.new("ImageButton");
	["_Chat"] = Instance.new("ImageButton");
	["_HomeFolder"] = Instance.new("Folder");
	["_Home1"] = Instance.new("ImageButton");
	["_Updates"] = Instance.new("TextLabel");
	["_ComingSoon"] = Instance.new("TextLabel");
	["_SettingsFolder"] = Instance.new("Folder");
	["_SettingsImage"] = Instance.new("ImageButton");
	["_DisplayOrName"] = Instance.new("TextButton");
	["_PrefixSuffix"] = Instance.new("TextButton");
	["_Themes"] = Instance.new("TextButton");
	["_CGC"] = Instance.new("TextButton");
	["_BrickAdmin"] = Instance.new("TextLabel");
	["_ScripthubFolder"] = Instance.new("Folder");
	["_Script1"] = Instance.new("Folder");
	["_Execute1"] = Instance.new("TextButton");
	["_Delete1"] = Instance.new("TextButton");
	["_Script11"] = Instance.new("TextLabel");
	["_Edit1"] = Instance.new("TextButton");
	["_Script2"] = Instance.new("Folder");
	["_Execute2"] = Instance.new("TextButton");
	["_Delete2"] = Instance.new("TextButton");
	["_Script21"] = Instance.new("TextLabel");
	["_Edit2"] = Instance.new("TextButton");
	["_Script3"] = Instance.new("Folder");
	["_Execute3"] = Instance.new("TextButton");
	["_Delete3"] = Instance.new("TextButton");
	["_Script31"] = Instance.new("TextLabel");
	["_Edit3"] = Instance.new("TextButton");
	["_Script4"] = Instance.new("Folder");
	["_Execute4"] = Instance.new("TextButton");
	["_Delete4"] = Instance.new("TextButton");
	["_Script41"] = Instance.new("TextLabel");
	["_Edit4"] = Instance.new("TextButton");
	["_Script5"] = Instance.new("Folder");
	["_Execute5"] = Instance.new("TextButton");
	["_Delete5"] = Instance.new("TextButton");
	["_Script51"] = Instance.new("TextLabel");
	["_Edit5"] = Instance.new("TextButton");
	["_ScripthubImage"] = Instance.new("ImageButton");
	["_ScriptCodeBox"] = Instance.new("TextBox");
	["_ScriptNameBox"] = Instance.new("TextBox");
	["_MainFolder"] = Instance.new("Folder");
	["_scrollingFrame"] = Instance.new("ScrollingFrame");
	["_textBox"] = Instance.new("TextBox");
	["_Main1"] = Instance.new("ImageButton");
	["_ChatFolder"] = Instance.new("Folder");
	["_Chat1"] = Instance.new("ImageButton");
	["_DownloadButton"] = Instance.new("ImageButton");
	["_CopyButton"] = Instance.new("ImageButton");
	["_TXTFile"] = Instance.new("ImageLabel");
	["_Save"] = Instance.new("ImageButton");
	["_Theme"] = Instance.new("ImageLabel");
	["_Minimize"] = Instance.new("TextButton");
}

Converted["_MainGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_MainGui"].Name = "MainGui"
Converted["_MainGui"].Parent = game:GetService("CoreGui")

Converted["_MainUI"].BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Converted["_MainUI"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_MainUI"].BorderSizePixel = 0
Converted["_MainUI"].Position = UDim2.new(0.5, -141, 0, -241)
Converted["_MainUI"].Size = UDim2.new(0, 0, 0, 0)
Converted["_MainUI"].Name = "MainUI"
Converted["_MainUI"].Parent = Converted["_MainGui"]
Converted["_MainUI"].Draggable = true
Converted["_MainUI"].Active = true
Converted["_MainUI"].Transparency = 1
game:GetService("RunService").RenderStepped:Connect(function()
if Converted["_MainGui"] then
task.wait(1)
local lastLoginFilePath1 = "Brick-Admin/LastLogin"
    if isfile(lastLoginFilePath1) then
        delfile(lastLoginFilePath1)
    end
    local lastLogin = string.format("%d/%d || %02d:%02d", date.day, date.month, date.hour, date.min)
    writefile(lastLoginFilePath1, lastLogin)
    end
end)
local function alert(message, time)

local alertmessage = Instance.new("TextLabel")
  alertmessage.Size = Converted["_MainUI"].Size
  alertmessage.Position = Converted["_MainUI"].Position
  alertmessage.BackgroundTransparency = 1
  alertmessage.Text = message
  alertmessage.ZIndex = 999999
  alertmessage.TextScaled = true
  alertmessage.TextColor3 = Color3.fromRGB(240, 112, 102)
  alertmessage.TextTransparency = 0.35
  alertmessage.Font = Enum.Font.Gotham
  alertmessage.Parent = Converted["_MainGui"]
  Converted["_MainUI"].Visible = false
  if Converted["_Theme"].Visible then
  them = true
  Converted["_Theme"].Visible = false
  end
  if not time then
  time = 3
  end
  task.wait(time)
  alertmessage:Destroy()
  Converted["_MainUI"].Visible = true
  if them then
  Converted["_Theme"].Visible = true
  end
end

local info = TweenInfo.new(
  1.7 + math.random(0, 1),
  Enum.EasingStyle.Bounce,
  Enum.EasingDirection.Out
)

local goals = {
  Position = UDim2.new(0.5, -141, 0.5, -121),
  Size = UDim2.new(0, 283, 0, 241),
  Transparency = 0
}

local info2 = TweenInfo.new(
  0.35,
  Enum.EasingStyle.Sine,
  Enum.EasingDirection.Out,
  0,
  true
)

local goals2 = {
  Size = UDim2.new(0, 0, 0, 0)
}

tweenservice:Create(Converted["_MainUI"], info, goals):Play()


Converted["_MainCorner"].CornerRadius = UDim.new(0, 6)
Converted["_MainCorner"].Name = "MainCorner"
Converted["_MainCorner"].Parent = Converted["_MainUI"]

Converted["_StartUp"].Name = "StartUp"
Converted["_StartUp"].Parent = Converted["_MainUI"]

Converted["_LoginDate"].Font = Enum.Font.GothamBlack
 local lastLoginFilePath = "Brick-Admin/LastLogin"
    if isfile(lastLoginFilePath) then
        Converted["_LoginDate"].Text = "Last Login:  "..readfile(lastLoginFilePath)
    else
    local date = os.date("*t")
    local lastLogin = string.format("%d/%d || %02d:%02d", date.day, date.month, date.hour, date.min)
    Converted["_LoginDate"].Text = "Last Login: "..lastLogin
    end
Converted["_LoginDate"].TextColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000762939453)
Converted["_LoginDate"].TextScaled = true
Converted["_LoginDate"].TextSize = 18
Converted["_LoginDate"].TextWrapped = true
Converted["_LoginDate"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_LoginDate"].BackgroundTransparency = 1
Converted["_LoginDate"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_LoginDate"].BorderSizePixel = 0
Converted["_LoginDate"].Position = UDim2.new(0.261727661, 0, 0.107264489, 0)
Converted["_LoginDate"].Size = UDim2.new(0, 185, 0, 32)
Converted["_LoginDate"].Name = "LoginDate"
Converted["_LoginDate"].Parent = Converted["_StartUp"]

Converted["_Name"].Font = Enum.Font.GothamBlack
Converted["_Name"].Text = welcomemsg
Converted["_Name"].TextColor3 = Color3.fromRGB(85.0000025331974, 170.0000050663948, 255)
Converted["_Name"].TextScaled = true
Converted["_Name"].TextSize = 18
Converted["_Name"].TextWrapped = true
Converted["_Name"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Name"].BackgroundTransparency = 1
Converted["_Name"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Name"].BorderSizePixel = 0
Converted["_Name"].Position = UDim2.new(0.288269281, 0, -0.000173521228, 0)
Converted["_Name"].Size = UDim2.new(0, 169, 0, 26)
Converted["_Name"].Name = "Name"
Converted["_Name"].Parent = Converted["_StartUp"]

Converted["_Date"].Font = Enum.Font.GothamBlack
Converted["_Date"].Text = date.day.."/"..date.month.."/"..date.year
Converted["_Date"].TextColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000762939453)
Converted["_Date"].TextScaled = true
Converted["_Date"].TextSize = 18
Converted["_Date"].TextWrapped = true
Converted["_Date"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Date"].BackgroundTransparency = 1
Converted["_Date"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Date"].BorderSizePixel = 0
Converted["_Date"].Position = UDim2.new(0.263082623, 0, 0.84280169, 0)
Converted["_Date"].Size = UDim2.new(0, 185, 0, 32)
Converted["_Date"].Name = "Date"
Converted["_Date"].Parent = Converted["_StartUp"]

Converted["_BugFixes"].Font = Enum.Font.GothamBlack
Converted["_BugFixes"].Text = "Bug Fixes v3.51: issue where copyall and copy player would send messages multiple times, reduced crashing, fixed cmds"
Converted["_BugFixes"].TextColor3 = Color3.fromRGB(27.000000290572643, 27.000000290572643, 31.000000052154064)
Converted["_BugFixes"].TextScaled = true
Converted["_BugFixes"].TextSize = 18
Converted["_BugFixes"].TextWrapped = true
Converted["_BugFixes"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BugFixes"].BackgroundTransparency = 1
Converted["_BugFixes"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BugFixes"].BorderSizePixel = 0
Converted["_BugFixes"].Position = UDim2.new(0.263082623, 0, 0.243628055, 0)
Converted["_BugFixes"].Size = UDim2.new(0, 185, 0, 123)
Converted["_BugFixes"].Name = "BugFixes"
Converted["_BugFixes"].Parent = Converted["_StartUp"]

Converted["_Prefix"].Font = Enum.Font.GothamBlack
if isfile("Brick-Admin/Prefix") then
prefix = readfile("Brick-Admin/Prefix"):sub(1, 1)
Converted["_Prefix"].Text = "Prefix is ["..prefix.."]"
else
Converted["_Prefix"].Text = "Prefix is not chosen yet"
end
Converted["_Prefix"].TextColor3 = Color3.fromRGB(27.000000290572643, 27.000000290572643, 31.000000052154064)
Converted["_Prefix"].TextScaled = true
Converted["_Prefix"].TextSize = 18
Converted["_Prefix"].TextWrapped = true
Converted["_Prefix"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Prefix"].BackgroundTransparency = 1
Converted["_Prefix"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Prefix"].BorderSizePixel = 0
Converted["_Prefix"].Position = UDim2.new(0.291802824, 0, 0.760156989, 0)
Converted["_Prefix"].Size = UDim2.new(0, 169, 0, 19)
Converted["_Prefix"].ZIndex = 5
Converted["_Prefix"].Name = "Prefix"
Converted["_Prefix"].Parent = Converted["_StartUp"]
if isfile("Brick-Admin/Prefix") then
Converted["_PrefixSuffix"].Text = "Prefix: ["..readfile("Brick-Admin/Prefix"):sub(1, 1).."]"
else
Converted["_PrefixSuffix"].Text = "Prefix: [unchosen]"
end

Converted["_Lines"].Name = "Lines"
Converted["_Lines"].Parent = Converted["_MainUI"]

Converted["_Line1"].BackgroundColor3 = Color3.fromRGB(31.000001952052116, 27.000002190470695, 27.000002190470695)
Converted["_Line1"].BackgroundTransparency = 0.5
Converted["_Line1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Line1"].BorderSizePixel = 0
Converted["_Line1"].Position = UDim2.new(0.162929356, 0, 0.00414937781, 0)
Converted["_Line1"].Size = UDim2.new(0, 19, 0, 240)
Converted["_Line1"].Name = "Line1"
Converted["_Line1"].Parent = Converted["_Lines"]

Converted["_Line2"].BackgroundColor3 = Color3.fromRGB(69.00000348687172, 68.00000354647636, 69.00000348687172)
Converted["_Line2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Line2"].BorderSizePixel = 0
Converted["_Line2"].Position = UDim2.new(0.59210521, 0, -0.221074387, 0)
Converted["_Line2"].Rotation = 90
Converted["_Line2"].Size = UDim2.new(0, 1, 0, 161)
Converted["_Line2"].Name = "Line2"
Converted["_Line2"].Parent = Converted["_Lines"]

Converted["_Line3"].BackgroundColor3 = Color3.fromRGB(69.00000348687172, 68.00000354647636, 69.00000348687172)
Converted["_Line3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Line3"].BorderSizePixel = 0
Converted["_Line3"].Position = UDim2.new(0.523999989, 20, 0.637000024, 0)
Converted["_Line3"].Rotation = 90
Converted["_Line3"].Size = UDim2.new(0, 1, 0, 166)
Converted["_Line3"].ZIndex = 5
Converted["_Line3"].Name = "Line3"
Converted["_Line3"].Parent = Converted["_Lines"]

Converted["_ImagesContainer"].Name = "ImagesContainer"
Converted["_ImagesContainer"].Parent = Converted["_MainUI"]

Converted["_Home"].Image = "rbxassetid://13056256637"
Converted["_Home"].Active = false
Converted["_Home"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Home"].BackgroundTransparency = 1
Converted["_Home"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Home"].BorderSizePixel = 0
Converted["_Home"].Position = UDim2.new(0.0282685515, 0, 0.0456431545, 0)
Converted["_Home"].Selectable = false
Converted["_Home"].Size = UDim2.new(0, 32, 0, 32)
Converted["_Home"].Name = "Home"
Converted["_Home"].Parent = Converted["_ImagesContainer"]

Converted["_Close"].Image = "rbxassetid://13056312518"
Converted["_Close"].Active = false
Converted["_Close"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Close"].BackgroundTransparency = 1
Converted["_Close"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Close"].BorderSizePixel = 0
Converted["_Close"].Position = UDim2.new(0.89399302, 0, 0.00414937781, 0)
Converted["_Close"].Selectable = false
Converted["_Close"].Size = UDim2.new(0, 29, 0, 28)
Converted["_Close"].Name = "Close"
Converted["_Close"].Parent = Converted["_ImagesContainer"]

Converted["_Edit"].Image = "rbxassetid://13538468008"
Converted["_Edit"].Active = false
Converted["_Edit"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Edit"].BackgroundTransparency = 1
Converted["_Edit"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Edit"].BorderSizePixel = 0
Converted["_Edit"].Position = UDim2.new(0.0282685515, 0, 0.236514524, 0)
Converted["_Edit"].Selectable = false
Converted["_Edit"].Size = UDim2.new(0, 32, 0, 32)
Converted["_Edit"].Name = "Edit"
Converted["_Edit"].Parent = Converted["_ImagesContainer"]

Converted["_Scripthub"].Image = "rbxassetid://13056301191"
Converted["_Scripthub"].ImageColor3 = Color3.fromRGB(85.0000025331974, 170.0000050663948, 255)
Converted["_Scripthub"].Active = false
Converted["_Scripthub"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Scripthub"].BackgroundTransparency = 1
Converted["_Scripthub"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Scripthub"].BorderSizePixel = 0
Converted["_Scripthub"].Position = UDim2.new(0.0282685515, 0, 0.431535274, 0)
Converted["_Scripthub"].Selectable = false
Converted["_Scripthub"].Size = UDim2.new(0, 32, 0, 32)
Converted["_Scripthub"].Name = "Scripthub"
Converted["_Scripthub"].Parent = Converted["_ImagesContainer"]

Converted["_Main"].Image = "rbxassetid://12974370712"
Converted["_Main"].Active = false
Converted["_Main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Main"].BackgroundTransparency = 1
Converted["_Main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main"].BorderSizePixel = 0
Converted["_Main"].Position = UDim2.new(0.0282685515, 0, 0.618257284, 0)
Converted["_Main"].Selectable = false
Converted["_Main"].Size = UDim2.new(0, 32, 0, 32)
Converted["_Main"].Name = "Main"
Converted["_Main"].Parent = Converted["_ImagesContainer"]

Converted["_Chat"].Image = "rbxassetid://12966824678"
Converted["_Chat"].ImageColor3 = Color3.fromRGB(255, 240.0000160932541, 29.000002071261406)
Converted["_Chat"].Active = false
Converted["_Chat"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Chat"].BackgroundTransparency = 1
Converted["_Chat"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Chat"].BorderSizePixel = 0
Converted["_Chat"].Position = UDim2.new(0.0282685515, 0, 0.792531133, 0)
Converted["_Chat"].Selectable = false
Converted["_Chat"].Size = UDim2.new(0, 32, 0, 32)
Converted["_Chat"].Name = "Chat"
Converted["_Chat"].Parent = Converted["_ImagesContainer"]

Converted["_HomeFolder"].Name = "HomeFolder"
Converted["_HomeFolder"].Parent = Converted["_MainUI"]

Converted["_Home1"].Image = "rbxassetid://13056256637"
Converted["_Home1"].Active = false
Converted["_Home1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Home1"].BackgroundTransparency = 1
Converted["_Home1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Home1"].BorderSizePixel = 0
Converted["_Home1"].Position = UDim2.new(0.547703147, 0, 0.00829875655, 0)
Converted["_Home1"].Selectable = false
Converted["_Home1"].Size = UDim2.new(0, 25, 0, 25)
Converted["_Home1"].Visible = false
Converted["_Home1"].Name = "Home1"
Converted["_Home1"].Parent = Converted["_HomeFolder"]

Converted["_Updates"].Font = Enum.Font.GothamBlack
Converted["_Updates"].Text = "Updates: another gui remake, changed cmds command, changed icons, better ui overall, added features tab and a chat settings tab (download, copy)"
Converted["_Updates"].TextColor3 = Color3.fromRGB(170.0000050663948, 85.0000025331974, 127.00000762939453)
Converted["_Updates"].TextScaled = true
Converted["_Updates"].TextSize = 14
Converted["_Updates"].TextWrapped = true
Converted["_Updates"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Updates"].BackgroundTransparency = 1
Converted["_Updates"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Updates"].BorderSizePixel = 0
Converted["_Updates"].Position = UDim2.new(0.353356898, 0, 0.112033203, 0)
Converted["_Updates"].Size = UDim2.new(0, 150, 0, 106)
Converted["_Updates"].Visible = false
Converted["_Updates"].ZIndex = 5
Converted["_Updates"].Name = "Updates"
Converted["_Updates"].Parent = Converted["_HomeFolder"]

Converted["_ComingSoon"].Font = Enum.Font.GothamBlack
Converted["_ComingSoon"].Text = "COMING SOON: nothing"
Converted["_ComingSoon"].TextColor3 = Color3.fromRGB(73.00000324845314, 160.00000566244125, 120.00000804662704)
Converted["_ComingSoon"].TextScaled = true
Converted["_ComingSoon"].TextSize = 14
Converted["_ComingSoon"].TextWrapped = true
Converted["_ComingSoon"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ComingSoon"].BackgroundTransparency = 1
Converted["_ComingSoon"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ComingSoon"].BorderSizePixel = 0
Converted["_ComingSoon"].Position = UDim2.new(0.33922261, 0, 0.663900435, 0)
Converted["_ComingSoon"].Size = UDim2.new(0, 159, 0, 63)
Converted["_ComingSoon"].Visible = false
Converted["_ComingSoon"].ZIndex = 5
Converted["_ComingSoon"].Name = "ComingSoon"
Converted["_ComingSoon"].Parent = Converted["_HomeFolder"]

Converted["_SettingsFolder"].Name = "SettingsFolder"
Converted["_SettingsFolder"].Parent = Converted["_MainUI"]

Converted["_SettingsImage"].Image = "rbxassetid://13538468008"
Converted["_SettingsImage"].Active = false
Converted["_SettingsImage"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_SettingsImage"].BackgroundTransparency = 1
Converted["_SettingsImage"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SettingsImage"].BorderSizePixel = 0
Converted["_SettingsImage"].Position = UDim2.new(0.547999978, 0, 0.00800000038, 0)
Converted["_SettingsImage"].Selectable = false
Converted["_SettingsImage"].Size = UDim2.new(0, 25, 0, 25)
Converted["_SettingsImage"].Visible = false
Converted["_SettingsImage"].Name = "SettingsImage"
Converted["_SettingsImage"].Parent = Converted["_SettingsFolder"]

Converted["_DisplayOrName"].Font = Enum.Font.GothamBlack
Converted["_DisplayOrName"].TextColor3 = Color3.fromRGB(73.00000324845314, 160.00000566244125, 120.00000804662704)
Converted["_DisplayOrName"].TextScaled = true
Converted["_DisplayOrName"].TextSize = 18
Converted["_DisplayOrName"].TextWrapped = true
Converted["_DisplayOrName"].Active = false
Converted["_DisplayOrName"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DisplayOrName"].BackgroundTransparency = 1
Converted["_DisplayOrName"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DisplayOrName"].BorderSizePixel = 0
Converted["_DisplayOrName"].Position = UDim2.new(0.265017658, 0, 0.497925341, 0)
Converted["_DisplayOrName"].Selectable = false
Converted["_DisplayOrName"].Size = UDim2.new(0, 200, 0, 50)
Converted["_DisplayOrName"].Visible = false
Converted["_DisplayOrName"].Name = "DisplayOrName"
Converted["_DisplayOrName"].Parent = Converted["_SettingsFolder"]

Converted["_PrefixSuffix"].Font = Enum.Font.GothamBlack
Converted["_PrefixSuffix"].TextColor3 = Color3.fromRGB(85.0000025331974, 170.0000050663948, 255)
Converted["_PrefixSuffix"].TextSize = 20
Converted["_PrefixSuffix"].TextWrapped = true
Converted["_PrefixSuffix"].Active = false
Converted["_PrefixSuffix"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PrefixSuffix"].BackgroundTransparency = 1
Converted["_PrefixSuffix"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PrefixSuffix"].BorderSizePixel = 0
Converted["_PrefixSuffix"].Position = UDim2.new(0.265017658, 0, 0.680497944, 0)
Converted["_PrefixSuffix"].Selectable = false
Converted["_PrefixSuffix"].Size = UDim2.new(0, 200, 0, 50)
Converted["_PrefixSuffix"].Visible = false
Converted["_PrefixSuffix"].Name = "PrefixSuffix"
Converted["_PrefixSuffix"].Parent = Converted["_SettingsFolder"]

Converted["_Themes"].Font = Enum.Font.GothamBlack
Converted["_Themes"].Text = "Themes: ON"
Converted["_Themes"].TextColor3 = Color3.fromRGB(170.0000050663948, 170.0000050663948, 255)
Converted["_Themes"].TextSize = 20
Converted["_Themes"].TextWrapped = true
Converted["_Themes"].Active = false
Converted["_Themes"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Themes"].BackgroundTransparency = 1
Converted["_Themes"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Themes"].BorderSizePixel = 0
Converted["_Themes"].Position = UDim2.new(0.265017658, 0, 0.120331958, 0)
Converted["_Themes"].Selectable = false
Converted["_Themes"].Size = UDim2.new(0, 200, 0, 50)
Converted["_Themes"].Visible = false
Converted["_Themes"].Name = "Themes"
Converted["_Themes"].Parent = Converted["_SettingsFolder"]

Converted["_CGC"].Font = Enum.Font.GothamBlack
Converted["_CGC"].Text = "Custom GUI Colors: ON"
Converted["_CGC"].TextColor3 = Color3.fromRGB(170.0000050663948, 85.0000025331974, 127.00000762939453)
Converted["_CGC"].TextSize = 18
Converted["_CGC"].TextWrapped = true
Converted["_CGC"].Active = false
Converted["_CGC"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_CGC"].BackgroundTransparency = 1
Converted["_CGC"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CGC"].BorderSizePixel = 0
Converted["_CGC"].Position = UDim2.new(0.265017658, 0, 0.290456444, 0)
Converted["_CGC"].Selectable = false
Converted["_CGC"].Size = UDim2.new(0, 200, 0, 50)
Converted["_CGC"].Visible = false
Converted["_CGC"].Name = "CGC"
Converted["_CGC"].Parent = Converted["_SettingsFolder"]

Converted["_BrickAdmin"].Font = Enum.Font.GothamBlack
Converted["_BrickAdmin"].Text = "Brick Admin v3.51"
Converted["_BrickAdmin"].TextColor3 = Color3.fromRGB(170.0000050663948, 170.0000050663948, 127.00000762939453)
Converted["_BrickAdmin"].TextSize = 16
Converted["_BrickAdmin"].TextWrapped = true
Converted["_BrickAdmin"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BrickAdmin"].BackgroundTransparency = 1
Converted["_BrickAdmin"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BrickAdmin"].BorderSizePixel = 0
Converted["_BrickAdmin"].Position = UDim2.new(0.265017658, 0, 0.821576774, 0)
Converted["_BrickAdmin"].Size = UDim2.new(0, 200, 0, 50)
Converted["_BrickAdmin"].Visible = false
Converted["_BrickAdmin"].Name = "BrickAdmin"
Converted["_BrickAdmin"].Parent = Converted["_SettingsFolder"]

Converted["_ScripthubFolder"].Name = "ScripthubFolder"
Converted["_ScripthubFolder"].Parent = Converted["_MainUI"]

Converted["_Save"].Image = "rbxassetid://13538333690"
Converted["_Save"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Save"].BackgroundTransparency = 1
Converted["_Save"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Save"].BorderSizePixel = 0
Converted["_Save"].Position = UDim2.new(0.738515854, 0, 0.746887982, 0)
Converted["_Save"].Size = UDim2.new(0, 67, 0, 53)
Converted["_Save"].Name = "Save"
Converted["_Save"].Parent = Converted["_ScripthubFolder"]
Converted["_Save"].Visible = false

Converted["_Script1"].Name = "Script1"
Converted["_Script1"].Parent = Converted["_ScripthubFolder"]

Converted["_Execute1"].Font = Enum.Font.GothamBlack
Converted["_Execute1"].Text = "Execute"
Converted["_Execute1"].TextColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000762939453)
Converted["_Execute1"].TextSize = 14
Converted["_Execute1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute1"].BackgroundTransparency = 1
Converted["_Execute1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute1"].BorderSizePixel = 0
Converted["_Execute1"].Position = UDim2.new(0.227614775, 0, 0.203319505, 0)
Converted["_Execute1"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Execute1"].Visible = false
Converted["_Execute1"].Name = "Execute1"
Converted["_Execute1"].Parent = Converted["_Script1"]

Converted["_Delete1"].Font = Enum.Font.GothamBlack
Converted["_Delete1"].Text = "Delete"
Converted["_Delete1"].TextColor3 = Color3.fromRGB(85.0000025331974, 85.0000025331974, 255)
Converted["_Delete1"].TextSize = 14
Converted["_Delete1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Delete1"].BackgroundTransparency = 1
Converted["_Delete1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Delete1"].BorderSizePixel = 0
Converted["_Delete1"].Position = UDim2.new(0.633975208, 0, 0.203319505, 0)
Converted["_Delete1"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Delete1"].Visible = false
Converted["_Delete1"].Name = "Delete1"
Converted["_Delete1"].Parent = Converted["_Script1"]

Converted["_Script11"].Font = Enum.Font.GothamBlack
if not isfile("Brick-Admin/Scripts/Name1") then
Converted["_Script11"].Text = "YOUR_SCRIPT_NAME"
else
Converted["_Script11"].Text = readfile("Brick-Admin/Scripts/Name1")
end
Converted["_Script11"].TextColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_Script11"].TextSize = 14
Converted["_Script11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Script11"].BackgroundTransparency = 1
Converted["_Script11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Script11"].BorderSizePixel = 0
Converted["_Script11"].Position = UDim2.new(0.33922261, 0, 0.103734449, 0)
Converted["_Script11"].Size = UDim2.new(0, 147, 0, 32)
Converted["_Script11"].Visible = false
Converted["_Script11"].Name = "Script1"
Converted["_Script11"].Parent = Converted["_Script1"]

Converted["_Edit1"].Font = Enum.Font.GothamBlack
Converted["_Edit1"].Text = "Edit"
Converted["_Edit1"].TextColor3 = Color3.fromRGB(255, 170.0000050663948, 0)
Converted["_Edit1"].TextSize = 14
Converted["_Edit1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Edit1"].BackgroundTransparency = 1
Converted["_Edit1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Edit1"].BorderSizePixel = 0
Converted["_Edit1"].Position = UDim2.new(0.429028213, 0, 0.203319505, 0)
Converted["_Edit1"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Edit1"].Visible = false
Converted["_Edit1"].Name = "Edit1"
Converted["_Edit1"].Parent = Converted["_Script1"]

Converted["_Script2"].Name = "Script2"
Converted["_Script2"].Parent = Converted["_ScripthubFolder"]

Converted["_Execute2"].Font = Enum.Font.GothamBlack
Converted["_Execute2"].Text = "Execute"
Converted["_Execute2"].TextColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000762939453)
Converted["_Execute2"].TextSize = 14
Converted["_Execute2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute2"].BackgroundTransparency = 1
Converted["_Execute2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute2"].BorderSizePixel = 0
Converted["_Execute2"].Position = UDim2.new(0.22761479, 0, 0.377593368, 0)
Converted["_Execute2"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Execute2"].Visible = false
Converted["_Execute2"].Name = "Execute2"
Converted["_Execute2"].Parent = Converted["_Script2"]

Converted["_Delete2"].Font = Enum.Font.GothamBlack
Converted["_Delete2"].Text = "Delete"
Converted["_Delete2"].TextColor3 = Color3.fromRGB(85.0000025331974, 85.0000025331974, 255)
Converted["_Delete2"].TextSize = 14
Converted["_Delete2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Delete2"].BackgroundTransparency = 1
Converted["_Delete2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Delete2"].BorderSizePixel = 0
Converted["_Delete2"].Position = UDim2.new(0.633975208, 0, 0.377593368, 0)
Converted["_Delete2"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Delete2"].Visible = false
Converted["_Delete2"].Name = "Delete2"
Converted["_Delete2"].Parent = Converted["_Script2"]

Converted["_Script21"].Font = Enum.Font.GothamBlack
if not isfile("Brick-Admin/Scripts/Name2") then
Converted["_Script21"].Text = "YOUR_SCRIPT_NAME"
else
Converted["_Script21"].Text = readfile("Brick-Admin/Scripts/Name2")
end
Converted["_Script21"].TextColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_Script21"].TextSize = 14
Converted["_Script21"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Script21"].BackgroundTransparency = 1
Converted["_Script21"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Script21"].BorderSizePixel = 0
Converted["_Script21"].Position = UDim2.new(0.349823326, 0, 0.278008312, 0)
Converted["_Script21"].Size = UDim2.new(0, 147, 0, 32)
Converted["_Script21"].Visible = false
Converted["_Script21"].Name = "Script2"
Converted["_Script21"].Parent = Converted["_Script2"]

Converted["_Edit2"].Font = Enum.Font.GothamBlack
Converted["_Edit2"].Text = "Edit"
Converted["_Edit2"].TextColor3 = Color3.fromRGB(255, 170.0000050663948, 0)
Converted["_Edit2"].TextSize = 14
Converted["_Edit2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Edit2"].BackgroundTransparency = 1
Converted["_Edit2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Edit2"].BorderSizePixel = 0
Converted["_Edit2"].Position = UDim2.new(0.439628929, 0, 0.385892123, 0)
Converted["_Edit2"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Edit2"].Visible = false
Converted["_Edit2"].Name = "Edit2"
Converted["_Edit2"].Parent = Converted["_Script2"]

Converted["_Script3"].Name = "Script3"
Converted["_Script3"].Parent = Converted["_ScripthubFolder"]

Converted["_Execute3"].Font = Enum.Font.GothamBlack
Converted["_Execute3"].Text = "Execute"
Converted["_Execute3"].TextColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000762939453)
Converted["_Execute3"].TextSize = 14
Converted["_Execute3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute3"].BackgroundTransparency = 1
Converted["_Execute3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute3"].BorderSizePixel = 0
Converted["_Execute3"].Position = UDim2.new(0.20994693, 0, 0.564315379, 0)
Converted["_Execute3"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Execute3"].Visible = false
Converted["_Execute3"].Name = "Execute3"
Converted["_Execute3"].Parent = Converted["_Script3"]

Converted["_Delete3"].Font = Enum.Font.GothamBlack
Converted["_Delete3"].Text = "Delete"
Converted["_Delete3"].TextColor3 = Color3.fromRGB(85.0000025331974, 85.0000025331974, 255)
Converted["_Delete3"].TextSize = 14
Converted["_Delete3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Delete3"].BackgroundTransparency = 1
Converted["_Delete3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Delete3"].BorderSizePixel = 0
Converted["_Delete3"].Position = UDim2.new(0.633975208, 0, 0.564315379, 0)
Converted["_Delete3"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Delete3"].Visible = false
Converted["_Delete3"].Name = "Delete3"
Converted["_Delete3"].Parent = Converted["_Script3"]

Converted["_Script31"].Font = Enum.Font.GothamBlack
if not isfile("Brick-Admin/Scripts/Name3") then
Converted["_Script31"].Text = "YOUR_SCRIPT"
else
Converted["_Script31"].Text = readfile("Brick-Admin/Scripts/Name3")
end
Converted["_Script31"].TextColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_Script31"].TextSize = 14
Converted["_Script31"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Script31"].BackgroundTransparency = 1
Converted["_Script31"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Script31"].BorderSizePixel = 0
Converted["_Script31"].Position = UDim2.new(0.346289754, 0, 0.460580945, 0)
Converted["_Script31"].Size = UDim2.new(0, 147, 0, 32)
Converted["_Script31"].Visible = false
Converted["_Script31"].Name = "Script3"
Converted["_Script31"].Parent = Converted["_Script3"]

Converted["_Edit3"].Font = Enum.Font.GothamBlack
Converted["_Edit3"].Text = "Edit"
Converted["_Edit3"].TextColor3 = Color3.fromRGB(255, 170.0000050663948, 0)
Converted["_Edit3"].TextSize = 14
Converted["_Edit3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Edit3"].BackgroundTransparency = 1
Converted["_Edit3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Edit3"].BorderSizePixel = 0
Converted["_Edit3"].Position = UDim2.new(0.436095357, 0, 0.564315379, 0)
Converted["_Edit3"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Edit3"].Visible = false
Converted["_Edit3"].Name = "Edit3"
Converted["_Edit3"].Parent = Converted["_Script3"]

Converted["_Script4"].Name = "Script4"
Converted["_Script4"].Parent = Converted["_ScripthubFolder"]

Converted["_Execute4"].Font = Enum.Font.GothamBlack
Converted["_Execute4"].Text = "Execute"
Converted["_Execute4"].TextColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000762939453)
Converted["_Execute4"].TextSize = 14
Converted["_Execute4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute4"].BackgroundTransparency = 1
Converted["_Execute4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute4"].BorderSizePixel = 0
Converted["_Execute4"].Position = UDim2.new(0.20994693, 0, 0.73443985, 0)
Converted["_Execute4"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Execute4"].Visible = false
Converted["_Execute4"].Name = "Execute4"
Converted["_Execute4"].Parent = Converted["_Script4"]

Converted["_Delete4"].Font = Enum.Font.GothamBlack
Converted["_Delete4"].Text = "Delete"
Converted["_Delete4"].TextColor3 = Color3.fromRGB(85.0000025331974, 85.0000025331974, 255)
Converted["_Delete4"].TextSize = 14
Converted["_Delete4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Delete4"].BackgroundTransparency = 1
Converted["_Delete4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Delete4"].BorderSizePixel = 0
Converted["_Delete4"].Position = UDim2.new(0.633975267, 0, 0.73443985, 0)
Converted["_Delete4"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Delete4"].Visible = false
Converted["_Delete4"].Name = "Delete4"
Converted["_Delete4"].Parent = Converted["_Script4"]

Converted["_Script41"].Font = Enum.Font.GothamBlack
if not isfile("Brick-Admin/Scripts/Name4") then
Converted["_Script41"].Text = "YOUR_SCRIPT"
else
Converted["_Script41"].Text = readfile("Brick-Admin/Scripts/Name4")
end
Converted["_Script41"].TextColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_Script41"].TextSize = 14
Converted["_Script41"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Script41"].BackgroundTransparency = 1
Converted["_Script41"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Script41"].BorderSizePixel = 0
Converted["_Script41"].Position = UDim2.new(0.342756182, 0, 0.634854794, 0)
Converted["_Script41"].Size = UDim2.new(0, 147, 0, 32)
Converted["_Script41"].Visible = false
Converted["_Script41"].Name = "Script4"
Converted["_Script41"].Parent = Converted["_Script4"]

Converted["_Edit4"].Font = Enum.Font.GothamBlack
Converted["_Edit4"].Text = "Edit"
Converted["_Edit4"].TextColor3 = Color3.fromRGB(255, 170.0000050663948, 0)
Converted["_Edit4"].TextSize = 14
Converted["_Edit4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Edit4"].BackgroundTransparency = 1
Converted["_Edit4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Edit4"].BorderSizePixel = 0
Converted["_Edit4"].Position = UDim2.new(0.436095357, 0, 0.73443985, 0)
Converted["_Edit4"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Edit4"].Visible = false
Converted["_Edit4"].Name = "Edit4"
Converted["_Edit4"].Parent = Converted["_Script4"]

Converted["_Script5"].Name = "Script5"
Converted["_Script5"].Parent = Converted["_ScripthubFolder"]

Converted["_Execute5"].Font = Enum.Font.GothamBlack
Converted["_Execute5"].Text = "Execute"
Converted["_Execute5"].TextColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000762939453)
Converted["_Execute5"].TextSize = 14
Converted["_Execute5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute5"].BackgroundTransparency = 1
Converted["_Execute5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute5"].BorderSizePixel = 0
Converted["_Execute5"].Position = UDim2.new(0.20994693, 0, 0.908713698, 0)
Converted["_Execute5"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Execute5"].Visible = false
Converted["_Execute5"].Name = "Execute5"
Converted["_Execute5"].Parent = Converted["_Script5"]

Converted["_Delete5"].Font = Enum.Font.GothamBlack
Converted["_Delete5"].Text = "Delete"
Converted["_Delete5"].TextColor3 = Color3.fromRGB(85.0000025331974, 85.0000025331974, 255)
Converted["_Delete5"].TextSize = 14
Converted["_Delete5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Delete5"].BackgroundTransparency = 1
Converted["_Delete5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Delete5"].BorderSizePixel = 0
Converted["_Delete5"].Position = UDim2.new(0.633975267, 0, 0.908713698, 0)
Converted["_Delete5"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Delete5"].Visible = false
Converted["_Delete5"].Name = "Delete5"
Converted["_Delete5"].Parent = Converted["_Script5"]

Converted["_Script51"].Font = Enum.Font.GothamBlack
if not isfile("Brick-Admin/Scripts/Name5") then
Converted["_Script51"].Text = "YOUR_SCRIPT"
else
Converted["_Script51"].Text = readfile("Brick-Admin/Scripts/Name5")
end
Converted["_Script51"].TextColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_Script51"].TextSize = 14
Converted["_Script51"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Script51"].BackgroundTransparency = 1
Converted["_Script51"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Script51"].BorderSizePixel = 0
Converted["_Script51"].Position = UDim2.new(0.349823326, 0, 0.809128642, 0)
Converted["_Script51"].Size = UDim2.new(0, 147, 0, 32)
Converted["_Script51"].Visible = false
Converted["_Script51"].Name = "Script5"
Converted["_Script51"].Parent = Converted["_Script5"]

Converted["_Edit5"].Font = Enum.Font.GothamBlack
Converted["_Edit5"].Text = "Edit"
Converted["_Edit5"].TextColor3 = Color3.fromRGB(255, 170.0000050663948, 0)
Converted["_Edit5"].TextSize = 14
Converted["_Edit5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Edit5"].BackgroundTransparency = 1
Converted["_Edit5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Edit5"].BorderSizePixel = 0
Converted["_Edit5"].Position = UDim2.new(0.429028213, 0, 0.908713698, 0)
Converted["_Edit5"].Size = UDim2.new(0, 92, 0, 18)
Converted["_Edit5"].Visible = false
Converted["_Edit5"].Name = "Edit5"
Converted["_Edit5"].Parent = Converted["_Script5"]

Converted["_ScripthubImage"].Image = "rbxassetid://13056301191"
Converted["_ScripthubImage"].ImageColor3 = Color3.fromRGB(85.0000025331974, 170.0000050663948, 255)
Converted["_ScripthubImage"].Active = false
Converted["_ScripthubImage"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ScripthubImage"].BackgroundTransparency = 1
Converted["_ScripthubImage"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScripthubImage"].BorderSizePixel = 0
Converted["_ScripthubImage"].Position = UDim2.new(0.547999978, 0, 0.00800000038, 0)
Converted["_ScripthubImage"].Selectable = false
Converted["_ScripthubImage"].Size = UDim2.new(0, 25, 0, 25)
Converted["_ScripthubImage"].Visible = false
Converted["_ScripthubImage"].Name = "ScripthubImage"
Converted["_ScripthubImage"].Parent = Converted["_ScripthubFolder"]

Converted["_ScriptCodeBox"].CursorPosition = -1
Converted["_ScriptCodeBox"].Font = Enum.Font.GothamBlack
Converted["_ScriptCodeBox"].PlaceholderText = "Enter script code.."
Converted["_ScriptCodeBox"].Text = ""
Converted["_ScriptCodeBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScriptCodeBox"].TextScaled = true
Converted["_ScriptCodeBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ScriptCodeBox"].BackgroundTransparency = 1
Converted["_ScriptCodeBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScriptCodeBox"].BorderSizePixel = 0
Converted["_ScriptCodeBox"].Position = UDim2.new(0.314487636, 0, 0.323651463, 0)
Converted["_ScriptCodeBox"].Size = UDim2.new(0, 172, 0, 120)
Converted["_ScriptCodeBox"].Visible = false
Converted["_ScriptCodeBox"].Name = "ScriptCodeBox"
Converted["_ScriptCodeBox"].Parent = Converted["_ScripthubFolder"]
Converted["_ScriptCodeBox"].ClearTextOnFocus = false


Converted["_ScriptNameBox"].CursorPosition = -1
Converted["_ScriptNameBox"].Font = Enum.Font.GothamBlack
Converted["_ScriptNameBox"].PlaceholderText = "Script name"
Converted["_ScriptNameBox"].Text = ""
Converted["_ScriptNameBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScriptNameBox"].TextSize = 14
Converted["_ScriptNameBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ScriptNameBox"].BackgroundTransparency = 1
Converted["_ScriptNameBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScriptNameBox"].BorderSizePixel = 0
Converted["_ScriptNameBox"].Position = UDim2.new(0.346289754, 0, 0.149377599, 0)
Converted["_ScriptNameBox"].Size = UDim2.new(0, 141, 0, 38)
Converted["_ScriptNameBox"].Visible = false
Converted["_ScriptNameBox"].Name = "ScriptNameBox"
Converted["_ScriptNameBox"].Parent = Converted["_ScripthubFolder"]
Converted["_ScriptNameBox"].ClearTextOnFocus = false
Converted["_MainFolder"].Name = "MainFolder"
Converted["_MainFolder"].Parent = Converted["_MainUI"]

Converted["_scrollingFrame"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_scrollingFrame"].Active = true
Converted["_scrollingFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_scrollingFrame"].BackgroundTransparency = 1
Converted["_scrollingFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_scrollingFrame"].BorderSizePixel = 0
Converted["_scrollingFrame"].Position = UDim2.new(0.26855123, 0, 0.203319505, 0)
Converted["_scrollingFrame"].Size = UDim2.new(0, 198, 0, 126)
Converted["_scrollingFrame"].Visible = false
Converted["_scrollingFrame"].Name = "scrollingFrame"
Converted["_scrollingFrame"].Parent = Converted["_MainFolder"]

Converted["_textBox"].CursorPosition = -1
Converted["_textBox"].Font = Enum.Font.GothamBlack
Converted["_textBox"].PlaceholderText = "Type something..."
Converted["_textBox"].Text = ""
Converted["_textBox"].TextColor3 = randomColor
Converted["_textBox"].TextSize = 17
Converted["_textBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_textBox"].BackgroundTransparency = 1
Converted["_textBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_textBox"].BorderSizePixel = 0
Converted["_textBox"].Position = UDim2.new(0.240282685, 0, 0.755186737, 0)
Converted["_textBox"].Size = UDim2.new(0, 200, 0, 50)
Converted["_textBox"].Visible = false
Converted["_textBox"].Name = "textBox"
Converted["_textBox"].Parent = Converted["_MainFolder"]

Converted["_Main1"].Image = "rbxassetid://12974370712"
Converted["_Main1"].Active = false
Converted["_Main1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Main1"].BackgroundTransparency = 1
Converted["_Main1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main1"].BorderSizePixel = 0
Converted["_Main1"].Position = UDim2.new(0.547999978, 0, 0.00800000038, 0)
Converted["_Main1"].Selectable = false
Converted["_Main1"].Size = UDim2.new(0, 25, 0, 25)
Converted["_Main1"].Visible = false
Converted["_Main1"].Name = "Main"
Converted["_Main1"].Parent = Converted["_MainFolder"]

Converted["_ChatFolder"].Name = "ChatFolder"
Converted["_ChatFolder"].Parent = Converted["_MainUI"]

Converted["_Chat1"].Image = "rbxassetid://12966824678"
Converted["_Chat1"].ImageColor3 = Color3.fromRGB(255, 240.0000160932541, 29.000002071261406)
Converted["_Chat1"].Active = false
Converted["_Chat1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Chat1"].BackgroundTransparency = 1
Converted["_Chat1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Chat1"].BorderSizePixel = 0
Converted["_Chat1"].Position = UDim2.new(0.547999978, 0, 0.00800000038, 0)
Converted["_Chat1"].Selectable = false
Converted["_Chat1"].Size = UDim2.new(0, 25, 0, 25)
Converted["_Chat1"].Visible = false
Converted["_Chat1"].Name = "Chat"
Converted["_Chat1"].Parent = Converted["_ChatFolder"]

Converted["_DownloadButton"].Image = "rbxassetid://11295288311"
Converted["_DownloadButton"].ImageColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000762939453)
Converted["_DownloadButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DownloadButton"].BackgroundTransparency = 1
Converted["_DownloadButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DownloadButton"].BorderSizePixel = 0
Converted["_DownloadButton"].Position = UDim2.new(0.530035317, 0, 0.153526977, 0)
Converted["_DownloadButton"].Size = UDim2.new(0, 35, 0, 35)
Converted["_DownloadButton"].Visible = false
Converted["_DownloadButton"].Name = "DownloadButton"
Converted["_DownloadButton"].Parent = Converted["_ChatFolder"]

Converted["_CopyButton"].Image = "rbxassetid://11432858485"
Converted["_CopyButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_CopyButton"].BackgroundTransparency = 1
Converted["_CopyButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CopyButton"].BorderSizePixel = 0
Converted["_CopyButton"].Position = UDim2.new(0.533568859, 0, 0.780083001, 0)
Converted["_CopyButton"].Size = UDim2.new(0, 35, 0, 35)
Converted["_CopyButton"].Visible = false
Converted["_CopyButton"].Name = "CopyButton"
Converted["_CopyButton"].Parent = Converted["_ChatFolder"]

Converted["_TXTFile"].Image = "rbxassetid://12967465470"
Converted["_TXTFile"].ImageColor3 = Color3.fromRGB(170.0000050663948, 170.0000050663948, 127.00000762939453)
Converted["_TXTFile"].Active = true
Converted["_TXTFile"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TXTFile"].BackgroundTransparency = 1
Converted["_TXTFile"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TXTFile"].BorderSizePixel = 0
Converted["_TXTFile"].Position = UDim2.new(0.533568859, 0, 0.331950217, 0)
Converted["_TXTFile"].Selectable = true
Converted["_TXTFile"].Size = UDim2.new(0, 35, 0, 35)
Converted["_TXTFile"].Visible = false
Converted["_TXTFile"].Name = "TXTFile"
Converted["_TXTFile"].Parent = Converted["_ChatFolder"]

Converted["_Minimize"].BackgroundTransparency = 1
Converted["_Minimize"].BackgroundColor3 = Color3.fromRGB(150, 25, 25)
Converted["_Minimize"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Minimize"].Text = "-"
Converted["_Minimize"].TextScaled = true
Converted["_Minimize"].Size = UDim2.new(0, 29, 0, 28)
Converted["_Minimize"].Position = UDim2.new(0.22399302, 0, 0.00414937781, 0)
Converted["_Minimize"].Parent = Converted["_MainUI"]
Converted["_Minimize"].BorderSizePixel = 0

Converted['_Home'].MouseButton1Click:Connect(function()
tweenservice:Create(Converted["_MainUI"], info2, goals2):Play()
task.wait(0.35)
for _, child2 in ipairs(Converted['_MainUI']:GetDescendants()) do
      if not child2:IsA("UICorner") and not child2:IsA("Folder") and not child2:IsA("UIListLayout") then
      child2.Visible = false
      end
    end
for _, child in ipairs(Converted['_HomeFolder']:GetDescendants()) do
      child.Visible = true
      
    end
for _, child in ipairs(Converted['_ImagesContainer']:GetDescendants()) do
      child.Visible = true
    end
for _, child in ipairs(Converted['_Lines']:GetDescendants()) do
      child.Visible = true
    end
  end)
Converted['_Scripthub'].MouseButton1Click:Connect(function()
    tweenservice:Create(Converted["_MainUI"], info2, goals2):Play()
--Hello there, code viewer.
task.wait(0.35)
for _, child2 in ipairs(Converted['_MainUI']:GetDescendants()) do
      if not child2:IsA("UICorner") and not child2:IsA("Folder") and not child2:IsA("UIListLayout") then
      child2.Visible = false
      end
    end
for _, child in ipairs(Converted['_ScripthubFolder']:GetDescendants()) do
      if not child:IsA("Folder") then
       child.Visible = true

      end
      Converted["_ScriptCodeBox"].Visible = false
       Converted["_ScriptNameBox"].Visible = false
       Converted["_Save"].Visible = false
    end
for _, child in ipairs(Converted['_ImagesContainer']:GetDescendants()) do
      child.Visible = true
    end
for _, child in ipairs(Converted['_Lines']:GetDescendants()) do
      child.Visible = true
    end
  end)
Converted['_Edit'].MouseButton1Click:Connect(function()
tweenservice:Create(Converted["_MainUI"], info2, goals2):Play()
--Hello there, code viewer.
for _, child2 in ipairs(Converted['_MainUI']:GetDescendants()) do
      if not child2:IsA("UICorner") and not child2:IsA("Folder") and not child2:IsA("UIListLayout") then
      child2.Visible = false
      end
    end
for _, child in ipairs(Converted['_SettingsFolder']:GetDescendants()) do
      if not child:IsA("Folder") then
       child.Visible = true

      end
    end
for _, child in ipairs(Converted['_ImagesContainer']:GetDescendants()) do
      child.Visible = true
    end
for _, child in ipairs(Converted['_Lines']:GetDescendants()) do
      child.Visible = true
    end
  end)

Converted["_Execute1"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/Scripts/Script1") then
code1 = readfile("Brick-Admin/Scripts/Script1")
if not code == "" or "nil" then
loadstring(code1)()
end
end
end)
Converted["_Execute2"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/Scripts/Scripy2") then
code2 = readfile("Brick-Admin/Scripts/Script2")
if not code == "" or "nil" then
loadstring(code2)()
end
end
end)
Converted["_Execute3"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/Scripts/Script3") then
code3 = readfile("Brick-Admin/Scripts/Script3")
loadstring(code3)()
end
end)
Converted["_Execute4"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/Scripts/Script4") then
code4 = readfile("Brick-Admin/Scripts/Script4")
loadstring(code4)()
end
end)
Converted["_Execute5"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/Scripts/Script5") then
code5 = readfile("Brick-Admin/Scripts/Script5")
loadstring(code5)()
end
end)
Converted["_Edit1"].MouseButton1Click:Connect(function()
Converted["_ScriptNameBox"].Visible = true
Converted["_ScriptCodeBox"].Visible = true
Converted["_Save"].Visible = true
local coder = readfile("Brick-Admin/Scripts/Script1")
Converted["_ScriptCodeBox"].Text = coder
Converted["_ScriptNameBox"].Text = readfile("Brick-Admin/Scripts/Name1")
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = false
end
end
Converted["_Save"].MouseButton1Click:Connect(function()
writefile("Brick-Admin/Scripts/Script1", Converted["_ScriptCodeBox"].Text)
writefile("Brick-Admin/Scripts/Name1", Converted["_ScriptNameBox"].Text)

for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = true
    
end
end
Converted["_Save"].Visible = false 
Converted["_ScriptCodeBox"].Text = ""
Converted["_ScriptCodeBox"].Visible = false
Converted["_ScriptNameBox"].Visible = false
Converted["_Script11"].Text = readfile("Brick-Admin/Scripts/Name1")
end)
end)
Converted["_Edit2"].MouseButton1Click:Connect(function()
Converted["_ScriptNameBox"].Visible = true
Converted["_ScriptCodeBox"].Visible = true
Converted["_Save"].Visible = true
if isfile("Brick-Admin/Scripts/Script2") then
local coder = readfile("Brick-Admin/Scripts/Script2")
Converted["_ScriptCodeBox"].Text = coder
end
Converted["_ScriptNameBox"].Text = Converted["_Script21"].Text
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = false
end
end
Converted["_Save"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/Scripts/Script2") then
writefile("Brick-Admin/Scripts/Script2", Converted["_ScriptCodeBox"].Text)
else
writefile("Brick-Admin/Scripts/Script2", Converted["_ScriptCodeBox"].Text)
end
if isfile("Brick-Admin/Scripts/Name2") then
writefile("Brick-Admin/Scripts/Name2", Converted["_ScriptNameBox"].Text)
else
writefile("Brick-Admin/Scripts/Name2", Converted["_ScriptNameBox"].Text)
end
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = true
    
end
end
Converted["_Save"].Visible = false Converted["_ScriptCodeBox"].Text = ""
Converted["_ScriptCodeBox"].Visible = false
Converted["_ScriptNameBox"].Visible = false
Converted["_Script21"].Text = readfile("Brick-Admin/Scripts/Name2")
end)
end)

Converted["_Edit3"].MouseButton1Click:Connect(function()
Converted["_ScriptNameBox"].Visible = true
Converted["_ScriptCodeBox"].Visible = true
Converted["_Save"].Visible = true
if isfile("Brick-Admin/Scripts/Script3") then
local coder = readfile("Brick-Admin/Scripts/Script3")
Converted["_ScriptCodeBox"].Text = coder
end
Converted["_ScriptNameBox"].Text = Converted["_Script31"].Text
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = false
end
end
Converted["_Save"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/Scripts/Script3") then
delfile("Brick-Admin/script1")
writefile("Brick-Admin/Scripts/Script3", Converted["_ScriptCodeBox"].Text)
else
writefile("Brick-Admin/Scripts/Script3", Converted["_ScriptCodeBox"].Text)
end
if isfile("Brick-Admin/Scripts/Name3") then
delfile("Brick-Admin/Scripts/Name3")
writefile("Brick-Admin/Scripts/Name3", Converted["_ScriptNameBox"].Text)
else
writefile("Brick-Admin/Scripts/Name3", Converted["_ScriptNameBox"].Text)
end
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = true
    
end
end
Converted["_Save"].Visible = false Converted["_ScriptCodeBox"].Text = ""
Converted["_ScriptCodeBox"].Visible = false
Converted["_ScriptNameBox"].Visible = false
Converted["_Script31"].Text = readfile("Brick-Admin/Scripts/Name3")
end)
end)

Converted["_Edit4"].MouseButton1Click:Connect(function()
Converted["_ScriptNameBox"].Visible = true
Converted["_ScriptCodeBox"].Visible = true
Converted["_Save"].Visible = true
if isfile("Brick-Admin/script4") then
local coder = readfile("Brick-Admin/script4")
Converted["_ScriptCodeBox"].Text = coder
end
Converted["_ScriptNameBox"].Text = Converted["_Script41"].Text
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = false
end
end
Converted["_Save"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/script4") then
delfile("Brick-Admin/script1")
writefile("Brick-Admin/script4", Converted["_ScriptCodeBox"].Text)
else
writefile("Brick-Admin/script4", Converted["_ScriptCodeBox"].Text)
end
if isfile("Brick-Admin/Scripts/Name4") then
delfile("Brick-Admin/Scripts/Name4")
writefile("Brick-Admin/Scripts/Name4", Converted["_ScriptNameBox"].Text)
else
writefile("Brick-Admin/Scripts/Name4", Converted["_ScriptNameBox"].Text)
end
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = true
    
end
end
Converted["_Save"].Visible = false Converted["_ScriptCodeBox"].Text = ""
Converted["_ScriptCodeBox"].Visible = false
Converted["_ScriptNameBox"].Visible = false
Converted["_Script41"].Text = readfile("Brick-Admin/Scripts/Name4")
end)
end)

Converted["_Edit5"].MouseButton1Click:Connect(function()
Converted["_ScriptNameBox"].Visible = true
Converted["_ScriptCodeBox"].Visible = true
Converted["_Save"].Visible = true
if isfile("Brick-Admin/Scripts/Script5") then
local coder = readfile("Brick-Admin/Scripts/Script5")
Converted["_ScriptCodeBox"].Text = coder
end
Converted["_ScriptNameBox"].Text = Converted["_Script51"].Text
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = false
end
end
Converted["_Save"].MouseButton1Click:Connect(function()
if isfile("Brick-Admin/Scripts/Script5") then
delfile("Brick-Admin/script1")
writefile("Brick-Admin/Scripts/Script5", Converted["_ScriptCodeBox"].Text)
else
writefile("Brick-Admin/Scripts/Script5", Converted["_ScriptCodeBox"].Text)
end
if isfile("Brick-Admin/Scripts/Name5") then
delfile("Brick-Admin/Scripts/Name5")
writefile("Brick-Admin/Scripts/Name5", Converted["_ScriptNameBox"].Text)
else
writefile("Brick-Admin/Scripts/Name5", Converted["_ScriptNameBox"].Text)
end
for _, child in ipairs(Converted["_ScripthubFolder"]:GetDescendants()) do
if child:IsA("TextButton") or child:IsA("TextLabel") then
child.Visible = true
    
end
end
Converted["_Save"].Visible = false Converted["_ScriptCodeBox"].Text = ""
Converted["_ScriptCodeBox"].Visible = false
Converted["_ScriptNameBox"].Visible = false
Converted["_Script51"].Text = readfile("Brick-Admin/Scripts/Name5")
end)
end)

local chatlog = ""
local chatEnabled = false

local function logchat()
    if game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") then
        local onClientEvent = game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent

        if onClientEvent then
            chatEnabled = true
            cl = "Chatlog, spam, copyall, and copy player enabled using default chat."
            onClientEvent:Connect(function(chatMsg)
                chatlog = chatlog .. string.format("[%s]: %s \nSpeaker ID: %d\nChannel: %s\n", chatMsg.FromSpeaker, chatMsg.Message, chatMsg.SpeakerUserId, tostring(chatMsg.OriginalChannel))
            end)
        end
    else
        chatEnabled = false
        cl = "Game uses TextChatService. Chatlog, spam, copyall, and copy player enabled using TextChatService."
    end

    if not chatEnabled then -- If the game uses TextChatService
        TextChatService.MessageReceived:Connect(function(chatMsg)
        if chatMsg.TextSource then
    chatlog = chatlog .. string.format(
        "[%s]: %s \nSpeaker ID: %d\nChannel: %s\n",
        tostring(chatMsg.TextSource),
        chatMsg.Text,
        chatMsg.TextSource.UserId,
        chatMsg.TextChannel.Name:gsub("RBXGeneral", "RBXGeneral aka All")
    )
    else
    chatlog = chatlog .. string.format(
        "[%s]: %s \nSpeaker ID: %s\nChannel: %s\n",
        tostring(chatMsg.TextSource),
        chatMsg.Text,
        "No Speaker ID Found.",
        chatMsg.TextChannel.Name:gsub("RBXGeneral", "RBXGeneral aka All")
    )
    end
end)
    end
end

logchat()



Converted["_Close"].MouseButton1Click:Connect(function()
    Converted["_MainGui"]:Destroy()
    getgenv().BrickAdminRunning = false
    isAnnoy = false
    isSit = false
    isCopy = false
    isSpam = false
    isFollow = false
    isLog = false
    applyHooks3(gravity)
  end)
Converted["_Chat"].MouseButton1Click:Connect(function()
  tweenservice:Create(Converted["_MainUI"], info2, goals2):Play()
--Hello there, code viewer.
	for _, child2 in ipairs(Converted['_MainUI']:GetDescendants()) do
      if not child2:IsA("UICorner") and not child2:IsA("Folder") and not child2:IsA("UIListLayout") then
      child2.Visible = false
      end
    end
for _, child in ipairs(Converted['_ImagesContainer']:GetDescendants()) do
      child.Visible = true
    end
for _, child in ipairs(Converted['_Lines']:GetDescendants()) do
      child.Visible = true
    end
	for _, child in ipairs(Converted["_ChatFolder"]:GetChildren()) do
		child.Visible = true
	end
end)
Converted["_DownloadButton"].MouseButton1Click:Connect(function()
local pathAndDate = "Brick-Admin/"..date.hour..":"..date.min.." "..date.day.." "..date.month.." "..date.year
		writefile(pathAndDate..".txt", tostring(chatlog))
end)
Converted["_CopyButton"].MouseButton1Click:Connect(function()
	setclipboard(tostring(chatlog))
end)
Converted["_Main"].MouseButton1Click:Connect(function()
tweenservice:Create(Converted["_MainUI"], info2, goals2):Play()
--Hello there, code viewer.

for _, child2 in ipairs(Converted['_MainUI']:GetDescendants()) do
      if not child2:IsA("UICorner") and not child2:IsA("Folder") and not child2:IsA("UIListLayout") then
      child2.Visible = false
      end
    end
for _, child in ipairs(Converted['_ImagesContainer']:GetDescendants()) do
      child.Visible = true
    end
for _, child in ipairs(Converted['_Lines']:GetDescendants()) do
      child.Visible = true
    end
	for _, child in ipairs(Converted["_MainFolder"]:GetChildren()) do
		child.Visible = true
	end
for _, msg in ipairs(Converted["_MainUI"]:GetDescendants()) do
if msg.Name == "messageLabel" then
msg.Visible = true
end
end
end)
local textBox = Converted["_textBox"]
local scrollingFrame = Converted["_scrollingFrame"]

local listLayout = Instance.new("UIListLayout")
listLayout.Parent = Converted["_scrollingFrame"]
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 5)

local function makemsg(message)

	messageLabel = Instance.new("TextButton")
	messageLabel.Size = UDim2.new(1, 0, 0, 20)
	messageLabel.BackgroundTransparency = 1
	messageLabel.Text = message
	messageLabel.TextColor3 = randomColor

	messageLabel.TextScaled = true
	messageLabel.Font = Enum.Font.Gotham
	messageLabel.TextTransparency = 0
	messageLabel.TextWrapped = true
	messageLabel.LayoutOrder = #scrollingFrame:GetChildren()
	messageLabel.Parent = Converted["_scrollingFrame"]
	messageLabel.Name = "messageLabel"
	Converted["_scrollingFrame"].CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
	messageLabel.MouseButton1Click:Connect(function()
	setclipboard(tostring(messageLabel.Text))
	end)
end
local function sendMessage()
	local message = textBox.Text
	textBox.Text = textBox.Text:lower()
	if message ~= "" then
		makemsg(message)
		textBox.Text = ""
		textBox:ReleaseFocus()
	end
end
if not isfile("Brick-Admin/Prefix") then
    makemsg("Type in a prefix!")
    repeat
        task.wait()
    until textBox.FocusLost and textBox.Text ~= ""
    prefix = textBox.Text:sub(1, 1)
    makemsg("Prefix is [" .. prefix .. "]")
    writefile("Brick-Admin/Prefix", prefix)
end

textBox.FocusLost:Connect(sendMessage)
repeat task.wait() until prefix
--MAIN THEME PROPERTIES
Converted["_Theme"].Parent = Converted["_MainGui"]
Converted["_Theme"].BackgroundTransparency = 1
Converted["_Theme"].ImageTransparency = 0.75
--END
RunService.RenderStepped:Connect(function()
if isfile("Brick-Admin/Theme") and themes then
Converted["_Theme"].Image = getcustomasset("Brick-Admin/Theme")
Converted["_Theme"].Size = Converted["_MainUI"].Size
Converted["_Theme"].Position = Converted["_MainUI"].Position
elseif not themes then
Converted["_Theme"].Visible = false
end
end)
if isfile("Brick-Admin/Prefix") then
p = readfile("Brick-Admin/Prefix")
prefix = p:sub(1, 1)
end
textBox.FocusLost:Connect(function()
if welcomemsg == game:GetService("Players").LocalPlayer.DisplayName then
Converted["_DisplayOrName"].Text = "Show username/display on startup: display"
elseif welcomemsg == game:GetService("Players").LocalPlayer.Name then
Converted["_DisplayOrName"].Text = "Show username/display on startup: username"
else
Converted["_DisplayOrName"].Text = "Show username/display on startup: Unknown"
end
if themes then
Converted["_Themes"].Text = "Themes: ON"
else
Converted["_Themes"].Text = "Themes: OFF"
end
Converted["_Theme"].Visible = themes
end)

Converted["_Themes"].MouseButton1Click:Connect(function()
    if isfile("Brick-Admin/Settings") then
        local set = readfile("Brick-Admin/Settings")
        
        if set:find("Themes: ON") then
           themes = false
            set = set:gsub("Themes: ON", "Themes: OFF")
        elseif set:find("Themes: OFF") then
            themes = true
            set = set:gsub("Themes: OFF", "Themes: ON")
        end
        
        writefile("Brick-Admin/Settings", set)
    end
end)


Converted["_CGC"].MouseButton1Click:Connect(function()
    if isfile("Brick-Admin/Settings") then
        local set = readfile("Brick-Admin/Settings")
        if set:find("CGC: ON") then
           Converted["_CGC"].Text = "Custom Gui Colors: OFF"
            cgc = false
            set = set:gsub("CGC: ON", "CGC: OFF")
            randomColor = Color3.fromHex("ffffff")
            for _, child in ipairs(Converted["_MainUI"]:GetDescendants()) do
                if child:IsA("TextLabel") or child:IsA("TextBox") then
                    child.TextColor3 = randomColor
                end
            end
        elseif set:find("CGC: OFF") then
            Converted["_CGC"].Text = "Custom Gui Colors: ON"
            cgc = true
            set = set:gsub("CGC: OFF", "CGC: ON")
            
            if isfile("Brick-Admin/Color") then
                local file = readfile("Brick-Admin/Color")
    if file then
        color = Color3.fromHex(file)
    end
                
                for _, child in ipairs(Converted["_MainUI"]:GetDescendants()) do
                    if child:IsA("TextLabel") or child:IsA("TextBox") then
                        child.TextColor3 = color
                    end
                end
            end
        end
        
        writefile("Brick-Admin/Settings", set)
    end
end)
Converted["_DisplayOrName"].MouseButton1Click:Connect(function()
    if isfile("Brick-Admin/Settings") then
        local set = readfile("Brick-Admin/Settings")
        
        if set:find("UOD: D") then
            welcomemsg = game:GetService("Players").LocalPlayer.Name
            set = set:gsub("UOD: D", "UOD: U")
        elseif set:find("UOD: U") then
            welcomemsg = game:GetService("Players").LocalPlayer.DisplayName
            set = set:gsub("UOD: U", "UOD: D")
        end
        
        writefile("Brick-Admin/Settings", set)
    end
end)

if isfolder("Nameless-Admin") then
makemsg("Hello there nameless admin user!")
end


textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 5) == prefix.."cmds" then
		local cmds = "goto, void, dex, annoy, whois, infjump, gravity <num>, speed <num>, jump <num>, antivoid  mute, unmute, prefix <char>, notify <time> <message>, print <msg>, plrlog, unplrlog, hs <plr>, unhs, walkto <plr>, camoffset <XYZ>, float <num>, match <plr>, copypos <plr>, copycf <plr>, info <cmd>, boom <plr>, copyall, copy <plr>, day, night, userid <plr>, rizzup <plr> stats <plr>, time <num, gameid, bright <num>, testiq <plr>, hownbad <plr>, hownice <plr>, howskid <plr>, spin <num>,  compliment <plr>, follow <plr>, re, rj, view <plr>, spam <msg>, unspam, clear, $sudo delete, $sudo favorite,  unfavorite, favorites, cslogs, uncslogs, instances, mml <int> (max message linit)"
		makemsg(cmds)
		if not isfile("Brick-Admin/Commands.txt") then
		writefile("Brick-Admin/Commands.txt", cmds)
		alert("File saved in Brick-Admin folder!")
		else
		alert("You already have the commands downloaded as Commands.txt in the brick admin folder.", 5)
		end
	end
end)

str = "[[\nBrick Admin running info \nGame:\n"..getGameName().."\nDescription:\n"..MarketplaceService:GetProductInfo(game.PlaceId).Description.."\n"..cl.."\nBrick admin loaded in " .. string.format("%.2f", tick() - startuptime) .. " seconds!\n--]]"
if not alreadyrunning then
print(str)
end

writefile("Brick-Admin/LastRunInfo", "--"..str)

textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 5) == prefix.."void" then
	local time = tonumber(textBox.Text:sub(7))
	if not time then
	time = 3
	end
		void(time)
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 6) == prefix.."whois" then
		local playerName = string.sub(textBox.Text, 8)

		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			local displayName = targetPlayer.DisplayName
			local username = targetPlayer.Name
			local userId = targetPlayer.UserId
			local age = targetPlayer.AccountAge or "N/A"
			local team = targetPlayer.Team or "N/A"
			local teamcolor = targetPlayer.TeamColor or "N/A"
			local ju = targetPlayer.AutoJumpEnabled or "N/A"
			local rs = targetPlayer.RespawnLocation or "N/A"
			local siet = targetPlayer.Character.Humanoid.Sit
			local R = targetPlayer.Character.Humanoid.RigType
			if R == Enum.HumanoidRigType.R15 then
				R = "R15"
			elseif R == Enum.HumanoidRigType.R6 then
				R = "R6"
			else
				R = "Unknown"
			end
			local speed = targetPlayer.Character.Humanoid.WalkSpeed
			local jump = targetPlayer.Character.Humanoid.JumpPower
			local accountAge = targetPlayer.AccountAge
			local currentDate = os.date("%m/%d/%Y %I:%M %p")
			local joinDate = os.date("%m/%d/%Y %I:%M %p", os.time() - accountAge * 86400)
			local estimatedJoinDate = "approximately "..joinDate
			print(string.format("----------------\nDisplay Name: %s\nUsername: %s\nUser ID: %d\nAccount Age: %s Days \nTeam: %s \nTeam Color: %s \nAuto Jump Enabled: %s \nRespawn Location: %s \nR15/6: %s \nSitting: %s \nSpeed: %d \nJump Power: %d \nJoined at: %s\n---------------", displayName, username, userId, age, team, tostring(teamcolor), tostring(ju), tostring(rs), tostring(R), tostring(siet), speed, jump, estimatedJoinDate))
			wait()
			makemsg("Printed information into console.")
		else
			makemsg("Could not find player.")
		end
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."plrlog" then
		isLog = true
		game:GetService("Players").PlayerRemoving:Connect(function(Player)
			if isLog then
				makemsg(Player.Name.." left the game")
			end
		end)
		game:GetService("Players").PlayerAdded:Connect(function(Player)
			if isLog then
				makemsg(Player.Name.." joined the game")
			end
		end)
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 9) == prefix.."unplrlog" then
		isLog = false
	end
end)

textBox.FocusLost:Connect(function()
	if textBox.Text == prefix.."re" then
		local pos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

		game:GetService("Players").LocalPlayer.Character.Humanoid:TakeDamage(math.huge)
		task.wait(game:GetService("Players").RespawnTime + 1) game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = pos
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 5) == prefix.."view" then
		local playerName = string.sub(textBox.Text, 7)
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then game:GetService("Workspace").CurrentCamera.CameraSubject = targetPlayer.Character.Humanoid
		end
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 8) == prefix.."gravity" then
		gravity = string.sub(textBox.Text, 10)
		applyHooks3(gravity)
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 6) == prefix.."speed" then
		local g = string.sub(textBox.Text, 8)
		applyHooks(g)
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 5) == prefix.."jump" then
		local g = string.sub(textBox.Text, 7)
		applyHooks2(g)
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 5) == prefix.."spam" then
		local msg = string.sub(textBox.Text, 7)
		isSpam = true
		while isSpam do
			task.wait()
			chat(msg)
		end
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."unspam" then
		isSpam = false
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 5) == prefix.."goto" then
		local playerName = string.sub(textBox.Text, 7)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			rootpart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
		end
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 6) == prefix.."annoy" then
		local playerName = string.sub(textBox.Text, 8)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			annoyedPlr = targetPlayer
      isAnnoy = true
			end
		end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 8) == prefix.."unannoy" then
		isAnnoy = false
    annoyedPlr = nil
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 4) == prefix.."dex" then
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Dark-Dex-V3-Secured-(Bypass-Dex-Detections)-4163"))()
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 7) == prefix.."gameid" then
		setclipboard(game.JobId)
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 8) == prefix.."infjump" then
		humanoid.JumpPower = humanoid.JumpPower * 99999999999
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 7) == prefix.."prefix" then
		if string.sub(textBox.Text, 9, 9) ~= "" then
			prefix = string.sub(textBox.Text, 9, 9)
			writefile("Brick-Admin/Prefix", prefix)
			makemsg("Prefix is "..prefix)
			else
			makemsg("Cannot set prefix to a space.")
			end
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 3) == prefix.."rj" then
		makemsg("Re-execute script!")
		wait(2)
		game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 7) == prefix.."notify" then
		local sec = tonumber(string.sub(textBox.Text, 9, 10))
		local mesg = ""
		if textBox.Text:sub(11) ~= "" then
			mesg = textBox.Text:sub(11)
		elseif textBox.Text:sub(12) ~= "" then
			mesg = textBox.Text:sub(12)
		end

		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Notification:";
			Text = mesg;
			Duration = sec;
		})
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 6) == prefix.."print" then
		local printer = string.sub(textBox.Text, 8)
		print(printer)
	end
end)
textBox.FocusLost:Connect(function()
if string.sub(textBox.Text, 1, 5) == prefix.."spin" then
isSpin = true
humanoid.AutoRotate = false
local ss = tonumber(string.sub(textBox.Text, 7))
ss*=1.2
spinCharacter(ss)
end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 7) == prefix.."unspin" then
	humanoid.AutoRotate = true
		isSpin = false
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 9) == prefix.."antivoid" then
		if antivoid then
		antivoid = false
		elseif antivoid == false then
		antivoid = true
		else
		antivoid = true
		end
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 3) == prefix.."hs" then
		local playerName = string.sub(textBox.Text, 5)
		headSitter = findPlayer(playerName)
    if headSitter then
    gravity = game:GetService("Workspace").Gravity
    isSit = true
    game:GetService("Workspace").Gravity = 0
    antivoid = true
      else
        alert("Invalid player.")
      end
	elseif textBox.Text:sub(1, 8) == prefix.."headsit" then
		local playerName = string.sub(textBox.Text, 10)
		headSitter = findPlayer(playerName)
		if headSitter then
		game:GetService("Workspace").Gravity = 0
    isSit = true
    gravity = game:GetService("Workspace").Gravity
    antivoid = true
      else
        alert("Invalid player.")
      end
		end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 5) == prefix.."unhs" then
		game:GetService("Workspace").Gravity = 196.2
		isSit = false
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 7) == prefix.."walkto" then
		local playerName = string.sub(textBox.Text, 9)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then      humanoid:MoveTo(targetPlayer.Character.HumanoidRootPart)
		end
	end
end)
textBox.FocusLost:Connect(function()
	if textBox.Text:sub(1, 6) == prefix.."float" then
		local number = textBox.Text:sub(8)
		humanoid.HipHeight = number
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 10) == prefix.."camoffset" then
		local numbers = {}
		for num in string.gmatch(textBox.Text, "%d+") do
			table.insert(numbers, tonumber(num))
		end
		if #numbers >= 1 then
			humanoid.CameraOffset = Vector3.new(numbers[1], numbers[2] or 0, numbers[3] or 0)
		end
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 6) == prefix.."match" then
		local playerName = string.sub(textBox.Text, 8)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			humanoid.WalkSpeed = targetPlayer.Character.Humanoid.WalkSpeed
			humanoid.JumpPower = targetPlayer.Character.Humanoid.JumpPower
		end  
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 8) == prefix.."copypos" then
		local playerName = string.sub(textBox.Text, 10)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			setclipboard(targetPlayer.Character.HumanoidRootPart.Position)
		end  
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."copycf" then
		local playerName = string.sub(textBox.Text, 9)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			setclipboard(targetPlayer.Character.HumanoidRootPart.CFrame)
		end  
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 5) == prefix.."mute" then
		local playerName = string.sub(textBox.Text, 7)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			chat("/mute "..targetPlayer.Name)
		end  
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."unmute" then
		local playerName = string.sub(textBox.Text, 9)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			chat("/unmute "..targetPlayer.Name)
		end  
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 5) == prefix.."boom" then
		local playerName = string.sub(textBox.Text, 7)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			makemsg("Request to boom "..targetPlayer.Name) 
        humanoid:MoveTo(targetPlayer.Character.HumanoidRootPart)
			humanoid.MoveToFinished:Connect(function()
				makemsg("Boom!")
				game:GetService("Players").LocalPlayer.Character.Humanoid:TakeDamage(math.huge)
			end)
		end
	end
end)
local sent = false
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 6) == prefix.."copy " then
		local playerName = string.sub(textBox.Text, 7)
	   local targetPlayer = findPlayer(playerName)
	   if targetPlayer then
	   singleCopy = true
	   isCopy = false
	   copiedPlr = targetPlayer
	   end
	   end
end)

textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."userid" then
		local playerName = string.sub(textBox.Text, 9)     
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			setclipboard(tostring(targetPlayer.UserId))
		end  
	end
end)

textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 8) == prefix.."copyall" then
		isCopy = true
		singleCopy = false
			end
			end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."uncopy" then
		isCopy = false
		copiedPlr = nil
		singleCopy = false
	end
end)

textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 4) == prefix.."day" then
		game.Lightning.ClockTime = 12
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 6) == prefix.."night" then
		game.Lightning.ClockTime = 24
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 5) == prefix.."time" then
		local ea3 = textBox:sub(7)
		game.Lightning.ClockTime = ea3
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."bright" then
		local bright = textBox:sub(9)
		game.Lightning.Brightness = bright
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."rizzup" then
		local playerName = textBox.Text:sub(9)
		local targetPlayer = findPlayer(playerName)
		if targetPlayer then
			local lines = 
				{
					"Are you made of copper and tellurium? Because you're CuTe.	",
					"Are you a bank loan? Because you got my interest.",
					"Do you have a sunburn or are you always this hot?",
					"If you were a vegetable, you'd be a cute-cumber.",
					"You know what's on the menu? Me-n-u.",
					"I'm not a photographer, but I can picture us together.",
					"Do you have a magnet in your pocket? Because I'm attracted to you.",
					"Excuse me, can you give me directions to your heart?",
					"Can I follow you home? Because my parents always told me to follow my dreams.",
					"Do you believe in love at first sight, or should I walk by again?",
					"Is it hot in here or is it just you? Because I'm feeling weak in the knees.",
					"Excuse me, do you have a Band-Aid? Because I just scraped my knee falling for you.",
					"If you were a library book, I'd check you out.",
					"Can I have your picture so I can show Santa what I want for Christmas?",
				}
			local number = math.random(1, 13)
			wait()
			chat(targetPlayer.Name.." "..lines[number])
			makemsg(targetPlayer.Name.." "..lines[number])
		end
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 6) == prefix.."stats" then
		local playerName = textBox:sub(8)
		local targetPlayer = findPlayer(playerName)
		makemsg("Speed: "..targetPlayer.Character.Humanoid.WalkSpeed)
		makemsg("Jump Power: "..targetPlayer.Character.Humanoid.JumpPower)
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."testiq" then
		local playerName = textBox:sub(9)
		local targetPlayer = findPlayer(playerName)
		local iq = math.random(0, 360) makemsg(string.format(targetPlayer.DisplayName.." has %d iq", iq))
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."hownice" then
		local playerName = textBox:sub(9)
		local targetPlayer = findPlayer(playerName)
		local nice = math.random(0, 100) makemsg(string.format(targetPlayer.DisplayName.." is %d% nice", nice))
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."howbad" then
		local playerName = textBox:sub(9)
		local targetPlayer = findPlayer(playerName)
		local bad = math.random(0, 100) makemsg(string.format(targetPlayer.DisplayName.." is %d% bad", bad))
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 11) == prefix.."compliment" then
		local playerName = string.sub(textBox.Text, 13)
		local targetPlayer = findPlayer(playerName)
		local niceThings = {
			"You have a great sense of humor.",
			"Your positivity is infectious.",
			"You always make everyone feel welcome.",
			"Your creativity is inspiring.",
			"You have a unique perspective on things.",
			"You're an excellent listener.",
			"Your determination is admirable.",
			"You have a kind and compassionate heart.",
			"You're incredibly talented at what you do.",
			"Your presence brightens up the room.",
			"You're always willing to lend a helping hand.",
			"Your words of encouragement make a difference.",
			"You have a natural gift for bringing people together.",
			"Your dedication is remarkable.",
			"You're an incredible problem solver.",
			"Your generosity knows no bounds.",
			"You're a great team player.",
			"Your intelligence and insight are impressive.",
			"You have a calming presence in stressful situations.",
			"You inspire others with your perseverance.",
			"Your thoughtfulness is greatly appreciated.",
			"You have a knack for making people feel valued.",
			"Your positivity helps others see the brighter side of things.",
			"You're an excellent communicator.",
			"Your hard work and commitment are commendable.",
			"You have a genuine and infectious enthusiasm.",
			"Your empathy and understanding make a difference.",
			"You have a talent for making people feel heard.",
			"Your integrity and honesty are highly respected.",
			"You bring out the best in others.",
			"Your advice is always insightful and helpful.",
			"You have a beautiful soul.",
			"Your friendship means a lot to me.",
			"You have a remarkable ability to overcome challenges.",
			"Your presence in my life makes it better."
		}

		local number = math.random(1, 35)
		chat(targetPlayer.DisplayName .. " " .. niceThings[number])
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 7) == prefix.."follow" then
		isFollow = true
		local playerName = textBox:sub(9)
		local targetPlayer = findPlayer(playerName)
		while isFollow do humanoid:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
		end
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 9) == prefix.."unfollow" then
		isFollow = false
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 10) == prefix.."remotespy" then 
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-TurtleSpy-4402"))()
	end
end)
textBox.FocusLost:Connect(function()
	if string.sub(textBox.Text, 1, 8) == prefix.."discord" then
		makemsg("discord.gg/Fyu6nTNrfy")
		setclipboard("discord.gg/Fyu6nTNrfy")
		makemsg("Join for early update testing!")
		makemsg("AND sneak peaks!")
	end
end)

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.G then
        if not ena then
        Converted["_MainGui"].Enabled = true
        ena = true
        elseif ena then
         Converted["_MainGui"].Enabled = false
        ena = false
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
textBox.FocusLost:Connect(function()
if string.sub(textBox.Text, 1, 8) == prefix.."howskid" then
local playerName = string.sub(textBox.Text, 10)
local targetPlayer = findPlayer(playerName)
if targetPlayer then
local skidamount = math.random(0, 100)
chat(targetPlayer.Name.." is "..skidamount.."% skid.")
end
end
end)

textBox.FocusLost:Connect(function()
if textBox.Text == prefix.."cslogs" then
csLog = true
makemsg("Now logging console opens.")
if chatEnabled then
game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(chatMsg)
if chatMsg == "/console" and csLog then
makemsg(player.Name.." opened console")
end
end)
else
TextChatService.MessageReceived:Connect(function(chatMsg)
if chatMsg.Text == "/console" then
makemsg(chatMsg.TextSource.." opened console.")
end
end)
end
end
end)
textBox.FocusLost:Connect(function()
if textBox.Text == prefix.."uncslogs" then
csLog = false
end
end)

textBox.FocusLost:Connect(function()
    if textBox.Text == prefix.."oof" then
     chat("ima do it.")
      wait(1.2)
      chat("i'm going to commit oof.")
      wait(1.29)
      chat("Goodbye cruel world.")
    local hrp = character.HumanoidRootPart
    humanoid:MoveTo(hrp.Position - Vector3.new(math.random(1, 30), 0, math.random(1, 30)))
    humanoid.MoveToFinished:Connect(function()
      humanoid.Jump = true
      task.wait(0.01)
      humanoid.Health = 0
      end)
end
  end)
textBox.FocusLost:Connect(function()
    if string.sub(textBox.Text, 1, 14) == "$sudo favorite" then
      local fav = string.sub(textBox.Text, 16)
      if not isfile("efav") then
      writefile("efav", fav)
      alert("Favorites: "..fav, 3)
      else
      appendfile("efav"," "..fav)
      local favs = readfile("efav")
      alert("Current favorites are "..favs, 3)
    end
    end
  end)
textBox.FocusLost:Connect(function()
    if string.sub(textBox.Text, 1, 11) == prefix.."unfavorite" then
      local unfav = string.sub(textBox.Text, 13)
      if isfile("efav") then
      local unfavs = readfile("efav")
      local unfaves = unfavs:gsub(unfav, "")
      delfile("efav")
      writefile("efav", unfaves)
      alert("Successfully removed "..unfav, 3)
      elseif not isfile("efav") then
      alert("You have no favorites.", 3)
    end
    end
  end)
  textBox.FocusLost:Connect(function()
  if textBox.Text == prefix.."favorites" and isfile("efav") then
  local favs = readfile("efav")
  alert(favs, 3)
  end
  end)
 local chatlog = ""

 if chatEnabled then  game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(chatMsg)
 if singleCopy then
--when players chat
        if targetPlayer and not currentMessage then
            if chatMsg.SpeakerUserId == targetPlayer.UserId then
                local currentMessage = string.format("[%s]: %s", chatMsg.SpeakerDisplayName, chatMsg.Message)
                local previous = currentMessage
                if singleCopy then
                    chat(previous)
                    makemsg(previous)
                    currentMessage = false
                    previous = ""
                end
            end
            end
        elseif isCopy then
        if not currentMessage then
            if chatMsg.SpeakerUserId ~= game:GetService("Players").LocalPlayer.UserId then
                local currentMessage = string.format("[%s]: %s", chatMsg.SpeakerDisplayName, chatMsg.Message)
                local previous = currentMessage
                if isCopy then
                    chat(previous)
                    makemsg(previous)
                    currentMessage = false
                    previous = ""
                end
            end
            end
        end
        end)
        end
if not chatEnabled then --if game uses TextChatService
TextChatService.MessageReceived:Connect(function(chatMsg)
   if singleCopy and chatMsg.TextSource == copiedPlayer then
    chatMsg.TextChannel:SendAsync(string.format("[%s]: %s", tostring(chatMsg.TextSource), chatMsg.Text))
    elseif isCopy and chatMsg.TextSource.UserId ~= players.LocalPlayer.UserId then
    chatMsg.TextChannel:SendAsync(string.format("[%s]: %s", tostring(chatMsg.TextSource), chatMsg.Text))
    end
        end)
end
makemsg("Brick admin's code loaded in " .. string.format("%.2f", tick() - startuptime) .. " seconds!")

textBox.FocusLost:Connect(function()
local word = "instances"
if textBox.Text:sub(1, #word) == prefix..word then
local instances = game:GetDescendants()
print("All instances: "..#instances)
local nilinstances = 0
for _, obj in ipairs(game:GetDescendants()) do
if obj == nil then
nilinstances+=1
end
end
print("Nil instances: "..nilinstances)
if nilinstances > 0 then
print("All instances without nil instances: "..#instances - nilinstances)
end
end
end)
RunService.RenderStepped:Connect(function()
if headSitter and headSitter.Character.Head and isSit then
				rootpart.CFrame = headSitter.Character.Head.CFrame+ Vector3.new(0, 2.4, 0)
				game:GetService("Workspace").Gravity = 0
				task.wait()
				humanoid.Sit = isSit
			end
end)

RunService.RenderStepped:Connect(function()
if antivoid and not voiding then
game:GetService("Workspace").FallenPartsDestroyHeight = "nan"
if part.CFrame.Y < voidCFrame and voidCFrame ~= nil then
repeat part.CFrame += Vector3.new(0, 340, 0) until part.CFrame.Y > voidCFrame
repeat task.wait() until humanoid:GetState() == Enum.HumanoidStateType.Landed
print("Saved by antivoid.")
end
end
end) 
textBox.FocusLost:Connect(function()
if textBox.Text:sub(1, 8) == prefix.."gravity" then
local grav = tonumber(textBox.Text:sub(10))
if grav then
applyHooks3(grav)
end
end
end)
textBox.FocusLost:Connect(function()
if textBox.Text:sub(1, 7) == prefix.."freeze" or textBox.Text:sub(1, 5) == prefix.."thaw" then
if freezing then
freezing = false
      else
freezing = true
      cf = part.CFrame
      end
end
end)
RunService.RenderStepped:Connect(function()
if freezing then
  part.CFrame = cf
    end
end)
RunService.RenderStepped:Connect(function()
if isAnnoyed and annoyedPlr and part then
		game:GetService("Workspace").Gravity = 0
		part.CFrame = annoyedPlr.Character:WaitForChild("HumanoidRootPart").CFrame
    end
  end)
RunService.RenderStepped:Connect(function()
if isSit and headSitter and headSitter:WaitForChild("Character") and part then
    if headSitter.Character:WaitForChild("Head") then
		part.CFrame = headSitter.Character:WaitForChild("Head").CFrame
    humanoid.Sit = isSit
      else
        alert("Player "..headSitter.Name.." has no head to sit on! Retrying..")
      end
    end
  end)
 local files = listfiles("Brick-Admin/Extensions")

if files ~= nil and files ~= "" then
    for _, file in ipairs(files) do
        local content = readfile(file)
        if content ~= nil then
            local success, result = pcall(function()
                loadstring(content)()
            end)
            if not success then
                print("Brick Admin failed to load extension: "..result)
            end
        end
    end
end
textBox.FocusLost:Connect(function()
if textBox.Text:sub(1, 4) == prefix.."mml" then
local number = tonumber(textBox.Text:sub(6))
getgenv().MML1 = getgenv().MML
getgenv().MML = number
writefile("Brick-Admin/MaxMsgsLimit", number)
makemsg("[Changed max messages limit from "..getgenv().MML1.." to "..getgenv().MML.."]")
end
end)

textBox.FocusLost:Connect(function()
if textBox.Text:sub(1, 6) == prefix.."clear" then
task.wait(0.0001)
for _, child in pairs(scrollingFrame:GetChildren()) do
                if not child:IsA("UIListLayout") then
                    child:Destroy()
                end
            end
end
end)

RunService.Heartbeat:Connect(function()
   task.wait(1)
   getgenv().MML = tonumber(readfile("Brick-Admin/MaxMsgsLimit"))
        if #scrollingFrame:GetChildren() > getgenv().MML +1 then
            for _, child in pairs(scrollingFrame:GetChildren()) do
                if not child:IsA("UIListLayout") then
                    child:Destroy()
                end
            end
        end
end)