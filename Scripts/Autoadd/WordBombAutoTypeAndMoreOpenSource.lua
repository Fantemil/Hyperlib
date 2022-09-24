-- Made by https://v3rmillion.net/member.php?action=profile&uid=1906262

setfpscap(999)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/x114/User-Interface-s/main/Splixuiedited"))()
local keys = {
 ["A"] = 0x41,
 ["B"] = 0x42,
 ["C"] = 0x43,
 ["D"] = 0x44,
 ["E"] = 0x45,
 ["F"] = 0x46,
 ["G"] = 0x47,
 ["H"] = 0x48,
 ["I"] = 0x49,
 ["J"] = 0x4A,
 ["K"] = 0x4B,
 ["L"] = 0x4C,
 ["M"] = 0x4D,
 ["N"] = 0x4E,
 ["O"] = 0x4F,
 ["P"] = 0x50,
 ["Q"] = 0x51,
 ["R"] = 0x52,
 ["S"] = 0x53,
 ["T"] = 0x54,
 ["U"] = 0x55,
 ["V"] = 0x56,
 ["W"] = 0x57,
 ["X"] = 0x58,
 ["Y"] = 0x59,
 ["Z"] = 0x5A,
 ["-"] = 0xBD,
 ["'"] = 0xDE
}
local usedWords = {}
local WordList = {
    Normal    = loadstring(game:HttpGet("https://gist.githubusercontent.com/raw/6f3d37a9f5068a0fc2203ac77077ce06/", true))(),
    LongWords = loadstring(game:HttpGet("https://pastebin.com/raw/UuzSb9XV", true))()
}
-- functions --
function FindLetters()
    for _,v in pairs(getgc()) do
        if type(v) == "function" and not is_synapse_function(v) and islclosure(v) and debug.getinfo(v).name == "updateInfoFrame" then
            for __,vv in pairs(debug.getupvalues(v)) do
                if type(vv) == "table" and vv.Prompt ~= nil then
                    Word = vv.Prompt
                end
            end
        end
    end
    return Word
end

function MyTurn()
    for _,v in pairs(getgc()) do
        if type(v) == "function" and not is_synapse_function(v) and islclosure(v) and debug.getinfo(v).name == "updateInfoFrame" then
            for __,vv in pairs(debug.getupvalues(v)) do
                if type(vv) == "table" and vv.PlayerID ~= nil then
                    Id = vv.PlayerID
                end
            end
        end
    end
    return Id
end

local function Used(Word)
    for i,v in pairs(usedWords) do
        if v == Word then return true end
    end
    return false
end

local function FindWord(l)
    local word
    for i,v in pairs(WordList[Library.pointers.WordListPointer.current]) do
        if string.find(v, string.lower(l)) and not Used(string.upper(v)) and v ~= nil then
            word = string.upper(v)
        end
    end
    return word
end

function TableLength(Table)
  local A=0
  for i,v in pairs(Table) do A=A+1 end
  return A
end

function TypeAnswer()
    local A = false
    if A == false then
        A = true
        local Word = FindWord(FindLetters())
        if Word and Word ~= "nil" then
           for v in string.gmatch(Word,".") do
             keypress(keys[v])
             wait(Library.pointers.TypeDelayPointer.current)
         end
         table.insert(usedWords,Word)
         wait(Library.pointers.TypeDelayPointer.current)
         keypress(0x0D)
         A = false
      end
   end         
end

-- lib --
local Window = Library:New({Name = "WordBomb Helper", Accent = Color3.fromRGB(122, 150, 255)})
local MainTab = Window:Page({Name = "Main"})
local MainSection = MainTab:Section({Name = "WordBomb", Side = "left"})
-- local MiscSection = MainTab:Section({Name = "Misc", Side = "left"})
local ServerSection = MainTab:Section({Name = "Server", Side = "right"})
local SettingsSection = MainTab:Section({Name = "Settings", Side = "right"})

