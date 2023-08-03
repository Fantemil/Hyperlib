--[[
░██████╗███╗░░░███╗░█████╗░██╗░░██╗  ░██████╗██╗░░██╗██╗██████╗░
██╔════╝████╗░████║██╔══██╗╚██╗██╔╝  ██╔════╝██║░██╔╝██║██╔══██╗
╚█████╗░██╔████╔██║██║░░██║░╚███╔╝░  ╚█████╗░█████═╝░██║██║░░██║
░╚═══██╗██║╚██╔╝██║██║░░██║░██╔██╗░  ░╚═══██╗██╔═██╗░██║██║░░██║
██████╔╝██║░╚═╝░██║╚█████╔╝██╔╝╚██╗  ██████╔╝██║░╚██╗██║██████╔╝
╚═════╝░╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚═╝  ╚═════╝░╚═╝░░╚═╝╚═╝╚═════╝░
--]]
hookfunction(error, warn)
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local PlayerScripts = LocalPlayer.PlayerScripts
local ClientGameScript = PlayerScripts:WaitForChild("ClientGameScript")
local MobileService = require(ClientGameScript:WaitForChild("MobileService"))

getgenv().Settings = {
    AutoType = true,
    AutoJoin = true,
    LongWords = false,
    breakscript = false,
    TypeTime = 2
}

local Response = game:HttpGet("https://raw.githubusercontent.com/98x9s9xs9xs9x9sx9asx9s9xgf324432442342r/SmoxAve/main/Smox-Words.txt")
local Words = {}

for line in string.gmatch(Response,"[^\r\n]*") do
    if line ~= "" then
        table.insert(Words, line)
    end
end

local Response = game:HttpGet("https://raw.githubusercontent.com/98x9s9xs9xs9x9sx9asx9s9xgf324432442342r/SmoxAve/main/Smox-Long-Words.txt")
local LongWords = {}

for line in string.gmatch(Response,"[^\r\n]*") do
    if line ~= "" then
        table.insert(LongWords, line)
    end
end

local KeyCodes = {
    A = 0x41,
    B = 0x42,
    C = 0x43,
    D = 0x44,
    E = 0x45,
    F = 0x46,
    G = 0x47,
    H = 0x48,
    I = 0x49,
    J = 0x4A,
    K = 0x4B,
    L = 0x4C,
    M = 0x4D,
    N = 0x4E,
    O = 0x4F,
    P = 0x50,
    Q = 0x51,
    R = 0x52,
    S = 0x53,
    T = 0x54,
    U = 0x55,
    V = 0x56,
    W = 0x57,
    X = 0x58,
    Y = 0x59,
    Z = 0x5B
}

local ui_options = {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(400, 300),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
}

----------------- ▼ Discord Invite ▼ -----------------
local Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/SmoxHub/Smox-UI/main/Discord-Source.lua"))()

Module.Prompt({ invite = "https://discord.gg/aHK54Tkj2S", name = "SmoxHub" }) 
----------------- ↑ Discord Invite ↑ -----------------
wait(3)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SmoxHub/Smox-UI/main/Smox-UI"))()

local Used = {}
local Random = Random.new()

local Typing = false

function CanType()
    local GameSpace = PlayerGui.GameUI.Container.GameSpace
    if GameSpace:FindFirstChild("DefaultUI") and GameSpace.DefaultUI:FindFirstChild("GameContainer") and GameSpace.DefaultUI.GameContainer:FindFirstChild("DesktopContainer") then
        return GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox.Visible
    end
    return false
end

function GetJoinButton()
    local GameSpace = PlayerGui.GameUI.Container.GameSpace
    if GameSpace:FindFirstChild("DefaultUI") and GameSpace.DefaultUI:FindFirstChild("DesktopFrame") then
        return GameSpace.DefaultUI.DesktopFrame:FindFirstChild("JoinButton")
    end
end

function GetCurrentPattern()
    local GameSpace = PlayerGui.GameUI.Container.GameSpace
    if GameSpace:FindFirstChild("DefaultUI") and GameSpace.DefaultUI:FindFirstChild("GameContainer") and GameSpace.DefaultUI.GameContainer:FindFirstChild("DesktopContainer") then
        local Pattern = ""
        for _, LetterFrame in next, GameSpace.DefaultUI.GameContainer.DesktopContainer.InfoFrameContainer.InfoFrame.TextFrame:GetChildren() do
            if LetterFrame:IsA("Frame") and LetterFrame.Visible == true and LetterFrame.Letter.ImageColor3 ~= Color3.new(255, 255, 255) then
                Pattern ..= LetterFrame.Letter.TextLabel.Text
            end
        end
        return Pattern
    end
