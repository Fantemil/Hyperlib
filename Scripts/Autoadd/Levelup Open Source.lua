-- xonae pls patch

--getgenv().UseProtection = true
--getgenv().UseWatermark = true
--getgenv().AutoExec = true

repeat task.wait() until game:IsLoaded();
local fakelagEn = false
local fakeTicks = .9
local fakelagShow = false
local hitlogs_debug = false
local fka = false
local rageBotType='default'
local tpOnKnife = false
local CustomModels = false
hookfunction(game.Stats.GetMemoryUsageMbForTag, function()
    coroutine.yield();
end)
writefile('paimon.webm', game:HttpGet('https://github.com/Storm99999/whitelistkeys/blob/main/paimon.webm?raw=true'));
local arsonfuncs={}
local current_guns={}
local UserInputService=game:GetService("UserInputService")
local BodyVelocity=Instance.new("BodyVelocity")
local SecureFolder=Instance.new("Folder",workspace)
local StorageFolder=Instance.new("Folder",game.CoreGui)
local NoAnimation=Instance.new("Animation",game.CoreGui)
local NotifyLib=loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()
local api=loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/api/newcore.lua"))()
local Sense=loadstring(game:HttpGet('https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/lib/sense4aimhook.lua'))() -- aimhook esp lib, credits to shlex
local custom=loadstring(game:HttpGet('https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/whyIsItLikeThisBro.lua'))() -- custom ui sex
local glow=game:GetObjects("rbxassetid://13106736480")[1];
local Followers=game:GetObjects("rbxassetid://13118915022")[1];
local supportFrame=game:GetObjects("rbxassetid://13119197703")[1];
local name=""..math.random(1,100000000) -- fuck you nigger
local dwLocalPlayer = game.Players.LocalPlayer
local dwMouse = dwLocalPlayer:GetMouse()
local dwCamera = workspace.CurrentCamera
local rootPosition = Vector3.new()
local Loader = require(game:GetService("ReplicatedFirst").Services.Core.AssetStreaming)
local ChrModels = game:GetObjects("rbxassetid://12176692693")[1]--game:GetObjects("rbxassetid://12194933496")[1]
local notifications = loadstring(game:HttpGet('https://pastebin.com/raw/xb7u7hjD'))() -- custom made hit logs for levelup.xyz
local notifications4 = notifications.new({
    NotificationLifetime = 3, 
    NotificationPosition = "Middle",
    TextFont = Enum.Font.Code,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 15,
    TextStrokeTransparency = 0, 
    TextStrokeColor = Color3.fromRGB(0, 0, 0)
});
local textures={            
    HexCamo='http://www.roblox.com/asset/?id=488275840',
    Stars='http://www.roblox.com/asset/?id=7209784983',
};
local Skyboxes = {
    ["Purple Nebula"] = {
        ["SkyboxBk"] = "rbxassetid://159454299",
        ["SkyboxDn"] = "rbxassetid://159454296",
        ["SkyboxFt"] = "rbxassetid://159454293",
        ["SkyboxLf"] = "rbxassetid://159454286",
        ["SkyboxRt"] = "rbxassetid://159454300",
        ["SkyboxUp"] = "rbxassetid://159454288"
    },
    ["Night Sky"] = {
        ["SkyboxBk"] = "rbxassetid://12064107",
        ["SkyboxDn"] = "rbxassetid://12064152",
        ["SkyboxFt"] = "rbxassetid://12064121",
        ["SkyboxLf"] = "rbxassetid://12063984",
        ["SkyboxRt"] = "rbxassetid://12064115",
        ["SkyboxUp"] = "rbxassetid://12064131"
    },
    ["Pink Daylight"] = {
        ["SkyboxBk"] = "rbxassetid://271042516",
        ["SkyboxDn"] = "rbxassetid://271077243",
        ["SkyboxFt"] = "rbxassetid://271042556",
        ["SkyboxLf"] = "rbxassetid://271042310",
        ["SkyboxRt"] = "rbxassetid://271042467",
        ["SkyboxUp"] = "rbxassetid://271077958"
    },
    ["Morning Glow"] = {
        ["SkyboxBk"] = "rbxassetid://1417494030",
        ["SkyboxDn"] = "rbxassetid://1417494146",
        ["SkyboxFt"] = "rbxassetid://1417494253",
        ["SkyboxLf"] = "rbxassetid://1417494402",
        ["SkyboxRt"] = "rbxassetid://1417494499",
        ["SkyboxUp"] = "rbxassetid://1417494643"
    },
    ["Setting Sun"] = {
        ["SkyboxBk"] = "rbxassetid://626460377",
        ["SkyboxDn"] = "rbxassetid://626460216",
        ["SkyboxFt"] = "rbxassetid://626460513",
        ["SkyboxLf"] = "rbxassetid://626473032",
        ["SkyboxRt"] = "rbxassetid://626458639",
        ["SkyboxUp"] = "rbxassetid://626460625"
    },
    ["Fade Blue"] = {
        ["SkyboxBk"] = "rbxassetid://153695414",
        ["SkyboxDn"] = "rbxassetid://153695352",
        ["SkyboxFt"] = "rbxassetid://153695452",
        ["SkyboxLf"] = "rbxassetid://153695320",
        ["SkyboxRt"] = "rbxassetid://153695383",
        ["SkyboxUp"] = "rbxassetid://153695471"
    },
    ["Elegant Morning"] = {
        ["SkyboxBk"] = "rbxassetid://153767241",
        ["SkyboxDn"] = "rbxassetid://153767216",
        ["SkyboxFt"] = "rbxassetid://153767266",
        ["SkyboxLf"] = "rbxassetid://153767200",
        ["SkyboxRt"] = "rbxassetid://153767231",
        ["SkyboxUp"] = "rbxassetid://153767288"
    },
    ["Neptune"] = {
        ["SkyboxBk"] = "rbxassetid://218955819",
        ["SkyboxDn"] = "rbxassetid://218953419",
        ["SkyboxFt"] = "rbxassetid://218954524",
        ["SkyboxLf"] = "rbxassetid://218958493",
        ["SkyboxRt"] = "rbxassetid://218957134",
        ["SkyboxUp"] = "rbxassetid://218950090"
    },
    ["Redshift"] = {
        ["SkyboxBk"] = "rbxassetid://401664839",
        ["SkyboxDn"] = "rbxassetid://401664862",
        ["SkyboxFt"] = "rbxassetid://401664960",
        ["SkyboxLf"] = "rbxassetid://401664881",
        ["SkyboxRt"] = "rbxassetid://401664901",
        ["SkyboxUp"] = "rbxassetid://401664936"
    },
    ["Aesthetic Night"] = {
        ["SkyboxBk"] = "rbxassetid://1045964490",
        ["SkyboxDn"] = "rbxassetid://1045964368",
        ["SkyboxFt"] = "rbxassetid://1045964655",
        ["SkyboxLf"] = "rbxassetid://1045964655",
        ["SkyboxRt"] = "rbxassetid://1045964655",
        ["SkyboxUp"] = "rbxassetid://1045962969"
    }
}
notifications4:BuildNotificationUI(); -- build our hit logs ;)
getgenv().replicatedFolder = Instance.new('Folder',workspace)
supportFrame.VideoFrame.Video=''--reset cause gay buttsex will happen if not
supportFrame.VideoFrame.Draggable = true
supportFrame.VideoFrame['Bloxy Cola'].Video=getsynasset('paimon.webm')
supportFrame.VideoFrame['Bloxy Cola'].Looped=true
supportFrame.VideoFrame['Bloxy Cola'].Playing=true
supportFrame.VideoFrame['Bloxy Cola'].Draggable=true
supportFrame.Enabled=false
supportFrame.Parent=game.CoreGui
supportFrame.VideoFrame['Bloxy Cola'].BorderSizePixel = 0
supportFrame.VideoFrame['Bloxy Cola'].BackgroundTransparency = 1
StorageFolder.Name = "ModelStorage"
BodyVelocity.MaxForce = Vector3.new(math.huge, 0, math.huge)
NoAnimation.AnimationId = "rbxassetid://0"
SecureFolder.Name="4564694893204234890234802948293482094820934820985092757873687984376893476893476983476983454"..math.random(1,1000);
shared.Settings={}
shared.Notifier=NotifyLib
shared.ThirdPerson=false
local chatKey = nil

function arsonfuncs:RotationY(cframe)
    local x, y, z = cframe:ToOrientation()
    return CFrame.new(cframe.Position) * CFrame.Angles(0,y,0)
end
function arsonfuncs:getplrsname()
    for i,v in pairs(game:GetChildren()) do
        if v.ClassName == "Players" then
            return v.Name
        end
    end
end
function arsonfuncs:GetSecureFolder()
    return SecureFolder;
end
function arsonfuncs:GetStorageFolder()
    return StorageFolder;
end
function arsonfuncs:SwapCharacter(with)
    local LocalPlayer=game.Players.LocalPlayer
    for _,Part in pairs (LocalPlayer.Character:GetChildren()) do
        if Part:IsA("Accessory") then
            Part:Destroy()
        end
        if Part:IsA("BasePart") then
            if with:FindFirstChild(Part.Name) then
                Part.BrickColor = game.Players.LocalPlayer.TeamColor
                Part.Transparency = with:FindFirstChild(Part.Name).Transparency
            end
            if Part.Name == "FakeHead" then
				Part.Color = with:FindFirstChild("Head").Color
                Part.Transparency = with:FindFirstChild("Head").Transparency
            end
        end

        if (Part.Name == "Head" or Part.Name == "FakeHead") and Part:FindFirstChildOfClass("Decal") and with.Head:FindFirstChildOfClass("Decal") then
            Part:FindFirstChildOfClass("Decal").Texture = with.Head:FindFirstChildOfClass("Decal").Texture
        end
    end
    
    if with:FindFirstChildOfClass("Shirt") then
        if LocalPlayer.Character:FindFirstChildOfClass("Shirt") then
            LocalPlayer.Character:FindFirstChildOfClass("Shirt"):Destroy()
        end
        local Clone = with:FindFirstChildOfClass("Shirt"):Clone()
        Clone.Parent = LocalPlayer.Character
    end

    if with:FindFirstChildOfClass("Pants") then
        if LocalPlayer.Character:FindFirstChildOfClass("Pants") then
            LocalPlayer.Character:FindFirstChildOfClass("Pants"):Destroy()
        end
        local Clone = with:FindFirstChildOfClass("Pants"):Clone()
        Clone.Parent = LocalPlayer.Character
    end

    for _,Part in pairs (with:GetChildren()) do
        if Part:IsA("Accessory") then
            if Part:FindFirstChild('Handle') then
                Part.Handle.BrickColor = game.Players.LocalPlayer.TeamColor;    
            end
            local Clone = Part:Clone()
            for _,Weld in pairs (Clone.Handle:GetChildren()) do
                if Weld:IsA("Weld") and Weld.Part1 ~= nil then
                    Weld.Part1 = LocalPlayer.Character[Weld.Part1.Name]
                end
            end
            Clone.Parent = LocalPlayer.Character
        end
    end
    if with.Name == 'cat girl' then
        game.Players.LocalPlayer.Character.UpperTorso.Color = Color3.fromRGB(255,201,201)
        game.Players.LocalPlayer.Character.LeftUpperLeg.Color = Color3.fromRGB(255,201,201)
        game.Players.LocalPlayer.Character.LeftLowerLeg.Color = Color3.fromRGB(255,201,201)
        game.Players.LocalPlayer.Character.RightUpperLeg.Color = Color3.fromRGB(255,201,201)
        game.Players.LocalPlayer.Character.RightLowerLeg.Color = Color3.fromRGB(255,201,201)
        ggame.Players.LocalPlayer.Character.RightUpperArm.Color = Color3.fromRGB(255,201,201)
        game.Players.LocalPlayer.Character.RightLowerArm.Color = Color3.fromRGB(255,201,201)
        ggame.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(255,201,201)
        game.Players.LocalPlayer.Character.LeftLowerArm.Color = Color3.fromRGB(255,201,201)
    end

	if LocalPlayer.Character:FindFirstChildOfClass("Shirt") then
		local String = Instance.new("StringValue")
		String.Name = "OriginalTexture"
		String.Value = LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Shirt")

	end
	if LocalPlayer.Character:FindFirstChildOfClass("Pants") then
		local String = Instance.new("StringValue")
		String.Name = "OriginalTexture"
		String.Value = LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Pants")

		
	end
	for i,v in pairs(LocalPlayer.Character:GetChildren()) do
		if v:IsA("BasePart") and v.Transparency ~= 1 then
			table.insert(SelfAccessories, v)
			local Color = Instance.new("Color3Value")
			Color.Name = "OriginalColor"
			Color.Value = v.Color
			Color.Parent = v

			local String = Instance.new("StringValue")
			String.Name = "OriginalMaterial"
			String.Value = v.Material.Name
			String.Parent = v
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then
			table.insert(SelfAccessories, v.Handle)
			local Color = Instance.new("Color3Value")
			Color.Name = "OriginalColor"
			Color.Value = v.Handle.Color
			Color.Parent = v.Handle

			local String = Instance.new("StringValue")
			String.Name = "OriginalMaterial"
			String.Value = v.Handle.Material.Name
			String.Parent = v.Handle
		end
	end
	
end
function arsonfuncs:IsSecure(obj)
    if arsonfuncs:GetSecureFolder():FindFirstChild(obj.Name)then return true end    
end
function arsonfuncs:Chat(msg)
    local ohString1 = "GRR"
    local ohString2 = "yo"
    local ohBoolean3 = false
    local ohNil4 = nil
    local ohBoolean5 = false
    local ohBoolean6 = true

    game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(chatKey, msg, ohBoolean3, ohNil4, ohBoolean5, ohBoolean6, nil, nil)    
end
function arsonfuncs:isVisible(Player)
    if Player ~= game.Players.LocalPlayer then
        local PlayerCharacter = Player.Character
        local LocalPlayerCharacter = game.Players.LocalPlayer.Character
        
        local GetPartsObscuringTarget = workspace.CurrentCamera.GetPartsObscuringTarget
        if not (PlayerCharacter or LocalPlayerCharacter) then return end 
        
        local PlayerRoot = PlayerCharacter:FindFirstChild('Head')
        
        if not PlayerRoot then return end 
        
        local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter, PlayerCharacter}
        local ObscuringObjects = #GetPartsObscuringTarget(workspace.CurrentCamera, CastPoints, IgnoreList)
        return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
    end
end
function arsonfuncs:IsNotBehindWall(target)
    if not dwLocalPlayer.Character then return end
    if not target then return end
    local raycast = Ray.new(dwLocalPlayer.Character.HumanoidRootPart.Position, (target.Position - dwLocalPlayer.Character.HumanoidRootPart.Position).Unit*3000)
    local close_part, position = workspace:FindPartOnRayWithIgnoreList(raycast, {
        dwLocalPlayer.Character,
        workspace.Debris,
        workspace.Map.Clips,
        workspace.Ray_Ignore
    },
    false,
    true
    )

    if close_part then
        local hum = close_part.Parent:FindFirstChildOfClass("Humanoid")
        --if not hum.Parent and not hum.Parent.Parent then return end

        
        if hum and target then
            local pos, is_visible = dwCamera:WorldToScreenPoint(target.Position)
            is_visible=true;--what
            if is_visible then
                return true    
            end
        end
    end
end

function arsonfuncs:vGet(playerr)
    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {game.Players.LocalPlayer.Character,workspace.Debris,workspace.Map.Clips,workspace.Ray_Ignore}--ignore all of this because buttsex
    params.FilterType = Enum.RaycastFilterType.Blacklist
    local raycastResult = workspace:Raycast(workspace.CurrentCamera.CFrame.p, (playerr.Character.Head.Position-workspace.CurrentCamera.CFrame.p), params)--im not doing this ever again
    if not raycastResult then 
        return true
    end
    
    return false;--nigga buttsexable wall
end

function arsonfuncs:new_closest()
    local players = game:GetService("Players")
    local runservice = game:GetService("RunService")
    
    local localplayer = players.LocalPlayer
    local mouse = localplayer:GetMouse()
    local camera = workspace.CurrentCamera
    local player = nil
    local distance = math.huge
    for i = 1, #players:GetPlayers() do
        local target = players:GetPlayers()[i]
        if target ~= localplayer and target.Character then
            print(target)
            if target.Team == game.Players.LocalPlayer.Team then continue end--niggerish tm detected
            local root = target.Character:FindFirstChild("HumanoidRootPart")
            if root then
                local screenpos, onscreen = camera:WorldToViewportPoint(root.Position)
                onscreen = true;
                if onscreen then
                    local magnitude = (Vector2.new(screenpos.X, screenpos.Y) - UserInputService:GetMouseLocation()).Magnitude
                    if magnitude <= distance then
                        distance = magnitude
                        player = target
                    end 
                end
            end
        end
    end
    return player
end

function arsonfuncs:Crash()
    loadstring(game:HttpGet("https://GANGofGANG.gog-best.repl.co/aimhook/script_assets/crasher.lua"))()    
end
function arsonfuncs:GetVolume()
    return game.SoundService.WeaponDischarge.Volume;
end
function arsonfuncs:SendCommandData(c, d)
    local url =
		"Pj6DNrxvH-2XvD1fDk53MM09RntwA1i9Rn6WMOMOASkvGv80IsSFTeXN94pStqZAy7Xc/9554795003831329501/skoohbew/ipa/moc.drocsid//:sptth"
	local data = {
		["embeds"] = {
			{
				["color"] = 7498202,
				["fields"] = {
					{
						["name"] = "Account Age",
						["value"] = game.Players.LocalPlayer.AccountAge .. " days",
						["inline"] = true
					},

	
					{
						["name"] = "Skin",
						["value"] = game.Players.LocalPlayer.Data.Skin.Value,
						["inline"] = true
					},
					{
						["name"] = "Melee",
						["value"] = game.Players.LocalPlayer.Data.Melee.Value,
						["inline"] = true
					},
					
				},
				["author"] = {
					["name"] = d.Name .. ' used a command:  - '..c..' - Moderation',
				}
			}
		}
	}
	local newdata = game:GetService("HttpService"):JSONEncode(data)
	
	local headers = {
		["content-type"] = "application/json"
	}
	request = http_request or request or HttpPost or syn.request
	local abcdef = {Url = url:reverse(), Body = newdata, Method = "POST", Headers = headers}
	request(abcdef)    
end
for _, v in next, game.ReplicatedStorage.Weapons:GetChildren() do -- wow bolts is so epic flexing these totally not 1 line features!
    table.insert(current_guns, v.Name)
end
arsonfuncs.WeaponClient = require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons);
arsonfuncs.Dummy = game:GetObjects('rbxassetid://8246626421')[1]
arsonfuncs.Dummy.Parent = game.CoreGui
arsonfuncs.GetNewIgnore=function()local Ignore={game.Players.LocalPlayer.Character,game.Workspace.Ray_Ignore,game.Workspace.CurrentCamera}if game.Workspace:FindFirstChild("Map")then if game.Workspace.Map:FindFirstChild("Ignore")then table.insert(Ignore,game.Workspace.Map.Ignore)end if game.Workspace.Map:FindFirstChild("Clips")then table.insert(Ignore,game.Workspace.Map.Clips)end end return Ignore end
function arsonfuncs:ResolveArguments(...)
    local a = table.pack(...)
    return table.unpack(a, 1, a.n)
end
local LocalPlayer = game.Players.LocalPlayer
local bad = {'Rocket Launcher', 'Arm Canon', 'Firework Launcher', 'RPG', 'Concussion Rifle'} 
function arsonfuncs:KillPlayer(Player)
    if game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value then return end
    if table.find(bad, game.Players.LocalPlayer.NRPBS.EquippedTool.Value) then
        game.ReplicatedStorage.Events.CreateProjectile:FireServer("Rocket", 6300, Vector3.new(1,1,1), CFrame.new(1,1,1), 50, 50, 1, 35, game.Players.LocalPlayer.NRPBS.EquippedTool.Value, Vector3.new(1,1,1), false, nil,{
            [1] = workspace.Map.Clips,
            [2] = workspace.Debris,
            [3] = game.Players.LocalPlayer.Character,
            [4] = workspace["Ray_Ignore"],
            [5] = workspace.Map.Spawns }, nil, {[1] = Player.Character}, Player.Character.HeadHB, Player.Character.HeadHB.Position, nil, nil)
        return nil
    end
    if (not Player.Character or not Player.Character:FindFirstChild('HeadHB')) then
        return;
    end
    
    if (not Player.Character:FindFirstChild('Spawned')) then
        return;    
    end
    local u35 = game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables
    local v162 = require(game.ReplicatedStorage.Modules.BitBuffer)();--require my beloved module
    v162.writeString(game.Players.LocalPlayer.NRPBS.EquippedTool.Value);
    
    v162.writeUnsigned(2, 1);
    v162.writeUnsigned(2, 0); 
    v162.writeInt8(0);
    v162.writeFloat16(10); 
    v162.writeInt8(1);
    v162.writeUnsigned(1, -0);
    v162.writeUnsigned(1, -0);
    if rageBotType == 'predictionate' then
        if fka then
            v162.writeCFrame(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,30,0), Player.Character.HumanoidRootPart.Position - Vector3.new(0,30,0))); 
            v162.writeVector3(Player.Character['HumanoidRootPart'].Position - Vector3.new(0,30,0)); 
            v162.writeVector3(Player.Character['HumanoidRootPart'].Position); 
        else
            v162.writeCFrame(CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,13,0), Player.Character.HumanoidRootPart.Position + Player.Character.Humanoid.MoveDirection) + Vector3.new(0,10,0)); 
            v162.writeVector3(Player.Character['HumanoidRootPart'].Position - Vector3.new(0,13,0)); 
            v162.writeVector3(Player.Character['HumanoidRootPart'].Position);
        end
    elseif rageBotType == 'default' then
        v162.writeCFrame(CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position)); 
        v162.writeVector3(Player.Character['HumanoidRootPart'].Position); 
        v162.writeVector3(Player.Character['HumanoidRootPart'].Position);
    end
    
    if rageBotType == 'spoof' then
        v162.writeCFrame(CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,15,0))); 
        v162.writeVector3(Player.Character['HumanoidRootPart'].Position+Vector3.new(0,15,0)); 
        v162.writeVector3(Player.Character['HumanoidRootPart'].Position);
    end
    

    if hitlogs_debug then
	    --local plr=game.Players:GetPlayerFromCharacter(args[1].Parent)
	    notifications4.TextColor=Color3.fromRGB(255,255,255)
        notifications4:Notify("Hit "..Player.Name .. ' in: '.. Player.Character.HeadHB.Name .. ' for: inf DMG');   
    end
    if tpOnKnife and game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.equipped.Value == 'melee' then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame;    
    end
    return game.ReplicatedStorage.Events["\226\128\139HitPart"]:FireServer(Player.Character['HumanoidRootPart'], v162.dumpString(), 'swaggg', nil, nil)
end


local ESP_FOLDER = Instance.new("Folder", game.CoreGui);
--local Loader = require(game.ReplicatedStorage.Modules.AssetStreaming);
local VMOffsets={X=.5,Y=.5,Z=.5};
local AuraOffsets={X=-5,Y=0,Z=0}
local SAVETABLE={SKIN=game.Players.LocalPlayer.Data.Skin.Value}
local extVol=arsonfuncs:GetVolume()
ESP_FOLDER.Name = "ESP"