-- Main --
MainSection:Button({name = "TypeAnswer",callback = function()
    if MyTurn() == game:GetService("Players").LocalPlayer.UserId then
        TypeAnswer()
    end
    for _,v in pairs(MainSection.visibleContent) do
        if v.Size == 13 and string.find(v.Text,"Used Words:") then
            v.Text = "Used Words:"..tostring(TableLength(usedWords))
        end
    end
end})
MainSection:Toggle({Name = "AutoType",Default = false,Pointer = "AutoTypePointer"})
MainSection:Dropdown({Name = "WordList", Options = {"Normal","LongWords"},Default = "Normal",Pointer = "WordListPointer"})
MainSection:Slider({Name = "Type Delay", min = 0,max = 1,def = 0,decimals = 0.01,Pointer = "TypeDelayPointer"})
MainSection:Slider({Name = "AutoType Delay",min = 0,max = 8,def = 0,decimals = 0.01,Pointer = "AutoTypeDelayPointer"})
MainSection:Button({Name = "Clear Used Words",callback = function()
    for _,v in pairs(MainSection.visibleContent) do
        if v.Size == 13 and string.find(v.Text,"Used Words:") then
            v.Text = "Used Words:"..0
        end
    end
    usedWords = {}
end})
MainSection:Label({Name = "Used Words:".."0"})
-- Misc --

--[[
MiscSection:Toggle({Name = "AutoJoin",Default = false,Pointer = "AutoJoinPointer",callback = function(v)
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI.DesktopFrame:GetDescendants()) do
        if v:IsA("ImageButton") and v.Name == "JoinButton" then
            firesignal(v.MouseButton1Down)
        end
    end
end})
]]--

-- Server --
ServerSection:Button({name = "Rejoin",callback = function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end})
ServerSection:Button({name = "ServerHop",callback = function()
    local s = {}
    for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            s[#s+1] = v.id
        end
    end
    if #s > 0 then
     game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, s[math.random(1, #s)])
    end
end})
ServerSection:Button({name = "JoinLargestServer",callback = function()
    local Amazing = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Kozenomenon/RBX_Pub/main/Misc/Rejoin_Preferred_Server.lua"))
    Amazing({SizeSort="desc",MinPlayers=0,MaxPlayers=0,ExcludeFull=true,ExcludeSame=true,MinFps=55,MaxPing=190,FpsSortWeight=1,PingSortWeight=1,SizeSortWeight=5,PrintVerbose=false,PrintPrefixTime=false,PrintUseConsoleWindow=false})
end})
-- Settings --
SettingsSection:Button({name = "Unload Cheat",callback = function()
    pcall(function()
        usedWords = {}
        Library.pointers.AutoTypePointer = false
        Window:Unload()
    end)
end})
SettingsSection:Keybind({Name = "Open/Close", Default = Enum.KeyCode.LeftAlt, KeybindName = "UiBind", Mode = "Toggle",callback = function(Val1)
    Window:Fade()
end})
-- Init --
Window:Initialize()
-- got lazy here > https://v3rmillion.net/showthread.php?tid=1100411
if game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI:FindFirstChild("GameContainer") and game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox then
    game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox:GetPropertyChangedSignal("Visible"):Connect(function()
        repeat
            wait(0.1)
            if game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox.Visible == true and Library.pointers.AutoTypePointer.current == true and MyTurn() == game:GetService("Players").LocalPlayer.UserId then
                wait(Library.pointers.AutoTypeDelayPointer.current)
                local a = TypeAnswer() 
                for _,v in pairs(MainSection.visibleContent) do
                    if v.Size == 13 and string.find(v.Text,"Used Words:") then
                        v.Text = "Used Words:"..tostring(TableLength(usedWords))
                    end
                end
            end
            wait(1)
        until game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox.Visible == false
    end)
end
game:GetService("Players").LocalPlayer.PlayerGui.GameUI.DescendantAdded:Connect(function(yes)
    if yes.Name == "Typebox" then
        game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox:GetPropertyChangedSignal("Visible"):Connect(function()
            wait(Library.pointers.AutoTypeDelayPointer.current)
            if game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox.Visible == true and Library.pointers.AutoTypePointer.current == true and MyTurn() == game:GetService("Players").LocalPlayer.UserId then
                repeat
                TypeAnswer()
                for _,v in pairs(MainSection.visibleContent) do
                    if v.Size == 13 and string.find(v.Text,"Used Words:") then
                        v.Text = "Used Words:"..tostring(TableLength(usedWords))
                    end
                end
                wait(1)
                until game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox.Visible == false
            end
        end)
    end
end)