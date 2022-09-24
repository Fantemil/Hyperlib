-- // credits to anyones code i used/looked at.
print("[Future] Loading!")
repeat wait() until game:IsLoaded()
if shared.Future~=nil then print("[Future] Detected future already executed, not executing!") return end
local startTime = game:GetService("Workspace"):GetServerTimeNow()
shared.Future = {}
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")
local HTTPSERVICE = game:GetService("HttpService")
local PLAYERS = game:GetService("Players")
local lplr = PLAYERS.LocalPlayer
local getcustomasset = getsynasset or getcustomasset
local requestfunc = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport

local function requesturl(url, bypass) 
    if isfile(url) then 
        return readfile(url)
    end
    local repourl = bypass and "https://raw.githubusercontent.com/joeengo/" or "https://raw.githubusercontent.com/joeengo/Future/main/"
    local url = url:gsub("Future/", "")
    local req = requestfunc({
        Url = repourl..url,
        Method = "GET"
    })
    if req.StatusCode ~= 200 then return req.StatusCode end
    return req.Body
end 

local GuiLibrary = loadstring(requesturl("Future/GuiLibrary.lua"))()
shared.Future.GuiLibrary = GuiLibrary
GuiLibrary["LoadOnlyGuiConfig"]()

local function ferror(...)
    local args ={...}
    local str=""
    for i,v in next,args do 
        str=str.." "..tostring(v)
    end
    GuiLibrary["CreateNotification"]("<font color='rgb(255, 10, 10)'>[ERROR]"..str.."</font>")
    error("[Future]"..str)
end

local function fwarn(...)
    local args ={...}
    local str=""
    for i,v in next,args do 
        str=str.." "..tostring(v)
    end
    warn("[Future]"..str)
    GuiLibrary["CreateNotification"]("<font color='rgb(255, 255, 10)'>[WARNING] "..str.."</font>")
end

local function fprint(...)
    local args ={...}
    local str=""
    for i,v in next,args do 
        str=str.." "..tostring(v)
    end
    print("[Future]"..str)
    GuiLibrary["CreateNotification"]("<font color='rgb(170, 170, 170)'>"..str.."</font>")
end

local function getasset(path)
 if not isfile(path) then
  local req = requestfunc({
   Url = "https://raw.githubusercontent.com/joeengo/Future/main/"..path:gsub("Future/assets", "assets"),
   Method = "GET"
  })
        print("[Future] downloading "..path.." asset.")
  writefile(path, req.Body)
        print("[Future] downloaded "..path.." asset successfully!")
 end
 return getcustomasset(path) 
end

local function getscript(id) 
    local id = id or shared.FuturePlaceId or game.PlaceId
    id = tostring(id)
    local req = requesturl("Future/scripts/"..id..".lua")
    if type(req) == "string" then
        return loadstring(req)()
    else
        --fwarn("[Future] invalid script (error "..tostring(req)..")") -- game is not supported
    end
end

local CombatWindow = GuiLibrary.CreateWindow({["Name"] = "Combat"})
local ExploitsWindow = GuiLibrary.CreateWindow({["Name"] = "Exploits"})
local MiscellaneousWindow = GuiLibrary.CreateWindow({["Name"] = "Miscellaneous"})
local MovementWindow = GuiLibrary.CreateWindow({["Name"] = "Movement"})
local RenderWindow = GuiLibrary.CreateWindow({["Name"] = "Render"})
local WorldWindow = GuiLibrary.CreateWindow({["Name"] = "World"})
local OtherWindow = GuiLibrary.CreateWindow({["Name"] = "Other"})

local configButton; configButton = OtherWindow.CreateOptionsButton({
    ["Name"] = "Config",
    ["Function"] = function(callback)
    end,
    ["NoKeybind"] = true,
})
local configBox; configBox = configButton.CreateTextbox({
    ["Name"] = "Config name",
    ["Function"] = function(value)
        GuiLibrary["SaveConfig"](GuiLibrary["CurrentConfig"])
        if isfile("Future/configs/"..tostring((shared.Future and shared.Future.PlaceId) or game.PlaceId).."/"..value..".json") then
            GuiLibrary["LoadConfig"](value)
        end
        GuiLibrary["CurrentConfig"] = value
    end,
})
local clickGuiButton = OtherWindow.CreateOptionsButton({
    ["Name"] = "ClickGui",
    ["Function"] = function(callback) 
        GuiLibrary.ClickGUI.Visible = callback
    end,
    ["DefaultKeybind"] = GuiLibrary.GuiKeybind,
    ["OnKeybound"] = function(key) 
        if key then GuiLibrary.GuiKeybind = key end
    end
})
local clickSoundToggle = clickGuiButton.CreateToggle({
    ["Name"] = "ClickSounds",
    ["Function"] = function(callback)
        GuiLibrary["ClickSounds"] = callback
    end,
    ["Default"] = true
})