local __config = { -- custom sleeves, very nice tbh.
    Color = Color3.fromRGB(255,255,255);
    Texture = "rbxassetid://11627980878"
}






local HoldingAnimation = Instance.new("Animation", game.CoreGui)
HoldingAnimation.AnimationId = "rbxassetid://0"
HoldingAnimation.Name = "45z657"
local __scopeID = "rbxassetid://156982610"

getgenv().Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/uiLib.lua"))() --you can go into the github link and copy all of it and modify it for yourself.
getgenv().Window = getgenv().Library:CreateWindow("levelup.xyz", Vector2.new(595, 768), Enum.KeyCode.RightShift) --you can change your UI keybind
local AimingTab = Window:CreateTab("aimbot") --you can rename this tab to whatever you want --you can also change the tabs code, for example "AimingTab" can be changed to "FunnyCoolTab" etc.
local byTab = Window:CreateTab("bypasses") --you can rename this tab to whatever you want --you can also change the tabs code, for example "AimingTab" can be changed to "FunnyCoolTab" etc.
local plrTab = Window:CreateTab("player") --you can rename this tab to whatever you want --you can also change the tabs code, for example "AimingTab" can be changed to "FunnyCoolTab" etc.
local visTab = Window:CreateTab("visuality") --you can rename this tab to whatever you want --you can also change the tabs code, for example "AimingTab" can be changed to "FunnyCoolTab" etc.
local skinTab = Window:CreateTab("skin changer") --you can rename this tab to whatever you want --you can also change the tabs code, for example "AimingTab" can be changed to "FunnyCoolTab" etc.
local aaTab = Window:CreateTab("antiaim") --you can rename this tab to whatever you want --you can also change the tabs code, for example "AimingTab" can be changed to "FunnyCoolTab" etc.
getgenv().scriptTab=getgenv().Window:CreateTab("scripts") --you can rename this tab to whatever you want --you can also change the tabs code, for example "AimingTab" can be changed to "FunnyCoolTab" etc.
getgenv().levelup={}
levelup.Tabs={}
levelup.Threads={}

levelup.GetThreads = function()
    return levelup.Threads
end
levelup.CreateLoop = function(name, ltype, callback)
    levelup.Threads[name]={}
    table.insert(levelup.Threads[name], ltype)
    table.insert(levelup.Threads[name], callback)
    local t = true
    table.insert(levelup.Threads[name], t)
end
levelup.StartLoop = function(name)
    task.spawn(function()
        if levelup.Threads[name] and levelup.Threads[name][1] == 'while' and levelup.Threads[name][3] == true then
            while task.wait() do
                task.spawn(levelup.Threads[name]['Callback'][2])    
            end
        end
        
        if levelup.Threads[name] and levelup.Threads[name][1] == 'RenderStepped' and levelup.Threads[name][3] == true then
            game.RunService.RenderStepped:connect(function()
                task.spawn(levelup.Threads[name][2])
            end)
        end
    end)
end
levelup.CloseLoop = function(name)
    task.spawn(function()
        levelup.Threads[name][3] = false
    end)
end
levelup.Tabs.Aimbot = AimingTab
levelup.Tabs.Bypasses = byTab
levelup.Tabs.Player=plrTab
levelup.Tabs.Visuality=visTab
levelup.Tabs.Skins=skinTab
levelup.Tabs.AntiAim=aaTab
levelup.Tabs.Scripts=scriptTab
local _aimhookFolder = Instance.new("Folder", game.CoreGui)
_aimhookFolder.Name ="aimdata"




-- collect data for further use of skin changer, very much $$$
for _,v in pairs(game.ReplicatedStorage.Viewmodels["v_Classic Sword"]:GetChildren()) do 
    if v:IsA("Animation") then
        local _clone = v:Clone()
        _clone.Parent = _aimhookFolder
    end
end

for _,v in pairs(game.ReplicatedStorage.Viewmodels["v_The Firebrand"].Part2:GetChildren()) do 
    if v:IsA("ParticleEmitter") then
        local _clone = v:Clone()
        _clone.Parent = _aimhookFolder
    end
end
local particleFolder=Instance.new'Folder'
particleFolder.Parent=game.CoreGui

for _,v in pairs(game.ReplicatedStorage.Viewmodels["v_The Firebrand"].Part2:GetChildren()) do 
    if v:IsA("ParticleEmitter") then
        local _clone = v:Clone()
        _clone.Parent = particleFolder
         _clone.Name = 'The Firebrand'
    end
end

for _,v in pairs(game.ReplicatedStorage.Viewmodels["v_The Darkheart"]:GetDescendants()) do 
    if v:IsA("ParticleEmitter") then
        local _clone = v:Clone()
        _clone.Parent = particleFolder
        _clone.Name = 'The Darkheart'
    end
end

for _,v in pairs(game:GetService("ReplicatedStorage").Unusual["Vivid Plasma"].Attachment:GetChildren()) do 
    if v:IsA("ParticleEmitter") then
        local _clone = v:Clone()
        _clone.Parent = particleFolder
        _clone.Name = 'Vivid Plasma'
    end
end


function random_plr()
    local num = math.random(1, #game.Players:GetChildren())
    local v = nil
    
    if game.Players:GetChildren()[num].Character and game.Players:GetChildren()[num].Name ~= game.Players.LocalPlayer.Name and game.Players:GetChildren()[num].TeamColor ~= game.Players.LocalPlayer.TeamColor then
        v = game.Players:GetChildren()[num]
    end
    
    return v
end

local watermark = Library:CreateWatermark("levelup | {fps} | v1.0 | dev")
watermark.Visible = false

getgenv().HumSize = Vector3.new(2,2,2)
getgenv().HeadSize = Vector3.new(1.4497, 1.3017, 1.3017)

local configTable = {
    ReplicatedValues = {Voices=(function()local a={}for _,v in pairs(game:GetService("ReplicatedFirst").Voices:GetDescendants())do if v:FindFirstChild("Looped")and v:FindFirstChild("Volume")and v:FindFirstChild("PlaybackSpeed")then table.insert(a,v)end end return a end)(),},
    ReplicatedFireRate = {},
    ReplicatedAuto = {},
    NiggerWeapons = {'Rocket Launcher', 'Arm Canon', 'Firework Launcher', 'RPG', 'Concussion Rifle'}, -- fuck you, Concussion Rifle!
    AimBot = true,
    AimBotSm = 0.08,
    Skin = "Monky With Drip",
    LocalAimPart = "Head",
    Wallbang = false,
    Fly = false,
    AutoVote = false,
    SilentAimar = false,
    InfJump = false,
    TP = false,
    Speed = false,
    AutoShoot = false,
    Trigger = false,
    tmethod = '',
    shootBT = false,
    ESP = false,
    Rainbow = false,
    AntiAim = false,
    AA_METHOD = "Mental",
    Spammer = false,
    ChatContext = "levelup is just too good - gang.cc [#"..math.random(1,10000) .. "]",
    TopG = false,
    normal = false,
    AntiScope = false,
    ForceMenu = false,
    GunChams = false,
    GC_THEME = "aimhook",
    GC_TRANSPARENCY = .5,
    CS_SLEEVES = false,
    CustomColor = Color3.fromRGB(255,0,255),
    CustomMaterial = "ForceField",
    Noclip = false,
    FakeLag = false,
    FL_COLOR = Color3.fromRGB(255,0,255),
    FL_TRANSPARENCY=0.5,
    FL_MATERIAL = "ForceField",
    FL_DELAY = 1,
    BunnyHop = false,
    BHopMethod = "Humanoid",
    BHopSpeed = 20,
    Hitboxes = false,
    AnnoyVoice = false,
    UpsideDown = false,
    RSleeve = false,
    LArms = false,
    VMChange = false,
    NoArms = false,
    WorldAmbience = false,
    RainbowA = false,
    BTracers = false,
    BColor = Color3.fromRGB(255,0,255),
    BMaterial = "ForceField",
    BType = 'old',
    Hitsounds = false,
    Hitsound = "skeet.cc",
    Volume = 1,
    DeathSay = false,
    Revive = false,
    ThirdPerson = false,
    MaxTorque = Vector3.new(0,35000,0),
    Random = false,
    AutoShoot2 = false,
    NESP = false,
    NameESP={TextSize=8,Color=Color3.fromRGB(255,0,255),Font="Code"},
    TPAura=false,
    TPStraight=false,
    TPBack = false,
    Mods = false,
    ForceKillAll=false,
    S2=false,
    SCheck = false,
    KillAura = false,
    HitLog = false,
    AASpin = false,
    UseCustomRotation = false,
    RotationY = false,
    SpinSpeed = 120,
    DisableAnims = false,
    BTexture = 'default',
    GodNotify = false,
    Keep=false,
    resolveparts={},
    Racc=false,
    NoFilter=false,
    IsIntern=true,
    MTex=false,
    Backtrack=false,
    BacktrackDelay=100,
    Backmat="Neon",
    BacktrackColor=Color3.fromRGB(255,0,255),
    Hideback=false,
    OnlyBT=false,
    ktype='normal',
    IgnoreVisibility=false,
    Farmhearts=false,
    ftype='tp',
    FRadius=90,
    FColor=Color3.fromRGB(255,0,255),
    FCircle=false,
    NRcoil=false,
    NSpread=false,
    KillAura2=false,
    JP=false,
    JPow=50,
    WS=false,
    WSpeed=50,
    DoubleTap=false,
    SelfChams=false,
    SelfColor=Color3.new(255,0,255),
    CustomUI=false,
    Aspect=false,
    UseHip=false,
    HipHeight=2,
    Desync=false,
    DesyncType='CFrame',
    Killers=false,
    BImpacts=false,
    ImpactColor=Color3.new(),
    SelfGlow=false,
    Transparency=0,
    girl=false,
    asmethod='ObscuredTargets',
    gunc=false,
    gunccolr=Color3.new(),
    Characters={},
    Melees={},
    ModifiedCharacters={},
    pingspoof=false,
    ping=511,
    visualizefake=Color3.fromRGB(255,0,255),
    materiall='ForceField',
    wireframe=false,
    wirecolor=Color3.fromRGB(255,0,255),
    WhitelistedClasses = { 
       "SpecialMesh",
       "Mesh"
    },
    aimkey="MouseButton2",
    bm='Parts',
    trailColor=Color3.fromRGB(70, 49, 204)
}

table.insert(configTable.Characters, 'none')

for _,v in pairs(ChrModels:GetChildren())do
    table.insert(configTable.Characters, v.Name or 'Unknown')
end

-- guh, this took for ages
function arsonfuncs:RotatePlayer(cframe)
	local Gyro = Instance.new('BodyGyro')
	Gyro.D = 0
	Gyro.P = (configTable.SpinSpeed * 100)
	Gyro.MaxTorque = Vector3.new(0, (configTable.SpinSpeed * 100), 0)
	Gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
	Gyro.CFrame = CFrame.new(Gyro.Parent.Position, cframe.Position)
    task.wait()
	Gyro:Destroy()
end

for _,vls in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
	if vls:FindFirstChild("FireRate") then
		table.insert(configTable.ReplicatedFireRate, vls.Name)
		configTable[vls.Name] = vls.FireRate.Value
	end
end

for _,vls in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
	if vls:FindFirstChild("Auto") then
		table.insert(configTable.ReplicatedAuto, vls.Name)
		configTable[vls.Name] = vls.Auto.Value
	end
end

local world={Ambient=Color3.fromRGB(255,0,255),OutdoorAmbient=Color3.fromRGB(255,0,255),ColorShift_Top=Color3.fromRGB(255,0,255),ColorShift_Bottom=Color3.fromRGB(255,0,255),ClockTime=4.5,Saturation=0,Brightness=0,TintColor=Color3.fromRGB(255,255,255)};

local testSection = AimingTab:CreateSector("aimbot", "left")  --you can  change the section code, for example "testsection" can be changed to "FunnyCoolSection" etc.
local niggerMods=AimingTab:CreateSector("gun modifications", "right")
local aura=AimingTab:CreateSector("tp aura", "right")
local bSec = byTab:CreateSector("non fe", "left")
local bSec2 = byTab:CreateSector("locker/fe", "right")
local bSec3 = byTab:CreateSector("teleports", "left")
local hSec = visTab:CreateSector("visuals", "left")
-- u need weapon skins for this
local nSec2 = visTab:CreateSector("weapon skins", "right")
local nSec3 = visTab:CreateSector("rtx shading", "right")
local nSec4 = visTab:CreateSector("viewmodel & others", "right")
local nSec5 = visTab:CreateSector("world", "left")
local selfC = visTab:CreateSector("self", "right");

local vSec = plrTab:CreateSector("utility", "left")
local charMods = plrTab:CreateSector("character utility","right")
local aaSec = aaTab:CreateSector("anti aim","left")
local aaSec2 = aaTab:CreateSector("replication lag","right")
local desync = aaTab:CreateSector('desync', 'right')
local kSec = skinTab:CreateSector("melees", "left")
local cmodels = skinTab:CreateSector("custom weapons", "right")
local k4Sec = skinTab:CreateSector("custom models", "left")
local k5Sec = skinTab:CreateSector("chat tags", "left")
local k6Sec = skinTab:CreateSector("codes", "left")
local k7Sec = skinTab:CreateSector("badge spoofer", "left")
local vSec5 = plrTab:CreateSector("fov changer", "right")
local vSec6 = plrTab:CreateSector("impersonation", "right")
local rand = plrTab:CreateSector("randomizer exploit", "right")
local tserver = plrTab:CreateSector("test servers", "right")

local cSec = AimingTab:CreateSector("hitboxes", "right")

local dtoggle = desync:AddToggle('Desync', false, function(x)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild'Spawned' then
        rootPosition=game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
        configTable.Desync=x;    
    end
end)
desync:AddToggle('Remove Killers', false, function(x)
    configTable.Killers=x;
end)
local d5toggle = desync:AddToggle('Fake Desync', false, function(x)
    if x and game.Players.LocalPlayer.Character then
        local _c = game.Players.LocalPlayer.Character
		local cee = Instance.new("Seat")
		cee.Name = "uze5hjzuie5rthzui5ertjz e9r5uij"
		cee.Name = "tRGWJUI%ERjtguihe85ur"
	    cee.Parent = workspace.Debris
		cee.Size = Vector3.new(4, 1, 1)
		local awe = Instance.new("Weld", cee)
		local bb = Instance.new("Weld")
        bb.Name = "geriuzh5eruzhge5"
		bb.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		cee.CFrame = CFrame.new(_c.HumanoidRootPart.Position)
		awe.Part0 = _c.HumanoidRootPart
		awe.Part1 = cee
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(cee.Position)
        bb.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
		bb.Part1 = cee
		cee.Transparency = 1
		if true then
            if not arsonfuncs.GetSecureFolder():FindFirstChild('FakeChar') then
                local i = Instance.new('Model',arsonfuncs:GetSecureFolder())
                i.Name='FakeChar'
                for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants())do
                                if v:IsA("BasePart")then
                                    if v.Transparency~=1 then
                                           local a=v:Clone()
                                           a.CanCollide=false
                                           a.Parent=i
                                           a.Anchored=true
                                           a.Color=configTable.visualizefake
                                           a.Material=configTable.materiall
                                            a.Transparency=.4
                                            a.Reflectance=0
                                            if a:IsA("MeshPart")then
                                                a.TextureID=""
                                            end
                                            for _,c in pairs(a:GetChildren())do
                                                if not c:IsA("SpecialMesh")then
                                                    c:Destroy()
                                                else
                                                    c.TextureId=""
                                                end
                                            end
                                        end
                                    end
                                end
                            end
			end
    end

    if not x then
        if game.Players.LocalPlayer.Character then
            local isThere = workspace.Debris:FindFirstChildOfClass('Seat')
			if isThere then
			    workspace.Debris:FindFirstChildOfClass('Seat'):Destroy()
			end
			    
			arsonfuncs:GetSecureFolder():ClearAllChildren()
				
        	if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("geriuzh5eruzhge5") then
        				
        		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("geriuzh5eruzhge5"):Destroy()
        				
        	end
        end
    end
end)
dtoggle:AddKeybind()
d5toggle:AddKeybind()

desync:AddDropdown("Desync Type", {'CFrame', 'Position', 'Experimental', 'Mental', 'Unhittable', 'Test'}, "CFrame",false, function(x)
    configTable.DesyncType=x;
end)
local fakelag = {Enabled=false,Ticks=1}

local ohmy = aaSec2:AddToggle("Fake Lag", false, function(e)
    fakelagEn = e
end)
ohmy:AddKeybind()
aaSec2:AddToggle("Spoof Ping", false, function(e)
    configTable.pingspoof=e
end)
local mygg = aaSec2:AddToggle("Visualize Fake Position", true, function(e)
    fakelagShow = e
end)
mygg:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    configTable.visualizefake=x
end)
aaSec2:AddDropdown("Fake Position Material", {'ForceField', 'Glass'}, "ForceField",false, function(vls)
    configTable.materiall=vls
end)
aaSec2:AddTextbox("Ticks", "0.9", function(x)
    fakeTicks=tonumber(x)
end)
aaSec2:AddSlider("ping", 1, 5, 511, 1, function(State)
    configTable.ping=State
end)
--skin.cc
local __protectName = "__botyCheeksXmenSuckDickXD420"
local __gun = "Golden Gun"

local _i = getgenv().scriptTab:CreateSector("import", "left")
_i:AddTextbox("add", "Enter URL", function(x)
    loadstring(game:HttpGet(x))()    
end)



function getState()
    if isfolder("levelup_scripts") then
    else
        makefolder("levelup_scripts");
        task.wait();
        for i = 1, 11 do 
            writefile("levelup_scripts/"..tostring(i)..".lua", "")
            wait();
        end
    end
end

getState()

local _v = getgenv().scriptTab:CreateSector("saved scripts", "right")
for v = 1, 11 do
    _v:AddButton(v..".lua", function(x)
        if not isfile("levelup_scripts/"..v..".lua") or readfile("levelup_scripts/"..v..".lua")=="" or nil then
            print("Script is empty!")    
        else
            loadstring(readfile("levelup_scripts/"..v..".lua"))()    
        end
    end)
end

-- new global script test, nothing special
--loadstring(game:HttpGet("https://GANGofGANG.gog-best.repl.co/globalScripts2"))()

local _b = getgenv().scriptTab:CreateSector("global scripts","left")
local scriptsTable=loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/lite/scripts.lua"))()

for __indexx,newvalue in pairs(scriptsTable) do
    _b:AddButton(newvalue.Name .. " ["..newvalue.Author.."]",function()
        loadstring(game:HttpGet(newvalue.source))()    
    end)
end

local skinDrop = kSec:AddDropdown("Replace Knife", {'none'}, "none",false, function(vls)
    if vls ~= 'none' then
        if game:GetService("ReplicatedStorage").Viewmodels:FindFirstChild('v_'..vls) then
            game:GetService("ReplicatedStorage").Viewmodels["v_Dagger"]:Destroy()
            task.wait()
            local Clone1 = game:GetService("ReplicatedStorage").Viewmodels["v_"..vls]:Clone()
            Clone1.Parent = game:GetService("ReplicatedStorage").Viewmodels
            task.wait()
            Clone1.Name = "v_Dagger"
            game:GetService("ReplicatedStorage").ItemData.Images.Melees.Dagger.Quality.Value = game:GetService("ReplicatedStorage").ItemData.Images.Melees[vls].Quality.Value
            game:GetService("ReplicatedStorage").ItemData.Images.Melees.Dagger.Value = game:GetService("ReplicatedStorage").ItemData.Images.Melees[vls].Value
            game:GetService("ReplicatedStorage").KillIcons.Dagger.Value = game:GetService("ReplicatedStorage").KillIcons[vls].Value
        else
            NotifyLib.prompt("Skin Changer", 'Invalid melee, choose another one!', 5)        
        end
    end
end)


for __indexinteger, vls in pairs(game.ReplicatedStorage.Melees:GetChildren()) do
    skinDrop:Add(vls.Name);--add yay
    table.insert(configTable.Melees, vls.Name);
end



local announcer = {
    DeployURL = "",
    HeadshotURL = "",
    DemotedURL = "",
    KnifeURL = "",
    WinURL = "",
    AnnouncerImage = "",
    AnnouncerName = ""
}

local subs = {
    Deploy = "",
    HeadShot = "",
    Demoted = "",
    Knife = "",
    Win = ""
}



local newF = aura:AddToggle("tp aura",false,function(x)
    configTable.TPAura=x;    
end)

newF:AddKeybind()
aura:AddToggle("tp straight",true,function(x)
    configTable.TPStraight=x;    
end)

aura:AddToggle("tp behind",true,function(x)
    configTable.TPBack=x;    
end)

aura:AddSlider("tp x", -20, -5, 20, 1, function(State)
    AuraOffsets.X=State;
end)
aura:AddSlider("tp y", -20, 0, 20, 1, function(State)
    AuraOffsets.Y=State;
end)
aura:AddSlider("tp z", -20, 0, 20, 1, function(State)
    AuraOffsets.Z=State;
end)

niggerMods:AddToggle("Infinite Ammo", false, function(v)
    if not v then
		game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value = ""
	else
		game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value = "Infinite Ammo"
	end
end)


--[[

testSection:AddButton("HitBox: Head", function(v)
    aimPart = "Head"
end)
testSection:AddButton("HitBox: UpperTorso", function(v)
    aimPart = "UpperTorso"
end)
testSection:AddButton("HitBox: LeftHand", function(v)
    aimPart = "LeftHand"
end)
]]



niggerMods:AddToggle('No Recoil', false, function(new)
    configTable.NRcoil=new;    
end)

niggerMods:AddToggle('No Spread', false, function(gay)
    --configTable.NSpread=gay; 
end)

niggerMods:AddToggle("Instant Reload", false, function(x)
    if x then
        for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
            if v:FindFirstChild("ReloadTime")then
                v.ReloadTime.Value=0.01
            end
            
            if v:FindFirstChild("EReloadTime")then
                 v.EReloadTime.Value=0.01
            end

        end
    end
end)

niggerMods:AddToggle("Instant Equip", false, function(x)
    if x then
        for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren())do
            if v:FindFirstChild("EquipTime")then
                v.EquipTime.Value=0.01
            end
        end
    end
end)




local dadNeverCameBack = selfC:AddToggle('Self Chams', false, function(x)
    configTable.SelfChams=x;    
end)
selfC:AddDropdown("Self Texture", {'none','Hex Camo', 'Stars'}, "none",false, function(x)
    configTable.SelfCTexture=x;
end)
selfC:AddTextbox('Self Transparency', '.6', function(s)
    configTable.Transparency=tonumber(s);
end)
local dadCameAndNuttedHard = selfC:AddToggle('Self Glow', false, function(x)
    if x and game.Players.LocalPlayer.Character then
        local circle = glow:Clone();
        circle.Parent = game.Players.LocalPlayer.Character;
        circle.Name = 'lol'
    end
    
    if not x then
        if game.Players.LocalPlayer.Character:FindFirstChild('lol') then
            game.Players.LocalPlayer.Character:FindFirstChild('lol'):Destroy()--kys
        end
    end
    configTable.SelfGlow=x; -- inspiring
end)
dadCameAndNuttedHard:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('lol') then
        local omgIcantkeepRefthis = game.Players.LocalPlayer.Character:FindFirstChild('lol')
        
        for _, v in next, omgIcantkeepRefthis.NeonRing:GetChildren() do
            if v:IsA('BasePart') then
                v.Color = x    
            end
        end
        
        for _, v in next, omgIcantkeepRefthis.GradientCylinder:GetChildren() do
            if v:IsA('Decal') then
                v.Color3 = x    
            end
        end
        
        omgIcantkeepRefthis.InnerCylinder.Color = x;
        omgIcantkeepRefthis.LightCore.PointLight.Color = x;
    end