end
    
function FindWord(Pattern)
    if Settings.LongWords == true then
        local total = {}
        for _, Word in next, LongWords do
            if string.find(Word, Pattern) and not table.find(Used, Word) then
                table.insert(total, Word)
            end
        end
        local theword = total[math.random(1, #total)]
        table.insert(Used, theword)
        return theword
    else
        local total = {}
        for _, Word in next, Words do
            if string.find(Word, Pattern) and not table.find(Used, Word) then
                table.insert(total, Word)
            end
        end
        local theword = total[math.random(1, #total)]
        table.insert(Used, theword)
        return theword
    end
end
    
function Type(Word)
    local Typebox = PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox
    local WaitTime = (Settings.TypeTime / 3) / 10
    if math.random(1, 5) == 1 then
        for _, Letter in next, string.split(Word, "") do
            if math.random(1, 5) == 1 then
                Typebox.Text ..= string.char(math.random(string.byte('A'), string.byte('Z')))
                wait(WaitTime / 1.5)
                Typebox.Text ..= string.char(math.random(string.byte('A'), string.byte('Z')))
                wait(WaitTime * 2.8)
                Typebox.Text = Typebox.Text:sub(0, -2)
                wait(WaitTime / 1.3)
                Typebox.Text = Typebox.Text:sub(0, -2)
                wait(WaitTime / 1.3)
                Typebox.Text ..= Letter
                wait(WaitTime)
            else
                Typebox.Text ..= Letter
                wait(WaitTime)
            end
        end
        firesignal(Typebox.FocusLost, true)
    else
        for _, Letter in next, string.split(Word, "") do
            Typebox.Text ..= Letter
            wait(WaitTime)
        end
        firesignal(Typebox.FocusLost, true)
    end
end
    
function TypeWord(Pattern)
    local Word = FindWord(string.lower(Pattern))
    if Word then
        Type(Word)
    end
    wait(0.25)
    Typing = false
end

local venyx = library.new("SmoxHub-V2 | WordBomb", 5012544693)

----------------- ▼ THEME ▼ -----------------
local themes = {
Background = Color3.fromRGB(23, 0, 1),
Glow = Color3.fromRGB(255, 255, 255),
Accent = Color3.fromRGB(23, 0, 1),
LightContrast = Color3.fromRGB(44, 13, 19),
DarkContrast = Color3.fromRGB(23, 0, 1),  
}   
----------------- ↑ THEME ↑ -----------------

loadstring(game:HttpGet("https://raw.githubusercontent.com/S2D-XVI/Valorant/main/Logs"))()

----------------- ▼ Notification ▼ -----------------
venyx:Notify("SmoxHub Notification", "Join SmoxHub Discord Server", function()
end)
----------------- ↑ Notification ↑ -----------------

----------------- ▼ Credit Page ▼ -----------------
local page = venyx:addPage("Developers", 7733765398)
local Credits1 = page:addSection("Main Developer:")
----------------- ↑ Credit Page ↑ -----------------

----------------- ▼ Youtube ▼ -----------------
Credits1:addButton("Copy Youtube Channel", function()
setclipboard("https://www.youtube.com/c/smoxhub")
end)
----------------- ↑ Youtube ↑ -----------------

----------------- ▼ Discord ▼ -----------------
Credits1:addButton("Copy Discord Invite", function()
setclipboard("https://discord.gg/SmoxHub")
end)
----------------- ↑ Discord ↑ -----------------

----------------- ▼ Roblox Group ▼ -----------------
Credits1:addButton("Copy Roblox Group", function()
setclipboard("https://www.roblox.com/groups/14628343/SmoxHub")
end)
----------------- ↑ Roblox Group ↑ -----------------

----------------- ▼ Discord Username ▼ -----------------
Credits1:addButton("Copy Discord User", function()
setclipboard("SmoxHub#0001")
end)
----------------- ↑ Discord Username ↑ -----------------

----------------- ▼ Arsenal Page ▼ -----------------
local page = venyx:addPage("Word Bomb", 7733942651)
local section1 = page:addSection("Word Bomb")
local section2 = page:addSection("Server")
----------------- ↑ Arsenal Page ↑ -----------------

----------------- ▼ Setting Page ▼ -----------------
local page = venyx:addPage("Settings", 7734053495)
local Settings1 = page:addSection("Settings.")
local Settings2 = page:addSection("Theme.")
----------------- ↑ Setting Page ↑ -----------------

----------------- ▼ Toggle KeyBind ▼ -----------------
Settings1:addKeybind("Toggle keybind.", Enum.KeyCode.RightShift, function(menu)
venyx:toggle()
end, function(menu)
end)
----------------- ↑ Toggle KeyBind ↑ -----------------

----------------- ▼ Auto Join ▼ -----------------
section1:addToggle("Auto Join", (Settings.AutoJoin), function(Value)
Settings.AutoJoin = Value
end)
----------------- ↑ Auto Join ↑ -----------------

----------------- ▼ Auto Type ▼ -----------------
section1:addToggle("Auto Type", AutoJoinPointer, function(Value)
Settings.AutoType = Value
end)
----------------- ↑ Auto Type ↑ -----------------

----------------- ▼ Long Word Only ▼ -----------------
section1:addToggle("Long Words Only", (Settings.LongWords), function(Value)
Settings.LongWords = Value
end)
----------------- ↑ Long Words Only ↑ -----------------

----------------- ▼ Type Time ▼ -----------------
section1:addSlider("Type Time", 0, 0, 6, function(Value)
Settings.TypeTime = Value
end)
----------------- ↑ Type Time ↑ -----------------

----------------- ▼ Anti-Kick ▼ -----------------
section2:addButton("Anti-Kick", function()

end)
----------------- ↑ Anti-Kick ↑ -----------------

----------------- ▼ Rejoin ▼ -----------------
section2:addButton("Rejoin-Server", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer) end)
----------------- ↑ Rejoin ↑ -----------------

----------------- ▼ Server-Hop ▼ -----------------
section2:addButton("Server-Hop", function()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
    function TPReturner()
    local Site;
    if foundAnything == "" then
    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
    foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
    local Possible = true
    ID = tostring(v.id)
    if tonumber(v.maxPlayers) > tonumber(v.playing) then
    for _,Existing in pairs(AllIDs) do
    if num ~= 0 then
    if ID == tostring(Existing) then
    Possible = false
    end
    else
    if tonumber(actualHour) ~= tonumber(Existing) then
    local delFile = pcall(function()
    delfile("NotSameServers.json")
    AllIDs = {}
    table.insert(AllIDs, actualHour)
    end)
    end
    end
    num = num + 1
    end
    if Possible == true then
    table.insert(AllIDs, ID)
    wait()
    pcall(function()
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    wait()
    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
    end)
    wait(4)
    end
    end
    end
    end
    function Teleport()
    while wait() do
    pcall(function()
    TPReturner()
    if foundAnything ~= "" then
    TPReturner()
    end
    end)
    end
    end
    Teleport() 
end)
----------------- ↑ Server-Hop ↑ -----------------

----------------- ▼ Color GUI ▼ -----------------
for theme, color in pairs(themes) do 
    Settings2:addColorPicker(theme, color, function(color3)
    venyx:setTheme(theme, color3)
    end)
end
----------------- ↑ Color GUI ↑ -----------------

----------------- ▼ Select Page ▼ -----------------
venyx:SelectPage(venyx.pages[1], true)
----------------- ↑ Select Page ↑ -----------------

----------------- ▼ Script WordBomb ▼ -----------------
while wait(0.5) do
    if Settings.breakscript == true then
        game.CoreGui.imgui:Destroy()
        break
    end







    local JoinButton = GetJoinButton()
    if JoinButton then
        wait(math.random(1, 5))
        Used = {}
        firesignal(JoinButton.MouseButton1Down)
    end
    if Settings.AutoType and CanType() then
        if not Typing then
            wait(math.random(7, 10) / 6)
            Typing = true
            TypeWord(GetCurrentPattern())
        end
    end
    if Settings.AutoJoin then
        local JoinButton = GetJoinButton()
        
    end
end
