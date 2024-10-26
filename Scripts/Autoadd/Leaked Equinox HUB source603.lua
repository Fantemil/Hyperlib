
-- [[
--âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ
--âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ
--ââââââââââââââââââââââââââ¦âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ
--âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ
--ââââââââââââââââââââââââââ¦âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ
--âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ
--]]



--[[
-- Official Ultimate Universal Hub
-- Equinox Hub
-- This GUI/Hub was made by 3wnd#8995
-- our discord server: https://discord.gg/f26Vp8CzaZ
-- This Hub will receive updates. 
-- Also if there are any bugs, please report the bug(s) in my discord server.
]]

-- [[
-- Supported Games:
-- Mining Simulator 2
-- Da hood
-- Cant Say the Word
-- Pet Simulator X
-- Southwest Florida Beta
-- Flee the Facility
-- Meepcity
-- Tower of Hell
-- Raise a Floppa 2]
-- Limited Words
-- Car Crushers 2
-- Brookhaven RP
-- Bedwars
-- Murder Mystery 2
-- Arsenal
-- Doors V
--]]


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Equinox Hub - FE ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "Equinox Hub | FE Universal Scripthub", IntroIcon = "rbxassetid://6031094686", Icon = "rbxassetid://6031094686"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Local",
	Icon = "rbxassetid://6031094686",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Local"
})


Tab:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(69,48,52),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end    
})


Tab:AddSlider({
	Name = "Jump Power",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(168,175,150),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(t)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
	end    
})


Tab:AddSlider({
	Name = "Time",
	Min = 0,
	Max = 24,
	Default = 14,
	Color = Color3.fromRGB(218,134,66),
	Increment = 1,
	ValueName = "Time",
	Callback = function(p)
		game:GetService("Lighting").ClockTime = p
	end    
})


Tab:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 500,
	Default = 196.2,
	Color = Color3.fromRGB(248,193,104),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(o)
		game:GetService("Workspace").Gravity = o
	end    
})


Tab:AddButton({
	Name = "Respawn",
	Callback = function()
	    game.Players.LocalPlayer.Character.Head:Destroy()
if game.Players.LocalPlayer.Character.Humanoid.Health < 5 then 
    local deathmanok = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
    wait(1.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(deathmanok)
end
end})

Tab:AddButton({
	Name = "Rejoin",
	Callback = function()
	    local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)

    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)

coroutine.resume(Rejoin)
end})


Tab:AddButton({
	Name = "Auto Rejoin",
	Callback = function()
	    game:WaitForChild("CoreGui")
game:WaitForChild("Players")

print("REJOIN SCRIPT ENABLED")

while true do wait()
    wait(1)
getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        pcall(game:GetService("TeleportService"):Teleport(game.PlaceId))
    end
end)

end
end})


Tab:AddButton({
	Name = "Join Smallest Server",
	Callback = function()
      		local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
  	end    
})


Tab:AddButton({
	Name = "Server Finder",
	Callback = function()
    loadstring(game:HttpGet("https://www.scriptblox.com/raw/Server-Browser_80", true))();
  	end    
})


Tab:AddButton({
	Name = "Noclip",
	Callback = function()
    	local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
end})


Tab:AddButton({
	Name = "Anti-AFK",
	Callback = function()
    repeat task.wait() until (game:IsLoaded());
for i,v in pairs(getconnections(game:GetService('Players').LocalPlayer.Idled)) do
    v:Disable();
end;
    end    
})


Tab:AddButton({
	Name = "Find Current Position (F9)",
	Callback = function()
     function getCurrentPlayerPOS()
        local player = game.Players.LocalPlayer;
        if player.Character then 
            return player.Character.HumanoidRootPart.Position
        end
        return false;
    end
    local currentPOS = getCurrentPlayerPOS();

print(currentPOS)
  	end    
})



local Section = Tab:AddSection({
	Name = "Utility"
})


Tab:AddButton({
	Name = "BTools",
	Callback = function()
a = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
a.BinType = 2
b = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
b.BinType = 3
c = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
c.BinType = 4
end})
	
Tab:AddButton({
	Name = "Xray",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/newxray/main/op')))()
    OrionLib:MakeNotification({
	Name = "Xray successful!",
	Content = "Press X to toggle xray!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end})
	

Tab:AddButton({
	Name = "Anti Fling",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/antifling/main/source')))()
  	end    
})


Tab:AddButton({
	Name = "ClickTP",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/ClickTp/main/tool')))()
  	end    
})


Tab:AddButton({
	Name = "Explorer",
	Callback = function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
  	end    
})


Tab:AddButton({
	Name = "Infinite Jump",
	Callback = function()
      		    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

  	end    
})


Tab:AddButton({
	Name = "ESP",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNuggetEater05/ekaMiffutSmodnaR/main/GlobalR6SkeletonESP.lua"))()

shared.BoneESP_Settings = {
    Circle_Visible = false,
    Circle_Radius = 3,
    BoneESP_Color = Color3.fromRGB(255,255,255)
}
  	end    
})


Tab:AddButton({
	Name = "Invisibility",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/Invisible32/main/new"))()
    OrionLib:MakeNotification({
	Name = "Loaded Invisibility!",
	Content = "Press E to go visible/invisible",
	Image = "rbxassetid://4483345998",
	Time = 5
})
  	end    
})


Tab:AddButton({
	Name = "Server Stat Icons",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/qSQKxrkt", true))()
  	end    
})


Tab:AddButton({
	Name = "Push To Talk [VC]",
	Callback = function()
    local VoiceChat = game:GetService("VoiceChatInternal");
local UserInputService = game:GetService("UserInputService");

local toggleKey = "T";
local enumKey = Enum.KeyCode[toggleKey];
local vc_enabled = true; --Don't touch this

local function pushToTalk(inputObj)
    if inputObj.KeyCode ~= enumKey then return; end

    vc_enabled = (not vc_enabled);
    VoiceChat:PublishPause(vc_enabled);
end

UserInputService.InputBegan:Connect(pushToTalk);
UserInputService.InputEnded:Connect(pushToTalk);
  	end    
})

Tab:AddButton({
	Name = "Chat Bypass",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/ChatBypass.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Display Name Remover",
	Callback = function()
    local Players = game:FindService("Players")

require(game:GetService("Chat"):WaitForChild("ClientChatModules").ChatSettings).PlayerDisplayNamesEnabled = false

local function rename(character,name)
    repeat task.wait() until character:FindFirstChildWhichIsA("Humanoid")
    character:FindFirstChildWhichIsA("Humanoid").DisplayName = name
end

for i,v in next, Players:GetPlayers() do
    if v.Character then
        v.DisplayName = v.Name
        rename(v.Character,v.Name)
    end
    v.CharacterAdded:Connect(function(char)
        rename(char,v.Name)
    end)
end

Players.PlayerAdded:Connect(function(plr)
    plr.DisplayName = plr.Name
    plr.CharacterAdded:Connect(function(char)
        rename(char,plr.Name)
    end)
end)
  	end    
})

Tab:AddButton({
	Name = "Auto Clicker",
	Callback = function()
    local time = 0.01 --decrease if too slow increase if too fast

click = false
m = game.Players.LocalPlayer:GetMouse()
m.KeyDown:connect(function(key)
if key == "v" then
if click == true then click = false
elseif
click == false then click = true

while click == true do 
wait(time)
mouse1click()
end
end
end
end)
  	end    
})

Tab:AddButton({
	Name = "Chat Art",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/omegachadgaming/mongus/main/main.lua", true))()
  	end    
})



local Section = Tab:AddSection({
	Name = "Graphics"
})


Tab:AddButton({
	Name = "FPS Booster",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/FPSBooster/main/xd"))()
  	end    
})


Tab:AddButton({
	Name = "Graphics Enhancer",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/Graphics-Enhancer/main/fe"))()
  	end    
})


local Tab = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://6034287594",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Character Customization"
})


Tab:AddButton({
	Name = "Headless [R15 & R6]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Headless", true))()
  	end    
})


Tab:AddButton({
	Name = "Korblox Right Leg [R15 ONLY]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Right%20Leg", true))()
  	end    
})


Tab:AddButton({
	Name = "Korblox Left Leg [R15 ONLY]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Left%20leg", true))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Faces"
})


Tab:AddButton({
	Name = "Red Beast Mode [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://129003756" 		
  	end    
})


Tab:AddButton({
	Name = "Playful Vampire [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://6779437898" 		
  	end    
})


Tab:AddButton({
	Name = "Super Super Happy Face [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://6779442089"
  	end    
})


Tab:AddButton({
	Name = "Yum! [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://6779401729"
  	end    
})



Tab:AddButton({
	Name = "Red Glowing Eyes [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://6779462397"
  	end    
})


Tab:AddButton({
	Name = "Prankster [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://20052028"
  	end    
})


Tab:AddButton({
	Name = "ROBLOX Madness [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://479872791"
  	end    
})


Tab:AddButton({
	Name = "The Dog Whisper [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://34764373"
  	end    
})


Tab:AddButton({
	Name = "Evil Skeptic [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://110287983"
  	end    
})