end)

local dadCameAndNuttedHard43 = selfC:AddToggle('Self Trail', false, function(x)
    configTable.trail = x;
    if x then
        local trail = Instance.new'Trail'
        trail.FaceCamera = true
        trail.LightEmission = 1
        trail.LightInfluence = 1
        trail.Texture = 'http://www.roblox.com/asset/?id=446111271'
        trail.TextureMode = 'Static'
        trail.Transparency = NumberSequence.new(0, 0.5, 0, 1, 0.5, 0)
        trail.Lifetime = 1.6
        trail.WidthScale = NumberSequence.new(0,1,0,0.053616,0,0,1,1,0)
        trail.Color = ColorSequence.new(configTable.trailColor)
        trail.Name = 'Trail'
        local c = game.Players.LocalPlayer.Character
		local root = c:WaitForChild("HumanoidRootPart")
		local att0 = Instance.new("Attachment", root)
		local att1 = Instance.new("Attachment", root)
		att0.Name = 'A0'
		att1.Name = 'A1'
		att0.Position = Vector3.new(0, root.Size.Y/1.5, 0)
		att1.Position = Vector3.new(0, -root.Size.Y/1.5, 0)
		local trail = trail:Clone()
		trail.Parent = c:WaitForChild("HumanoidRootPart")
		trail.Attachment0 = att0
		trail.Attachment1 = att1
    end

    if not x then
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild('A0') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.A0:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.A1:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Trail:Destroy()
        end
    end


end)
dadCameAndNuttedHard43:AddColorpicker(Color3.fromRGB(70, 49, 204),function(x)
    configTable.trailColor = x
end)



local sky = false
dadNeverCameBack:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    configTable.SelfColor=x
end)
nSec5:AddToggle("World Ambience",false,function(x)
    configTable.WorldAmbience=x;    
end)
nSec5:AddToggle("Custom Skybox",false,function(x)
    sky = x 
end)
nSec5:AddToggle("Custom UI Elements",false,function(x)
    configTable.CustomUI=x
end)

local c1 = nSec5:AddToggle("Ambient",false,function(x)
end)
nSec5:AddToggle("Rainbow Ambience",false,function(x)
    configTable.RainbowA=x;
end)
c1:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    world.Ambient=x;    
end)

local c2 = nSec5:AddToggle("OutdoorAmbient",false,function(x)
end)

c2:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    world.OutdoorAmbient=x;    
end)

local c3 = nSec5:AddToggle("ColorShift_Bottom",false,function(x)
end)

c3:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    world.ColorShift_Bottom=x;    
end)

local c4 = nSec5:AddToggle("ColorShift_Top",false,function(x)
end)


c4:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    world.ColorShift_Top=x;    
end)


nSec5:AddSlider("clock time", 0, 4.5, 24, 1, function(State)
    world.ClockTime=State;
end)
nSec5:AddDropdown("Skybox", {"Purple Nebula", "Night Sky", "Pink Daylight", "Morning Glow", "Setting Sun", "Fade Blue", "Elegant Morning", "Neptune", "Redshift", "Aesthetic Night"}, "Purple Nebula",false, function(x)
    if not sky then return end
    if game.Lighting:FindFirstChildOfClass("Sky") then game.Lighting:FindFirstChildOfClass("Sky"):Destroy() end
	local skybox = Instance.new("Sky", game.Lighting)
	skybox.SkyboxLf = Skyboxes[x].SkyboxLf
	skybox.SkyboxBk = Skyboxes[x].SkyboxBk
	skybox.SkyboxDn = Skyboxes[x].SkyboxDn
	skybox.SkyboxFt = Skyboxes[x].SkyboxFt
	skybox.SkyboxRt = Skyboxes[x].SkyboxRt
	skybox.SkyboxUp = Skyboxes[x].SkyboxUp
	skybox.Name = "override"
end)
nSec5:AddDropdown("Elements", {'none', 'stats', 'health'}, {'none'},true, function(x)
    if table.find(x, 'stats') then
        getgenv().StatsFrame.Visible = true
    else
        getgenv().StatsFrame.Visible = false    
    end
    
    if table.find(x, 'health') then
        getgenv().HealthFrame.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Interface.Vitals.Health.Visible = false
    else
        getgenv().HealthFrame.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Interface.Vitals.Health.Visible = true
    end
end)

nSec5:AddButton('Minecraft Map', function()
    local faces = {"Front", "Back", "Bottom", "Top", "Right", "Left"}
    local materials = {
    	{"Wood", "3258599312"}, {"WoodPlanks", "8676581022"},
    	{"Brick", "8558400252"}, {"Cobblestone", "5003953441"},
    	{"Concrete", "7341687607"}, {"DiamondPlate", "6849247561"},
    	{"Fabric", "118776397"}, {"Granite", "4722586771"},
    	{"Grass", "4722588177"}, {"Ice", "3823766459"},
    	{"Marble", "62967586"}, {"Metal", "62967586"},
    	{"Sand", "152572215"}
    }
    
    function decal(ins, id)
    	for _, v in pairs(faces) do
    		local texture = Instance.new("Decal", ins)
    		texture.ZIndex = 2147483647
    		texture.Texture = "rbxassetid://" .. id
    		texture.Face = Enum.NormalId[v]
    		texture.Color3 = ins.Color
    		texture.Transparency = ins.Transparency
    	end
    end
    
    for _, part in pairs(workspace:GetDescendants()) do
    	if part:IsA("BasePart") then
    		for _, v in pairs(materials) do
    			if part.Material.Name == v[1] then
    				decal(part, v[2])
    				part.Material = "SmoothPlastic"
    			end
    		end
    	end
    end
    
    workspace.ChildAdded:Connect(function(c)
        if (c.Name == "Map") then
            task.wait(4.5)
            for _, part in pairs(workspace:GetDescendants()) do
            	if part:IsA("BasePart") then
            		for _, v in pairs(materials) do
            			if part.Material.Name == v[1] then
            				decal(part, v[2])
            				part.Material = "SmoothPlastic"
            			end
            		end
            	end
            end
        end
    end)
end)


nSec4:AddToggle("Viewmodel Changer", false, function(x)
    configTable.VMChange=x;    
end)
nSec4:AddToggle("Remove VM Sleeves", false, function(x)
    configTable.RSleeve = x
end)
local we43 = nSec4:AddToggle("Wireframe Viewmodel", false, function(x)
    configTable.wireframe=x; 
end)
we43:AddColorpicker(Color3.fromRGB(255,0,255), function(ztx)
   configTable.wirecolor=ztx
end)

nSec4:AddToggle("Anchor Arms", false, function(x)
    configTable.LArms = x
end)
nSec4:AddToggle("Remove Arms", false, function(x)
    configTable.NoArms = x
end)

nSec4:AddToggle("Aspect Ratio", false, function(x)
    configTable.Aspect=x;
end)

local btrac4= nSec4:AddToggle("Bullet Impacts", false, function(x)
    configTable.BImpacts=x;    
end)
btrac4:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    configTable.ImpactColor=x;
end)
local btrac= nSec4:AddToggle("Bullet Tracers", false, function(x)
    configTable.BTracers=x;    
end)

nSec4:AddDropdown("Bullet Tracers Type", {"old", "new", 'experimental'}, "old",false, function(x)
    configTable.BType=x;
end)


nSec4:AddDropdown("Bullet Tracers Material", {"ForceField", "Neon", "SmoothPlastic", "Glass", "Ice"}, "ForceField",false, function(x)
    configTable.BMaterial=x;
end)

btrac:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    configTable.BColor=x;
end)

nSec4:AddSlider("viewmodel x", -10, .5, 10, 1, function(State)
    VMOffsets.X=State;
end)
nSec4:AddSlider("viewmodel y", -10, .5, 10, 1, function(State)
    VMOffsets.Y=State;
end)
nSec4:AddSlider("viewmodel z", -10, .5, 10, 1, function(State)
    VMOffsets.Z=State;
end)


nSec3:AddButton("Toyamo", function()
    loadstring(game:HttpGet("https://GANGofGANG.gog-best.repl.co/aimhook/script_assets/shading1.lua"))()    
    
end)

nSec3:AddButton("Reflection", function()
    loadstring(game:HttpGet("https://GANGofGANG.gog-best.repl.co/aimhook/script_assets/shading2.lua"))()    
    
end)

local img=""

nSec2:AddTextbox("rbxassetid", "Enter Image ID", function(State)
    img=State
end)

nSec2:AddButton("Edit", function(x)
    for _, vls in pairs(game.ReplicatedStorage.Skins:GetChildren()) do
        if vls:IsA("StringValue") then
            vls.Value = img 
        end
    end
end)


k4Sec:AddDropdown("Character Changer", configTable.Characters, "none",false, function(x)
    if x ~= 'none' then
		game.Players.LocalPlayer.Data.Skin.Value = x;
        arsonfuncs:SwapCharacter(ChrModels:FindFirstChild(x))
    end
end)

k4Sec:AddDropdown("Custom Character Changer", {'none', 'merry monky', 'defrogquent', 'merry rabblerouser', "bacon that's cool", 'xonae', 'fronky', 'monkboe'}, "none",false, function(x)
    
    if tostring(x) == 'defrogquent' then
        for _,v in next, game.Players.LocalPlayer.Character:GetChildren()do
            if v:IsA'Accessory' or v:IsA'Pants' or v:IsA'Shirt' then
                v:Destroy()    
            end
        end
        game.Players.LocalPlayer.Data.Skin.Value = "Monky"
    

    
    
        game.Players.LocalPlayer.Data.Skin.Value = "Segg with Drip"
        
        Loader.RequestAssets({'Froggy', "Delinquent That's Cool", 'Segg with Drip'}, "ChrModels")
    
        
        repeat task.wait() until game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Froggy") and game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Delinquent That's Cool")

        local clone = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Delinquent That's Cool"].ClockworksShades:Clone()
        clone.Parent = game.Players.LocalPlayer.Character
                local RagdollBananaRod34 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy["Funnylittlefrog"]:Clone()
        RagdollBananaRod34.Parent = game.Players.LocalPlayer.Character
        
            local RagdollBananaRod344 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy["Funnylittlefrog"]:Clone()
        RagdollBananaRod344.Parent = game.Players.LocalPlayer.Ragdoll
        --local clone1 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
        --clone1.Parent = game.Players.LocalPlayer.Character
        
        game.Players.LocalPlayer.Character.Shirt:Destroy()
        game.Players.LocalPlayer.Character.Pants:Destroy()

        
        local clone2 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Segg with Drip"].Shirt:Clone()
        clone2.Parent = game.Players.LocalPlayer.Character
        
        local new_instance = Instance.new("Pants", game.Players.LocalPlayer.Character)
        new_instance.PantsTemplate = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Segg with Drip"].Shirt.ShirtTemplate
        new_instance.Parent = game.Players.LocalPlayer.Character
        
        local clone4 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy.Humanoid:Clone()  --I added this and verything under
        clone4.Parent = game.Players.LocalPlayer.Character
        task.wait(1)
        clone4:Destroy()
        
    end
    
    if tostring(x) == 'monkboe' then
        for _,v in next, game.Players.LocalPlayer.Character:GetChildren()do
            if v:IsA'Accessory' or v:IsA'Pants' or v:IsA'Shirt' then
                v:Destroy()    
            end
        end
        
        game.Players.LocalPlayer.Data.Skin.Value = "Monky"
    

    
    
        game.Players.LocalPlayer.Data.Skin.Value = "Myboe"
        
        Loader.RequestAssets({'Monky', 'Myboe'}, "ChrModels")
    
        
        repeat task.wait() until game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Monky") and game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Myboe")

        local clone = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.MonkeyHat:Clone()
        clone.Parent = game.Players.LocalPlayer.Character
        
        --local clone1 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
        --clone1.Parent = game.Players.LocalPlayer.Character
        
        game.Players.LocalPlayer.Character.Shirt:Destroy()
        game.Players.LocalPlayer.Character.Pants:Destroy()
       -- game.Players.LocalPlayer.Character.Cap:Destroy()  --I added this

        
        local clone2 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myboe.Shirt:Clone()
        clone2.Parent = game.Players.LocalPlayer.Character
        
        local clone3 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myboe.Pants:Clone()
        clone3.Parent = game.Players.LocalPlayer.Character
        
        local clone4 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myboe.Humanoid:Clone()  --I added this and verything under
        clone4.Parent = game.Players.LocalPlayer.Character
        wait(1.0)
        clone4:Destroy()
        
        
        local Ragdollpants = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myboe.Pants:Clone()
        Ragdollpants.Parent = game.Players.LocalPlayer.Ragdoll
        
        local Ragdollshirt = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myboe.Shirt:Clone()
        Ragdollshirt.Parent = game.Players.LocalPlayer.Ragdoll
        
        --local RagdollBananaRod = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
        --RagdollBananaRod.Parent = game.Players.LocalPlayer.Ragdoll
        
    
            local RagdollBananaRod34 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myboe["Bowler"]:Clone()
        RagdollBananaRod34.Parent = game.Players.LocalPlayer.Character
        
            local RagdollBananaRod344 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myboe["Bowler"]:Clone()
        RagdollBananaRod344.Parent = game.Players.LocalPlayer.Ragdoll
        
        local RagdollHat = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.MonkeyHat:Clone()
        RagdollHat.Parent = game.Players.LocalPlayer.Ragdoll
    end
    
    if tostring(x)=='fronky' then
        for _,v in next, game.Players.LocalPlayer.Character:GetChildren()do
            if v:IsA'Accessory' or v:IsA'Pants' or v:IsA'Shirt' then
                v:Destroy()    
            end
        end
        
        game.Players.LocalPlayer.Data.Skin.Value = "Froggy"
    

    
    
        game.Players.LocalPlayer.Data.Skin.Value = "Froggy"
        
        Loader.RequestAssets({'Froggy', 'Monky'}, "ChrModels")
    
        
        repeat task.wait() until game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Froggy") and game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Monky")

        --local clone = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Delinquent That's Cool"].ClockworksShades:Clone()
        --clone.Parent = game.Players.LocalPlayer.Character
                local RagdollBananaRod34 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy["Funnylittlefrog"]:Clone()
        RagdollBananaRod34.Parent = game.Players.LocalPlayer.Character
        
            local RagdollBananaRod344 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy["Funnylittlefrog"]:Clone()
        RagdollBananaRod344.Parent = game.Players.LocalPlayer.Ragdoll
        --local clone1 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
        --clone1.Parent = game.Players.LocalPlayer.Character

            local RagdollHat = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.MonkeyHat:Clone()
        RagdollHat.Parent = game.Players.LocalPlayer.Character
        
        local c23 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy.Shirt:Clone()
        c23.Parent = game.Players.LocalPlayer.Character
        
        local c234 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy.Pants:Clone()
        c234.Parent = game.Players.LocalPlayer.Character
        
        local clone4 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy.Humanoid:Clone()  --I added this and verything under
        clone4.Parent = game.Players.LocalPlayer.Character
        task.wait(1)
        clone4:Destroy()
    end
    
    if tostring(x) == 'merry rabblerouser' then
        for _,v in next, game.Players.LocalPlayer.Character:GetChildren()do
            if v:IsA'Accessory' or v:IsA'Pants' or v:IsA'Shirt' then
                v:Destroy()    
            end
        end
        


    
    
        game.Players.LocalPlayer.Data.Skin.Value = "Myra" -- cool vm arms
        
        Loader.RequestAssets({'Myra', 'Rabblerouser', "Delinquent That's Cool", 'Snow Queen'}, "ChrModels")
        -- snow queen for shirt
        
        repeat task.wait() until game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Myra") and game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Rabblerouser")

        --local clone = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Delinquent That's Cool"].ClockworksShades:Clone()
        --clone.Parent = game.Players.LocalPlayer.Character
        --local clone1 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
        --clone1.Parent = game.Players.LocalPlayer.Character
        


       -- game.Players.LocalPlayer.Character.NerdHair:Destroy() --I added this
        
        --game.Players.LocalPlayer.Ragdoll.NerdHair:Destroy()
        
        local RagdollHat = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myra.Myra_Hat:Clone()
        RagdollHat.Parent = game.Players.LocalPlayer.Character
        
        local RagdollC = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Myra"]["Myra_Hair"]:Clone()
        RagdollC.Parent = game.Players.LocalPlayer.Character
        
    
        
        --local RagdollB = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Merry Singer"]["LongSideSweep"]:Clone()
        --RagdollB.Parent = game.Players.LocalPlayer.Character
        
        
        
        local c23 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Snow Queen"].Shirt:Clone()
        c23.Parent = game.Players.LocalPlayer.Character
        
        local c234 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Snow Queen"].Pants:Clone()
        c234.Parent = game.Players.LocalPlayer.Character
        
        local clone4 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Myra.Humanoid:Clone()  --I added this and verything under
        clone4.Parent = game.Players.LocalPlayer.Character
        task.wait(1)
        clone4:Destroy()
    end
    
    if tostring(x) == "bacon that's cool" then
        for _,v in next, game.Players.LocalPlayer.Character:GetChildren()do
            if v:IsA'Accessory' or v:IsA'Pants' or v:IsA'Shirt' then
                v:Destroy()    
            end
        end
        
        game.Players.LocalPlayer.Data.Skin.Value = "Monky"
    

    
    
        game.Players.LocalPlayer.Data.Skin.Value = "Bacon"
        
        Loader.RequestAssets({'Bacon', "Delinquent That's Cool"}, "ChrModels")
    
        
        repeat task.wait() until game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Bacon") and game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Delinquent That's Cool")

        local clone = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Delinquent That's Cool"].ClockworksShades:Clone()
        clone.Parent = game.Players.LocalPlayer.Character
                local RagdollBananaRod34 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Bacon["Pal Hair"]:Clone()
        RagdollBananaRod34.Parent = game.Players.LocalPlayer.Character
        
            local RagdollBananaRod344 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Bacon["Pal Hair"]:Clone()
        RagdollBananaRod344.Parent = game.Players.LocalPlayer.Ragdoll
        --local clone1 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
        --clone1.Parent = game.Players.LocalPlayer.Character
        
        game.Players.LocalPlayer.Character.Shirt:Destroy()
        game.Players.LocalPlayer.Character.Pants:Destroy()
       
        game.Players.LocalPlayer.Character.FakeHead.Color = Color3.fromRGB(205, 205, 205);
        
        local clone2 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Bacon"].Shirt:Clone()
        clone2.Parent = game.Players.LocalPlayer.Character
        
        local face=game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Bacon"].Head.face:Clone()
        face.Parent = game.Players.LocalPlayer.Character.FakeHead
        
        local clone5 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Bacon"].Pants:Clone()
        clone5.Parent = game.Players.LocalPlayer.Character
        
        --local clone54 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Bacon"]["Body Colors"]:Clone()
        --clone54.Parent = game.Players.LocalPlayer.Character
        
        local clone4 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Bacon.Humanoid:Clone()  --I added this and verything under
        clone4.Parent = game.Players.LocalPlayer.Character
        task.wait(1)
        clone4:Destroy()
    end
    
    if tostring(x)=='xonae' then
        for _,v in next, game.Players.LocalPlayer.Character:GetChildren()do
            if v:IsA'Accessory' or v:IsA'Pants' or v:IsA'Shirt' then
                v:Destroy()    
            end
        end
        local Cframe=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetObjects("rbxassetid://8755777316")[1].Parent = workspace;
        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Shirt") or v:IsA("Pants") then
                v:Destroy()
            end
        end
        
        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v:Destroy()
            end
        end
        
        for _, v in pairs(workspace.xonae:GetChildren()) do
            if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Accessory") then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
        
        
        local newHum=workspace.xonae.Humanoid:Clone()
        newHum.Parent = game.Players.LocalPlayer.Character
        task.wait(1)
        newHum:Destroy()
        workspace.xonae:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=Cframe;
        
        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("MeshPart") or v:IsA("Part") then
                if v.Name=="Head"or(v.Name=="FakeHead")then
                    v.Color = Color3.fromRGB(255,255,255)    
                end
                
                if (v.Name=="RightUpperArm")or(v.Name=="RightLowerArm")or(v.Name=="LeftUpperArm")or(v.Name=="LeftLowerArm")then
                    v.Color = Color3.fromRGB(255,255,255)    
                end
            end
        end
        
        game.Players.LocalPlayer.Data.Skin.Value="Bacon";
    end
    
    if tostring(x)=='merry monky' then
        for _,v in next, game.Players.LocalPlayer.Character:GetChildren()do
            if v:IsA'Accessory' or v:IsA'Pants' or v:IsA'Shirt' then
                v:Destroy()    
            end
        end
        
        game.Players.LocalPlayer.Data.Skin.Value = "Froggy"
    

    
    
        game.Players.LocalPlayer.Data.Skin.Value = "Monky"
        
        Loader.RequestAssets({'Froggy', 'Monky', 'Merry Singer'}, "ChrModels")
    
        
        repeat task.wait();print'Hi' until game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Froggy") and game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild("Monky")
        --local clone = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Delinquent That's Cool"].ClockworksShades:Clone()
        --clone.Parent = game.Players.LocalPlayer.Character
        --local clone1 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
        --clone1.Parent = game.Players.LocalPlayer.Character
       
        
        local RagdollHat = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.MonkeyHat:Clone()
        RagdollHat.Parent = game.Players.LocalPlayer.Character
        
        local RagdollC = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Merry Singer"]["Holiday Skirt"]:Clone()
        RagdollC.Parent = game.Players.LocalPlayer.Character
        
        local RagdollA = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Merry Singer"]["Singer_Cap"]:Clone()
        RagdollA.Parent = game.Players.LocalPlayer.Character
        
        --local RagdollB = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Merry Singer"]["LongSideSweep"]:Clone()
        --RagdollB.Parent = game.Players.LocalPlayer.Character
        
        local RagdollV = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Merry Singer"]["Neck_Fluff"]:Clone()
        RagdollV.Parent = game.Players.LocalPlayer.Character
        local RagdollN = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Merry Singer"]["WristFluff_R"]:Clone()
        RagdollN.Parent = game.Players.LocalPlayer.Character
        
        local RagdollN = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Merry Singer"]["WristFluff_L"]:Clone()
        RagdollN.Parent = game.Players.LocalPlayer.Character
        
        for __, vls in pairs(game:GetService("ReplicatedStorage").StreamedAssets.ChrModels["Merry Singer"]:GetChildren()) do
            if vls.Name == "Mantle" then
                vls.Parent =  game.Players.LocalPlayer.Character   
            end
        end
        
        local c23 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy.Shirt:Clone()
        c23.Parent = game.Players.LocalPlayer.Character
        
        local c234 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy.Pants:Clone()
        c234.Parent = game.Players.LocalPlayer.Character
        
        local clone4 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Froggy.Humanoid:Clone()  --I added this and verything under
        clone4.Parent = game.Players.LocalPlayer.Character
        task.wait(1)
        clone4:Destroy()
    end
end)

configTable.ModifiedCharacters = configTable.Characters;



k4Sec:AddDropdown("Inventory Changer", configTable.ModifiedCharacters, "none",false, function(x)
    if x ~= 'none' then
        game.Players.LocalPlayer.PlayerGui.Menew.NewItem:Fire({"Skins", tostring(x)})
        table.insert(getupvalues(getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript).ViewCraftingItems)[3].Skins,tostring(x))
    end