local HUDButton = OtherWindow.CreateOptionsButton({
    ["Name"] = "HUD",
    ["Function"] = function(callback) 
        GuiLibrary["HUDEnabled"] = callback
    end,
    ["Default"] = true
})
local NotificationsToggle = HUDButton.CreateToggle({
    ["Name"] = "Notifications",
    ["Function"] = function(callback) 
        GuiLibrary["AllowNotifications"] = callback
    end,
    ["Default"] = true
})

local colorButton; colorButton = OtherWindow.CreateOptionsButton({
    ["Name"] = "Colors",
    ["Function"] = function(callback) 
        if not callback then 
            colorButton.Toggle(true, true)
        end
    end,
    ["Default"] = true,
    ["NoKeybind"] = true,
})
local hueSlider = colorButton.CreateSlider({
    ["Name"] = "Hue",
    ["Function"] = function(value) 
        if not GuiLibrary["Rainbow"] then
            local value = value * 0.002777777777777 -- 360 * 0.002777777777777 = 1.000
            GuiLibrary["ColorTheme"].H = value
            GuiLibrary["Signals"]["UpdateColor"]:Fire(GuiLibrary["ColorTheme"])
        end
    end,
    ["Min"] = 0,
    ["Max"] = 360,
})
local saturationSlider = colorButton.CreateSlider({
    ["Name"] = "Saturation",
    ["Function"] = function(value) 
        GuiLibrary["ColorTheme"].S = value / 100
        GuiLibrary["Signals"]["UpdateColor"]:Fire(GuiLibrary["ColorTheme"])
    end,
    ["Min"] = 0,
    ["Max"] = 100,
})
local valueSlider = colorButton.CreateSlider({
    ["Name"] = "Lightness",
    ["Function"] = function(value) 
        GuiLibrary["ColorTheme"].V = value / 100
        GuiLibrary["Signals"]["UpdateColor"]:Fire(GuiLibrary["ColorTheme"])
    end,
    ["Min"] = 0,
    ["Max"] = 100,
})
local rainbowToggle = colorButton.CreateToggle({
    ["Name"] = "Rainbow",
    ["Function"] = function(callback) 
        GuiLibrary["Rainbow"] = callback
    end,
})
local rainbowSlider = colorButton.CreateSlider({
    ["Name"] = "RBSpeed",
    ["Function"] = function(value) 
        GuiLibrary["RainbowSpeed"] = value
    end,
    ["Min"] = 1,
    ["Max"] = 50,
    ["Default"] = 10,
})

local destructButton; destructButton = OtherWindow.CreateOptionsButton({
    ["Name"] = "Destruct",
    ["Function"] = function(callback)
        if callback then
            GuiLibrary["SaveConfig"](GuiLibrary["CurrentConfig"])
            GuiLibrary.Signals.onDestroy:Fire()
        end
    end
})
GuiLibrary["LoadOnlyGuiConfig"]()

local ontp = game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
  local stringtp = [[
        repeat wait() until game:IsLoaded()
        if isfile("Future/Initiate.lua") then 
            loadfile("Future/Initiate.lua")() 
        else 
            loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/Future/main/Initiate.lua", true))() 
        end
        ]]
  queueteleport(stringtp)
        GuiLibrary["SaveConfig"](GuiLibrary["CurrentConfig"])
    end
end)

local bedwarsidtable = {
    6872274481,
    8444591321,
    8560631822
}
if table.find(bedwarsidtable, game.PlaceId) then 
    shared.FuturePlaceId = 6872274481
end

local success, _error = pcall(getscript, "Universal")
local success2, _error2 = pcall(getscript)
if success then 
    print("[Future] Successfully retrieved Universal script!")
else
    fwarn("Unsuccessful attempt at retrieving Universal script!\n report this in the discord.\n (".._error..")")
end
if success2 then 
    print("[Future] Successfully retrieved Game script!")
else
    fwarn("Unsuccessful attempt at retrieving Game script!\n report this in the discord.\n (".._error2..")")
end
GuiLibrary["LoadConfig"](GuiLibrary["CurrentConfig"])


local leaving = PLAYERS.PlayerRemoving:connect(function(player)
    if player == lplr then
        GuiLibrary["SaveConfig"](GuiLibrary["CurrentConfig"])
    end
end)

GuiLibrary.Signals.onDestroy:connect(function()
    for i,v in next, GuiLibrary.Objects do 
        if v.Type == "OptionsButton" and i ~= "DestructOptionsButton" then 
            v.API.Toggle(false, true)
        end
    end
    if ontp then ontp:Disconnect() end
    if leaving then leaving:Disconnect() end
    shared.Future = nil
end)

spawn(function()
    repeat wait(3)
        GuiLibrary["SaveConfig"](GuiLibrary["CurrentConfig"])
        wait(7)
    until not shared.Future
end)
fprint("Finished loading in "..tostring(math.floor((game:GetService("Workspace"):GetServerTimeNow() - startTime) * 1000) / 1000).."s\nPress "..GuiLibrary["GuiKeybind"].." to open the Gui.")