Tab:AddButton({
	Name = "Red Tango [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://629930519"
  	end    
})


Tab:AddButton({
	Name = "Angelic [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://45083898"
  	end    
})


Tab:AddButton({
	Name = "Green Glowing Eyes [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://398676207"
  	end    
})


Tab:AddButton({
	Name = "Troublemaker [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://22920500"
  	end    
})


Tab:AddButton({
	Name = "Paintball Enthusiast [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://23310996"
  	end    
})


Tab:AddButton({
	Name = "Grandma's Lipstick [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://51241479"
  	end    
})


Tab:AddButton({
	Name = "Facepalm [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://30394593"
  	end    
})


Tab:AddButton({
	Name = "Country Morning [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://51241521"
  	end    
})


Tab:AddButton({
	Name = "Optimist [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://21024598"
  	end    
})


Tab:AddButton({
	Name = "Camoface [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://24441824"
  	end    
})


Tab:AddButton({
	Name = "Bandage [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://20418584"
  	end    
})


Tab:AddButton({
	Name = "Silver Punk Face [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://387256104"
  	end    
})


Tab:AddButton({
	Name = "Green Whatchoo Talkin' Bout [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://629936597"
  	end    
})


Tab:AddButton({
	Name = "Red RAWR [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://66329788"
  	end    
})


Tab:AddButton({
	Name = "Blizzard Beast Mode [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://209712379"
  	end    
})


Tab:AddButton({
	Name = "Tattletale [R15 & R6]",
	Callback = function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.Head.face.Texture = "rbxassetid://26343132"
  	end    
})




-- Hats section --
-- Here there will be limited hats such as the dominus. & there will maybe have also hairs. --
local Section = Tab:AddSection({
	Name = "Valkyrie"
})