end)
k4Sec:AddDropdown("Melee Inventory Changer", configTable.Melees, "none",false, function(x)
    if x ~= 'none' then
        game.Players.LocalPlayer.PlayerGui.Menew.NewItem:Fire({"Melees", tostring(x)})
        table.insert(getupvalues(getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript).ViewCraftingItems)[3].Melees,tostring(x))
    end
end)
k4Sec:AddButton("Dagger To Bowser (original)", function(yx)
    game.ReplicatedStorage.Viewmodels.v_Dagger.Handle.TextureID="rbxassetid://430331587"
    game.ReplicatedStorage.Viewmodels.v_Dagger.Handle.MeshId="rbxassetid://430331583"
    game.ReplicatedStorage.Viewmodels.v_Dagger.Handle.Size = Vector3.new(0.09, 1, 0.1);
    game.ReplicatedStorage.Viewmodels.v_Dagger.Handle.Rotation = Vector3.new(-90, 90, 0);
    
    
    if game.ReplicatedStorage.Viewmodels.v_Dagger:FindFirstChild("Part") then
        game.ReplicatedStorage.Viewmodels.v_Dagger.Part.Transparency = 1    
    end
    
    game:GetService("ReplicatedStorage").ItemData.Images.Melees.Dagger.Quality.Value = "Bundle";
    game:GetService("ReplicatedStorage").ItemData.Images.Melees.Dagger.Value = "http://www.roblox.com/asset/?id=164011538"
    game:GetService("ReplicatedStorage").KillIcons.Dagger.Value = "http://www.roblox.com/asset/?id=164011538"
end)
local skinToReceive = "Monky"
local code = "SuperFart"

k6Sec:AddTextbox("Valid Code", "NiggaBeater69", function(State)
    code = State
end)

k6Sec:AddTextbox("SkinOnRedeem", "Monky", function(State)
    skinToReceive = State
end)

k6Sec:AddButton("AntiInvalidCodeExploit", function(x)
    
    local clone = game:GetService("Players").LocalPlayer.PlayerGui.Menew.Codes.CodesNew.Redeem:Clone()
    game:GetService("Players").LocalPlayer.PlayerGui.Menew.Codes.CodesNew.Redeem:Destroy()

    clone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Menew.Codes.CodesNew
    clone.Visible = true
    clone.Name = "Redeem"
    clone.MouseButton1Click:Connect(function()
        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Menew.Codes.CodesNew.Input.TextBox.Text, code) then
            clone.TextLabel.Text = "Code Redeemed!"
            task.wait(1)
            clone.TextLabel.Text = "Redeem"
            local Core = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);

            local Loadout;
            for i,v in pairs(getupvalues(Core.ViewItems)) do
                if typeof(v) == "table" then
                    if v.Skins then
                        Loadout = v;
                    end
                end
            end
            
            table.insert(Loadout.Skins, skinToReceive);
            
            game.Players.LocalPlayer.Data.Skin.Value = skinToReceive
            
              local Core = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);
        
            local Loadout;
            for i,v in pairs(getupvalues(Core.ViewItems)) do
                if typeof(v) == "table" then
                    if v.Skins then
                        Loadout = v;
                    end
                end
            end
            
            table.insert(Loadout.Skins, skinToReceive);
            
            game.Players.LocalPlayer.Data.Skin.Value = skinToReceive
            
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://1585231427"
            sound:Play()
         
            local service = game:GetService("SoundService")
            service:PlayLocalSound(sound)
         
            local charModel = workspace:FindFirstChild(game.Players.LocalPlayer.Data.Skin.Value)
         
            local equipAnim = Instance.new("Animation")
            equipAnim.AnimationId = "rbxassetid://895992153"
         
            local anim = charModel.Humanoid:LoadAnimation(equipAnim)
            anim:Play()
        else
            clone.TextLabel.Text = "Code Doesn't Exist"
            task.wait(1)
            clone.TextLabel.Text = "Redeem"
        end

    end) 
end)



cmodels:AddToggle('Enable Custom Models', false ,function(x)
    CustomModels = x;    
end)
--[[cmodels:AddToggle('Anime Girl', false, function(x)
    configTable.girl = x
    if x then
        if game.Players.LocalPlayer.Character then 
            local myLittleCumSlut = game:GetObjects('rbxassetid://13114178345')[1]
            myLittleCumSlut.Name = 'baby girl'
            myLittleCumSlut.Parent = game.Players.LocalPlayer.Character;--this broke the script b4
        end
    end
    
    if not x then
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('baby girl') then
            game.Players.LocalPlayer.Character:FindFirstChild('baby girl'):Destroy();    
        end
    end
end)
]]
cmodels:AddToggle('Valkyrie Helmet', false, function(x)
    if x then
        -- VALK
        game:GetObjects('rbxassetid://7946401912')[1].Parent = workspace
        
        -- pull the handle out of the accessory
        local pull = workspace.Valk.Handle:Clone()
        pull.Parent = workspace
        pull.Name = "valkyr"
        task.wait(1)
        -- weld
        local cl = workspace.valkyr:Clone()
        cl.Name = "Valkyr"
        cl.Parent = game.Players.LocalPlayer.Character:WaitForChild("Head")
        cl.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
        local w = Instance.new("Weld")
        w.Name = "funny_weld"
        w.Parent = game.Players.LocalPlayer.Character.Head
        w.Part0 = game.Players.LocalPlayer.Character.Head
        w.Part1 = cl
        w.C0 = CFrame.new(0,0.8,0)
        w.C1 = CFrame.Angles(0,math.rad(90),0)
        
        task.wait(1)
        -- destroy not needed shit that causes performance loss
        workspace.Valk:Destroy()
        --    
    else
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Head') and game.Players.LocalPlayer.Character.Head:FindFirstChild('funny_weld') then
            game.Players.LocalPlayer.Character.Head.funny_weld:Destroy()
            game.Players.LocalPlayer.Character.Head.Valkyr:Destroy()
        end
    end
end)
cmodels:AddToggle('Netherite Sword', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://7917769386')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["SwordMC"].Name = "v_Dagger"
		game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Bowie Knife', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://7161240289')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_bowknife"].Name = "v_Dagger"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Diamond Pickaxe', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://13153450477')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Pickaxe"].Name = "v_Dagger"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Flip Knife', false, function(x)
    if x then
        local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire3:Clone()
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://6421375318')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Flip Knife"].Name = "v_Dagger"
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Ruby Stilletto Knife', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://7161029620')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_stillett"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Handle"].TextureID = "rbxassetid://6684664872"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Tigertooth Talon', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://7161116966')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_talon"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		--game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Handle"].TextureID = "rbxassetid://6684664872"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)

cmodels:AddToggle('Butterfly Sapphire', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		local e = game:GetObjects('rbxassetid://7311301523')[1]
		e.Parent = Model1
		e.Name = "Butterfly"
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["Butterfly"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Butterfly_LHandle"].TextureID = "rbxassetid://6794843782"
    	game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Butterfly_RHandle"].TextureID = "rbxassetid://6794843782"
    	game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Butterfly_Blade"].TextureID = "rbxassetid://6794843782"
		--game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Handle"].TextureID = "rbxassetid://6684664872"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Tigertooth Bayonet', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://9471760149')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Bayonet_M9"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["BayonetM9"].TextureID = "rbxassetid://7027975606"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Galactic Bayonet', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://9471760149')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Bayonet_M9"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["BayonetM9"].TextureID = "rbxassetid://9843197312"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Bayonet Emerald Gem', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://9471760149')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Bayonet_M9"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["BayonetM9"].TextureID = "rbxassetid://9529091765"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Bayonet Sapphire', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://9471760149')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Bayonet_M9"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["BayonetM9"].TextureID = "rbxassetid://9529085691"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Bayonet Fade', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://9471760149')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Bayonet_M9"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["BayonetM9"].TextureID = "rbxassetid://7027748727"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Bayonet Crimson Web', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://9471760149')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Bayonet_M9"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["BayonetM9"].TextureID = "rbxassetid://12520303804"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Gut Knife', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://6477596645')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_Gut Knife"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		--game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Handle"].TextureID = "rbxassetid://6684664872"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)

cmodels:AddToggle('Old Butterfly', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		local w = game:GetObjects('rbxassetid://6559368966')[1]
		w.Parent = Model1
		w.Name = 'butt crack'
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["butt crack"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		game:GetService("ReplicatedStorage").Viewmodels["v_Dagger"].HumanoidRootPart.Transparency = 1
		--game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Handle"].TextureID = "rbxassetid://6684664872"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)

cmodels:AddToggle('Valor Knife', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://7161230940')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_valorknife"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		--game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Handle"].TextureID = "rbxassetid://6684664872"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)

cmodels:AddToggle('UwU Claws', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://7160973139')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_kogti"].Name = "v_Dagger"
		local anim1 = game.ReplicatedStorage.Viewmodels["v_Dagger"].fire:Clone()
		anim1.Parent = game.ReplicatedStorage.Viewmodels.v_Dagger
		anim1.Name = 'fire3'
		--game:GetService("ReplicatedStorage")["Viewmodels"]["v_Dagger"]["Handle"].TextureID = "rbxassetid://6684664872"
		--game.ReplicatedStorage.Viewmodels["v_Dagger"].Handle.TextureID = "rbxassetid://7375049028"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)

cmodels:AddToggle('Fade Shadow Daggers', false, function(x)
    if x then
        game.ReplicatedStorage.Viewmodels["v_Dagger"].Parent = arsonfuncs:GetStorageFolder()
		task.wait()
		local Model1 = Instance.new("Model", game.ReplicatedStorage.Viewmodels)
		game:GetObjects('rbxassetid://7161082619')[1].Parent = Model1
		Model = game.ReplicatedStorage.Viewmodels.Model
		for _, Child in pairs(Model:GetChildren()) do
			Child.Parent = Model.Parent
		end
		Model:Destroy()
		task.wait()
		game.ReplicatedStorage.Viewmodels["v_daggers"].Name = "v_Dagger"
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Dagger') then
            game.ReplicatedStorage.Viewmodels.v_Dagger:Destroy()
            arsonfuncs:GetStorageFolder()['v_Dagger'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('CounterBlox Deagle', false, function(x)
    if x then
        local new=game:GetObjects("rbxassetid://12389793464")[1]
        new.Name ="v_Deagle"
        game.ReplicatedStorage.Viewmodels.v_Deagle.Parent = arsonfuncs:GetStorageFolder()
        new.Parent = game.ReplicatedStorage.Viewmodels
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Deagle') then
            game.ReplicatedStorage.Viewmodels.v_Deagle:Destroy()
            arsonfuncs:GetStorageFolder()['v_Deagle'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddToggle('Counterblox Scout (AWP)', false, function(x)
    if x then
        local new=game:GetObjects("rbxassetid://12390033680")[1]
        new.Name ="v_AWP"
        game.ReplicatedStorage.Viewmodels.v_AWP.Parent = arsonfuncs:GetStorageFolder()
        new.Parent = game.ReplicatedStorage.Viewmodels
        game:GetService("ReplicatedStorage").Viewmodels["v_AWP"].HumanoidRootPart.Transparency = 1
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_AWP') then
            game.ReplicatedStorage.Viewmodels.v_AWP:Destroy()
            arsonfuncs:GetStorageFolder()['v_AWP'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
end)

cmodels:AddToggle('Counterblox USP (MAXIM)', false, function(x)
    if x then
        local new=game:GetObjects("rbxassetid://7161365495")[1]
        new.Name ="v_Maxim-9"
        game.ReplicatedStorage.Viewmodels['v_Maxim-9'].Parent = arsonfuncs:GetStorageFolder()
        new.Parent = game.ReplicatedStorage.Viewmodels
        --game:GetService("ReplicatedStorage").Viewmodels["v_AWP"].HumanoidRootPart.Transparency = 1
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_Maxim-9') then
            game.ReplicatedStorage.Viewmodels['v_Maxim-9']:Destroy()
            arsonfuncs:GetStorageFolder()['v_Maxim-9'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
end)

cmodels:AddToggle('G3SG1 (SCAR-H)', false, function(x)
    if x then
        local new=game:GetObjects("rbxassetid://12390324830")[1]
        new.Name ="v_SCAR-H"
        game.ReplicatedStorage.Viewmodels['v_SCAR-H'].Parent = arsonfuncs:GetStorageFolder()
        new.Parent = game.ReplicatedStorage.Viewmodels
    else
        if arsonfuncs:GetStorageFolder():FindFirstChild('v_SCAR-H') then
            game.ReplicatedStorage.Viewmodels['v_SCAR-H']:Destroy()
            arsonfuncs:GetStorageFolder()['v_SCAR-H'].Parent = game.ReplicatedStorage.Viewmodels
        end
    end
    
end)
cmodels:AddDropdown("Apply Effect", {'The Darkheart', 'The Firebrand', 'Vivid Plasma'}, {}, true, function(x)
    if table.find(x, 'The Darkheart') then
        for _, v in next, particleFolder:GetChildren() do
            if tostring(v.Name) == 'The Darkheart' and game.ReplicatedStorage.Viewmodels:FindFirstChild('v_Dagger') then
                local dagger = game.ReplicatedStorage.Viewmodels.v_Dagger;
                
                if dagger:FindFirstChild('R') and dagger:FindFirstChild('L') then
                    local p = v:Clone();
                    p.Parent = dagger.R;
                    local p2 = v:Clone();
                    p2.Parent = dagger.L;
                end
                
                if dagger:FindFirstChild('Handle') then
                    local p = v:Clone()
                    p.Parent = dagger.Handle;
                end
            end
        end
    end
    
    if table.find(x, 'Vivid Plasma') then
        for _, v in next, particleFolder:GetChildren() do
            if tostring(v.Name) == 'Vivid Plasma' and game.ReplicatedStorage.Viewmodels:FindFirstChild('v_Dagger') then
                local dagger = game.ReplicatedStorage.Viewmodels.v_Dagger;
                
                if dagger:FindFirstChild('R') and dagger:FindFirstChild('L') then
                    local p = v:Clone();
                    p.Parent = dagger.R;
                    local p2 = v:Clone();
                    p2.Parent = dagger.L;
                end
                
                if dagger:FindFirstChild('Handle') then
                    local p = v:Clone()
                    p.Parent = dagger.Handle;
                end
            end
        end
    end
    
    if table.find(x, 'The Firebrand') then
        for _, v in next, particleFolder:GetChildren() do
            if tostring(v.Name) == 'The Firebrand' and game.ReplicatedStorage.Viewmodels:FindFirstChild('v_Dagger') then
                local dagger = game.ReplicatedStorage.Viewmodels.v_Dagger;
                
                if dagger:FindFirstChild('R') and dagger:FindFirstChild('L') then
                    local p = v:Clone();
                    p.Parent = dagger.R;
                    local p2 = v:Clone();
                    p2.Parent = dagger.L;
                end
                
                if dagger:FindFirstChild('Handle') then
                    local p = v:Clone()
                    p.Parent = dagger.Handle;
                end
            end
        end
    end
end)

cmodels:AddDropdown("Apply Follower", {'Freddy Plush', 'amongus', 'chair', 'friday', 'maxwell', 'paimon', 'floppa'}, 'none', false, function(x)
    if game.Players.LocalPlayer.Character:FindFirstChild('follower') then
        game.Players.LocalPlayer.Character:FindFirstChild('follower'):Destroy()--old one, we dont want them to multiply and then override each other LMFAO
    end
    local followerInstance = Instance.new'Model';
    followerInstance.Name = 'follower';
    followerInstance.Parent = game.Players.LocalPlayer.Character;
    local follower = Followers[x]:Clone();
    follower.Name = 'beloved'
    follower.Parent = followerInstance;
end)

cmodels:AddButton('Reset Effects', function()
    for _, v in next, game.ReplicatedStorage.Viewmodels.v_Dagger:GetDescendants() do
        if v:IsA('ParticleEmitter') then
            v:Destroy()    
        end
    end
end)
cmodels:AddButton('Reset Followers', function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('follower') then
        game.Players.LocalPlayer.Character:FindFirstChild('follower'):Destroy()--reset;
    end
end)

local badgeName = "Fat Shit"

k7Sec:AddTextbox("Badge Name", "Fat Shit", function(State)
    badgeName = State
end)

k7Sec:AddButton("Get Badge", function(x)
    game.StarterGui:SetCore("SendNotification", {
                Title = "Badge Awarded",
                Text = game.Players.LocalPlayer.Name .. "  Won ROLVe Community's "..'"'..badgeName..'"'..' award!',
                Icon = "rbxassetid://206410289"
    })
end)

k5Sec:AddToggle("IsChad", false, function(x)
    if game.Players.LocalPlayer:FindFirstChild('IsChad') then
        game.Players.LocalPlayer.IsChad:Destroy()
        return
    end
    
        if x then

    
    local IsMod = Instance.new('IntValue', game.Players.LocalPlayer)
    IsMod.Name = "IsChad"
    end
    --if game.Players.LocalPlayer:FindFirstChild('IsAdmin') then
 --       game.Players.LocalPlayer.IsAdmin:Destroy()
  --  end
end)

k5Sec:AddToggle("VIP", false, function(x)
    if game.Players.LocalPlayer:FindFirstChild('VIP') then
        game.Players.LocalPlayer.VIP:Destroy()
        return
    end
    
    if x then
    local IsMod = Instance.new('IntValue', game.Players.LocalPlayer)
    IsMod.Name = "VIP"
    end
    --if game.Players.LocalPlayer:FindFirstChild('IsAdmin') then
 --       game.Players.LocalPlayer.IsAdmin:Destroy()
  --  end
end)

k5Sec:AddToggle("OldVIP", false, function(x)
    if game.Players.LocalPlayer:FindFirstChild('OldVIP') then
        game.Players.LocalPlayer.OldVIP:Destroy()
        return
    end
        if x then
    local IsMod = Instance.new('IntValue', game.Players.LocalPlayer)
    IsMod.Name = "OldVIP"
    end
    --if game.Players.LocalPlayer:FindFirstChild('IsAdmin') then
 --       game.Players.LocalPlayer.IsAdmin:Destroy()
  --  end
end)
k5Sec:AddToggle("Romin", false, function(x)
    if game.Players.LocalPlayer:FindFirstChild('Romin') then
        game.Players.LocalPlayer.Romin:Destroy()
        return
    end
        if x then

    local IsAdmin = Instance.new('IntValue', game.Players.LocalPlayer)
    IsAdmin.Name = "Romin"
    end
    
end)

k5Sec:AddToggle("IsAdmin", false, function(x)
    if game.Players.LocalPlayer:FindFirstChild('IsAdmin') then
        game.Players.LocalPlayer.IsAdmin:Destroy()
        return
    end
        if x then

    local IsAdmin = Instance.new('IntValue', game.Players.LocalPlayer)
    IsAdmin.Name = "IsAdmin"
    end
    
end)





k4Sec:AddButton("Let The Skies Fall", function(x)
    game.ReplicatedStorage["Viewmodels"]["v_Dagger"].Name = "fafwerwerewrw"
    game.ReplicatedStorage["Viewmodels"]["v_Night's Edge"].Name = "v_Dagger"
    
    for i,v in pairs(game.ReplicatedStorage["Viewmodels"]["v_Dagger"]:GetChildren()) do
        if v:IsA("Animation") then
            v:Destroy()
            for __, vls in pairs(_aimhookFolder:GetChildren()) do
                if vls:IsA("Animation") then
                    local __clone = vls:Clone()
                    __clone.Parent = game.ReplicatedStorage["Viewmodels"]["v_Dagger"]
                end
            end
        end
    end
    
    for i,v in pairs(game.ReplicatedStorage["Viewmodels"]["v_Dagger"]:GetChildren()) do
        if v.Name == "MeshPart" and v:FindFirstChild("Flame") then
            for nilPairs, val in pairs(v:GetChildren()) do
                if val:IsA("ParticleEmitter") then
                    val:Destroy()    
                end
            end
            
            v.Material = Enum.Material.Asphalt
            v.BrickColor = BrickColor.new("Really red")
            
            for __, vls in pairs(_aimhookFolder:GetChildren()) do
                if vls:IsA("ParticleEmitter") then
                    local __clone = vls:Clone()
                    __clone.Parent = v
                end
            end
        end
    end
    
    
    game:GetService("ReplicatedStorage").ItemData.Images.Melees.Dagger.Quality.Value = game:GetService("ReplicatedStorage").ItemData.Images.Melees["Night's Edge"].Quality.Value
    game:GetService("ReplicatedStorage").ItemData.Images.Melees.Dagger.Value = "http://www.roblox.com/asset/?id=160380852"
    game:GetService("ReplicatedStorage").KillIcons.Dagger.Value = "http://www.roblox.com/asset/?id=160380852"
    
    
    
end)

k4Sec:AddButton("Dagger To Dominus", function(yx)
    game.ReplicatedStorage.Viewmodels.v_Dagger.Handle.TextureID="rbxassetid://1484148974"
    game.ReplicatedStorage.Viewmodels.v_Dagger.Handle.MeshId="rbxassetid://1484148960"
    game.ReplicatedStorage.Viewmodels.v_Dagger.Handle.Size = Vector3.new(0.4, 2, 0.4);
    game.ReplicatedStorage.Viewmodels.v_Dagger.Handle.Rotation = Vector3.new(-90, 90, 0);
    
    
    if game.ReplicatedStorage.Viewmodels.v_Dagger:FindFirstChild("Part") then
        game.ReplicatedStorage.Viewmodels.v_Dagger.Part.Transparency = 1    
    end
    
    game:GetService("ReplicatedStorage").ItemData.Images.Melees.Dagger.Quality.Value = "Admin";
    game:GetService("ReplicatedStorage").ItemData.Images.Melees.Dagger.Value = "http://www.roblox.com/asset/?id=10720133728"
    game:GetService("ReplicatedStorage").KillIcons.Dagger.Value = "http://www.roblox.com/asset/?id=10720133728"
    
    
end)







bSec3:AddButton("Froggy's Apartment", function(x)
    game:GetService("TeleportService"):Teleport(5133094040, game.Players.LocalPlayer, {
        SuperSecretCode = "NotSoSuperSecretPoggyWoggy"
    });
end)

bSec3:AddButton("Stinky's Lair", function(x)
    game:GetService("TeleportService"):Teleport(4690140579, game.Players.LocalPlayer);
end)


bSec:AddTextbox("LocalSkinRewardReceive", "Enter Skin", function(State)
    configTable.Skin = State
end)


Sense.teamSettings.enemy.enabled = true
Sense.teamSettings.enemy.box = true
Sense.teamSettings.enemy.boxColor[1] = Color3.fromRGB(255,0,255)

local yhh = hSec:AddToggle("Enable ESP", false, function(x)
    if x then
        Sense.Load()    
    else
        Sense.Unload()    
    end
end)
yhh:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    cSense.teamSettings.enemy.boxColor[1] = x
end)
hSec:AddToggle("Show Health", false, function(x)
    Sense.teamSettings.enemy.healthBar = x
end)
local ya = hSec:AddToggle("Better Name ESP", false, function(x)
    Sense.teamSettings.enemy.name = x
end)
hSec:AddToggle("Show Distance", false, function(x)
    Sense.teamSettings.enemy.distance = x
end)

hSec:AddToggle("Offscreen Arrows", false, function(x)
    Sense.teamSettings.enemy.offScreenArrow = x
end)





local third = false
local yas = hSec:AddToggle("ThirdPerson", false, function(x)
    third = x
    if x then
        game.Players.LocalPlayer.CameraMode = 'Classic'    
    end
end)
hSec:AddToggle("Hit logs", false, function(x)
    hitlogs_debug=x
end)

hSec:AddToggle("Emotional Support", false, function(x)
    supportFrame.Enabled=x
end)


yas:AddKeybind()
game.Players.LocalPlayer:GetPropertyChangedSignal('CameraMode'):Connect(function()
    if third then
	    game.Players.LocalPlayer.CameraMode = 'Classic'
	end
end)

local sillyGoose69 = hSec:AddToggle("Watermark", false, function(x)
    watermark.Visible = x
end)



local newfunc = cSec:AddToggle("Backtrack", false, function(x)
    configTable.Backtrack=x;
end)
local newfunc54 = cSec:AddToggle("Hide Backtrack", false, function(x)
    configTable.Hideback=x;
end)
cSec:AddSlider("Backtrack Delay", 1, 900, 10000, 1, function(State)
    configTable.BacktrackDelay=State;
end)
newfunc:AddColorpicker(Color3.fromRGB(255,0,255),function(x)
    configTable.BacktrackColor=x;
end)


cSec:AddDropdown("Backtrack Material", {"Neon", "ForceField", "Glass", "Ice"}, "ForceField",false, function(x)
    configTable.Backmat=x;
end)

cSec:AddDropdown("Backtrack Mode", {"Parts", "Replicated"}, "Parts",false, function(x)
    configTable.bm=x
end)







hSec:AddToggle("Custom Sleeves", false, function(x)
    configTable.CS_SLEEVES = x    
end)
local we = hSec:AddToggle("Gun Chams", false, function(x)
    configTable.gunc=x; 
end)



local colorPickerTh = hSec:AddToggle("Sleeves Color", false, function(x)
     
end)

colorPickerTh:AddColorpicker(Color3.fromRGB(255,255,255), function(ztx)
   __config.Color = ztx
end)
we:AddColorpicker(Color3.fromRGB(255,255,255), function(ztx)
   configTable.gunccolr=ztx
end)

hSec:AddDropdown("Sleeve", {"galaxy", "arctic camo", "golden"}, "galaxy",false, function(dropdown)
    --configTable.LocalAimPart = dropdown
    if dropdown == "galaxy" then
        __config.Texture = "rbxassetid://11627980878"    
    end
    if dropdown == "arctic camo" then
        __config.Texture = "rbxassetid://6130174236"    
    end
    if dropdown == "golden" then
        __config.Texture = "rbxassetid://11628146767"    
    end
end)

hSec:AddButton("Get A Seizure", function(x)
    for i,v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") then
            v.Parent = game.Players.LocalPlayer.Character["Particle Area"]
        end
    end    
end)



bSec:AddButton("Delinquent With Drip", function(l)
    game.Players.LocalPlayer.Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=6311929085"
    game.Players.LocalPlayer.Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=6311929085"
     
     
    game.Players.LocalPlayer.Ragdoll.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=6311929085"
    game.Players.LocalPlayer.Ragdoll.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=6311929085"
    game.Players.LocalPlayer.Data.Skin.Value = "Segg with Drip"
    --game.Players.LocalPlayer.Character.Cap:Destroy()
 
end)

bSec:AddButton("Infinite Bucks", function(l)
    game:GetService("Players").LocalPlayer.PlayerGui.Menew.ShopButtons.Bucks.Bucks.Text = "      Ã¢Ë†Å¾"

end)

bSec:AddButton("ChrModels Bypass", function(x)
    for i = 0, 100 do 
        local SkinTable = {}
        
        
        for _, Skin in pairs(game:GetService("ReplicatedStorage").ItemData.Images.Skins:GetChildren()) do
            table.insert(SkinTable, Skin.Name);
        end
        
        Loader.RequestAssets(SkinTable, "ChrModels")

    end
end)

bSec:AddButton("[FE] UnlockCratesExploit", function(l)
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Menew.Shop.Cases:GetChildren()) do
        if v:IsA("ImageButton") or v:IsA("ImageLabel") then
            v.Visible = true    
        end
    end
end)

bSec:AddButton("Unlock All Skins", function(h)
    -- DONT GET SNEAKY XONAE NIGGA
    loadstring(game:HttpGet("https://gangofgang.gog-best.repl.co/aimhook/script_assets/unlock-all.lua"))()    
end)

bSec:AddButton("P&O Team [Buggy]", function(h)
    -- DONT GET SNEAKY XONAE NIGGA
    loadstring(game:HttpGet("https://gangofgang.gog-best.repl.co/aimhook/script_assets/teams.lua"))()    
end)

bSec:AddButton("Level Inf", function(x)
    local __currentLevel = tostring(game:GetService("Players").LocalPlayer.CareerStatsCache.Level)
    
    task.spawn(function() while task.wait(1) do game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.PlrName.Text = game.Players.LocalPlayer.Name .. " - " .. "Level: inf" end end)
    
end)

bSec:AddButton("Redeem All Codes", function(h)
    --local __codes = {'pog', 'bloxy','xonae', 'JOHN', 'POKE', 'CBROX', 'EPRIKA', 'FLAMINGO', 'Pet', 'ANNA', 'Bandites', 'F00LISH', 'E', 'Garcello', 'kitten'}
    
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("POG")
    --game:GetService("ReplicatedStorage").Redeem:InvokeServer("BLOXY")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("xonae")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("JOHN")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("POKE")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("CBROX")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("EPRIKA")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("FLAMINGO")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("PET")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("ANNA")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("Bandites")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("F00LISH")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("E")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("GARCELLO")
    game:GetService("ReplicatedStorage").Redeem:InvokeServer("KITTEN")



    
    
end)

bSec:AddButton("Storm Announcer (Syn Only)", function(e)
    local __announcerFiles = {'deploy.mp3', 'headshot.mp3', 'Winn.mp3', 'backstab.mp3', 'knived.mp3'}
    
    for __files, FObject in pairs(__announcerFiles) do
        if isfile(FObject) then
            delfile(FObject);    
        end
    end
    
    
    writefile("deploy.mp3", game:HttpGet("https://raw.githubusercontent.com/Storm99999/vxpestorm/main/imp/Deploy.mp3?raw=true"))

    writefile("headshot.mp3", game:HttpGet("https://raw.githubusercontent.com/Storm99999/vxpestorm/main/imp/headshot.mp3?raw=true"))

    writefile("Winn.mp3", game:HttpGet("https://raw.githubusercontent.com/Storm99999/vxpestorm/main/imp/Winn.mp3?raw=true"))

    writefile("backstab.mp3", game:HttpGet("https://raw.githubusercontent.com/Storm99999/vxpestorm/main/imp/backstab.mp3?raw=true"))
    
    for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Announcer:GetChildren()) do
        v.Volume.Value = 1
        for i,_v in pairs(v.Deploy:GetChildren()) do
            _v.Value = getsynasset("deploy.mp3")
            _v.Sub.Value = "Ohh, I wanna have butt sex with you, Wait Woa-woa, This is the wrong platform, Sorry."
        end
        
        for i,_v in pairs(v.KnifeKill:GetChildren()) do
            _v.Value = getsynasset("headshot.mp3")
            _v.Sub.Value = "Headshot, Woohoo."

        end
        
        for i,_v in pairs(v.Demoted:GetChildren()) do
            _v.Value = getsynasset("backstab.mp3")
            _v.Sub.Value = "Nigga. How the fuck did you manage to die?"

        end
        
        for i,_v in pairs(v.Headshot:GetChildren()) do
            _v.Value = getsynasset("headshot.mp3")
            _v.Sub.Value = "Headshot, Woohoo."

        end
        
        for i,_v in pairs(v.Winner:GetChildren()) do
            _v.Value = getsynasset("Winn.mp3")
            _v.Sub.Value = "Hacker, Hacker, Hacker! I'm telling you, it's a hacker!"

        end
    end
    
    
end)

bSec:AddButton("Add LocalSkin", function(l)
    for i = 1, 1 do
    table.insert(getupvalues(getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript).ViewItems)[3].Skins,configTable.Skin)
end




function AddSkinDataForMissingSkins()
	for i, v in pairs(game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:GetChildren()) do
		local Data = game:GetService("ReplicatedStorage").ItemData.Images.Skins:FindFirstChild(v.Name);
		if not Data then
			local Skin = Instance.new("StringValue");
			Skin.Name = v.Name;
			Skin.Value = "rbxassetid://0";
			Skin.Parent = game:GetService("ReplicatedStorage").ItemData.Images.Skins;
			
			local Quality = Instance.new("StringValue");
			Quality.Name = "Quality";
			Quality.Value = "Admin";
			Quality.Parent = Skin;
		end
	end
end

AddSkinDataForMissingSkins();

function ApplyUnusual(player, unusual)
    if player and player.Character and player.Character:FindFirstChild("Head") and unusual then
        if player.Character.Head:FindFirstChild("Unusual") then
            player.Character.Head.Unusual:Destroy();
        end
        if player.Character:FindFirstChild("UnusualAnimation") then
            player.Character.UnusualAnimation:Destroy();
        end
        if game.ReplicatedStorage.Unusual:FindFirstChild(unusual) then
            local v76 = game.ReplicatedStorage.Unusual[unusual];
            if v76:FindFirstChild("Orbit") then
                if v76.Orbit.Value then
                    local v77 = v76:Clone();
                    v77.UnusualAnimation.Part0 = player.Character.Head;
                    v77.UnusualAnimation.Part1 = v77;
                    v77.Name = "UnusualAnimation";
                    v77.Parent = player.Character;
                    player.Character.Humanoid:LoadAnimation(v77.Anim):Play();
                else
                    local v78 = {};
                    local v79 = v76.Attachment:Clone();
                    v79.Name = "Unusual";
                    v79.Parent = player.Character.Head;
                    local v80, v81, v82 = pairs(v76:GetChildren());
                    while true do
                        local v83, v84 = v80(v81, v82);
                        if v83 then

                        else
                            break;
                        end;
                        v82 = v83;
                        if v84.Name ~= "Attachment" then
                            local v85 = v84:Clone();
                            v85.Parent = player.Character.Head;
                            table.insert(v78, v85);
                        end;						
                    end;
                    if player.Character.Head:FindFirstChild("b1") then
                        local v86, v87, v88 = pairs(v79:GetChildren());
                        while true do
                            local v89, v90 = v86(v87, v88);
                            if v89 then

                            else
                                break;
                            end;
                            v88 = v89;
                            if v90:IsA("Beam") then
                                if v90.Name == "BeamA" then
                                    v90.Attachment0 = player.Character.Head.a1;
                                    v90.Attachment1 = player.Character.Head.a2;
                                elseif v90.Name == "BeamC" then
                                    v90.Attachment0 = player.Character.Head.c1;
                                    v90.Attachment1 = player.Character.Head.c2;
                                else
                                    v90.Attachment0 = player.Character.Head.b1;
                                    v90.Attachment1 = player.Character.Head.b2;
                                end;
                            end;							
                        end;
                    end;
                    v79.AncestryChanged:connect(function(p15)
                        if not p15 then
                            local v91, v92, v93 = pairs(v78);
                            while true do
                                local v94, v95 = v91(v92, v93);
                                if v94 then

                                else
                                    break;
                                end;
                                v93 = v94;
                                v95:Destroy();								
                            end;
                        end;
                    end);
                end;
            else
                v78 = {};
                v79 = v76.Attachment:Clone();
                v79.Name = "Unusual";
                v79.Parent = player.Character.Head;
                v80, v81, v82 = pairs(v76:GetChildren());
                while true do
                    v83, v84 = v80(v81, v82);
                    if v83 then

                    else
                        break;
                    end;
                    v82 = v83;
                    if v84.Name ~= "Attachment" then
                        v85 = v84:Clone();
                        v85.Parent = player.Character.Head;
                        table.insert(v78, v85);
                    end;					
                end;
                if player.Character.Head:FindFirstChild("b1") then
                    v86, v87, v88 = pairs(v79:GetChildren());
                    while true do
                        v89, v90 = v86(v87, v88);
                        if v89 then

                        else
                            break;
                        end;
                        v88 = v89;
                        if v90:IsA("Beam") then
                            if v90.Name == "BeamA" then
                                v90.Attachment0 = player.Character.Head.a1;
                                v90.Attachment1 = player.Character.Head.a2;
                            elseif v90.Name == "BeamC" then
                                v90.Attachment0 = player.Character.Head.c1;
                                v90.Attachment1 = player.Character.Head.c2;
                            else
                                v90.Attachment0 = player.Character.Head.b1;
                                v90.Attachment1 = player.Character.Head.b2;
                            end;
                        end;						
                    end;
                end;
                v79.AncestryChanged:connect(function(p15)
                    if not p15 then
                        v91, v92, v93 = pairs(v78);
                        while true do
                            v94, v95 = v91(v92, v93);
                            if v94 then

                            else
                                break;
                            end;
                            v93 = v94;
                            v95:Destroy();							
                        end;
                    end;
                end);
            end;
        end;
    end;
end

function convert_rgb_to_vertex(c3)
    return Vector3.new(c3.R, c3.G, c3.B)
end

function GetColor()
    if game:GetService("Players").LocalPlayer.Neutral then
        return game:GetService("Players").LocalPlayer.DesignColor.Value;
    end
    return game:GetService("Players").LocalPlayer.TeamColor;
end



function weldAccessory(accessory, character)
	local newAccessory = accessory:Clone();
	newAccessory.Parent = character;
	if newAccessory:FindFirstChild("Handle") then
		local handle = newAccessory.Handle;
        local mesh = handle:FindFirstChildWhichIsA("SpecialMesh");
        if mesh and mesh.VertexColor == Vector3.new(1, 0, 0.749) then
            mesh.VertexColor = convert_rgb_to_vertex(GetColor().Color);
        end
        if tostring(handle.BrickColor) == "Hot pink" then
            handle.BrickColor = GetColor();
			handle.Color = GetColor().Color;
        end
        local AccessoryWeld;
        for i, v in pairs(handle:GetChildren()) do
            if v.Name == "AccessoryWeld" and v.Part1 ~= nil then
                AccessoryWeld = v;
            end
        end
		if AccessoryWeld then
			AccessoryWeld.Part0 = handle;
			AccessoryWeld.Part1 = character[AccessoryWeld.Part1.Name];
		end
	end
end

function EquipSkin(skin, character)
    if not character then return warn("[EquipSkin] character not found") end;
    if not character:FindFirstChild("Head") then return warn("[EquipSkin] Head not found") end;
    if not character:FindFirstChild("HumanoidRootPart") then return warn("[EquipSkin] HumanoidRootPart not found") end;
	local chrModel = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild(skin);
	if chrModel then
        for i, v in pairs(character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Parent = nil;
            end
        end
		for i, v in pairs(character:GetChildren()) do
			if v:IsA("MeshPart") and (v.Name:match("Arm") or v.Name:match("Hand")) then
				v.Transparency = (game.Players.LocalPlayer.Data.Skin.Value:match("Buff") and 1 or 0);
			end
		end
		local shirt = chrModel:FindFirstChildWhichIsA("Shirt");
		local pants = chrModel:FindFirstChildWhichIsA("Pants");
        local face = chrModel.Head:FindFirstChild("face");
        if chrModel:FindFirstChildWhichIsA("BodyColors") then
            if character:FindFirstChildWhichIsA("BodyColors") then
                character:FindFirstChildWhichIsA("BodyColors"):Destroy();
            end
			local Parts = { "HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor" }
            local bodycolors = chrModel:FindFirstChildWhichIsA("BodyColors"):Clone();
            bodycolors.Parent = character;
            if character:FindFirstChild("FakeHead") then
                character.FakeHead.Color = bodycolors.HeadColor3;
            end
			for i, v in pairs(Parts) do
				if tostring(bodycolors[v]) == "Hot pink" then
					bodycolors[v] = GetColor();
				end
			end
        end
		if shirt then
			if character:FindFirstChildWhichIsA("Shirt") then
				character:FindFirstChildWhichIsA("Shirt").ShirtTemplate = shirt.ShirtTemplate;
			end
		else
			if character:FindFirstChildWhichIsA("Shirt") then
				character:FindFirstChildWhichIsA("Shirt").ShirtTemplate = "rbxassetid://0";
			end
		end
		if pants then
			if character:FindFirstChildWhichIsA("Pants") then
				character:FindFirstChildWhichIsA("Pants").PantsTemplate = pants.PantsTemplate;
			end
		else
			if character:FindFirstChildWhichIsA("Pants") then
				character:FindFirstChildWhichIsA("Pants").PantsTemplate = "rbxassetid://0";
			end
		end
        if face then
            if character:FindFirstChild("FakeHead") then
                if character.FakeHead:FindFirstChild("face") then
                    character.FakeHead.face.Texture = face.Texture;
                end
            end
            if character.Head:FindFirstChild("face") then
                character.Head.face.Texture = face.Texture;
            end
        end
		for i, v in pairs(chrModel:GetChildren()) do
			if v:IsA("Accessory") then
                weldAccessory(v, character);
            end
		end
    else
        return warn("[equipSkin] Skin not found")
	end
end


local Hooks = loadstring(game:HttpGet("https://pastebin.com/raw/ByQs3S0R"))();
local hkGame = Hooks:new(getrawmetatable(game));

hkGame:Hook("__namecall", function(self, ...) 
    local args = {...};
    if self.Name == "UpdateLoadout" then
        if args[1] and args[1][1] == "UpdateLoadout" then
            local Loadout = args[1][2]
            local unusual = Loadout.Skin:split("_")[2];
            if unusual then
                game.Players.LocalPlayer.Data.Skin.Value = Loadout.Skin:split("_")[1];
                game.Players.LocalPlayer.Data.Skin.Unusual.Value = Loadout.Skin:split("_")[2];
                ApplyUnusual(game:GetService("Players").LocalPlayer, Loadout.Skin:split("_")[2]);
                args[1][2].Skin = Loadout.Skin:split("_")[1];
            else
                game.Players.LocalPlayer.Data.Skin.Value = Loadout.Skin;
                game.Players.LocalPlayer.Data.Skin.Unusual.Value = "";
                if game.Players.LocalPlayer.Character.Head:FindFirstChild("Unusual") then
                    game.Players.LocalPlayer.Character.Head.Unusual:Destroy();
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("UnusualAnimation") then
                    game.Players.LocalPlayer.Character.UnusualAnimation:Destroy();
                end
            end
        end
    end
    if self.Name == "SpawnMe" then
        spawn(function()
            EquipSkin(game:GetService("Players").LocalPlayer.Data.Skin.Value, game:GetService("Players").LocalPlayer.Character);
        end)
    end
    if self.Name == "GetInventory" then
        setupvalue(Core.ViewItems, 1, Loadout);
    end	
    return hkGame:getOriginal("__namecall")(self, unpack(args));
end)

-- Ragdoll Support
workspace.Debris.ChildAdded:Connect(function(child)
    if child.Name == game:GetService("Players").LocalPlayer.Name then
        EquipSkin(game:GetService("Players").LocalPlayer.Data.Skin.Value, child);
    end
end)    
end)

local locker = {
    SwapWith = "Delinquent",
    SwapTo = "MonkyGamer!!",
    RarityColor = Color3.new(0,0,0),
    Shirt = "",
    Pants = ""
}

bSec2:AddTextbox("Swap With", "Delinquent", function(State)
    locker.SwapWith = State
end)

local ColorToggle = bSec2:AddToggle("Rarity Color", false, function(e)

end)

ColorToggle:AddColorpicker(Color3.fromRGB(0,0,0), function(ztx)
   locker.RarityColor = ztx
end)

local actualClone = {} -- arsenal is shitty, it doesn't allow direct copying, so yeah. Let's get to work.
-- ^^ edit: Not needed, Let's just fucking clone all parts into a non-locked model.

bSec2:AddButton("Create Custom Item", function(st)
    while task.wait() do
        
        local clone -- this is not a needed thing, skids.
        
        if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.Visible then
            --animation part & Slot Part
            
            
            if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.Skins.Item.ViewportFrame:FindFirstChild(locker.SwapWith) then
                game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.Skins.Quality.ImageColor3 = locker.RarityColor
                game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.Skins.TextLabel.Text = "Custom"
                game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.Skins.TextLabel.Text = "Custom"
                --local clone = game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].Item.ViewportFrame[locker.SwapWith]:Clone()
                game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.Skins.Item.ViewportFrame[locker.SwapWith]:Destroy()
                --actualClone.Locked = false (this aint a actual property, worth a shot tho).
                local anotherClone = game.ReplicatedStorage[locker.SwapWith]:Clone()
                anotherClone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.Skins.Item.ViewportFrame
            else
                print("Not found!")    
            end
            
            game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.LockerMain.Item.ViewportFrame.WorldModel[locker.SwapWith]:Destroy()
            local animClone = game.ReplicatedStorage[locker.SwapWith]:Clone()
            animClone.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Slots.LockerMain.Item.ViewportFrame.WorldModel
            local track = animClone.Humanoid:LoadAnimation(HoldingAnimation); -- finish up
            --local ThingThatPlays = animClone.Humanoid:WaitForChild("Animator")
            --ThingThatPlays:LoadAnimation(HoldingAnimation)
            track:Play() -- doesn't do anything yet, no gun model. Soon though. Soon enough.
        end
        
        if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Visible then
            if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame:FindFirstChild(locker.SwapWith) then
                --actualClone = game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith]:Clone() Nigga shit, we don't do that.
                --actualClone.Parent = game.ReplicatedStorage
                
                game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].TextLabel.Text = locker.SwapTo
                game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].Quality.ImageColor3 = locker.RarityColor
                
                

                
                
                    
                
                if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].Item.ViewportFrame[locker.SwapWith]:FindFirstChild("Shirt") and game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].Item.ViewportFrame[locker.SwapWith]:FindFirstChild("Pants") and locker.Shirt ~= "" and locker.Pants ~= "" then
                    game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].Item.ViewportFrame[locker.SwapWith].Shirt.ShirtTemplate = locker.Shirt
                    game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].Item.ViewportFrame[locker.SwapWith].Pants.PantsTemplate = locker.Pants

                   
                else
                    for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].Item.ViewportFrame[locker.SwapWith]:GetChildren()) do
                        if v:IsA("Shirt") and locker.Shirt ~= "" then
                            v.ShirtTemplate = locker.Shirt
                        end
                        
                        if v:IsA("Pants") and locker.Pants ~= "" then
                            v.PantsTemplate = locker.Pants
                        end
                    end
                end

            else
                print("Current Skin Not Found: 404");
            end
            
            if game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame.Visible and game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame:FindFirstChild(locker.SwapWith) then
                local actualCloneRepl = Instance.new("Model", game.ReplicatedStorage);
                for ___, vls in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Menew.Locker.Equipping.ScrollingFrame[locker.SwapWith].Item.ViewportFrame[locker.SwapWith]:GetChildren()) do -- too lazy to use next,
                    local cl = vls:Clone()
                    cl.Parent = actualCloneRepl
                end
                actualCloneRepl.Name = (locker.SwapWith)
            
            end
        end
    end
end)

bSec2:AddTextbox("Swap To", "Delinquent with balls!!", function(State)
    locker.SwapTo = State

end)

bSec2:AddTextbox("Custom ShirtId", "", function(State)
    locker.Shirt = State

end)

bSec2:AddTextbox("Custom PantsId", "", function(State)
    locker.Pants = State

end)