Tab:AddButton({
	Name = "Black Valkyrie [R15 & R6]",
	Callback = function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(c, d, b, _, a, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = b
            f.Part1 = _
            f.C0 = a
            f.C1 = e
            f.Parent = d
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 124730194
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
        end
})


Tab:AddButton({
	Name = "Emerald Valkyrie [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, c, b, d, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = b
            f.C0 = d
            f.C1 = e
            f.Parent = a
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, e)
            e.Parent = c
            local d = e:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = b(c, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = e.AttachmentPoint
                        _("HeadWeld", c, c, d, a, b)
                    end
                end
            end
        end
        local _ = 2830437685
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Violet Valkyrie [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, c, a, b, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = c
            f.Part1 = a
            f.C0 = b
            f.C1 = _
            f.Parent = d
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1402432199
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Valiant Valkyrie of Testing [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(_, b, a, d, e, c)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = d
            f.C0 = e
            f.C1 = c
            f.Parent = b
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        b("HeadWeld", c, c, e, _, a)
                    end
                end
            end
        end
        local _ = 7781687598
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Valkyrie Helm [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 1365767
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Sparkle Time Valkyrie [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
            f.Parent = d
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1180433861
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Ice Valkyrie [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(a, _, b, c, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = b
            f.Part1 = c
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, a)
            a.Parent = e
            local c = a:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = b(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        _("HeadWeld", d, d, c, b, a)
                    end
                end
            end
        end
        local _ = 4390891467
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


local Section = Tab:AddSection({
	Name = "Fiery Horns"
})


Tab:AddButton({
	Name = "Fiery Horns of the Netherworld [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(c, a, e, d, b, _)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = e
            f.Part1 = d
            f.C0 = b
            f.C1 = _
            f.Parent = a
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(e, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 215718515
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Frozen Horns of the Frigid Planes [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, c)
            c.Parent = e
            local d = c:FindFirstChild("Handle")
            if d then
                local b = d:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(e, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local e = e:FindFirstChild("Head")
                    if e then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = c.AttachmentPoint
                        _("HeadWeld", e, e, d, b, a)
                    end
                end
            end
        end
        local _ = 74891470
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Poisoned Horns of the Toxic Wasteland [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, e, _, b, d, a)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = b
            f.C0 = d
            f.C1 = a
            f.Parent = e
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(b, c)
            c.Parent = b
            local d = c:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = a(b, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local e = b:FindFirstChild("Head")
                    if e then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", e, e, d, a, b)
                    end
                end
            end
        end
        local _ = 1744060292
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


local Section = Tab:AddSection({
	Name = "Dominus's"
})



Tab:AddButton({
	Name = "Dominus Vespertilio [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(d, a)
            a.Parent = d
            local c = a:FindFirstChild("Handle")
            if c then
                local e = c:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = b(d, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local d = d:FindFirstChild("Head")
                    if d then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        _("HeadWeld", d, d, c, b, a)
                    end
                end
            end
        end
        local _ = 96103379
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Dominus Rex [R15 & R6]",
	Callback = function()
            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, b, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = e
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, _)
            _.Parent = c
            local d = _:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = a(c, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 250395631
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Dominus Praefectus [R15 & R6]",
	Callback = function()
	            function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function a(a, _, e, c, d, b)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = e
            f.Part1 = c
            f.C0 = d
            f.C1 = b
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(e, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        a("HeadWeld", c, c, d, b, _)
                    end
                end
            end
        end
        local _ = 527365852
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Dominus Messor [R15 & R6]",
	Callback = function()
	    	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, _, a)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = _
            f.C1 = a
            f.Parent = c
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local c = e:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(_, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = _:FindFirstChild("Head")
                    if d then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", d, d, c, _, a)
                    end
                end
            end
        end
        local _ = 64444871
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Dominus Infernus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, d, b, _, a, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = b
            f.Part1 = _
            f.C0 = a
            f.C1 = e
            f.Parent = d
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, d)
            d.Parent = a
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(a, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = a:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 31101391
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Dominus Frigidus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, _, a, b, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = a
            f.Part1 = b
            f.C0 = d
            f.C1 = e
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, d)
            d.Parent = a
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(a, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = a:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 48545806
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Dominus Formidulosus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = c
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local c = _:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", d, d, c, a, _)
                    end
                end
            end
        end
        local _ = 4255053867
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Dominus Empyreus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 21070012
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


Tab:AddButton({
	Name = "Dominus Aureus [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
            f.Parent = d
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 138932314
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Dominus Astra [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 162067148
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

local Section = Tab:AddSection({
	Name = "Sparkle Time Fedora's"
})


Tab:AddButton({
	Name = "Sky-Blue-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = a
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, c)
            c.Parent = a
            local d = c:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = b(a, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local e = a:FindFirstChild("Head")
                    if e then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", e, e, d, a, b)
                    end
                end
            end
        end
        local _ = 493476042
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function a(_, b, a, d, e, c)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = d
            f.C0 = e
            f.C1 = c
            f.Parent = b
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(e, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        a("HeadWeld", c, c, d, b, _)
                    end
                end
            end
        end
        local _ = 1285307
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Teal-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, _, a)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = _
            f.C1 = a
            f.Parent = c
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, e)
            e.Parent = _
            local d = e:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 147180077
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Green-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, d)
            d.Parent = c
            local e = d:FindFirstChild("Handle")
            if e then
                local b = e:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(c, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = d.AttachmentPoint
                        _("HeadWeld", c, c, e, a, b)
                    end
                end
            end
        end
        local _ = 100929604
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Midnight-Blue-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, c, e, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = c
            f.C0 = e
            f.C1 = d
            f.Parent = a
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, b)
            b.Parent = e
            local c = b:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = b.AttachmentPoint
                        _("HeadWeld", d, d, c, a, b)
                    end
                end
            end
        end
        local _ = 119916949
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Red-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, b, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = e
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 72082328
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Purple-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, b, a, e, c, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = e
            f.C0 = c
            f.C1 = d
            f.Parent = b
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, e)
            e.Parent = c
            local d = e:FindFirstChild("Handle")
            if d then
                local b = d:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(c, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = e.AttachmentPoint
                        _("HeadWeld", c, c, d, a, b)
                    end
                end
            end
        end
        local _ = 63043890
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Black-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, e, c, d, b, a)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = d
            f.C0 = b
            f.C1 = a
            f.Parent = e
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, c)
            c.Parent = a
            local e = c:FindFirstChild("Handle")
            if e then
                local d = e:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = b(a, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = a:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", d, d, e, a, b)
                    end
                end
            end
        end
        local _ = 259423244
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "White-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, a, b, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = a
            f.C0 = b
            f.C1 = _
            f.Parent = e
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(e, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 1016143686
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Pink-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(d, _, a, b, c, e)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = a
            f.Part1 = b
            f.C0 = c
            f.C1 = e
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, d)
            d.Parent = c
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = b(c, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = d.AttachmentPoint
                        _("HeadWeld", c, c, e, a, b)
                    end
                end
            end
        end
        local _ = 334663683
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Orange-Sparkle-Time-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
            f.Parent = e
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        b("HeadWeld", c, c, e, _, a)
                    end
                end
            end
        end
        local _ = 215751161
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Bluesteel-Fedora [R15 & R6]",
	Callback = function()
	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
            return f
        end
        local function a(_, b)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == b then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = a(_, b)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(b, d)
            d.Parent = b
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(b, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = b:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 98346834
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})


local Section = Tab:AddSection({
	Name = "Roblox Admin Accessories"
})

Tab:AddButton({
	Name = "Golden Roblox Bowler [R15 & R6]",
	Callback = function()
    	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 2910028689
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Goldlika: Bloxstar [R15 & R6]",
	Callback = function()
        	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 4637651199
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

local Section = Tab:AddSection({
	Name = "Other limited hats"
})

Tab:AddButton({
	Name = "Black Iron Horns [R15 & R6]",
	Callback = function()
            	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 628771505
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Supa Dupa Fly Cap [R15 & R6]",
	Callback = function()
                	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1609401184
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Supa Fly Cap [R15 & R6]",
	Callback = function()
                    	        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 7636350
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Silverthorn Antlers [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 9255011
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "BIG: Silverthorn Antlers [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 477860473
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Golden Antlers [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 193659065
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "The Classic ROBLOX Fedora [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1029025
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Clockwork's Shades [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 11748356
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Clockwork's Headphones [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1235488
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Blue Clockwork Headphones [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1743903423
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "Silver King of the Night [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 439945661
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})

Tab:AddButton({
	Name = "The Void Star [R15 & R6]",
	Callback = function()
     function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 1125510
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
  	end    
})





local Section = Tab:AddSection({
	Name = "Avatar Animations"
})



	local buttons = script.Parent
	local Animate = game.Players.LocalPlayer.Character:WaitForChild("Animate")
	
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		Animate = game.Players.LocalPlayer.Character:WaitForChild("Animate")
	end)


Tab:AddButton({
	Name = "Zombie [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616168032"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616163682"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616161997"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616156119"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616157476"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Astronaut [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891667138"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891636393"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891627522"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891609353"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=891617961"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Bubbly [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=910034870"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=910025107"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=910016857"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=910001910"
		Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
		Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Cartoony [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742640026"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742638842"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742637942"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742636889"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=742637151"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Elder [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845403856"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845386501"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845398858"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845392038"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=845396048"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Knight [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=657552124"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=657564596"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=658409194"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=658360781"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=657600338"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Levitation [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616013216"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616010382"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616008936"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616003713"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616005863"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Mage [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707897309"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707861613"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707853694"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707826056"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=707829716"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Ninja [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656121766"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656118852"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656117878"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656114359"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=656115606"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})



Tab:AddButton({
	Name = "Pirate [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750785693"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750783738"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750782230"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750779899"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=750780242"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Robot [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616095330"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616091570"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616090535"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616086039"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616087089"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Stylish [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616146177"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616140816"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616139451"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616133594"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616134815"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "SuperHero [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616122287"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616117076"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616115533"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616104706"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=616108001"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Toy [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782843345"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782842708"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782847020"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782843869"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=782846423"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Vampire [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083473930"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083462077"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083455352"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083439238"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083443587"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Werewolf [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083178339"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083216690"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083218792"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083182000"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=1083189019"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


Tab:AddButton({
	Name = "Oldschool [R15 Only]",
	Callback = function()
    		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=5319828216"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=5319831086"
		Animate.walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319847204"
		Animate.run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319844329"
		Animate.jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319841935"
		Animate.climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319816685"
		Animate.fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=5319839762"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
  	end    
})


-- VisualWorks (Hats GUI...) -- 
local Section = Tab:AddSection({
	Name = "Other Hats/Accessories"
})


Tab:AddButton({
	Name = "VisualWorks (Hats/Accessories GUI) (NW)",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ForestIsPro/VisualWorks/main/FreeHats'))()
  	end    
})


-- The rainbow body parts section --
-- This section changes your body parts color to rainbow. --
local Section = Tab:AddSection({
	Name = "Rainbow Body Parts"
})


Tab:AddButton({
	Name = "Rainbow Head [R15 & R6]",
	Callback = function()
    -- Head
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Head = chr.Head
    while wait(0.1) do 
	Head.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Left Arm [R15 Only]",
	Callback = function()
    -- Left Arm
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local LeftUpperArm = chr.LeftUpperArm
    while wait(0.1) do 
	LeftUpperArm.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Right Arm [R15 Only]",
	Callback = function()
    -- Right Arm
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local RightUpperArm = chr.RightUpperArm
    while wait(0.1) do 
	RightUpperArm.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Torso [R15 Only]",
	Callback = function()
    -- Right Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local UpperTorso = chr.UpperTorso
    while wait(0.1) do 
	UpperTorso.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Left Leg [R15 Only]",
	Callback = function()
    -- Left Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local LeftUpperLeg = chr.LeftUpperLeg
    while wait(0.1) do 
	LeftUpperLeg.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Right Leg [R15 Only]",
	Callback = function()
    -- Right Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local RightUpperLeg = chr.RightUpperLeg
    while wait(0.1) do 
	RightUpperLeg.BrickColor = BrickColor.random() 
end
  	end    
})


local Section = Tab:AddSection({
	Name = "R6 Rainbow Body"
})


Tab:AddButton({
	Name = "Rainbow Head [R15 & R6]",
	Callback = function()
    -- Head
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Head = chr.Head
    while wait(0.1) do 
	Head.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Left Arm [R6 Only]",
	Callback = function()
    -- Left Arm
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Left Arm = chr["Left Arm"]
    while wait(0.1) do
	local Left Arm.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Right Arm [R6 Only]",
	Callback = function()
    -- Right Arm
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Right Arm = chr["Right Arm"]
    while wait(0.1) do
	local Right Arm.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Torso [R15 & R6]",
	Callback = function()
    -- Torso
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Torso = chr.Torso
    while wait(0.1) do 
	Torso.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Left Leg [R6 Only]",
	Callback = function()
    -- Right Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Left Leg = chr["Left Leg"]
    while wait(0.1) do
	local Left Leg.BrickColor = BrickColor.random() 
end
  	end    
})


Tab:AddButton({
	Name = "Rainbow Right Leg [R6 Only]",
	Callback = function()
    -- Right Leg
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    local Right Leg = chr["Right Leg"]
    while wait(0.1) do
	local Right Leg.BrickColor = BrickColor.random() 
end
  	end    
})



local Tab = Window:MakeTab({
	Name = "Hubs and GUIs",
	Icon = "rbxassetid://6031086173",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Total Hubs/GUIs: 23"
})

Tab:AddParagraph("Read!","Some of these Hubs are outdated that's why they're free. If you want the best experience with hubs, Use Synapse X or Script Ware. Also Check their discord for the required hats!")


local Section = Tab:AddSection({
	Name = "Hubs"
})


Tab:AddButton({
	Name = "Hat Hub",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/hARwGZpE",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	   setclipboard(tostring('https://pastebin.com/hARwGZpE'))
    loadstring(game:HttpGet('https://pastebin.com/raw/SLPrghST'))()
  	end    
})


Tab:AddButton({
	Name = "Ez Hub",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'))()
  	end    
})


Tab:AddButton({
	Name = "Fire X Hub",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/tyreltrijo/firex/main/firex'))()
  	end    
})


Tab:AddButton({
	Name = "LX63",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Gogogamer61/LXHub-Main/main/LXHub%20Main%20Script'),true))()
  	end    
})


Tab:AddButton({
	Name = "Shed's Bypasser V3",
	Callback = function()
    loadstring(game:HttpGet("https://the-shed.xyz/roblox/scripts/ChatBypass", true))()
  	end    
})


Tab:AddButton({
	Name = "Simplity",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/simplit/main/main"))()
  	end    
})


Tab:AddButton({
	Name = "Sniff Hub",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/2dgeneralspam1/Sniff-Hub/main/Sniff%20Hub'))()
  	end    
})


Tab:AddButton({
	Name = "Aspect Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/aspecthub/main/fe"))()
  	end    
})


Tab:AddButton({
	Name = "VG Hub",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
  	end    
})


Tab:AddButton({
	Name = "MrDestroyer Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/MrDestroyerHub/main/opfe"))()
  	end    
})


Tab:AddButton({
	Name = "Beach Script Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/followz/Amazement-v2.2/main/Protected%20(16).lua"))()
  	end    
})


Tab:AddButton({
	Name = "Orca",
	Callback = function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua"))()
  	end    
})


Tab:AddButton({
	Name = "DomainX Hub",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source',true))()
  	end    
})

Tab:AddButton({
	Name = "Owl Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
  	end    
})


Tab:AddButton({
	Name = "Syntax V2",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Vallater/SyntaxV2/b7a88a7b84174e3c2220c7a8ca477e40699ddd2c/Syntaxontop'),true))()
    OrionLib:MakeNotification({
	Name = "Key!",
	Content = "The key is Syntaxbesthub",
	Image = "rbxassetid://4483345998",
	Time = 5
})
  	end    
})


Tab:AddButton({
	Name = "Nullware V3",
	Callback = function()
      		local LocalPlayer = game:GetService("Players").LocalPlayer
local Heartbeat = game:GetService("RunService").Heartbeat

Heartbeat:Connect(function()
    LocalPlayer.MaximumSimulationRadius = math.huge
    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
end)
-- Script above is a fix to limbs falling --

-- Nullware Hub V3 | --
getgenv().Theme = "Purple" -- To change the UI Theme, set this to one of the following options: "Red", "Purple", "Blue", "Green", "Yellow"
loadstring(game:HttpGet("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/2d722888a388017c18028cd434c43a25/raw/dcccf1027fe4b90780e47767aaf584389c9d7771/EULma3fU90PUOKUn?identifier=".. (function()local a=""for b=1,256 do local c=math.random(1,3)a=a..string.char(c==1 and math.random(48,57)or c==2 and math.random(97,122)or c==3 and math.random(65,90))end;return a end)()))()
  	end    
})


Tab:AddButton({
	Name = "XXHub",
	Callback = function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/YVE4njap'),true))()
  	end    
})





local Section = Tab:AddSection({
	Name = "GUIs"
})


Tab:AddButton({
	Name = "c00lgui v2",
	Callback = function()
    loadstring(game:GetObjects("rbxassetid://9827584846")[1].Source)()
  	end    
})


Tab:AddButton({
	Name = "FE R6 Animation GUI",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/r6animationgui/main/fe"))()
  	end    
})


Tab:AddButton({
	Name = "RemX",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Henry887/RemX-Script-Hub/main/main.lua'),true))()
  	end    
})


Tab:AddButton({
	Name = "Ultimate Trolling GUI V3",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukez/Scripts/main/UTG%20V3%20RAW"))() 
  	end    
})


Tab:AddButton({
	Name = "R6 Posing GUI",
	Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/sZMn81tZ'))()
  	end    
})


Tab:AddButton({
	Name = "VisualWorks (Hats/Accessories GUI)",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ForestIsPro/VisualWorks/main/FreeHats'))()
  	end    
})



local Tab = Window:MakeTab({
	Name = "FE Scripts",
	Icon = "rbxassetid://6026568213",
	PremiumOnly = false
})

Tab:AddParagraph("Important!","All of these FE Scripts do require hats. The link to the hats will be copied to your clipboard once you click the button(s). If the script doesnt work make sure your wearing the right hats! Also use Synapse X to have better experience with these scripts. Some scripts dont work with free executors.")


----------------------------------------------------------------------------------
-- New Section --
-- FE Event Hats --
----------------------------------------------------------------------------------
local Section = Tab:AddSection({
	Name = "FE Event Hats"
})


Tab:AddButton({
	Name = "DinoBlox [R6 Only]",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/5Kt42cfe",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/5Kt42cfe'))
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/fedinoblox/main/nonoti'),true))()
  	end    
})


Tab:AddButton({
	Name = "Ice Cream [R6 Only]",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/9560392730/Ice-Cold-Shaved-Ice",
	Image = "rbxassetid://4483345998",
	Time = 5
})
  	OrionLib:MakeNotification({
	Name = "Controls!",
	Content = "E to lick ice cream and Q to stop licking",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://www.roblox.com/catalog/9560392730/Ice-Cold-Shaved-Ice'))
    --hats
--https://www.roblox.com/catalog/9560392730/Ice-Cold-Shaved-Ice

--controls :
--E : To lick ice cream 
--Q : To stop licking 

loadstring(game:HttpGet("https://raw.githubusercontent.com/PYXDYT/FE-ICE-CREAM/main/V1"))()
  	end    
})


Tab:AddButton({
	Name = "Jet V1 [R6 Only]",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/QqbZtXMj",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/QqbZtXMj'))
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/jetv1/main/script'))()
  	end    
})


Tab:AddButton({
	Name = "Blue Flame Hoverboard [R6 Only]",
	Callback = function()
	        OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/TCKUyjx7",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/TCKUyjx7'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/bluehoverboard/main/fescript'),true))()
  	end    
})


Tab:AddButton({
	Name = "Sofa Pc [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/XjdFXGdw",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/XjdFXGdw'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/pcsofa/main/scriptverycool'),true))()
  	end    
})


Tab:AddButton({
	Name = "Eiffel Tower [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/skJetUDu",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/skJetUDu'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PYXDYT/FE-TOWER/main/V1"))()
  	end    
})


Tab:AddButton({
	Name = "BMX Ride V2 [R6 Only]",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/aX8J7W82",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/aX8J7W82'))
loadstring(game:HttpGet(('https://pastefy.ga/6SiK0qV3/raw'),true))()
  	end    
})


Tab:AddButton({
	Name = "Cursed Bat Cube [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/npFNxgQC",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/npFNxgQC'))	    
    loadstring(game:HttpGet(('https://pastefy.ga/UfJvPD1G/raw'),true))()
  	end    
})


Tab:AddButton({
	Name = "Hoverboard V2 [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/tCf161BV",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/tCf161BV'))
    OrionLib:MakeNotification({
	Name = "Controls!",
	Content = "Modes: Q & E",
	Image = "rbxassetid://4483345998",
	Time = 5
})
loadstring(game:HttpGet(('https://pastebin.com/raw/YLv2KSZj'),true))()
  	end    
})


Tab:AddButton({
	Name = "Big Boy [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/9661543986/Nike-Shoebox-Costume",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://www.roblox.com/catalog/9661543986/Nike-Shoebox-Costume'))
    loadstring(game:HttpGet('https://paste.ee/r/gQOXW', true))()
  	end    
})


Tab:AddButton({
	Name = "Ghast [R6 Only]",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/VJU8brdw",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/VJU8brdw'))
loadstring(game:HttpGet('https://pastefy.ga/zFn0z6VV/raw'))()
      		
  	end    
})


Tab:AddButton({
	Name = "Blue Flame Power [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/KF1PBAQg",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://pastebin.com/raw/KF1PBAQg'))	    
      		loadstring("\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\83\116\97\114\116\101\114\71\117\105\34\41\58\83\101\116\67\111\114\101\40\34\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110\34\44\32\123\32\10\9\84\105\116\108\101\32\61\32\34\77\97\100\101\32\66\121\32\73\109\32\80\97\116\114\105\99\107\34\59\10\9\84\101\120\116\32\61\32\34\34\59\10\9\73\99\111\110\32\61\32\34\34\125\41\10\68\117\114\97\116\105\111\110\32\61\32\49\54\59\10\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\102\121\46\103\97\47\111\57\90\104\120\107\81\48\47\114\97\119\39\41\44\116\114\117\101\41\41\40\41\10")()
  	end    
})


Tab:AddButton({
	Name = "Hog Rider [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/j2vnk0vJ",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/j2vnk0vJ'))	    
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/pigr/main/hogrider'))()
  	end    
})


Tab:AddButton({
	Name = "Flying Umbrella [R6 Only]",
	Callback = function()
      	OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/9350274205/Vans-Black-White-Checkerboard-Umbrella",
	Image = "rbxassetid://4483345998",
	Time = 5
})	
     	setclipboard(tostring('https://www.roblox.com/catalog/9350274205/Vans-Black-White-Checkerboard-Umbrella'))		
      loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/FEFlyingUmbrella/main/source'))()		
  	end    
})


Tab:AddButton({
	Name = "Katana [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/7548993875/Slasher",
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard(tostring('https://www.roblox.com/catalog/7548993875/Slasher'))    
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\103\105\116\104\117\98\46\99\111\109\47\73\99\121\49\82\90\47\56\117\103\106\115\108\97\115\104\101\114\99\111\110\118\101\114\116\54\55\102\121\118\104\98\106\118\104\98\113\102\115\100\120\47\114\97\119\47\109\97\105\110\47\55\103\117\98\106\110\105\118\56\121\55\116\103\121\98\117\106\105\56\54\102\103\121\98\39\41\41\40\41\10")()
  	end    
})


Tab:AddButton({
	Name = "Pet Dog [R6 & R15]",
	Callback = function()
	   OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/Fsf3rujC",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/Fsf3rujC'))     
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/petdog/main/feop"))()		
  	end    
})


Tab:AddButton({
	Name = "Rocket [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/ferocket/main/hats",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/ferocket/main/hats'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/ferockett/main/source"))()
  	end    
})


Tab:AddButton({
	Name = "Giant Cube Man [R6 Only]",
	Callback = function()
    	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/giantcubeman/main/hats",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/giantcubeman/main/hats'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/giantcubemana/main/source"))()
  	end    
})


Tab:AddButton({
	Name = "Hoverskater [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/qXa2jMnL",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/qXa2jMnL'))
    --Fe blue flame hoverboard
--https://www.roblox.com/catalog/6470135113/Fan-Hand-Sign-Why-Dont-We-WDW
--https://www.roblox.com/catalog/9560383533/Blue-Flame-Robo-Samurai
--[GET THIS HAT BEFORE JULY 8TH]

loadstring(game:HttpGet(('https://pastebin.com/raw/U2VHEdFB'),true))()
  	end    
})


----------------------------------------------------------------------------------
-- New section --
-- FE Free Hats --
----------------------------------------------------------------------------------
local Section = Tab:AddSection({
	Name = "FE Free Hats"
})


Tab:AddButton({
	Name = "Zombie [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/rFiVzH3Q",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	    setclipboard(tostring('https://pastebin.com/raw/rFiVzH3Q')) 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/FEZOM/main/zombie"))();
  	end    
})


Tab:AddButton({
	Name = "Gun [R6]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/prWGNSPB",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/prWGNSPB'))     
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/gun/main/m40gun"))();
  	end    
})


Tab:AddButton({
	Name = "Soccer Ball [R15 & R6]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/bWXNFt7T",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	    	setclipboard(tostring('https://pastebin.com/raw/bWXNFt7T'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fes/main/soccerball"))();
  	end    
})


Tab:AddButton({
	Name = "Titan Fling [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/FLLRSBG1",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/FLLRSBG1'))    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/TitanFling/main/op"))();
  	end    
})


Tab:AddButton({
	Name = "Fake VR [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Successfully loaded!",
	Content = "No hats required, your script has loaded.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fefake/main/vr"))()
  	end    
})


Tab:AddButton({
	Name = "Hat Orbit [R6 & R15]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Commands:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/jwAckWQ5",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/jwAckWQ5')) 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/hatspin/main/cool"))()
  	end    
})


----------------------------------------------------------------------------------
-- New section --
-- FE Paid Hats--
----------------------------------------------------------------------------------
local Section = Tab:AddSection({
	Name = "FE Paid Hats"
})


Tab:AddButton({
	Name = "Demon [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/4YzZwE6C",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/4YzZwE6C'))	    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/demonscript/main/source"))()
  	end    
})


Tab:AddButton({
	Name = "WideBoy [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/5074143464/Blue-Energy-Wings",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://www.roblox.com/catalog/5074143464/Blue-Energy-Wings'))
    loadstring(game:HttpGet('https://paste.ee/r/FYx2k', true))()
  	end    
})


Tab:AddButton({
	Name = "Tank V2 [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/EjNBRXGR",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/EjNBRXGR'))
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fetankv2/main/source"))()
  	end    
})


Tab:AddButton({
	Name = "Block Car [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/tdch8JYU",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/tdch8JYU'))    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/FEBlockcar/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Among Us V3 [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/3EJZEwhW",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/3EJZEwhW'))     
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/amongusv3/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Hammer Arm [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/3fiV0N5s",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/3fiV0N5s'))   
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/hammerarm/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Flying Gunner [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/LjY7qZSq",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/LjY7qZSq')) 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/flyinggunner/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Block Hammer [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://controlc.com/1becc5a1",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://controlc.com/1becc5a1')) 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/Blockhammer/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Red Samurai [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/B8F9HtwE",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/B8F9HtwE'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/kakabok1233453/asdasda/main/Red%20Samurai'),true))()
  	end    
})


Tab:AddButton({
	Name = "Minecart [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/k7VcbXBi",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/k7VcbXBi'))    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/kakabok1233453/asdasda/main/Minecart'),true))()
  	end    
})


Tab:AddButton({
	Name = "Snake [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/Zqx7gxvJ",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/Zqx7gxvJ'))   
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/fesnake/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Road Rogue [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/Leh4NSzr",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/Leh4NSzr')) 	    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/roadrogue/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Propeller [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/BWhBkH54",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/BWhBkH54'))	    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/propellerman/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Cop [R6 Only]",
	Callback = function()
	OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/JySNEdjA",
	Image = "rbxassetid://4483345998",
	Time = 5
})

	setclipboard(tostring('https://pastebin.com/raw/JySNEdjA'))    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/fecop/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Achromatic Glitcher [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/8hNKnjq1",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/8hNKnjq1'))
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/feglitcher/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Void Boss [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/4zNuAnzL",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/4zNuAnzL'))
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/voidboss/main/source', true))()	
  	end    
})


Tab:AddButton({
	Name = "Popcat [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/V6r6YR5q",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://pastebin.com/raw/V6r6YR5q'))	    
    --[[
Made By Ice & Fire
Discord: Ice & Fire#0001
Roblox: 09Ice_Fire09

The Pop Cat!

Controls:
e= sit, q= pop
r= wave
t= punch
f= idk
g= punch from black
z= yes
x= no

Hats:
https://www.roblox.com/catalog/6380246734/Pop-Cat
https://www.roblox.com/catalog/6065706256/Pop-Cat-Hoodie
https://www.roblox.com/catalog/8337370/Blockhead-Baseball-Cap
https://www.roblox.com/catalog/48474313/Red-Roblox-Cap
https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
https://www.roblox.com/catalog/62724852/Chestnut-Bun
https://www.roblox.com/catalog/451220849/Lavender-Updo
https://www.roblox.com/catalog/62234425/Brown-Hair
Cost: 133 Bobux

Made By Ice & Fire
Discord: Ice & Fire#0001
Roblox: 09Ice_Fire09
]]

loadstring(game:HttpGet(('https://raw.githubusercontent.com/hacker123454/x/main/Pop_Cat.txt'),true))()
  	end    
})


Tab:AddButton({
	Name = "Jeep [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/9666085843/DESERT-BEEP",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://www.roblox.com/catalog/9666085843/DESERT-BEEP'))	
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/jeepdarkeccentric/main/source'),true))()
  	end    
})


Tab:AddButton({
	Name = "Baseball Bat [R6 Only]",
	Callback = function()
	   OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/7063113820/Aluminium-Baseball-Bat",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://www.roblox.com/catalog/7063113820/Aluminium-Baseball-Bat'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/baseballbatfe/main/source'),true))()
  	end    
})


Tab:AddButton({
	Name = "Winged Gunner [R6 Only]",
	Callback = function()
	   OrionLib:MakeNotification({
	Name = "Necessary hat:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/hatsforwingedgunner/main/hats",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/hatsforwingedgunner/main/hats'))
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/wingedgunner/main/source'),true))()
  	end    
})


Tab:AddButton({
	Name = "Walking Cube V2 [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Walking Cube V2",
	Content = "Link copied to clipboard, https://www.roblox.com/catalog/5461538290/Sandwich-Costume",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://www.roblox.com/catalog/5461538290/Sandwich-Costume'))    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/FEWalkingCubeV2/main/source'),true))()
  	end    
})


Tab:AddButton({
	Name = "Shotgun [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/feshotgunhats/main/hats",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/feshotgunhats/main/hats'))        
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/feshotgun/main/source'),true))()
  	end    
})


Tab:AddButton({
	Name = "Sheep [R6 Only]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Necessary hats:",
	Content = "Link copied to clipboard, https://pastebin.com/raw/j9B201MY",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://pastebin.com/raw/j9B201MY'))   
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/fesheep/main/source'),true))()
  	end    
})


----------------------------------------------------------------------------------
-- New Section --
-- FE No Hats -- 
----------------------------------------------------------------------------------
local Section = Tab:AddSection({
	Name = "FE No Hats"
})


Tab:AddButton({
	Name = "Small Avatar V2 [R15 Only] [Scale]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Scale:",
	Content = "Link copied to clipboard, https://raw.githubusercontent.com/KRNL2/smallavatarscale/main/source",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://raw.githubusercontent.com/KRNL2/smallavatarscale/main/source')) 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/smallavatarv2/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Titan [R15 Only] [Scale]",
	Callback = function()
	    OrionLib:MakeNotification({
	Name = "Scale:",
	Content = "Link copied to clipboard, https://github.com/KRNL2/bodytype/blob/main/titan",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	setclipboard(tostring('https://github.com/KRNL2/bodytype/blob/main/titan'))    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/fesizechanger/main/titan', true))()
  	end    
})


Tab:AddButton({
	Name = "Winged Human [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fewinged/main/human"))()	
  	end    
})


Tab:AddButton({
	Name = "Dog [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/fedog/main/animation"))();
  	end    
})


Tab:AddButton({
	Name = "Huge Leg [R15 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg%20Resize'))()
  	end    
})


Tab:AddButton({
	Name = "Ragdoll Death [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/ragdolldeath/main/source'))()
  	end    
})


Tab:AddButton({
	Name = "Walk on Walls [R6 & R15]",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
  	end    
})


Tab:AddButton({
	Name = "Invisibility [R15 Only]",
	Callback = function()
    local removeNametags = false -- remove custom billboardgui nametags from hrp, could trigger anticheat

local plr = game:GetService("Players").LocalPlayer
local character = plr.Character
local hrp = character.HumanoidRootPart
local old = hrp.CFrame

if not character:FindFirstChild("LowerTorso") or character.PrimaryPart ~= hrp then
return print("unsupported")
end

if removeNametags then
local tag = hrp:FindFirstChildOfClass("BillboardGui")
if tag then tag:Destroy() end

hrp.ChildAdded:Connect(function(item)
if item:IsA("BillboardGui") then
task.wait()
item:Destroy()
end
end)
end

local newroot = character.LowerTorso.Root:Clone()
hrp.Parent = workspace
character.PrimaryPart = hrp
character:MoveTo(Vector3.new(old.X,9e9,old.Z))
hrp.Parent = character
task.wait(0.5)
newroot.Parent = hrp
hrp.CFrame = old
  	end    
})


Tab:AddButton({
	Name = "Mouse Fling [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/mousefling/main/source'))()
  	end    
})


Tab:AddButton({
	Name = "Creepy Crawler [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/-FeCreepyCrawler/main/anice'))()
  	end    
})




-- New Tab --
-- Animations --
local Tab = Window:MakeTab({
	Name = "Animations",
	Icon = "rbxassetid://6034754448",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "R6 Animations"
})


Tab:AddButton({
	Name = "Winged Master [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/wingedmaster/main/source'))()
  	end    
})


Tab:AddButton({
	Name = "Parkour V2 [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/parkourv2/main/source'))()
  	end    
})


Tab:AddButton({
	Name = "Default [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/defaultdance/main/source'))()
  	end    
})


Tab:AddButton({
	Name = "Da Feets [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/dafeets/main/source'))()
  	end    
})


Tab:AddButton({
	Name = "Rickroll [R6 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/rickroll/main/source', true))()
  	end    
})


Tab:AddButton({
	Name = "Human Car [R6 Only]",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/humancar/main/source', true))()
  	end    
})


local Section = Tab:AddSection({
	Name = "R15 Animations"
})


Tab:AddButton({
	Name = "Breakdance [R15 Only]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KRNL2/r15breakdance/main/source', true))()
  	end    
})


local Section = Tab:AddSection({
	Name = "R15 & R6 Animations"
})


Tab:AddButton({
	Name = "FrontFlip & BackFlip [R15 & R6]",
	Callback = function()
	wait(5)

--[[ Info ]]--

local ver = "2.00"
local scriptname = "feFlip"


--[[ Keybinds ]]--

local FrontflipKey = Enum.KeyCode.Z
local BackflipKey = Enum.KeyCode.X
local AirjumpKey = Enum.KeyCode.C


--[[ Dependencies ]]--

local ca = game:GetService("ContextActionService")
local zeezy = game:GetService("Players").LocalPlayer
local h = 0.0174533
local antigrav


--[[ Functions ]]--

function zeezyFrontflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character.Humanoid:ChangeState("Jumping")
		wait()
		zeezy.Character.Humanoid.Sit = true
		for i = 1,360 do 
			delay(i/720,function()
			zeezy.Character.Humanoid.Sit = true
				zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
			end)
		end
		wait(0.55)
		zeezy.Character.Humanoid.Sit = false
	end
end

function zeezyBackflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character.Humanoid:ChangeState("Jumping")
		wait()
		zeezy.Character.Humanoid.Sit = true
		for i = 1,360 do
			delay(i/720,function()
			zeezy.Character.Humanoid.Sit = true
				zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
			end)
		end
		wait(0.55)
		zeezy.Character.Humanoid.Sit = false
	end
end

function zeezyAirjump(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		wait()
		zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
	end
end


--[[ Binds ]]--

ca:BindAction("zeezyFrontflip",zeezyFrontflip,false,FrontflipKey)
ca:BindAction("zeezyBackflip",zeezyBackflip,false,BackflipKey)
ca:BindAction("zeezyAirjump",zeezyAirjump,false,AirjumpKey)

--[[ Load Message ]]--

print(scriptname .. " " .. ver .. " loaded successfully")
print("made by Zeezy#7203")

local notifSound = Instance.new("Sound",workspace)
notifSound.PlaybackSpeed = 1.5
notifSound.Volume = 0.15
notifSound.SoundId = "rbxassetid://170765130"
notifSound.PlayOnRemove = true
notifSound:Destroy()
game.StarterGui:SetCore("SendNotification", {Title = "feFlip", Text = "feFlip loaded successfully!", Icon = "rbxassetid://505845268", Duration = 5, Button1 = "Okay"})
  	end    
})


Tab:AddButton({
	Name = "Hamster Ball [R15 & R6]",
	Callback = function()
    local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

local SPEED_MULTIPLIER = 30
local JUMP_POWER = 60
local JUMP_GAP = 0.3

local character = game.Players.LocalPlayer.Character

for i,v in ipairs(character:GetDescendants()) do
   if v:IsA("BasePart") then
       v.CanCollide = false
   end
end

local ball = character.HumanoidRootPart
ball.Shape = Enum.PartType.Ball
ball.Size = Vector3.new(5,5,5)
local humanoid = character:WaitForChild("Humanoid")
local params = RaycastParams.new()
params.FilterType = Enum.RaycastFilterType.Blacklist
params.FilterDescendantsInstances = {character}

local tc = RunService.RenderStepped:Connect(function(delta)
   ball.CanCollide = true
   humanoid.PlatformStand = true
if UserInputService:GetFocusedTextBox() then return end
if UserInputService:IsKeyDown("W") then
ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
end
if UserInputService:IsKeyDown("A") then
ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
end
if UserInputService:IsKeyDown("S") then
ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
end
if UserInputService:IsKeyDown("D") then
ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
end
--ball.RotVelocity = ball.RotVelocity - Vector3.new(0,ball.RotVelocity.Y/50,0)
end)

UserInputService.JumpRequest:Connect(function()
local result = workspace:Raycast(
ball.Position,
Vector3.new(
0,
-((ball.Size.Y/2)+JUMP_GAP),
0
),
params
)
if result then
ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
end
end)

Camera.CameraSubject = ball
humanoid.Died:Connect(function() tc:Disconnect() end)
  	end    
})



-- New Tab --
-- Admins --
local Tab = Window:MakeTab({
	Name = "Admins",
	Icon = "rbxassetid://6031265978",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Admins"
})


Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end    
})


Tab:AddButton({
	Name = "Shattervest Admin",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/Shattervast-Admin/main/fe")) ()
  	end    
})


Tab:AddButton({
	Name = "CMD-X",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
  	end    
})


Tab:AddButton({
	Name = "Reviz Admin",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/KRNL2/revizz/main/adminfe'),true))()
  	end    
})


Tab:AddButton({
	Name = "Fates Admin",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
  	end    
})


Tab:AddButton({
	Name = "Graphene Admin",
	Callback = function()
    pcall(function() loadstring(game:GetObjects("rbxassetid://10572164822")[1].Source)() end)
  	end    
})


Tab:AddButton({
	Name = "Homebrew Admin",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'))()
  	end    
})


-- [[
-- Game Hubs --
-- This is where guis/hubs will be put here.
--]]

local Tab = Window:MakeTab({
	Name = "Game Hubs",
	Icon = "rbxassetid://6022668907",
	PremiumOnly = false
})

-- Mining Simulator 2 section --
local Section = Tab:AddSection({
	Name = "Mining Simulator 2"
})


Tab:AddButton({
	Name = "Mining Simulator 2",
	Callback = function()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/miningsim2/main/rewrite.lua')()
  	end    
})

-- Da hood section -- 
local Section = Tab:AddSection({
	Name = "Da Hood"
})


Tab:AddButton({
	Name = "Dimag16's GUI",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Dimag16/DimagX_NEW/main/dimagx', true))()
  	end    
})


Tab:AddButton({
	Name = "Enclosed's GUI",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Pvpahh/enclosed/main/enclosed'))()
 
--discord.gg/uucHz2d3
  	end    
})


Tab:AddButton({
	Name = "SpaceX",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/spacexrandom/Lua/main/DaHood",true))()
  	end    
})


Tab:AddButton({
	Name = "Vortex's GUI",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ImagineProUser/vortexdahood/main/vortex", true))()
  	end    
})


Tab:AddButton({
	Name = "Da Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NoUGotbannedlol/DaHubV3/main/Launch"))()
  	end    
})


Tab:AddButton({
	Name = "Lora X (Autofarm)",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/dahoodautofarm/main/source"))()
  	end    
})


Tab:AddButton({
	Name = "Autofarm #2 [NW]",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/rapnz/scripts/master/DaHoodFarm.lua"))()
  	end    
})


Tab:AddButton({
	Name = "Autofarm GUI",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/JsfuayASbsfuWGakCmhzVwaKJsfuayASbsfuWGa/EternalJNshAIw-mpaAkw-VkbgA/main/eternal.lua')))()
  	end    
})


-- Ragdoll Engine section --
local Section = Tab:AddSection({
	Name = "Ragdoll Engine"
})


Tab:AddButton({
	Name = "Cryptonic Hub",
	Callback = function()
    --[[ 
Huge props to https://v3rmillion.net/member.php?action=profile&uid=1052423 [dawid] for the UI Lib
script made by martiin#0015, wmw#7622 and demvkrao#0069
--]]

loadstring(game:HttpGet('https://raw.githubusercontent.com/martinelcrac/cryptonichub/main/Ragdollengine.lua'))()
  	end    
})


Tab:AddButton({
	Name = "Malware V2",
	Callback = function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/H20CalibreYT/462f6e6236a9371130f113def6549bb1/raw/'))()
  	end    
})


-- Cant say the word section --
local Section = Tab:AddSection({
	Name = "Cant Say the Word"
})


Tab:AddButton({
	Name = "Cant Say the Word GUI",
	Callback = function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/KRNL2/CantSayTheWordScript/main/fe")))()
  	end    
})


-- Pet Simulator X section --
local Section = Tab:AddSection({
	Name = "Pet Simulator X"
})


Tab:AddButton({
	Name = "Project Meow",
	Callback = function()
    loadstring(game:HttpGet("https://www.scriptblox.com/raw/Project-Meow_421"))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Southwest Florida Beta"
})


Tab:AddButton({
	Name = "Southwest Florida Beta GUI (Eltoro v.27ia)",
	Callback = function()
    loadstring(game:HttpGet("https://cheatersoul.click/eltorohub.html"))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Flee the Facility"
})


Tab:AddButton({
	Name = "Flee the Facility GUI #1",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/khoaScript/scripts/master/flee-the-facility.lua"))()
  	end    
})


Tab:AddButton({
	Name = "Flee the Facility GUI #2",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Drifty96/ftfgui/main/ftfgui", true))()
  	end    
})


local Section = Tab:AddSection({
	Name = "MeepCity"
})


Tab:AddButton({
	Name = "Main MeepCity GUI",
	Callback = function()
    -- MeepCracked
    -- made by evo
    loadstring(game:HttpGet('https://raw.githubusercontent.com/synolope/meepcracked/main/loader.lua'))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Tower of Hell"
})


Tab:AddButton({
	Name = "Tower of Hell GUI #1",
	Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/BbVHjH56'))()
  	end    
})


Tab:AddButton({
	Name = "Tower of Hell GUI #2",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/03koios/TowerOfHell/main/README.md"))()
  	end    
})


Tab:AddButton({
	Name = "Pog Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/03koios/TowerOfHell/main/README.md"))()
  	end    
})


Tab:AddButton({
	Name = "Proxima Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
  	end    
})


Tab:AddButton({
	Name = "WeebGang's Tower of Hell GUI",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iiProductionz/Floater-Scripts/main/WaifuEdition/Tower%20Of%20Hell"))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Raise a Floppa 2"
})


Tab:AddButton({
	Name = "Leo Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tip52/Leo-hub/main/loader.lua"))()
  	end    
})


Tab:AddButton({
	Name = "King Scripts",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Raise-A-Floppa-2/main/Gui'))()
  	end    
})


Tab:AddButton({
	Name = "RIP's Raise a Floppa 2 GUI",
	Callback = function()
	--Script :
    _G.RedGUI = true
    _G.Theme = "Dark" -- Must disable or remove _G.RedGUI to use
    --Themes: Light, Dark, Mocha, Aqua and Jester
    _G.V3rmillion = true
 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/raiseafloppa.lua"))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Limited Words"
})


Tab:AddButton({
	Name = "Auto Daily Spin",
	Callback = function()
    --Credits to 1 800 PAIN#0357 bc Wxer Softworks are fucking retards

if fireproximityprompt then
    game:GetService"RunService".RenderStepped:Connect(function()
        for i,v in pairs(game.Workspace.Spin2Win:GetDescendants()) do
            if v.Name == "Spin2Win" and v.ClassName == "Part" then
                local s_position = v.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(s_position)
                fireproximityprompt(v.ProximityPrompt, 1)
            end
        end
    end)
end
  	end    
})


local Section = Tab:AddSection({
	Name = "Car Crushers 2"
})


Tab:AddButton({
	Name = "SoggyHub",
	Callback = function()
    loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
  	end    
})


Tab:AddButton({
	Name = "Car Crushers 2 Autofarm GUI #1",
	Callback = function()
    -- // Configuration: \\ --

    shared.settings = {
    ['DarkMode'] = true; -- Dark mode on the script itself.
    ['AntiAfk'] = true; -- Enable anti-afk
    ['CloseBind'] = Enum.KeyCode.Semicolon; -- Set this to your preferred key to close the menu.
    }

    -- // Loader: \\ --

    loadstring(game:HttpGet('https://pastebin.com/raw/T7ERd3e8'))()
  	end    
})


Tab:AddButton({
	Name = "V.G Hub",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
  	end    
})


Tab:AddButton({
	Name = "saucekid's Car Crushers 2 Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/saucekid/scripts/main/CarCrushers.lua"))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Brookhaven RP"
})


Tab:AddButton({
	Name = "Ice Hub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Bedwars"
})


Tab:AddButton({
	Name = "Vape GUI",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/loadstring'))()
  	end    
})


local Section = Tab:AddSection({
	Name = "Murder Mystery 2"
})


Tab:AddButton({
	Name = "Eclipse Hub",
	Callback = function()
    getgenv().mainKey = "nil" local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
  	end    
})


Tab:AddButton({
	Name = "Vynixu's MM2 Hub",
	Callback = function()
    loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
  	end    
})


local Section = Tab:AddSection({
	Name = "PLS Donate"
})


Tab:AddButton({
	Name = "Fake Donation GUI",
	Callback = function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/o5u3/PLS-Donate/main/Fake-Donate.lua")))()
  	end    
})


Tab:AddButton({
	Name = "V.G Hub",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
  	end    
})


Tab:AddButton({
	Name = "R15 GUI",
	Callback = function()
    loadstring(game:HttpGet("https://gitlab.com/Tsuniox/lua-stuff/-/raw/master/R15GUI.lua"))()
  	end    
})


Tab:AddButton({
	Name = "Find Rich People / Server Hop",
	Callback = function()
    local minimum = 1500 -- enter your minimum robux donated amount here

loadstring(game:HttpGet("https://hypernite.xyz/Scripts/Ukraine.lua"))()

if game.PlaceId ~= 8737602449 then return end -- failed attempt at autoexec compatability below, feel free to try and fix it

if not game.IsLoaded then game.Loaded:Wait() end

--wait(.5)

local highestdono = 0



local highestplr = nil



--writefile("MinimumDonation.txt",tostring(minimum))



for i,v in pairs(game:GetService("Players"):GetPlayers()) do



   repeat wait() until v:FindFirstChild("leaderstats")



end



local function getDonated(plr)



   local stats = plr:WaitForChild("leaderstats")



   local donated = stats:FindFirstChild("Donated")



   if donated == nil then



       return 0



   end



   return donated.Value



end



local function shop() -- infinite yield serverhop



   local x = {}



   for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do



    if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then



    x[#x + 1] = v.id



    end



   end



   if #x > 0 then



    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])



    game:GetService("GuiService").UiMessageChanged:Wait()



       shop()



   else



    return error("Couldn't find a server.")



   end



end



for i,v in pairs(game:GetService("Players"):GetPlayers()) do



   if i == 1 then continue end



   local dono = getDonated(v)



   if dono > highestdono then



       highestdono = dono



       highestplr = v



   end



end



if highestdono >= minimum then



   local richPlayers = {}



   for i,v in pairs(game:GetService("Players"):GetPlayers()) do



       if i == 1 then continue end



       if getDonated(v) >= minimum then



           table.insert(richPlayers,v)



       end



   end



   game:GetService("StarterGui"):SetCore("SendNotification", {



Title = "Richest player found!",



Text = highestplr.Name .. " has donated " .. highestdono .. "R$",



Duration = 15



})



table.foreach(richPlayers,function(i)



   print(richPlayers[i].Name .. " donated " .. tostring(getDonated(richPlayers[i])) .. "R$")



end)



else



   shop()



  

end
  	end    
})


local Section = Tab:AddSection({
	Name = "Arsenal"
})


Tab:AddButton({
	Name = "V.G Hub",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
  	end    
})


Tab:AddButton({
	Name = "Doors V",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/main.lua"))()
  	end    
})



Tab:AddLabel("More coming soon!")


-- New tab --
-- 8/18/22 -- 
-- Last Update was on 8/20/2022 at 2:05 PM -- 
local Games = Window:MakeTab({Name = "Game Teleporter", Icon = "rbxassetid://6034227061", PremiumOnly = false})
local SectionTeleport = Games:AddSection({Name = "Choose Supported Game to Teleport!"})




_G.gamestoteleport = "Select game to teleport"
SectionTeleport:AddDropdown({Name = "Select Game Here", Default = "Select Game to Teleport", Options = {
"Anime Dimensions","Anime Fighters","Arsenal","Attack On Titan: Downfall","Blox Fruits","Blox Hunt",
"Break In","Brookhaven","Car Crushers 2","Da Hood","Destruction Simulator","Dig It","Dungeon Quest","Field Trip Z",
"Flood Escape 2","Giant Survival","Gumball Factory Tycoon","IceBreaker","Jailbreak","Legends of Speed","Lift Legends","Lifting Simulator",
"Lucky Block Battlegrounds","Lumber Tycoon 2","Mad City","Milkshake Legends", "OOF Tycoon!","Pet Simulator X","Phantom Forces","Prison Life",
"Ro Ghoul","Rumble Quest","Sharkbite","Skywars",
"The Rake Remastered","Tower of Hell","Viet Nam Piece", "Wimbleworld", "Zombie Attack"}, Callback = function(Value)
    _G.gamestoteleport = Value
end})
SectionTeleport:AddButton({Name = "Teleport To Selected Game", Callback = function()
    if _G.gamestoteleport == "Select Game to Teleport" then
    elseif _G.gamestoteleport == "Blox Fruits" then
        game:GetService("TeleportService"):Teleport(2753915549, player)
    elseif _G.gamestoteleport == "Da Hood" then
        game:GetService("TeleportService"):Teleport(2788229376, player)
    elseif _G.gamestoteleport == "Pet Simulator X"  then
        game:GetService("TeleportService"):Teleport(6284583030, player)
    elseif _G.gamestoteleport == "Zombie Attack" then
        game:GetService("TeleportService"):Teleport(1240123653, player)
    elseif _G.gamestoteleport == "Tradelands" then
        game:GetService("TeleportService"):Teleport(198116126, player)
    elseif _G.gamestoteleport == "Arsenal" then
        game:GetService("TeleportService"):Teleport(286090429, player)
    elseif _G.gamestoteleport == "Break In" then
        game:GetService("TeleportService"):Teleport(3851622790, player)
    elseif _G.gamestoteleport == "Viet Nam Piece" then
        game:GetService("TeleportService"):Teleport(4587545091, player)
    elseif _G.gamestoteleport == "Phantom Forces" then
        game:GetService("TeleportService"):Teleport(292439477, player)
    elseif _G.gamestoteleport == "Tower of Hell" then
        game:GetService("TeleportService"):Teleport(1962086868, player)
    elseif _G.gamestoteleport == "Giant Survival" then
        game:GetService("TeleportService"):Teleport(4003872968, player)
    elseif _G.gamestoteleport == "Field Trip Z" then
        game:GetService("TeleportService"):Teleport(4954096313, player)
    elseif _G.gamestoteleport == "Mad City" then
        game:GetService("TeleportService"):Teleport(1224212277, player)
    elseif _G.gamestoteleport == "Brookhaven" then
        game:GetService("TeleportService"):Teleport(4924922222, player)
    elseif _G.gamestoteleport == "Prison Life" then
        game:GetService("TeleportService"):Teleport(155615604, player)
    elseif _G.gamestoteleport == "Ragdoll Engine" then
        game:GetService("TeleportService"):Teleport(5683833663, player)
    elseif _G.gamestoteleport == "The Rake Remastered" then
        game:GetService("TeleportService"):Teleport(2413927524, player)
    elseif _G.gamestoteleport == "Lucky Block Battlegrounds" then
        game:GetService("TeleportService"):Teleport(662417684, player)
    elseif _G.gamestoteleport == "Anime Dimensions" then
        game:GetService("TeleportService"):Teleport(6938803436, player)
    elseif _G.gamestoteleport == "Anime Fighters" then
        game:GetService("TeleportService"):Teleport(6299805723, player)
    elseif _G.gamestoteleport == "Car Crushers 2" then
        game:GetService("TeleportService"):Teleport(654732683, player)
    elseif _G.gamestoteleport == "Legends of Speed" then
        game:GetService("TeleportService"):Teleport(3101667897, player)
    elseif _G.gamestoteleport == "IceBreaker" then
        game:GetService("TeleportService"):Teleport(139613645, player)
    elseif _G.gamestoteleport == "Dungeon Quest" then
        game:GetService("TeleportService"):Teleport(2414851778, player)
    elseif _G.gamestoteleport == "SharkBite" then
        game:GetService("TeleportService"):Teleport(734159876, player)
    elseif _G.gamestoteleport == "Zombie Rush" then
        game:GetService("TeleportService"):Teleport(137885680, player)
    elseif _G.gamestoteleport == "A Bizarre Day" then
        game:GetService("TeleportService"):Teleport(2686500207, player)
    elseif _G.gamestoteleport == "Skywars" then
        game:GetService("TeleportService"):Teleport(855499080, player)
    elseif _G.gamestoteleport == "Dig it" then
        game:GetService("TeleportService"):Teleport(5344707538, player)
    elseif _G.gamestoteleport == "Jailbreak" then
        game:GetService("TeleportService"):Teleport(606849621, player)
    elseif _G.gamestoteleport == "Flood Escape 2" then
        game:GetService("TeleportService"):Teleport(738339342, player)
    elseif _G.gamestoteleport == "Slime Tycoon" then
        game:GetService("TeleportService"):Teleport(3596472165, player)
    elseif _G.gamestoteleport == "Lumber Tycoon 2" then
        game:GetService("TeleportService"):Teleport(13822889, player)
    elseif _G.gamestoteleport == "Milkshake Legends" then
        game:GetService("TeleportService"):Teleport(5454936056, player)
    elseif _G.gamestoteleport == "CounterBlox" then
        game:GetService("TeleportService"):Teleport(3311740703, player)
    elseif _G.gamestoteleport == "Online Business Sim" then
        game:GetService("TeleportService"):Teleport(5327880096, player)
    elseif _G.gamestoteleport == "Punching Sim" then
        game:GetService("TeleportService"):Teleport(6589192889, player)
    elseif _G.gamestoteleport == "Redwood Prison" then
        game:GetService("TeleportService"):Teleport(402122991, player)
    elseif _G.gamestoteleport == "Fortress Tycoon" then
        game:GetService("TeleportService"):Teleport(474657433, player)
    elseif _G.gamestoteleport == "Zombie Defence" then
        game:GetService("TeleportService"):Teleport(4711958375, player)
    elseif _G.gamestoteleport == "Rumble Quest" then
        game:GetService("TeleportService"):Teleport(4390380541, player)
    elseif _G.gamestoteleport == "Ro Ghoul" then
        game:GetService("TeleportService"):Teleport(914010731, player)
    elseif _G.gamestoteleport == "Bee Swarm Simulator" then
        game:GetService("TeleportService"):Teleport(1537690962, player)
    elseif _G.gamestoteleport == "One Piece Prime" then
        game:GetService("TeleportService"):Teleport(5237497216, player)
    elseif _G.gamestoteleport == "Animal Sim" then
        game:GetService("TeleportService"):Teleport(5712833750, player)
    elseif _G.gamestoteleport == "Lift Legends" then
        game:GetService("TeleportService"):Teleport(5709572883, player)
    elseif _G.gamestoteleport == "Tapping Mania" then
        game:GetService("TeleportService"):Teleport(5535087806, player)
    elseif _G.gamestoteleport == "Fishing Simulator" then
        game:GetService("TeleportService"):Teleport(2866967438, player)
    elseif _G.gamestoteleport == "Boku No Roblox" then
        game:GetService("TeleportService"):Teleport(1499872953, player)
    elseif _G.gamestoteleport == "Shinobi Life 2" then
        game:GetService("TeleportService"):Teleport(4616652839, player)
    elseif _G.gamestoteleport == "Dragon Ball Rage" then
        game:GetService("TeleportService"):Teleport(71315343, player)
    elseif _G.gamestoteleport == "Blox Hunt" then
        game:GetService("TeleportService"):Teleport(70005410, player)
    elseif _G.gamestoteleport == "PISTOL 1V1" then
        game:GetService("TeleportService"):Teleport(6722284015, player)
    elseif _G.gamestoteleport == "A Universal Time" then
        game:GetService("TeleportService"):Teleport(5130598377, player)
    elseif _G.gamestoteleport == "Lifting Simulator" then
        game:GetService("TeleportService"):Teleport(3652625463, player)
    elseif _G.gamestoteleport == "World Of Magic" then
        game:GetService("TeleportService"):Teleport(3272915504, player)
    elseif _G.gamestoteleport == "Attack On Titan: Downfall" then
        game:GetService("TeleportService"):Teleport(418574428, player)
    elseif _G.gamestoteleport == "Treasure Quest" then
        game:GetService("TeleportService"):Teleport(2960777560, player)
    elseif _G.gamestoteleport == "Assasin" then
        game:GetService("TeleportService"):Teleport(379614936, player)
    elseif _G.gamestoteleport == "Destruction Simulator" then
        game:GetService("TeleportService"):Teleport(2248408710, player)
    elseif _G.gamestoteleport == "Gumball Factory Tycoon" then
        game:GetService("TeleportService"):Teleport(9976239895, player)
    elseif _G.gamestoteleport == "OOF Tycoon!" then
        game:GetService("TeleportService"):Teleport(10325366821, player)
    elseif _G.gamestoteleport == "Wimbleworld" then
        game:GetService("TeleportService"):Teleport(9463737803, player)
    end
end})

-- Credits tab -- 
local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://6034287513",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Credits"
})

Tab:AddLabel("Last Updated: 9/21/2022")


Tab:AddParagraph("Owner","Equinox Hub was made by Mr_BullFrog")


Tab:AddButton({
	Name = "Server Stats",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/qSQKxrkt", true))()
  	end    
})


Tab:AddButton({
	Name = "Click to copy discord Invite",
	Callback = function()
    OrionLib:MakeNotification({
	Name = "Link copied",
	Content = "Discord Invite copied to clipboard.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    setclipboard(tostring('https://discord.gg/f26Vp8CzaZ')) 
  	end    
})


Tab:AddParagraph("UI Library","Huge thanks to Orion for the UI Library")

Tab:AddParagraph("Suggestions","If you have any suggestions please message me on discord. leg#8995.")



OrionLib:Init()