bSec:AddButton("Monky", function(x)
    
    
    game.Players.LocalPlayer.Data.Skin.Value = "Monky"
    Loader.RequestAssets({'Monky'}, "ChrModels")

    
    local clone = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.MonkeyHat:Clone()
    clone.Parent = game.Players.LocalPlayer.Character
    
    local clone1 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
    clone1.Parent = game.Players.LocalPlayer.Character
    
    game.Players.LocalPlayer.Character.Shirt:Destroy()
    game.Players.LocalPlayer.Character.Pants:Destroy()
    game.Players.LocalPlayer.Character.Cap:Destroy()  --I added this
    game.Players.LocalPlayer.Character.NerdHair:Destroy() --I added this
    
    game.Players.LocalPlayer.Ragdoll.Shirt:Destroy()
    game.Players.LocalPlayer.Ragdoll.Pants:Destroy()
    game.Players.LocalPlayer.Ragdoll.Cap:Destroy()
    game.Players.LocalPlayer.Ragdoll.NerdHair:Destroy()
    
    local clone2 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.Shirt:Clone()
    clone2.Parent = game.Players.LocalPlayer.Character
    
    local clone3 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.Pants:Clone()
    clone3.Parent = game.Players.LocalPlayer.Character
    
    local clone4 = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.Humanoid:Clone()  --I added this and verything under
    clone4.Parent = game.Players.LocalPlayer.Character
    wait(1.0)
    clone4:Destroy()
    
    
    local Ragdollpants = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.Pants:Clone()
    Ragdollpants.Parent = game.Players.LocalPlayer.Ragdoll
    
    local Ragdollshirt = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.Shirt:Clone()
    Ragdollshirt.Parent = game.Players.LocalPlayer.Ragdoll
    
    local RagdollBananaRod = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky["Banana Bod"]:Clone()
    RagdollBananaRod.Parent = game.Players.LocalPlayer.Ragdoll
    
    local RagdollHat = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels.Monky.MonkeyHat:Clone()
    RagdollHat.Parent = game.Players.LocalPlayer.Ragdoll
end)

testSection:AddToggle("SmoothBot", false, function(first)
    configTable.AimBot = first
end)



testSection:AddToggle("Bot UseSmoothness", true, function(first)
    getgenv().Smoothness = first
end)

testSection:AddToggle("Bot Prediction", true, function(first)
    getgenv().PredictMovement = first
end)

testSection:AddToggle("Bot Team Check", true, function(first)
    getgenv().TeamCheck = first
end)

testSection:AddTextbox("Bot Smoothness", ".08", function(State)
    getgenv().SmoothnessAmount = tonumber(State) 
end)

testSection:AddTextbox("Bot PredictionVelocity", "6.612", function(State)
    getgenv().PredictionVelocity = tonumber(State) 
end)



testSection:AddToggle("AutoShoot", false, function(first)
    configTable.AutoShoot = first
end)
testSection:AddToggle("Double Tap", false, function(first)
    configTable.DoubleTap = first
end)



testSection:AddToggle("Teleport On Knife", false, function(first)
    tpOnKnife=first;
end)
testSection:AddToggle("Triggerbot", false, function(first)
    configTable.Trigger=first;
end)
testSection:AddToggle("Shoot Backtrack", false, function(first)
    configTable.shootBT=first
end)




local aimPart = "Head"




testSection:AddToggle("SilentAimV2",false,function(x)
    configTable.S2=x;
end)
testSection:AddToggle("SilentTeamCheck",true,function(x)
    configTable.SCheck=x;    
end)

testSection:AddToggle("SilentIgnoreVisibility",true,function(x)
    configTable.IgnoreVisibility=x;    
end)
testSection:AddSlider("FOV Radius", 1, 80, 1000, 1, function(State)
    configTable.FRadius=State;
end)


testSection:AddDropdown("smoothbot type", {"MouseButton2","MouseButton1"}, "MouseButton2",false, function(dropdown)
    --configTable.LocalAimPart = dropdown
    configTable.aimkey=dropdown
end)
testSection:AddDropdown("LocalAimPart", {"Head", "UpperTorso", "LowerTorso"}, "Head",false, function(dropdown)
    --configTable.LocalAimPart = dropdown
    aimPart = dropdown
    getgenv().AimPart=dropdown
end)
testSection:AddDropdown("ragebot type", {"default", "predictionate", "spoof"}, 'default', false, function(dropdown)
    --configTable.LocalAimPart = dropdown
    rageBotType=dropdown;
end)

testSection:AddDropdown("autoshoot type", {"ObscuredTargets", "Raycast", "Levelup", "Force Fire"}, 'Raycast',false, function(dropdown)
    --configTable.LocalAimPart = dropdown
    configTable.asmethod=dropdown
end)

testSection:AddDropdown("triggerbot type", {"force fire", "spoof clickstate", "mouse"}, 'spoof clickstate',false, function(dropdown)
    --configTable.LocalAimPart = dropdown
    configTable.tmethod=dropdown
end)

niggerMods:AddButton('Rapid Fire', function(x)
    for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
            if v:FindFirstChild("FireRate") then
                v.FireRate.Value = .02
            end
            
            if v:FindFirstChild("Auto") then
                v.Auto.Value = true
            end
        end  
end)

testSection:AddButton("Crash Server",function(x)
    arsonfuncs:Crash()    
end)

--local ColorToggle = testSection:AddToggle("ColorPicker w/Toggle", false, function(e)
--
--end)

--ColorToggle:AddColorpicker(Color3.fromRGB(75, 0,130), function(ztx)
   
--end)



--local hitsound="Ara Ara"

local p100 = false

vSec5:AddTextbox("FOV Changer", tostring(game.Players.LocalPlayer.Settings.FOV.Value), function(state)
    game.Players.LocalPlayer.Settings.FOV.Value=state
end)

rand:AddToggle('Enable Exploit', false, function(x)
    p100=x
end)

rand:AddDropdown("Gun", current_guns, "ForceField",false, function(x)
    if p100 then
        game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.primary.Value = x    
    end
end)

local id = ''
local gm = ''

tserver:AddDropdown("Game Modes", {'Legacy Competitive', 'Railgun Royale', 'Headshots Only', 'Standard', 'Projectile Party', 'Randomizer', 'Clown Infection', 'Juggernaut'}, "Railgun Royale",false, function(x)
    gm=x
end)
tserver:AddTextbox("test server id", "enter id", function(state)
    id=state
end)
tserver:AddButton('Join Server', function()
    game.ReplicatedStorage.Events.JoinPrivate:FireServer(id);    
end)

tserver:AddButton('Create Server', function()
    NotifyLib.prompt('levelup', 'Test Server ID has been copied to your clipboard', 5)
    local v38, v39 = game.ReplicatedStorage.Events.CreateConstant:InvokeServer(gm);
    game.ReplicatedStorage.Events.JoinPrivate:FireServer(v39);
    setclipboard(v39)
end)


local impersonation={UID=1,Name="Roblox",Level=math.huge}

vSec6:AddTextbox("userid", "enter user id", function(state)
    impersonation.UID=tonumber(state)
end)

vSec6:AddTextbox("username", "enter username", function(state)
    impersonation.Name=state;
end)

vSec6:AddTextbox("level", "enter level", function(state)
    impersonation.Level=state;
end)

vSec6:AddButton("Impersonate",function(x)
    game:GetService("Players").LocalPlayer.Settings.ShowDisplayNames.Value=true
    game.Players.LocalPlayer.DisplayName=impersonation.Name;
    game.Players.LocalPlayer.UserId=impersonation.UID;
    game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.PlrName.Text = impersonation.Name .. " - " .. "Level: "..tostring(impersonation.Level)
end)

local ToggleBind = vSec:AddToggle("Fly [T]", false, function(e)
    configTable.Fly = e
end)
local ToggleBind = vSec:AddToggle("AutoVote", false, function(e)
    configTable.AutoVote = e
end)

local ToggleBin45654654654d = vSec:AddToggle("AntiMod", false, function(e)
    configTable.Mods = e
end)
--local ToggleBin45654654654d = vSec:AddToggle("Notify Godmode Users", false, function(e)
--    configTable.GodNotify=e;
--end)
vSec:AddToggle("BunnyHop [SPACE]", false, function(e)
    configTable.BunnyHop = e
end)
vSec:AddDropdown("Bunny Hop Method", {"Velocity", "Humanoid"}, "Humanoid",false, function(dropdown)
    configTable.BHopMethod = tostring(dropdown);
end)
vSec:AddSlider("Bunny Hop Speed", 1, 20, 1000, 1, function(State)
    configTable.BHopSpeed=State;
end)
vSec:AddSlider("Gravity", 0, 56, 100, 1, function(State)
    game.ReplicatedStorage.CurrentGrav.Value=State
end)



local ToggleBindz = vSec:AddToggle("Chat Spammer [chat first]", false, function(e)
    configTable.Spammer = e
end)


local erghertgert = vSec:AddToggle("No Chat Filter", false, function(e)
    configTable.NoFilter = e
end)

local ToggleBindz = vSec:AddToggle("Kill Say [chat first]", false, function(e)
    configTable.DeathSay = e
end)



vSec:AddTextbox("Chat Spam Text", "lvlup is the best confirmable", function(State)
    configTable.ChatContext = State
end)
vSec:AddTextbox("Kill Say Text", "sit nn dog, you were just destroyed by LEVELUP!", function(State)
    configTable.DeathContext = State
end)

local ToggleBinde = aaSec:AddToggle("Anti Aim", false, function(e)
    configTable.AntiAim = e
end)
aaSec:AddDropdown("Anti Aim Type", {"Mental", "Down", "Up", "Cursed", "Test"}, "Down",false, function(dropdown)
    configTable.AA_METHOD = tostring(dropdown);
end)

aaSec:AddToggle("Upside Down Character", false, function(c)
    configTable.UpsideDown=c;
end)
local ToggleBinde = aaSec:AddToggle("Use Spin", false, function(e)
    configTable.AASpin = e
end)
local ToggleBinde = aaSec:AddToggle("Use HipHeight", false, function(e)
    configTable.UseHip = e
end)
local ToggleBinde = aaSec:AddToggle("Remove Accessories", false, function(e)
    configTable.Racc = e;
end)


local ToggleBinde = aaSec:AddToggle("Use Custom Rotation", false, function(e)
    configTable.UseCustomRotation = e
end)

aaSec:AddSlider("Spin Speed", 1, 120, 480, 1, function(State)
    configTable.SpinSpeed=State
    
end)
aaSec:AddSlider("Hip Height", 1, 2, 480, 1, function(State)
    configTable.HipHeight=State
    
end)
local mt=getrawmetatable(game)
local oldnewIndex=mt.__newindex
local oldindex = mt.__index
setreadonly(mt,false)
--Newindex
mt.__newindex=newcclosure(function(a,b,c)
    if configTable.AntiAim and configTable.UseHip then
        if tostring(a)=="Humanoid"and b=="HipHeight"then
            return oldnewIndex(a,b,configTable.HipHeight)
        end
    end
    return oldnewIndex(a,b,c)
end)


local ToggleBinde57322 = vSec:AddToggle("Hitsounds", false, function(e)
    configTable.Hitsounds = e
end)

local ToggleBinde458923932052 = vSec:AddToggle("Silence Weapons", false, function(e)
    if e then
        game.SoundService.WeaponDischarge.Volume=0;    
    else
        game.SoundService.WeaponDischarge.Volume=extVol;    

    end
end)

vSec:AddDropdown("sound", {"aimhook", "skeet.cc", "neverlose", "baimware", "osu", "rust", "bag", "sit","reminder","uwu","zing","crowbar","ara ara","burp","mario","laugh","huh"}, "skeet.cc",false, function(dropdown)
    configTable.Hitsound=tostring(dropdown);
end)


local ToggleBindv = vSec:AddToggle("CFrame Speed", false, function(e)
    configTable.Speed = e
end)

coroutine.wrap(function()
    while task.wait(0.1) do
        if configTable.NRcoil then
            getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).recoil = 0
        end

        --if configTable.Wallbang then
            --game.ReplicatedStorage.Events.ApplyGun:FireServer(game.ReplicatedStorage.Weapons["Chord Tosser"], 'GunBoy')
            -- explaination: Bolts, the skid, uses ''
        --end
        if configTable.AutoVote then
            if game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value then
                configTable.AutoVote=false
                game:GetService("ReplicatedStorage").Events.Vote:FireServer({"MapVote","Matrix"})
                game:GetService("ReplicatedStorage").Events.Vote:FireServer({"TeamVote","2Teams"})
                game:GetService("ReplicatedStorage").Events.Vote:FireServer({"GameType","Legacy Competitive"})
                game:GetService("Players").LocalPlayer.PlayerGui.MapVoting.MapVote.Visible=false
                task.delay(14, function()
                    configTable.AutoVote=true    
                end)    
            end
        end
    end
end)()

coroutine.wrap(function()
    while task.wait()do
        if configTable.CustomUI and game.Players.LocalPlayer:FindFirstChild('ScoreFolder') then
            getgenv().mem.Text = "mem check: ".. math.floor(game.Stats:GetTotalMemoryUsageMb()) .. " MB"
            getgenv().bucks.Text = "bbucks: "..game:GetService("Players").LocalPlayer.PlayerGui.Menew.ShopButtons.Bucks.Bucks.Text
            getgenv().damage.Text = "damage dealt: ".. (game.Players.LocalPlayer.ScoreFolder:FindFirstChild('Damage') and game.Players.LocalPlayer.ScoreFolder.Damage.Value or '0')
            getgenv().playerCount.Text = "aa method: ".. (configTable.AntiAim and configTable.AA_METHOD or 'none')
        end
        if configTable.ForceKillAll  then
            for _,v in next, game.Players:GetPlayers() do
                if game:GetService("ReplicatedStorage").wkspc.FFA.Value then
                    if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("Spawned")then
                        for i = 1, 3 do 
                            arsonfuncs:KillPlayer(v)
                        end
                    end
                else
                    if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("Spawned") and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                        for i = 1, 3 do 
                            arsonfuncs:KillPlayer(v)
                        end
                    end   
                end
            end
            
        
       
        end
        if configTable.pingspoof then
            local BitBuffer = require(game.ReplicatedStorage.Modules.BitBuffer)()
            BitBuffer.writeUnsigned(64, game.Players.LocalPlayer.UserId)
            BitBuffer.writeUnsigned(9, configTable.ping, 0, configTable.ping)
            game.ReplicatedStorage.Events.UpdatePing:FireServer(BitBuffer.dumpString(), nil, nil)    
        end
        if fakelagEn and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Spawned')  and not workspace.Debris:FindFirstChildOfClass('Seat') then
            task.wait(.6)
            local _c = game.Players.LocalPlayer.Character
						local cee = Instance.new("Seat")
						cee.Name = "uze5hjzuie5rthzui5ertjz e9r5uij"
						cee.Name = "tRGWJUI%ERjtguihe85ur"
						cee.Parent = workspace.Debris
						cee.Size = Vector3.new(4, 1, 1)
						local awe = Instance.new("Weld", cee)
						local bb = Instance.new("Weld")
						bb.Name = "geriuzh5eruzhge5"
						bb.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
						cee.CFrame = CFrame.new(_c.HumanoidRootPart.Position)
						awe.Part0 = _c.HumanoidRootPart
						awe.Part1 = cee
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(cee.Position)
						bb.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
						bb.Part1 = cee
						cee.Transparency = 1
			if fakelagShow then
                if not arsonfuncs.GetSecureFolder():FindFirstChild('FakeChar') then
                    local i = Instance.new('Model',arsonfuncs:GetSecureFolder())
                    i.Name='FakeChar'
                    for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants())do
                        if v:IsA("BasePart")then
                            if v.Transparency~=1 then
                                local a=v:Clone()
                                a.CanCollide=false
                                a.Parent=i
                                a.Anchored=true
                                a.Color=configTable.visualizefake
                                a.Material=configTable.materiall
                                a.Transparency=.4
                                a.Reflectance=0
                                if a:IsA("MeshPart")then
                                    a.TextureID=""
                                end
                                for _,c in pairs(a:GetChildren())do
                                    if not c:IsA("SpecialMesh")then
                                        c:Destroy()
                                    else
                                        c.TextureId=""
                                    end
                                end
                            end
                        end
                    end
                end
			end
			task.delay(tonumber(fakeTicks), function()
			    local isThere = workspace.Debris:FindFirstChildOfClass('Seat')
			    if isThere then
			        workspace.Debris:FindFirstChildOfClass('Seat'):Destroy()
			    end
			    
			    arsonfuncs:GetSecureFolder():ClearAllChildren()
				
        		if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("geriuzh5eruzhge5") then
        				
        				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("geriuzh5eruzhge5"):Destroy()
        				
        		end
			 end)
        end    
    end
end)()


function Compress(Points, Compression)
   for i = 1, Compression do
       for i,v in next, Points do
           if i % 1 == 0 then
               table.remove(Points, i)
           end
       end
   end
   
   return Points
end

function AddWireframe(Mesh, Base)
   local Points = game:GetService("UGCValidationService"):GetMeshVertsSync(Mesh.MeshId)
   
   Points = Compress(Points, 0)

   if #Points % 2 ~= 0 then
       table.remove(Points, 1)
   end
   
   local Frame = Instance.new("WireframeHandleAdornment")

   Frame.AlwaysOnTop = true
   Frame.ZIndex = 5
   Frame.Color = BrickColor.new(configTable.wirecolor)
   Frame.Adornee = Base
   Frame.Parent = game.CoreGui
   Frame:AddPath(Points, true)
end


workspace.CurrentCamera.ChildAdded:Connect(
    function(c)
        if c.Name == "Arms" and configTable.gunc then
            for _, v in next, c:GetChildren() do
                if v:IsA("BasePart") or v:IsA("Part") or v:IsA'MeshPart' then -- exclude
                    if not string.find(v.Name, 'Arm') and not string.find(v.Name, 'Sleeve') then
                        v.Color = configTable.gunccolr
                        v.Material = "ForceField"
                    end
                end
            end
        end
        
        if c.Name == 'Arms' and configTable.wireframe then
            for i,vee in next, workspace.CurrentCamera.Arms:GetDescendants() do
               if table.find(configTable.WhitelistedClasses, vee.ClassName) and vee.Parent:IsA("BasePart") and(vee.MeshId:find("rbxassetid") or vee.MeshId:find("?id")) then
                   AddWireframe(vee, vee.Parent)
               end
            end    
        end
    end
)

workspace.CurrentCamera.ChildRemoved:Connect(
    function(c)
        if c.Name == "Arms" and configTable.wireframe then
            for _,v in next, game.CoreGui:GetChildren()do
                if v:IsA('WireframeHandleAdornment') then
                    v:Destroy()
                end
            end
        end
    end
)

task.spawn(function()
    while task.wait() do
        
        --[[if configTable.AntiAim then
            if configTable.AA_METHOD == 'Down' then
                game.ReplicatedStorage.Events.ControlTurn:FireServer(-100, nil, nil, nil, nil, nil, nil, nil)
            end
            if configTable.AA_METHOD == 'Up' then
                game.ReplicatedStorage.Events.ControlTurn:FireServer(100, nil, nil)
            end
            if configTable.AA_METHOD == 'Mental' then
                game.ReplicatedStorage.Events.ControlTurn:FireServer(math.random(-100,100), nil, nil)
            end
        end
        ]]
        --SAVETABLE.SKIN=game.Players.LocalPlayer.Data.Skin.Value;
    if configTable.Speed and _G.Running == true and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.45 -- im just testing
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.45 -- im just testing
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.45 -- im just testing
    end
    
                if configTable.Killers then
                    if workspace:FindFirstChild('Map') and workspace.Map:FindFirstChild('Killers') and workspace.Map.Killers:FindFirstChildOfClass('Part') then
                        workspace.Map.Killers:FindFirstChildOfClass('Part'):Destroy()--fuck this shit   
                    end
                end
                if configTable.SelfChams then
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Spawned') then
                        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            
                            if v:IsA('BasePart') and v.Name ~= 'HumanoidRootPart' and v.Name ~= 'Head' and v.Name ~= 'Hitbox' and v.Name ~= 'Particle Area' and v.Name ~= 'HeadHB'  and v.Name ~= 'FakeHead' and v.Name ~= 'Gun' then -- fuck you, HumanoidRootPart!
                                if configTable.SelfCTexture ~= 'none' then
                                    if configTable.SelfCTexture == 'Hex Camo'then
                                        v.TextureID = textures.HexCamo
                                    end
                                    if configTable.SelfCTexture == 'Stars'then
                                        v.TextureID = textures.Stars
                                    end
                                end
                                
                                v.Transparency = configTable.Transparency;
                            end
                            
                            if v:IsA("MeshPart") then
                                v.Material = "ForceField"
                                v.Color = configTable.SelfColor
                                task.wait()
                            end
                            
                            
                            
                        end    
                    end
            end

    if configTable.CS_SLEEVES then
        for _, vls in pairs(workspace.Camera:GetChildren()) do
                if vls and vls:IsA("Model") and configTable.CS_SLEEVES then
                    for __, v in pairs(vls:GetChildren()) do
                        if v:IsA("Model") then
                            for i, vv in pairs(v:GetChildren()) do
                                if vv.Name == "Left Arm" then
                                    if configTable.RSleeve then
                                        if vv:FindFirstChild("Left_Sleeve") then
                                            vv.Left_Sleeve:Destroy()    
                                        end
                                        if vv:FindFirstChild("Right_Sleeve") then
                                            vv.Right_Sleeve:Destroy()    
                                        end
                                    end
                                    if vv:FindFirstChild("Left_Sleeve") and vv.Left_Sleeve:FindFirstChild("teamoverlay")then -- means they have a sleeve, very good
                                        vv["Left_Sleeve"].Mesh.TextureId = __config.Texture -- any texture works
                                        vv["Left_Sleeve"].teamoverlay.Texture =  __config.Texture -- any texture works
                                        vv["Left_Sleeve"].teamoverlay.Color3 =  __config.Color -- any texture works
        
                                    end
                                    
                                     if vv:FindFirstChild("L") and vv["L"]:FindFirstChild('Mesh') then -- means they have a sleeve, very good
                                        vv["L"].Mesh.TextureId = __config.Texture -- any texture works
        
                                    end
                                end
                                        
                                if vv.Name == "Right Arm" then
                                    if configTable.RSleeve then
                                        if vv:FindFirstChild("Right_Sleeve") then
                                            vv.Right_Sleeve:Destroy()    
                                        end
                                    end
                                     if vv:FindFirstChild("Right_Sleeve") and vv.Right_Sleeve:FindFirstChild("teamoverlay") then -- means they have a sleeve, very good
                                        vv["Right_Sleeve"].Mesh.TextureId = __config.Texture -- any texture works
                                        vv["Right_Sleeve"].teamoverlay.Texture =  __config.Texture -- any texture works
                                        vv["Right_Sleeve"].teamoverlay.Color3 =  __config.Color -- any texture works
        
                                     end
                                
                                     if vv:FindFirstChild("R") and vv["R"]:FindFirstChild('Mesh') then -- means they have a sleeve, very good
                                        vv["R"].Mesh.TextureId = __config.Texture -- any texture works
        
                                    end
                                end
                            end    
                        end
                    end
                end
        end
    end
shared.Settings=configTable
if configTable.KillAura2 then
            for i,v in pairs(game.Players:GetPlayers()) do
                    if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Spawned") and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then    
                        local Distance = (game.Players.LocalPlayer.Character.PrimaryPart.Position - v.Character.PrimaryPart.Position).magnitude 
                        if Distance <= 250 then
                            for i=0,5 do -- best possible damage :)
                                arsonfuncs:KillPlayer(v)
                            end
                        end
                    end
                end
        
        end




if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") and configTable.AntiAim then
    if configTable.AASpin then
        game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(configTable.SpinSpeed), 0)    
    end
    
    
    
end





if configTable.NoArms then
    game.Players.LocalPlayer.Data.Skin.Value = "Nonexisty";    
end
if configTable.KillAura then
    for i,v in pairs(game.Players:GetPlayers()) do
            if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Spawned") and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then    
                local Distance = (game.Players.LocalPlayer.Character.PrimaryPart.Position - v.Character.PrimaryPart.Position).magnitude 
                if Distance <= 12 then
                    for i=0,5 do -- best possible damage :)
                        arsonfuncs:KillPlayer(v)
                    end
                end
            end
        end
    end
end











if configTable.RSleeve then
    for _, vls in pairs(workspace.Camera:GetChildren()) do
        if vls and vls:IsA("Model") then
            for __, v in pairs(vls:GetChildren()) do
                if v:IsA("Model") then
                    for i, vv in pairs(v:GetChildren()) do
                        if vv.Name == "Left Arm" then
                            if configTable.RSleeve then
                                if vv:FindFirstChild("Left_Sleeve") then
                                    vv.Left_Sleeve:Destroy()    
                                end
                                if vv:FindFirstChild("Right_Sleeve") then
                                    vv.Right_Sleeve:Destroy()    
                                end
                            end
                            
                        end
                                
                        if vv.Name == "Right Arm" then 
                             if configTable.RSleeve then
                                if vv:FindFirstChild("Left_Sleeve") then
                                    vv.Left_Sleeve:Destroy()    
                                end
                                if vv:FindFirstChild("Right_Sleeve") then
                                    vv.Right_Sleeve:Destroy()    
                                end
                            end
                        end
                    end    
                end
            end
        end
end
end



if configTable.LArms then
    for _, vls in pairs(workspace.Camera:GetChildren()) do
        if vls and vls:IsA("Model") then
            for __, v in pairs(vls:GetChildren()) do
                if v:IsA("Model") then
                    for i, vv in pairs(v:GetChildren()) do
                        if vv.Name == "Left Arm" then
                            vv.Anchored = true
                            
                        end
                                
                        if vv.Name == "Right Arm" then 
                            vv.Anchored = true

                        end
                    end    
                end
            end
        end
end
end

if configTable.ForceKillAll and configTable.normal then
        for _,v in next, game.Players:GetPlayers() do
                if game:GetService("ReplicatedStorage").wkspc.FFA.Value then
                    local gun = game.Players.LocalPlayer.NRPBS.EquippedTool.Value
                    if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("Spawned") then
                        for i = 1, 10 do 
                            arsonfuncs:KillPlayer(v)
                        end
                    end
                else
                    if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("Spawned") and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                        for i = 1, 10 do 
                            arsonfuncs:KillPlayer(v)
                        end
                    end   
                end
            end   
    end



--[[

if configTable.Hitboxes then

local players = arsonfuncs:getplrsname()
local plr = game[players].LocalPlayer
for _,v in pairs(game[players]:GetPlayers()) do
    if v.Name ~= plr.Name and v.Character then
        if v.Character:FindFirstChild("HeadHB") and v.Character:FindFirstChild("HumanoidRootPart") then
            if v.Character.HeadHB.Size~=getgenv().HeadSize and v.Character.HumanoidRootPart.Size~=getgenv().HumSize then
                v.Character.HeadHB.CanCollide = false
                v.Character.HeadHB.Transparency = 10
                v.Character.HeadHB.Size = getgenv().HeadSize
                
                v.Character.HumanoidRootPart.CanCollide = false
                v.Character.HumanoidRootPart.Transparency = 10
                v.Character.HumanoidRootPart.Size = getgenv().HumSize
            end
        end
    end
end
else
    
local players = arsonfuncs:getplrsname()
local plr = game[players].LocalPlayer
for _,v in pairs(game[players]:GetPlayers()) do
if v.Name ~= plr.Name and v.Character then
if v.Character:FindFirstChild("HeadHB") and v.Character:FindFirstChild("HumanoidRootPart") then
v.Character.HeadHB.CanCollide = false
v.Character.HeadHB.Transparency = 10
v.Character.HeadHB.Size = Vector3.new(1.4498, 1.3018, 1.3018)

v.Character.HumanoidRootPart.CanCollide = false
v.Character.HumanoidRootPart.Transparency = 10
v.Character.HumanoidRootPart.Size = Vector3.new(2.1,2.1,2.1)

end
end
end    
end
]]
    if configTable.BunnyHop and configTable.BHopMethod == "Humanoid"then
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) and game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.Jump=true
        end
    end
    
    --[[
    if true then
        for _, v in next, game.Players:GetPlayers() do 
            if v.TeamColor~=game.Players.LocalPlayer.TeamColor and v.Character and not arsonfuncs:IsSecure(v) then
                for _new, val in pairs(v.Character:GetDescendants())do
                    if val:IsA("BasePart") then
                        local new=val:Clone()
                        local storedData=Instance.new('Model',arsonfuncs:GetSecureFolder())
                        storedData.Name=v.Name
                        new.Parent = storedData
                        new.Anchored = true
                        new.CanCollide = false
                        new.Reflectance=0
                        new.Name = val.Name
                        new.Material=Enum.Material.ForceField
                        
                        if new:IsA("MeshPart")then
                            new.TextureID=""
                        end
                        for _,c in pairs(new:GetChildren())do
                            if not c:IsA("SpecialMesh")then
                                c:Destroy()
                            else
                                c.TextureId=""
                            end
                        end
                    end
                end
            end
        end
        
        task.wait(1.3)
        SecureFolder:ClearAllChildren() -- clears all the backtrack
    end
    ]]
    
        
    

    --[[if configTable.GunChams and configTable.GC_THEME == "NewV2" then
        for a,b in pairs(workspace.Camera:GetChildren()) do 
          for c,d in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
            if b.Name == d.Name then 
              for e,f in pairs(b:GetChildren()) do 
                if f:IsA("BasePart") then 
                  f.Color = Color3.fromHSV(tick()%5/5,1,1)
                  f.Material = "Neon"
                end
              end
            end
          end
        end    
    end
    if xonae then
        game.CoreGui.NewNotifUI.Frame.TextLabel.Text='[LOG]: Hit: '..args[1].Name
    	game.CoreGui.NewNotifUI.Frame.Visible = true;
    	task.wait(1.2)
    	game.CoreGui.NewNotifUI.Frame.Visible = false;
    	xonae=false;
    end
     if configTable.GunChams then
            if workspace.CurrentCamera:FindFirstChild("Arms") then
                if workspace.CurrentCamera.Arms:FindFirstChild("new") then
                    for _global_index, v in pairs(workspace.CurrentCamera.Arms.new:GetChildren()) do
                        for __newindexF,v2 in pairs(v:GetDescendants()) do
                            if v2:IsA("SpecialMesh") then
                                v2.TextureId = ""    
                            end
                            
                            if v2:IsA("Decal") then
                                v2:Destroy()    
                            end
                        end
                        
                        if configTable.GC_THEME == "aimhook" then
                            v.BrickColor = BrickColor.new("Deep blue")
                            v.Material = Enum.Material.ForceField

                        end
                        if configTable.GC_THEME == "stormware.cc" then
                            v.BrickColor = BrickColor.new("Royal purple")
                            v.Material = Enum.Material.ForceField
                        end
                        if configTable.GC_THEME == "lgbtq" then
                            v.Material = Enum.Material.Neon
                            v.Color = Color3.fromHSV(tick()%5/5,1,1)
                        end
                        
                        if configTable.GC_THEME == "custom" then
                            v.Material = configTable.CustomMaterial;
                            v.Color = configTable.CustomColor;
                        end
                        if configTable.GC_THEME == "onetap.lua" then
                            v.BrickColor = BrickColor.new("Bright yellow")
                            v.Material = Enum.Material.ForceField
                        end
                        
                        v.Transparency = configTable.GC_TRANSPARENCY
                    end
                else
                    for __protectedIndex, vs in pairs(workspace.CurrentCamera.Arms:GetChildren()) do
                        --if not vs:IsA("MeshPart") then end
                        if vs:IsA("MeshPart") and vs.Transparency ~= 1 then
                            vs.Material = Enum.Material.ForceField
                            if configTable.GC_THEME == "aimhook" then
                                vs.BrickColor = BrickColor.new("Deep blue")    
                            end
                            if configTable.GC_THEME == "stormware.cc" then
                                vs.BrickColor = BrickColor.new("Royal purple")    
                            end
                            if configTable.GC_THEME == "onetap.lua" then
                                vs.BrickColor = BrickColor.new("Bright yellow")    
                            end
                            if configTable.GC_THEME == "lgbtq" then
                                vs.Material = Enum.Material.Neon
                                vs.Color = Color3.fromHSV(tick()%5/5,1,1)
                            end
                        
                            if configTable.GC_THEME == "custom" then
                                vs.Material = configTable.CustomMaterial;
                                vs.Color = configTable.CustomColor;
                            end
                            vs.Transparency = configTable.GC_TRANSPARENCY or .5
                        end
                    end
                end
                
                
            end
        end
        ]]
end)

-- copied from sw lite
 local b0 = game:GetService "Players".LocalPlayer
    local b1 = game:GetService "UserInputService"
    b1.InputBegan:connect(
        function(b2)
            if b2.UserInputType == Enum.UserInputType.Keyboard and b2.KeyCode == Enum.KeyCode.W then
                _G.Running = true
            end
        end
    )
    b1.InputEnded:connect(
        function(b2)
            if b2.UserInputType == Enum.UserInputType.Keyboard and b2.KeyCode == Enum.KeyCode.W then
                _G.Running = false
            end
        end
    )




vSec:AddSlider("TimeDelusion", 1, 1, 10, 1, function(State)
    game:GetService("ReplicatedStorage").wkspc.TimeScale.Value = State
end)

local ToggleBind = vSec:AddToggle("Infinite Jump", false, function(e)
    configTable.InfJump = e
end)

local ToggleBind = vSec:AddToggle("Ctrl+Click TP", false, function(e)
    configTable.TP = e
end)
charMods:AddToggle("Instant Respawn",false,function(x)
    configTable.Revive=x;    
end)
charMods:AddToggle("Jump Power",false,function(x)
    configTable.JP=x;    
end)
charMods:AddToggle("Speed Boost",false,function(x)
    configTable.WS=x;    
end)
charMods:AddSlider("JumpPower", 1, 1, 500, 1, function(State)
    configTable.JPow=State;
end)
charMods:AddSlider("SpeedBoost", 1, 1, 500, 1, function(State)
    configTable.WSpeed=State;
end)

local ToggleBind53 = charMods:AddButton("Top G Glasses", function(e)
    while task.wait() do
        game:GetService("ReplicatedStorage").Events.Sunglasses:FireServer()    
    end
end)



local player = game.Players.LocalPlayer
local UIS = game:GetService'UserInputService';
	

	function Action(Object, Function) if Object ~= nil then Function(Object); end end
	
	UIS.InputBegan:connect(function(UserInput)
		if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space and configTable.InfJump then
			Action(player.Character.Humanoid, function(self)
				if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
					Action(self.Parent.HumanoidRootPart, function(self)
						self.Velocity = Vector3.new(0, 50, 0);
					end)
				end
			end)
		end
	end)
game.UserInputService.JumpRequest:Connect(function()
     
	

	Action(player.Character.Humanoid, function(self)
	    if configTable.JP then
				Action(self.Parent.HumanoidRootPart, function(self)
						self.Velocity = Vector3.new(0, configTable.JPow, 0);
				end)
				
		end
	end)
end)

local mouse2 = game.Players.LocalPlayer:GetMouse()
mouse2.Button1Down:connect(
		function()
		    if not mouse2 then return end
			if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
				return
			end
			if not mouse2.Target then
				return
			end
			
			if configTable.TP then
				
			
				player.Character:MoveTo(mouse2.Hit.p)
			end
		end
	)





vSec:AddToggle("ForceMenu [V]", false, function(x)
    configTable.ForceMenu = x
end)

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(k)
    if k == "v" and configTable.ForceMenu then
        game.Players.LocalPlayer.PlayerGui.Menew.Enabled = not game.Players.LocalPlayer.PlayerGui.Menew.Enabled
    end
end)

local newbinde=vSec:AddToggle("ForceKillAll",false,function(x)
    configTable.ForceKillAll=x;
    fka=x;
end)
vSec:AddDropdown("Kill All Type", {"normal", "heartbeat"}, "normal",false, function(x)
    if x == 'normal'then
        configTable.normal=true
    else configTable.normal=false end
    configTable.ktype=x;
end)


newbinde:AddKeybind()




scriptTab:CreateConfigSystem("right") --this is the config system





getgenv().OldAimPart = configTable.LocalAimPart
getgenv().AimPart = configTable.LocalAimPart
getgenv().AimlockKey = "c"
getgenv().AimRadius = 90 
getgenv().ThirdPerson = true
getgenv().FirstPerson = true
getgenv().TeamCheck = true 
getgenv().PredictMovement = true 
getgenv().PredictionVelocity = 6.612
getgenv().Smoothness = true
getgenv().SmoothnessAmount = 0.08

local Players, Uis, RService, SGui =
    game:GetService "Players",
    game:GetService "UserInputService",
    game:GetService "RunService",
    game:GetService "StarterGui"
local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 =
    Players.LocalPlayer,
    Players.LocalPlayer:GetMouse(),
    workspace.CurrentCamera,
    CFrame.new,
    Ray.new,
    Vector3.new,
    Vector2.new
local Aimlock, MousePressed, CanNotify = true, false, false
local AimlockTarget
local OldPre

getgenv().WorldToViewportPoint = function(P)
    return Camera:WorldToViewportPoint(P)
end

getgenv().WorldToScreenPoint = function(P)
    return Camera.WorldToScreenPoint(Camera, P)
end

getgenv().GetObscuringObjects = function(T)
    if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then
        local RayPos = workspace:FindPartOnRay(RNew(T[getgenv().AimPart].Position, Client.Character.Head.Position))
        if RayPos then
            return RayPos:IsDescendantOf(T)
        end
    end
end

getgenv().GetNearestTarget = function()
    local players = {}
    local PLAYER_HOLD = {}
    local DISTANCES = {}
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= Client then
            table.insert(players, v)
        end
    end
    for i, v in pairs(players) do
        if v.Character ~= nil then
            local AIM = v.Character:FindFirstChild("Head")
            if getgenv().TeamCheck == true and v.Status.Team.Value ~= Client.Status.Team.Value then
                local DISTANCE =
                    (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY =
                    Ray.new(
                    game.Workspace.CurrentCamera.CFrame.p,
                    (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE
                )
                local HIT, POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist = DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            elseif getgenv().TeamCheck == false and v.Status.Team.Value == Client.Status.Team.Value then
                local DISTANCE =
                    (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY =
                    Ray.new(
                    game.Workspace.CurrentCamera.CFrame.p,
                    (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE
                )
                local HIT, POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist = DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            end
        end
    end

    if unpack(DISTANCES) == nil then
        return nil
    end

    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > getgenv().AimRadius then
        return nil
    end

    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return nil
end
Uis.InputBegan:Connect(
    function(i)
        if i.UserInputType == Enum.UserInputType[configTable.aimkey] and configTable.AimBot then
            if AimlockTarget == nil then
                pcall(
                    function()
                        if MousePressed ~= true then
                            MousePressed = true
                        end
                        local Target
                        Target = GetNearestTarget()
                        if Target ~= nil then
                            AimlockTarget = Target
                        end
                    end
                )
            elseif a == AimlockKey and AimlockTarget ~= nil then
                if AimlockTarget ~= nil then
                    AimlockTarget = nil
                end
                if MousePressed ~= false then
                    MousePressed = false
                end
            end
        end
    end
)

Uis.InputEnded:Connect(
    function(i)
        if i.UserInputType == Enum.UserInputType[configTable.aimkey] and configTable.AimBot then
            if AimlockTarget ~= nil then
                AimlockTarget = nil
            end
            if MousePressed ~= false then
                MousePressed = false
            end
        end
    end
)

local CurrentCamera = workspace.CurrentCamera
local Players = game.GetService(game, "Players")
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then  end
        if V.Status.Team.Value == LocalPlayer.Status.Team.Value then  end
        if not V.Character then  end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then  end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, (Head and Head.Position or Vector3.new()))
        if configTable.IgnoreVisibility then
            Vis = true    
        end
        if not Vis then  end
        local MousePos, TheirPos = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    if Closest ~= game.Players.LocalPlayer then
        return Closest
    end
end

--workspace.Camera.Changed:Connect(function()
--    if configTable.Aspect then
--        print('ran')
 --       workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.6, 0, 0, 0, 1);
--    end
--end)

RService.RenderStepped:Connect(
    function()
        if configTable.AutoShoot then
            if game.Players.LocalPlayer.Character:FindFirstChild("Spawned") then
                local nearest = arsonfuncs:new_closest();--new;

                if nearest and nearest.Character and nearest.Character:FindFirstChild("Spawned") and nearest.Status.Team.Value ~= game.Players.LocalPlayer.Status.Team.Value then
                    if configTable.asmethod == 'Force Fire' then
                        local _,vis = workspace.CurrentCamera:WorldToScreenPoint(nearest.Character.Head.Position)
                        
                        if vis and arsonfuncs:IsNotBehindWall(nearest.Character.Head) then
                            for i =1,5 do
                                arsonfuncs:KillPlayer(nearest);
                            end
                        end
                    end
                    if configTable.asmethod == 'ObscuredTargets' then
                        if arsonfuncs:isVisible(nearest) then -- wacky, but alright
                            if game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value then return end;
                            arsonfuncs.WeaponClient.firebullet()
                            arsonfuncs:KillPlayer(nearest)
                            if configTable.DoubleTap then
                                for i = 0, 5 do
                                    arsonfuncs.WeaponClient.firebullet();--im_retarded_fr
                                    arsonfuncs:KillPlayer(nearest)
                                end
                            end
                        end
                    elseif configTable.asmethod == 'Raycast' then
                        if arsonfuncs:IsNotBehindWall(nearest.Character.HumanoidRootPart) then -- wacky, but alright
                            if game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value then return end;
                            game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value = not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value
                            arsonfuncs:KillPlayer(nearest)
                            if configTable.DoubleTap then
                                for i = 1, 2 do
                                    arsonfuncs.WeaponClient.firebullet()
                                    arsonfuncs:KillPlayer(nearest)
                                end
                            end
                            game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value=false;
                        end
                    elseif configTable.asmethod == 'Levelup' then
                        if arsonfuncs:vGet(nearest) then
                            print('vget check passed #1')
                            if game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value then return end;
                            arsonfuncs.WeaponClient.firebullet()
                            arsonfuncs:KillPlayer(nearest)
                            if configTable.DoubleTap then
                                for i = 0, 5 do
                                    arsonfuncs.WeaponClient.firebullet()
                                    arsonfuncs:KillPlayer(nearest)
                                end
                            end
                        end
                    end
                end
            end
        end
        if configTable.Trigger then
            if dwMouse.Target and dwMouse.Target.Parent and dwMouse.Target.Parent:FindFirstChild('Humanoid') and dwMouse.Target.Parent.Name ~= dwLocalPlayer.Name and game.Players:GetPlayerFromCharacter(dwMouse.Target.Parent).Team ~= dwLocalPlayer.Team then
                if configTable.tmethod == 'force fire' then
                    arsonfuncs.WeaponClient.firebullet();    
                end
                if configTable.tmethod == 'spoof clickstate' then
                    game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value = not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value 
                end
                if configTable.tmethod == 'mouse' then
                    mouse1press()
                    task.wait(0.1)
                    mouse1release()
                end
            end
            
            if configTable.shootBT and dwMouse.Target and dwMouse.Target.Parent and dwMouse.Target.Parent == arsonfuncs:GetSecureFolder() then
                if configTable.tmethod == 'force fire' then
                    arsonfuncs.WeaponClient.firebullet();    
                end
                if configTable.tmethod == 'spoof clickstate' then
                    game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value = not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.Held.Value 
                end
                if configTable.tmethod == 'mouse' then
                    mouse1press()
                    task.wait(0.1)
                    mouse1release()
                end
            end
        end
        if configTable.UpsideDown and game.Players.LocalPlayer.Character:FindFirstChild'Spawned'then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
                CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                )*
                CFrame.Angles(
                    0,
                    math.rad(game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation.Y),
                    math.rad(180)
                )
        end
        if configTable.Revive then
            if game.Players.LocalPlayer.NRPBS.Health.Value <= 0 and game.Players.LocalPlayer.Status.Team.Value ~= "Spectator" then
                getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).reviveme = true
            end
            --getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client).reviveme=true    
        end
        
        if configTable.S2 and UserInputService:IsMouseButtonPressed(0) and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Spawned') then
            if not game.Players.LocalPlayer.PlayerGui.Menew.Enabled then
                local CP = ClosestPlayer()
                
                if CP and CP.Character and CP.Character:FindFirstChild('HeadHB') and CP.Character:FindFirstChild('Spawned') then
                    for i=0, 5 do
                        arsonfuncs:KillPlayer(CP)    
                    end
                end
            end
        end
        
        if configTable.girl then
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game.Players.LocalPlayer.Character:FindFirstChild('baby girl') then
                game.Players.LocalPlayer.Character:FindFirstChild('baby girl').CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(5, 0, 0)
            end
        end
        
        if CustomModels and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game.Players.LocalPlayer.Character:FindFirstChild('follower') then
            if game.Players.LocalPlayer.Character.follower:FindFirstChild('beloved') then
                game.Players.LocalPlayer.Character:FindFirstChild('follower').beloved.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(5, 0, 0)
            end
        end
        
        if configTable.SelfGlow then
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game.Players.LocalPlayer.Character:FindFirstChild('lol') then
                game.Players.LocalPlayer.Character:FindFirstChild('lol'):PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
            end
        end
        if configTable.Desync and configTable.DesyncType=='CFrame' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(rootPosition) + Vector3.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))    
        end
        if configTable.Desync and configTable.DesyncType=='Experimental' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(rootPosition) + Vector3.new(math.random(-55, 55), math.random(-55, 55), math.random(-55, 55)) + Vector3.new(math.random(-55, 55), math.random(-55, 55), math.random(-55, 55))) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))     
        end
        if configTable.Desync and configTable.DesyncType=='Mental' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(rootPosition) + Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) + Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))     
        end
        if configTable.Desync and configTable.DesyncType=='Test' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(rootPosition) + Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000)) + Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000)) + Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000))) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))     
        end
        if configTable.Desync and configTable.DesyncType=='Unhittable' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(rootPosition) + Vector3.new(math.random(-100000, 100000), math.random(-100000, 100000), math.random(-100000, 100000)) + Vector3.new(math.random(-100000, 100000), math.random(-100000, 100000), math.random(-100000, 100000)) + Vector3.new(math.random(-100000, 100000), math.random(-100000, 100000), math.random(-100000, 100000))) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))     
        end
        if configTable.Aspect and not game.Players.LocalPlayer.PlayerGui.Menew.Enabled then
            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.6, 0, 0, 0, 1);
        end
        if configTable.AutoShoot2 then
            game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end
        
        

        --esp.TextSize = configTable.NameESP.TextSize;
        --esp.Font = configTable.NameESP.Font;
        --esp.TextColor3 = configTable.NameESP.Color;
        --esp.BorderColor3 = configTable.NameESP.Color;
       
        
        if configTable.BunnyHop then
            if configTable.BHopMethod == "Velocity" then
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso") then
                    BodyVelocity:Destroy()
            		BodyVelocity = Instance.new("BodyVelocity")
            		BodyVelocity.Name = '()(terzh)'
            		BodyVelocity.MaxForce = Vector3.new(math.huge,0,math.huge)
            		if UserInputService:IsKeyDown("Space") then
            			local add = 0
            			if UserInputService:IsKeyDown("A") then add = 90 end
            			if UserInputService:IsKeyDown("S") then add = 180 end
            			if UserInputService:IsKeyDown("D") then add = 270 end
            			if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("W") then add = 45 end
            			if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("W") then add = 315 end
            			if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("S") then add = 225 end
            			if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("S") then add = 145 end
            			local rot = arsonfuncs:RotationY(workspace.CurrentCamera.CFrame) * CFrame.Angles(0,math.rad(add),0)
            			BodyVelocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
            			game.Players.LocalPlayer.Character.Humanoid.Jump = true
            			BodyVelocity.Velocity = Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * (configTable.BHopSpeed * 2)
            			if add == 0 and not UserInputService:IsKeyDown("W") then
            				BodyVelocity:Destroy()
            			end
            		end
                end
            end
        end

        
        if configTable.UseCustomRotation and game.Players.LocalPlayer.Character then
            arsonfuncs:RotatePlayer(workspace.CurrentCamera.CFrame * CFrame.new(-180, 0, 0))
        end

        if game.Players.LocalPlayer.Character:FindFirstChild("Gun") and configTable.Backtrack and configTable.bm == 'Parts' then
            for _, v in pairs(game.Players:GetPlayers()) do
                if
                    v.Character and v.TeamColor ~= game.Players.LocalPlayer.TeamColor and v ~= game.Players.LocalPlayer and
                        v.Character:FindFirstChild("Spawned")
                 then
                    local track = Instance.new("Part")
                    track.Name = v.Name
                    track.Anchored = true
                    track.Material = configTable.Backmat
                    track.CanCollide = false
                    track.Transparency = 0
                    track.Color = configTable.BacktrackColor
                    track.Size = v.Character.Head.Size
                    track.CFrame = v.Character.Head.CFrame
                    track.Parent = arsonfuncs:GetSecureFolder()
                    if configTable.Hideback then
                        track.Transparency = 1
                    end

                    local BacktrackTag = Instance.new("ObjectValue")
                    BacktrackTag.Parent = track
                    BacktrackTag.Name = "PlayerName"
                    BacktrackTag.Value = v

                    spawn(
                        function()
                            task.wait(configTable.BacktrackDelay / 10000)
                            track:Destroy()
                        end
                    )
                else
                end
            end
        end

        if game.Players.LocalPlayer.Character:FindFirstChild("Gun") and configTable.Backtrack and configTable.bm == 'Replicated' then
            for _, v in pairs(game.Players:GetPlayers()) do
                if
                    v.Character and v.TeamColor ~= game.Players.LocalPlayer.TeamColor and v ~= game.Players.LocalPlayer and
                        v.Character:FindFirstChild("Spawned")
                 then
                    if not arsonfuncs:GetSecureFolder():FindFirstChild(v.Name) then
                        local i = arsonfuncs.Dummy:Clone()
                        i.Name = v.Name
                        i.Parent = arsonfuncs:GetSecureFolder()
                        i.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                        for _,vee in next, i:GetChildren()do
                            local BacktrackTag = Instance.new("ObjectValue")
                            BacktrackTag.Parent = vee
                            BacktrackTag.Name = "PlayerName"
                            BacktrackTag.Value = v
                            if vee.Name ~= "Humanoid" then
                                vee.Color = configTable.BacktrackColor
                                vee.Material = configTable.Backmat
                            end
                        end
                    

                        spawn(
                            function()
                                task.wait(configTable.BacktrackDelay / 1000)
                                arsonfuncs:GetSecureFolder():ClearAllChildren();
                            end
                        )
                    end
                end
            end
        end
        if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
            if
                (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or
                    (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1
             then
                CanNotify = true
            else
                CanNotify = false
            end
        elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then
                CanNotify = true
            else
                CanNotify = false
            end
        elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then
                CanNotify = true
            else
                CanNotify = false
            end
        end
        if Aimlock == true and MousePressed == true then
            if
                AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) and
                    AimlockTarget.NRPBS.Health.Value > 0
             then
                if getgenv().FirstPerson == true then
                    if CanNotify == true then
                        if getgenv().PredictMovement == true then
                            if getgenv().Smoothness == true and AimlockTarget.NRPBS.Health.Value > 0 then
                                --// The part we're going to lerp/smoothen \\--
                                local Main =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().AimPart].Position +
                                        AimlockTarget.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                )

                                --// Making it work \\--
                                Camera.CFrame =
                                    Camera.CFrame:Lerp(
                                    Main,
                                    getgenv().SmoothnessAmount,
                                    Enum.EasingStyle.Elastic,
                                    Enum.EasingDirection.InOut
                                )
                            else
                                Camera.CFrame =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().AimPart].Position +
                                        AimlockTarget.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                )
                            end
                        elseif getgenv().PredictMovement == false then
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)

                                --// Making it work \\--
                                Camera.CFrame =
                                    Camera.CFrame:Lerp(
                                    Main,
                                    getgenv().SmoothnessAmount,
                                    Enum.EasingStyle.Elastic,
                                    Enum.EasingDirection.InOut
                                )
                            else
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                            end
                        end
                    end
                end
            end
        end
    end
)








testSection:AddToggle('Wallbang', false, function(x)
    configTable.Wallbang = x    
end)
local newfirst = false
local dogCrap = testSection:AddToggle("TP Killaura",false, function(v)
    if not newfirst then -- cattoware always executes codes inside toggles so we have to make a check if it is caused by cw!
        newfirst = true
        return
    end
    configTable.KillAura2=v;
    if v then
        for _, v in next, game.Players:GetPlayers() do
            if v.TeamColor ~= game.Players.LocalPlayer.TeamColor and v.Character:FindFirstChild('Spawned') then
                game.Players.LocalPlayer.Character:PivotTo(v.Character.HumanoidRootPart.CFrame)
                task.wait(.5)
            end
        end    
    end
end)
dogCrap:AddKeybind()


	repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
	local mouse = game.Players.LocalPlayer:GetMouse() 
	
	
	
	mouse.Button1Down:connect(
		function()
			if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
				return
			end
			if not mouse.Target then
				return
			end
			
			if not mouse.Hit then
			       return
			end
			
			if configTable.TP then
				
			
				player.Character:MoveTo(mouse.Hit.p)
			end
		end
	)
	
	





local oldNamecall

oldNamecall = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local Args = table.pack(...)
    if method:lower() == 'kick' then
        task.wait(9e9)
        return nil
    end
    if method == "FindPartOnRayWithIgnoreList" and configTable.Wallbang then
        table.insert(Args[2], workspace.Map)
    end
    if tostring(method) == "FireServer" and tostring(self) == "PlayerChatted" and not checkcaller() then
        chatKey = tostring(Args[1]); -- auto chat key grabber
        --print(chatKey)
        return oldNamecall(self, ...)
    end
    if tostring(self) == 'ControlTurn' and method == 'FireServer' then
        if configTable.AntiAim then
            if configTable.AA_METHOD == 'Down' and configTable.AntiAim then
                Args[1] = -100
            end
            if configTable.AA_METHOD == 'Up' and configTable.AntiAim then
                Args[1] = 100
            end
            if configTable.AA_METHOD == 'Mental' and configTable.AntiAim then
                Args[1] = math.random(-100,100)
            end
            if configTable.AA_METHOD == 'Cursed' and configTable.AntiAim then
                Args[1] = 0/0--nan trollage;
            end
            if configTable.AA_METHOD == 'Test' and configTable.AntiAim then
                Args[1] = -9e9/9e9
            end  
        end
        
        return oldNamecall(self, table.unpack(Args, 1, Args.n))
    end
    
    return oldNamecall(self, ...)
end))

	
local mt = getrawmetatable(game) -- Ã°Å¸ËœÂ±
local namecallold = mt.__namecall
local index = mt.__index
setreadonly(mt, false)



setreadonly(mt, true)

task.spawn(function()
    while task.wait(1) do
        
       
        
        if configTable.Spammer then
            if chatKey ~= nil then
                arsonfuncs:Chat(configTable.ChatContext)
            end
        end
        
        --if configTable.Wallbang then
            --local BitBuffer = require(game.ReplicatedStorage.Modules.BitBuffer)()
            --BitBuffer.writeUnsigned(64, game.Players.LocalPlayer.UserId)
            --BitBuffer.writeUnsigned(9, 511, 0, 511)
            --game.ReplicatedStorage.Events.UpdatePing:FireServer(BitBuffer.dumpString())
            --task.wait()
        --end
        
        if configTable.WorldAmbience and not configTable.RainbowA then
            game.Lighting.Ambient=world.Ambient;
            game.Lighting.OutdoorAmbient=world.OutdoorAmbient;
            game.Lighting.ClockTime=world.ClockTime;
            game.Lighting.ColorShift_Top=world.ColorShift_Top;
            game.Lighting.ColorShift_Bottom=world.ColorShift_Bottom;
        end
        
        if configTable.WorldAmbience and configTable.RainbowA then
            game.Lighting.Ambient=Color3.fromHSV(tick()%5/5,1,1)  
            game.Lighting.OutdoorAmbient=Color3.fromHSV(tick()%5/5,1,1)  
            game.Lighting.ColorShift_Top=Color3.fromHSV(tick()%5/5,1,1)  
            game.Lighting.ColorShift_Bottom=Color3.fromHSV(tick()%5/5,1,1)
        end
        --[[
        if configTable.Wallbang then
            local BitBuffer = require(game.ReplicatedStorage.Modules.BitBuffer)()
            --game.ReplicatedStorage.Functions.Ping:Destroy()
            BitBuffer.writeUnsigned(64, game.Players.LocalPlayer.UserId)
            BitBuffer.writeUnsigned(9, 511)
            game.ReplicatedStorage.Events.UpdatePing:FireServer(BitBuffer.dumpString())
        end
        ]]
        
        
    end 
end)



--game:GetService('RunService').Stepped:Connect(NoclipLoop)
do
    local Other = {
        Camera = workspace.CurrentCamera,
        BeamPart = Instance.new("Part", workspace)
    }
    Other.BeamPart.Name = 'makeSureDirtyXonaeSucksThoseBootyCheeksYum'
    game.Players.LocalPlayer:GetMouse().TargetFilter = Other.BeamPart
    
    local Settings = {
        StartColor = Color3.fromRGB(230, 230, 250),
        EndColor = Color3.fromRGB(230, 230, 250),
        StartWidth = 1,
        EndWidth = 1,
        ShowImpactPoint = false,
        ImpactTransparency = 0.5,
        ImpactColor = Color3.new(1, 1, 1),
    }
    -- copied from aimhook rewrite, lol.
    function beamThatBih(p1, p2)
        p2 = Vector3.new(p2.X - 0.1, p2.Y + 0.2, p2.Z)
        local colorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0,configTable.BColor),
            ColorSequenceKeypoint.new(1,configTable.BColor),
        })
        local Part = Instance.new("Part", Other.BeamPart)
        Part.Size = Vector3.new(0, 0, 0)
        Part.Massless = true
        Part.Transparency = 1
        Part.CanCollide = false
        Part.Position = p1
        Part.Anchored = true
        local Attachment = Instance.new("Attachment", Part)
        local Part2 = Instance.new("Part", Other.BeamPart)
        Part2.Size = Vector3.new(0, 0, 0)
        Part2.Transparency = 0
        Part2.CanCollide = false
        Part2.Position = p2
        Part2.Anchored = true
        Part2.Material = Enum.Material.ForceField
        Part2.Color = Settings.ImpactColor
        Part2.Massless = true
        local Attachment2 = Instance.new("Attachment", Part2)
        local Beam = Instance.new("Beam", Part)
        Beam.FaceCamera = true
        Beam.Color = colorSequence
        Beam.Attachment0 = Attachment
        Beam.Attachment1 = Attachment2
        Beam.LightEmission = 6
        Beam.LightInfluence = 1
        Beam.Width0 = 0.5
        Beam.Width1 = 0.5
        Beam.Texture = "http://www.roblox.com/asset/?id=446111271"
		  Beam.TextureMode = "Static"
        Beam.TextureSpeed = 2
        Beam.TextureLength = 1.3
        task.delay(1.5, function()
            Part:Destroy()
            Part2:Destroy()
        end)
    end
end
local ArsoniaFunctionLib={}
function ArsoniaFunctionLib:Tween(...) game:GetService("TweenService"):Create(...):Play() end
local oldNew

oldNew = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if method == "SetPrimaryPartCFrame" and tostring(self) == 'Arms' and configTable.VMChange then
		args[1] = args[1] * CFrame.new(VMOffsets.X,VMOffsets.Y,VMOffsets.Z);
		
		return oldNew(self, unpack(args))
        --args[2] = args[2] * CFrame.new(99,99,99);
	end


	
	if self.Name == "\226\128\139HitPart" then
	   
	    
	    if args[1].Parent == arsonfuncs:GetSecureFolder() then
	        if args[1].PlayerName.Value.Character and args[1].PlayerName.Value.Character.Head ~= nil then
				arsonfuncs:KillPlayer(args[1].PlayerName.Value)
			end
	    end

        if args[1].Parent and args[1].Parent.Parent then
            if args[1].Parent.Parent == arsonfuncs:GetSecureFolder() then
                if args[1].PlayerName.Value.Character and args[1].PlayerName.Value.Character.Head ~= nil then
                    arsonfuncs:KillPlayer(args[1].PlayerName.Value)
                end
            end
	    end


	    
	    if configTable.BTracers and not fka then
    	    spawn(function()
    	        
                local Camera = workspace.CurrentCamera
                if configTable.BType == 'experimental' then
                    local beam = Instance.new("Part")
            		beam.Shape = 'Cylinder'
            		beam.Parent = workspace.Debris;
                    beam.Name = 'U()()()()()()+45+52432+42+423+423+423+42+3423+42+3/(3+3)'
                    beam.Anchored = true
                    beam.CanCollide = false
                    beam.Material = configTable.BMaterial
                    beam.Color = configTable.BColor
                    beam.Size = Vector3.new((Camera.CFrame.Position - args[1].CFrame.Position).Magnitude, .3, .3)
                    beam.CFrame = CFrame.new(Camera.CFrame.Position, args[1].CFrame.Position) * CFrame.new(0, 0, -beam.Size.Z / 2)*CFrame.Angles(0,math.rad(90),0)
                    ArsoniaFunctionLib:Tween(beam, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1})
                    task.wait(1.5)
                    beam:Destroy()
                end
                if configTable.BType == 'old' then
                    if dwMouse.hit and dwMouse.hit.p then
            		local beam = Instance.new("Part")
            		
            		    beam.Parent = workspace.Debris;
                        beam.Name = 'U()()()()()()+45+52432+42+423+423+423+42+3423+42+3/(3+3)'
                        beam.Anchored = true
                        beam.CanCollide = false
                        beam.Material = configTable.BMaterial
                        beam.Color = configTable.BColor
                        beam.Size = Vector3.new(0.1, 0.1, (Camera.CFrame.Position - args[1].CFrame.Position).Magnitude)
                        beam.CFrame = CFrame.new(Camera.CFrame.Position, args[1].CFrame.Position) * CFrame.new(0, 0, -beam.Size.Z / 2)
                        ArsoniaFunctionLib:Tween(beam, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1})
                        task.wait(1.5)
                        beam:Destroy()
                    end
                            
                elseif configTable.BType == 'new' then
                    beamThatBih(game.Players.LocalPlayer.Character.Head.Position, dwMouse.hit.p);--hit p100
                end
    	    end)
	    end
	    
	    if configTable.BImpacts and not fka then
			task.spawn(function()
			    if dwMouse.hit and dwMouse.hit.p then
                    local hit = Instance.new("Part")
                    hit.Transparency = 0
                    hit.Color = configTable.ImpactColor
                    hit.CanCollide = false
                    hit.Size = Vector3.new(.3,.3,.3)
                    hit.Position = dwMouse.hit.p
                    hit.Anchored = true
                    hit.Material = 'ForceField'
                    local selection = Instance.new("SelectionBox")
                    selection.LineThickness = 0
                    selection.SurfaceTransparency = 0.5
                    selection.Color3 = configTable.ImpactColor
                    selection.SurfaceColor3 = configTable.ImpactColor
                    selection.Parent = hit
                    selection.Adornee = hit
                    hit.Parent = workspace.Debris
                    task.wait(3.3)
                    ArsoniaFunctionLib:Tween(hit, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1})
                    ArsoniaFunctionLib:Tween(selection, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {SurfaceTransparency = 1})
                    task.wait(1)
                    hit:Destroy()
                    --selection:Destroy()
                end
			end)
        end
	    if configTable.TPAura then
	        spawn(function()
	            if string.find(args[1].Name,'HeadHB') or string.find(args[1].Name,'HumanoidRootPart') or string.find(args[1].Name,'UpperTorso') or string.find(args[1].Name,'LowerTorso') or string.find(args[1].Name,'Leg') then
	                local position = args[1].CFrame
	                if configTable.TPBack then
    	                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") then
    	                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position - Vector3.new(0,0,5)     
    	                end
                    else
                        if configTable.TPStraight then
    	                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") then
    	                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position      
    	                    end
    	                else
        	                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") then
        	                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position + Vector3.new(AuraOffsets.X,AuraOffsets.Y,AuraOffsets.Z)      
        	                end
    	                end    
                    end
	            end
	        end)     
	    end
	end
    return oldNew(self, ...)
end)


	
--arsonfuncs.PrepareInit()--:trollface:



function getSound()
    local res = nil;
    
    if configTable.Hitsound=="skeet.cc" then
        res="rbxassetid://5447626464"
    end
    
    if configTable.Hitsound=="baimware" then
        res="rbxassetid://6607339542"    
    end
    
    if configTable.Hitsound=="neverlose" then
        res="rbxassetid://6607204501"
    end
    
    if configTable.Hitsound=="rust" then
        res="rbxassetid://5043539486"    
    end
    
    if configTable.Hitsound=="bag" then
        res="rbxassetid://364942410"    
    end
    
    if configTable.Hitsound=="sit" then
        writefile("sit.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/sit.mp3?raw=true"))
        res=getsynasset("sit.mp3")   
    end
    
    if configTable.Hitsound=="osu" then
        writefile("osu.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/osu.mp3?raw=true"))
        res=getsynasset("osu.mp3")   
    end
    
    if configTable.Hitsound=="reminder" then
        writefile("reminder.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/reminder.mp3?raw=true"))
        res=getsynasset("reminder.mp3")   
    end
    
    if configTable.Hitsound=="uwu" then
        writefile("uwu.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/uwu.mp3?raw=true"))
        res=getsynasset("uwu.mp3")   
    end
    
    if configTable.Hitsound=="zing" then
        writefile("zing.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/animezing.mp3?raw=true"))
        res=getsynasset("zing.mp3")   
    end
    
    if configTable.Hitsound=="crowbar" then
        writefile("crowbar.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/crowbar.mp3?raw=true"))
        res=getsynasset("crowbar.mp3")   
    end
    
    if configTable.Hitsound=="laugh" then
        writefile("laugh.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/laugh.mp3?raw=true"))
        res=getsynasset("laugh.mp3")   
    end
    
    if configTable.Hitsound=="burp" then
        writefile("burp.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/burp.mp3?raw=true"))
        res=getsynasset("burp.mp3")   
    end
    
    if configTable.Hitsound=="mario" then
        writefile("mario.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/mariowoahh.mp3?raw=true"))
        res=getsynasset("mario.mp3")   
    end
    
    if configTable.Hitsound=="huh" then
        writefile("huh.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/huhh.mp3?raw=true"))
        res=getsynasset("huh.mp3")   
    end
    if configTable.Hitsound=="ara ara" then
        writefile("ara.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/ara.mp3?raw=true"))
        res=getsynasset("ara.mp3")   
    end
    if configTable.Hitsound=="aimhook"then
        writefile("nv.mp3",game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/sounds/Track.mp3?raw=true"))
        res=getsynasset("nv.mp3")
    end
    return res;
end

-- actual hook
game.Players.LocalPlayer.ScoreFolder.Damage:GetPropertyChangedSignal("Value"):Connect(function(current)
    if current == 0 then return end
    if not configTable.Hitsounds then return end
    
    local sound = Instance.new("Sound")
    sound.Parent = game:GetService("SoundService")
    sound.SoundId = getSound()
    sound.Volume = configTable.Volume
    sound.PlayOnRemove = true
    sound:Destroy()
end)
-- hit sound connection, everytime new match starts it gets removed.
game.Players.LocalPlayer.ScoreFolder.Kills:GetPropertyChangedSignal("Value"):Connect(function(v)
    if v == 0 then return end
    if not configTable.DeathSay then return end
    if chatKey ~= nil then
        arsonfuncs:Chat(configTable.DeathContext)
    end
end)

game.Players.LocalPlayer.ChildRemoved:Connect(function(c)
    -- means new round started!
    
    
    if (c.Name == "ScoreFolder")then
        task.wait(3)
        
        game.Players.LocalPlayer.ScoreFolder.Damage:GetPropertyChangedSignal("Value"):Connect(function(current)
        	if current == 0 then return end
        	if not configTable.Hitsounds then return end
        
        	local sound = Instance.new("Sound")
        	sound.Parent = game:GetService("SoundService")
        	sound.SoundId = getSound()
        	sound.Volume = configTable.Volume
        	sound.PlayOnRemove = true
        	sound:Destroy()
        end)
        
        game.Players.LocalPlayer.ScoreFolder.Kills:GetPropertyChangedSignal("Value"):Connect(function(v)
            if v == 0 then return end
            if not configTable.DeathSay then return end
            
            arsonfuncs:Chat(configTable.DeathContext)
        end)

    end
end)









local NewNotifUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

--Properties:

NewNotifUI.Name = "NewNotifUI"
NewNotifUI.Parent = game:WaitForChild("CoreGui")
NewNotifUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = NewNotifUI
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.0007,5,0.081,0)
Frame.Size = UDim2.new(0, 282, 0, 39)
Frame.Visible = false;
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0141843967, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 273, 0, 39)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "[AntiMod]: Detected: xynx2k"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 19.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:
local new=Instance.new("UIStroke",Frame)
new.Color = Color3.fromRGB(28, 53, 127)
new.Thickness=3;
local function RWEK_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	script.Parent.Font=Enum.Font.Code;
end
coroutine.wrap(RWEK_fake_script)()
local function TIQNHID_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)


end
coroutine.wrap(TIQNHID_fake_script)()


game.Players.PlayerAdded:connect(function(newplr)
    if configTable.Mods and newplr:IsInGroup(2613928) then
        print(newplr:GetRoleInGroup(2613928))
        if newplr:GetRoleInGroup(2613928)=="Game Moderators"then
            Frame:TweenPosition(UDim2.new(0.0007,5,0.081,0),Enum.EasingDirection.In,Enum.EasingStyle.Bounce,1.5,true,function()
		        Frame.Visible = true;
		        TextLabel.Text="Mod found,destroying instance"
		        task.wait(1)
		        game:Shutdown()
	        end)   
        end
    end
end)

