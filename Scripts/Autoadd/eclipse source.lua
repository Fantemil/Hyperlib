

local Eclipse_Settins = {
    Camlock = {
        enable = false,
        grabbed_check = false,
        pickup_check = false,
        wallcheck = false,
        prediciton = 0.121,
        smoothness = false,
        smoothness_value = 0.0065,
        aiming_part = "UpperTorso",
        resolver = false, -----fucks ups prediction
        autopred = false,
        resolver_type = "Underground",
        keybind = Enum.KeyCode.Q
    },
    target_aim = {
        enable = false,
        toggled = false,
        prediciton = 0.121,
        lookat = false,
        resolver = false,
        aiming_part = "HumanoidRootPart",
        wallcheck = false,
        grabbed_check = false,
        pickup_check = false,
        notify = false,
        unlocked_on_knocked = false,
        resolver_type = "Undeground",
        reload_on_knocked = false,
        target_strafe = {
            toggle = false,
            height = 0,
            speed = 1,
            distance = 4,
            color = Color3.fromRGB(255,255,255)
        },
        keybind = Enum.KeyCode.Q,

        tracer = false,
        tracer_color = Color3.fromRGB(255,255,255),
        fakehitbox = false,
        fakehitbox_color = Color3.fromRGB(255,255,255),
        fakehitbox_material = "ForceField",
        Highlight = false,
        Highlight_COlor =  Color3.fromRGB(255,255,255),
        methodtoget = "Closet to mouse"

    },

    silent_aim = {
        enable = false,
        wallcheck = false,
        grabbed_check = false,
        pickup_check = false,
        Random_hitbox = false,
        chance = 100,
        prediciton = 0.121,
        aiming_part = "HumanoidRootPart",
        crewcheck =false,
        friendcheck = false,

        fov = {
            enable =false,
            size = 100,
            visible =false,
            sizes =  0,
            filled = false,
            color = Color3.fromRGB(255,255,255)
        }
    },

    anti_aim = {
        vecspoofer = {
            toggle = false,
            X_Axis = 0,
            Y_Axis = 0,
            Z_Axis = 0,
            multiple = 0,
            desync = false
        }
    },

    cframe_speed = {
        enable = false,
        toggled = false,
        speed = 1,
        keybind = Enum.KeyCode.Z
    },



    miscs = {
        auto_stomp = false,
        deley = 0,
        bullet_tracer ={
            toggle =false,
            color = Color3.fromRGB(255,255,255)
        },
        anti_stomp = {
            enable = false,
            delata = 0,
            anti_stommp_method = "Destroy"
        },
        world_ambince =  false,
        world_ambince_color = Color3.fromRGB(255,255,255),
        clone = {
            toggle = false,
            timedestroy = 1,
            matreial = "Neon",
            color = Color3.fromRGB(255,255,255),
            Transpancy = 0
        },
        bhop = false,
        auto_reload = false,
        remove_jump_cooldown  =false,
        anti_slow = false,
        jumpstarfe = false,
        jumpstarfe_speed = 2,
        jumpbhopcooldown = 0,
        bulletimpact = false,
        bulletimpactmaterial = "Neon",
        bulletimpactcolor = Color3.fromRGB(255,255,255),
        granade_tracer = false,
        granade_color = Color3.fromRGB(255,255,255),
        bulletimpactdelay = 1
    },

    esp = {
        toggle = false,
        maxdis = math.huge,
        box = false,
        box_color = Color3.fromRGB(255,255,255),
        box_filled = false,
        tracer = false,
        tracer_home = "Down",
        tracer_Color = Color3.fromRGB(255,255,255),
        healthbar = false,
        health_text = false,
        health_text_color = Color3.fromRGB(255,255,255),
        health_font = 2,
        armor_bar = false,
        armor_emoji = false,
        names = false,
        names_font = 2,
        names_color = Color3.fromRGB(255,255,255),
        names_size = 12
    },

    display_target_info = { ----this will be drawing 
    toggle = false,
    health =false,
    armor = false,
    checkingwinning = false,
    inventory = false
    }
}


local storange = { Instance = {}, models= {}} ---

----local functions----



function checkifalive(player) --checks if the player is alive 
    if player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health ~= 1 and player.Character:FindFirstChild("Head") then
        return true
    end
end

local function getSev(x)
    return game:GetService(x)
 end
local teleporting = false
getgenv().tweenteleport = function()
    
end

function WallCheck(origin, selfpart) ---rewrteied 
    if true then
        local ignore = {game.Workspace.CurrentCamera, game.Players.LocalPlayer.Character, origin.Parent}
        local parts = game.Workspace.CurrentCamera:GetPartsObscuringTarget({ origin.Position,selfpart.Position},ignore )
        for _,v in pairs(parts) do
            if v.Transparency >= 0.3 or 0.4 then
                Storage.Instance[#Storage.Instance + 1] = v
            end
            if v.Material == Enum.Material.Glass then
                Storage.Instance[#Storage.Instance + 1] = v
            end
        end
        return #parts == 0
    end
    return true
end

function Wallcheck2(Player)
    local raybeamkaboom = Ray.new(game.Players.LocalPlayer.Character.Head.Position, (Player.Position - game.Players.LocalPlayer.Character.Head.Position).Unit * 300)
    local Part, Position = workspace:FindPartOnRayWithIgnoreList(raybeamkaboom, {game.Players.LocalPlayer.Character}, false, true)
    if Part then
        local Humanoid = Part.Parent:FindFirstChildOfClass('Humanoid')
        if not Humanoid then
            Humanoid = Part.Parent.Parent:FindFirstChildOfClass('Humanoid')
        end
        if Humanoid and Player and Humanoid.Parent == Player.Parent then
            local Vector, OnScreen = workspace.CurrentCamera:WorldToScreenPoint(Player.Position)
            if OnScreen then 
                return true
            end
        end
    end
end

function usechance(x)
    x = math.floor(x)
    local newchance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100
    return newchance <= x / 100
end

function reloadgun()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"))
            end
    end
end

function cframefix()
    if checkifalive(game.Players.LocalPlayer) then
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
            v:Destroy()
        end
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        repeat
            task.wait()
        until game.Players.LocalPlayer.Character
        char.ChildAdded:Connect(function(child)
            if child:IsA("Script") then 
                if child:FindFirstChild("LocalScript") and checkifalive(game.Players.LocalPlayer) then
                    child.LocalScript:FireServer()
                end
            end
        end)
    end)
local glitch = false
local clicker = false
end
end



function destroybody()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("MeshPart") then
            v:Destroy()
        end
    end
end



-----LOCALS----
---faster way

local target = nil
local workspace = getSev("Workspace")
local players = getSev("Players")
local player = players.LocalPlayer
local camera = workspace.CurrentCamera
local runservice =  game:GetService("RunService")	
local mouse = game.Players.LocalPlayer:GetMouse()
local vec3 = Vector3.new
local vec2 = Vector2.new
local cf = CFrame.new
local Rnew = Ray.new
local draw = Drawing.new
local mh = math.huge
local cfa = CFrame.Angles
local mp = math.pi
local GuiInset = game:GetService("GuiService"):GetGuiInset().Y

local mathhh = 0
local Eclipse_Folder = Instance.new("Folder", workspace)
local inputservice = game:GetService("UserInputService")
local networtserviceping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
local networthmax = string.split(networtserviceping,'(')
local ping = tonumber(networthmax[1])
local fakehitbox_part = Instance.new("Part", Eclipse_Folder)
local targetlock_hightlight = Instance.new("Highlight",Eclipse_Folder)





Eclipse_Folder.Name = "Eclipse"
Eclipse_Folder.Parent = game.Workspace
fakehitbox_part.CanCollide = false
fakehitbox_part.Anchored = true
fakehitbox_part.Shape = Enum.PartType.Ball
fakehitbox_part.Size = vec3(10,10,10)



local hitboxes =  {
    "HumanoidRootPart",
    "UpperTorso",
    "LowerTorso",
    "Head",
    "RightHand",
    "LeftHand",
    "LeftFoot",
    "RightFoot"
}

local main_locations = {
    bank = cf(),
    hidden_spot = cf()
    ---lazy to make
}


local date_and_month_and_year = os.date("                            %A, %d, %B, %Y")
local Library = loadstring(game:HttpGet("https://loris1337.com/backup/eclipselib.lua"))()
local Window = Library:New({Name = "Eclipse"..date_and_month_and_year, Accent = Color3.fromRGB(255, 255, 255)})
local drawing_shapes_api = loadstring(game:HttpGet("https://loris1337.com/backup/eclipseapi.lua"))()


local Aimbot = Window:Page({Name = "Aiming"})
local Visuals = Window:Page({Name = "Visuals"})
local Player = Window:Page({Name = "Player"})
local Settings = Window:Page({Name = "Settings"})

--a

local Aimbot_Main = Aimbot:Section({Name = "Camlock", Side = "Left"})
local target_tab = Aimbot:Section({Name = "Mouse Spoofer", Side = "Right"})
local Cframe_tab = Player:Section({Name = "CFrame speed", Side = "Right"})
local stomps_tab = Player:Section({Name = "Stomps", Side = "Right"})
local c_desyncs = Player:Section({Name = "Character spoofers", Side = "Right"})

local bullet_tracers_tab = Visuals:Section({Name = "Bullet tracers (beta)", Side = "Right"})
local world = Visuals:Section({Name = "World", Side = "Right"})
local playervisals  = Visuals:Section({Name = "Player", Side = "Left"})
local character_miscs = Player:Section({Name = "Character Mics", Side = "Left"})
local character_visuals = Player:Section({Name = "Character Visuals", Side = "Left"})
local Settings_Main = Settings:Section({Name = "Main", Side = "Left"})

local HVHTAPTARGET, TARGETLOCKVISUALS, autopredandetc2 = Aimbot:MultiSection({Sections = {"TargetStrafe", "Visuals", " Misc "}, Side = "Right", Size = 400})
local silent_tab  = Aimbot:Section({Name = "silent aim", Side = "Left"})

local fovcirclesettings, predictionsettings1, aimingparts = Aimbot:MultiSection({Sections = {"Fov", "Prediction", "Aiming parts"}, Side = "Left", Size = 100})





silent_tab:Toggle({Name = "Enable", Default = false, callback=function(x)
    Eclipse_Settins.silent_aim.enable = x
end})


silent_tab:Toggle({Name = "wallcheck", Default = false, callback=function(x)
    Eclipse_Settins.silent_aim.wallcheck = x
end})


silent_tab:Toggle({Name = "grabbed check", Default = false, callback=function(x)
    Eclipse_Settins.silent_aim.grabbed_check = x
end})


silent_tab:Toggle({Name = "pickup check", Default = false, callback=function(x)
    Eclipse_Settins.silent_aim.pickup_check = x
end})


silent_tab:Toggle({Name = "friends check", Default = false, callback=function(x)
    Eclipse_Settins.silent_aim.friendcheck = x
end})

local fffovff = fovcirclesettings:Toggle({Name = "FOV", Default = false, callback=function(x)
    Eclipse_Settins.silent_aim.fov.visible = x
end})



fffovff:Colorpicker({Info = "fov Color", Alpha = 0.75, Default = Color3.fromRGB(0, 0, 255), Callback=function(x) Eclipse_Settins.silent_aim.fov.color = x end})

fovcirclesettings:Slider({Name = "Size", def = 100, min = 0, max = 500, callback=function(x)
    Eclipse_Settins.silent_aim.fov.size = x
end})

predictionsettings1:Textbox({Name = "0.121",callback=function(x)
    Eclipse_Settins.silent_aim.prediciton = x
end})


aimingparts:Dropdown({Name = "Aiming Part", options = {"HumanoidRootPart", "LowerTorso", "Head", "UpperTorso"}, def = "HumanoidRootPart", Callback=function(x)
    Eclipse_Settins.silent_aim.aiming_part = x
end})

silent_tab:Slider({Name = "hit chance", def = 100,min = 0,max = 100,Callback=function(x)
    Eclipse_Settins.silent_aim.chance = x
end})



character_miscs:Toggle({Name = "Anti jumpcooldown",Default = false,Callback=function(x)
    Eclipse_Settins.miscs.remove_jump_cooldown = x
end})


character_miscs:Toggle({Name = "Bhop",Default = false,Callback=function(x)
    Eclipse_Settins.miscs.bhop = x
    Eclipse_Settins.miscs.remove_jump_cooldown = x
    while Eclipse_Settins.miscs.bhop do
        task.wait(Eclipse_Settins.miscs.jumpbhopcooldown)
        if game.Players.LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end
end})


character_miscs:Slider({Name = "jump cooldown", def = 0, min = 0,max = 10,Callback=function(x)
    Eclipse_Settins.miscs.jumpbhopcooldown = x
end})

character_miscs:Toggle({Name = "Jump Strafe", Default = false, callback=function(x)
    Eclipse_Settins.miscs.jumpstarfe = x

    while Eclipse_Settins.miscs.jumpstarfe do
    task.wait()
    if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 and game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
        game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection / Eclipse_Settins.miscs.jumpstarfe_speed)
        end
    end
end})

character_miscs:Slider({Name = "jump strafe speed", def = 4,min = 1,max = 10,Callback=function(x)
    Eclipse_Settins.miscs.jumpstarfe_speed = x
end})

character_miscs:Toggle({Name = "anti fling",Default = false,Callback=function(x)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = x
end})

character_miscs:Toggle({Name = "Reach",Default = false,Callback=function(x)
    
    local value = x
	if value == true then
        game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
            local success, err = pcall(function()
                if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                    for i,v in pairs(game:GetService('Players'):GetChildren()) do
                        if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                    firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                else
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                end
                            end
                        end
                    end
                end
            end)
        end)
    elseif value == false then
        game:GetService('RunService'):UnbindFromRenderStep("Reach")
    end

end})

character_miscs:Toggle({Name = "anti bag",Default = false,Callback=function(x)
    local value =x
    
    while value do
    task.wait()
        if game.Players.LocalPlayer.Character:FindFirstChild("Christmas_Sock") then
            game.Players.LocalPlayer.Character:FindFirstChild("Christmas_Sock"):Destroy()
        end
    end

end})

character_miscs:Toggle({Name = "anti grabbed",Default = false,Callback=function(x)
    local value = x
    while value do
        task.wait()
    game.Players.LocalPlayer.Character["GRABBING_CONSTRAINT"]:Destroy()
    end
end})

character_miscs:Toggle({Name = "anti slow",Default = false,Callback=function(x)
    local jumping  =  game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('NoJumping') or game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('ReduceWalk') or game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('NoWalkSpeed')
    if jumping then jumping:Destroy() end
    if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then 
        game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false 
    end

end})


local forcefield = false
local colorgunchamdsdaf = Color3.fromRGB(0,0,255)
local t2mungd2caca = character_visuals:Toggle({Name = "ForceField",Default = false,Callback=function(x)
    forcefield = x
while wait() do
    if forcefield then
        Players = game.Players.LocalPlayer
    
        Players.Character.Head.Material  = "ForceField"
    Players.Character.UpperTorso.Material = "ForceField"
    Players.Character.LeftHand.Material = "ForceField"
    Players.Character.RightHand.Material = "ForceField"
    Players.Character.LeftLowerArm.Material = "ForceField"
    Players.Character.RightLowerArm.Material = "ForceField"
    Players.Character.RightUpperArm.Material = "ForceField"
    Players.Character.LeftUpperArm.Material = "ForceField"
    Players.Character.LeftFoot.Material = "ForceField"
    Players.Character.LeftLowerLeg.Material = "ForceField"
    Players.Character.RightLowerLeg.Material = "ForceField"
    Players.Character.LowerTorso.Material = "ForceField"
    Players.Character.RightUpperLeg.Material = "ForceField"
    Players.Character.LeftUpperLeg.Material = "ForceField"
    Players.Character.Head.Material = "ForceField"
    Players.Character.RightFoot.Material = "ForceField"
    Players.Character['Body Colors'].LeftArmColor3 = colorgunchamdsdaf
    Players.Character['Body Colors'].RightArmColor3 = colorgunchamdsdaf
    Players.Character['Body Colors'].LeftLegColor3 = colorgunchamdsdaf
    Players.Character['Body Colors'].RightLegColor3 = colorgunchamdsdaf
    Players.Character['Body Colors'].HeadColor3 = colorgunchamdsdaf
    Players.Character['Body Colors'].TorsoColor3 = colorgunchamdsdaf

        for i,v in next, game:GetService('Players').LocalPlayer.Character:GetChildren() do
            if v:IsA('Accessory') then
                v.Handle.Material = "ForceField"
                v.Handle.Color = colorgunchamdsdaf
         end
         end
    else
        game.Players.LocalPlayer.Character.LeftHand.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightHand.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightLowerArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightUpperArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftFoot.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightFoot.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.UpperTorso.Material = "Plastic"
        game.Players.LocalPlayer.Character.LowerTorso.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.Head.Material = "Plastic"

        for i,v in next, game:GetService('Players').LocalPlayer.Character:GetChildren() do
            if v:IsA('Accessory') then
                v.Handle.Material = "Plastic"
         end
         end

    end
end



end})

t2mungd2caca:Colorpicker({Info = "PLAYER Color", Alpha = 0.75, Default = Color3.fromRGB(0, 0, 255), Callback=function(x) colorgunchamdsdaf = x end})





local hookfun
hookfun = hookfunction(wait, function(x)
    if x == 1.5 and Eclipse_Settins.miscs.remove_jump_cooldown then
        return hookfun() end return hookfun(x)
end)


local lolldd22rsdsd=  playervisals:Toggle({Name = "Clone",Default = false,Callback=function(x)
    Eclipse_Settins.miscs.clone.toggle = x

if  Eclipse_Settins.miscs.clone.toggle then
    repeat
        game.Players.LocalPlayer.Character.Archivable = true
        local Clone = game.Players.LocalPlayer.Character:Clone()
        for _,clone in next, Clone:GetDescendants() do
            if clone.Name == "HumanoidRootPart" or clone:IsA("Humanoid") or clone:IsA("LocalScript") or clone:IsA("Script") or clone:IsA("Decal") then
                clone:Destroy()
            elseif clone:IsA("BasePart") or clone:IsA("Meshpart") or clone:IsA("Part")   then
                if clone.Transparency == 1 then
                    clone:Destroy()
                else
                    clone.CanCollide = false
                    clone.Anchored = true
                    clone.Material = Eclipse_Settins.miscs.clone.matreial
                    clone.Color = Eclipse_Settins.miscs.clone.color
                    clone.Transparency = Eclipse_Settins.miscs.clone.Transpancy
                    clone.Size = clone.Size + Vector3.new(0.03, 0.03, 0.03)
                    
                    
                end
            end
            pcall(function()
                clone.CanCollide = false
            end)
        end
        Clone.Parent = Eclipse_Folder
                                            wait(Eclipse_Settins.miscs.clone.timedestroy)
                Clone:Destroy()
        
until Eclipse_Settins.miscs.clone.toggle == false
end
end})

lolldd22rsdsd:Colorpicker({Info = "Clone Color", Alpha = 0.75, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.miscs.clone.color = x end})


playervisals:Slider({Name = "Delay", def = 0.1,min = 0,max = 1,decimals = .1,Callback=function(x)
    Eclipse_Settins.miscs.clone.timedestroy = x
end})

playervisals:Slider({Name = "Transpancy", def = 0,min = 0,max = 1,decimals = .1,Callback=function(x)
    Eclipse_Settins.miscs.clone.Transpancy = x
end})

playervisals:Dropdown({Name = "Clone Material", options = {"Neon", "Glass","ForceField" }, def = "Neon", Callback=function(x)
    Eclipse_Settins.miscs.clone.matreial = x
end})

local lolodlosld = world:Toggle({Name = "World Ambience",Default = false,Callback=function(x)
    Eclipse_Settins.miscs.world_ambince = x

    while Eclipse_Settins.miscs.world_ambince do
        task.wait()
        if Eclipse_Settins.miscs.world_ambince == true then
            game.Lighting.Ambient = Eclipse_Settins.miscs.world_ambince_color
            else
                game.Lighting.Ambient = Color3.fromRGB(0,0,0)
        end
    end

end})
lolodlosld:Colorpicker({Info = "World ambience Color", Alpha = 0.75, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.miscs.world_ambince_color= x end})



local nfsua8fnu8safby8uasbfyq7ew8b13 = world:Toggle({Name = "Mouse impact", Default=false, callback=function(x)
    Eclipse_Settins.miscs.bulletimpact = x

    function createbuleletimpact(desirelocation)
        local part = Instance.new("Part", workspace)
        part.Size = Vector3.new(1,1,1)
        part.CanCollide= false
        part.Anchored = true
        part.CanTouch =false
        part.CanQuery =false
        part.Position = desirelocation
        part.Material = "Neon"
        wait(Eclipse_Settins.miscs.bulletimpactdelay)
        part:Destroy()
    end
    function getammo()
        if game.Players.LocalPlayer.Character then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:FindFirstChild 'Ammo' then
                    return v
                end
            end
        end
        return nil
    end

    spawn(function()
        while Eclipse_Settins.miscs.bulletimpact do
            task.wait()
            local gun = getammo()
            if gun then
                gunvalue = gun.Ammo.Value
                gun.Ammo:GetPropertyChangedSignal("Value"):Connect(function() 
                    if Eclipse_Settins.miscs.bulletimpact and gun.Ammo.Value < gunvalue then
                        gunvalue = gun.Ammo.Value
                        createbuleletimpact(game.Players.LocalPlayer:GetMouse().Hit.Position)
                    end
                end)
            end
        end
    end)

end})


world:Toggle({Name="delay", Default =false,Callback=function(x)
    Eclipse_Settins.miscs.bulletimpactdelay = x
end})




world:Dropdown({Name = "Mouse impact material", options = {"Neon","ForceField", "Plastic", "Glass" }, def = "ForceField", Callback=function(x)
    Eclipse_Settins.miscs.anti_stomp.anti_stommp_method = x




end})

nfsua8fnu8safby8uasbfyq7ew8b13:Colorpicker({Info = "Mouse impact color", Alpha = 0, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.miscs.bulletimpactcolor = x end})

local gfafnsaujidfnai1sdada = world:Toggle({Name = "Granade trial", Default=false, callback=function(x)
    Eclipse_Settins.miscs.granade_tracer = x

    function createesp(cframe, parent)
        local newpart = Instance.new("Part", parent)
        newpart.Material=  "ForceField"
        newpart.Anchored = true
        newpart.Color = Eclipse_Settins.miscs.granade_color
        newpart.CanCollide =false
        newpart.Size = Vector3.new(0.25,0.25,0.25)
        newpart.CFrame = cframe
    end
    
while Eclipse_Settins.miscs.granade_tracer do
    task.wait()
    for _,v in pairs(game.Workspace.Ignored:GetChildren()) do
        if v.Name == "Handle" then
            createesp(v.CFrame, v)
        end
    end
end

end})

gfafnsaujidfnai1sdada:Colorpicker({Info = "grenade trial Color", Alpha = 0, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.miscs.granade_color = x end})


c_desyncs:Toggle({Name="V-desync", Default =false,Callback=function(x)
    Eclipse_Settins.anti_aim.vecspoofer.toggle = x
end})

c_desyncs:Slider({Name = "X_Axis", def = 0,min = -100,max = 100,Callback=function(x)
    Eclipse_Settins.anti_aim.vecspoofer.X_Axis = x
end})

c_desyncs:Slider({Name = "Y_Axis", def = 0,min = -100,max = 100,Callback=function(x)
    Eclipse_Settins.anti_aim.vecspoofer.Y_Axis = x
end})

c_desyncs:Slider({Name = "Z_Axis", def = 0,min = -100,max = 100,Callback=function(x)
    Eclipse_Settins.anti_aim.vecspoofer.Z_Axis = x
end})

c_desyncs:Slider({Name = "Multi", def = 2,min = 1,max = 10,Callback=function(x)
    Eclipse_Settins.anti_aim.vecspoofer.multiple = x
end})

c_desyncs:Toggle({Name="Desync(beta)", Default =false,Callback=function(x)
    Eclipse_Settins.anti_aim.vecspoofer.desync = x
end})

local bullet_Tracer_tab_toggle = bullet_tracers_tab:Toggle({Name="Beam color changer", Default =false,Callback=function(x)
    Eclipse_Settins.miscs.bullet_tracer.toggle = x
    
        while Eclipse_Settins.miscs.bullet_tracer.toggle do
            if checkifalive(game.Players.LocalPlayer)  then
        task.wait()
        for _,v in pairs(game.Workspace.Ignored:GetChildren()) do
            if v.Name == "BULLET_RAYS" then
               for _,f in pairs(v:GetChildren()) do
                   if f.Name == "GunBeam" then
                         f.Color = ColorSequence.new{
         ColorSequenceKeypoint.new(0, Eclipse_Settins.miscs.bullet_tracer.color),
         ColorSequenceKeypoint.new(1, Eclipse_Settins.miscs.bullet_tracer.color),
         ColorSequenceKeypoint.new(1, Eclipse_Settins.miscs.bullet_tracer.color)
     }
end
end
end
end
end
end
end})
bullet_Tracer_tab_toggle:Colorpicker({Info = "Beam Color", Alpha = 0.75, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.miscs.bullet_tracer.color = x end})


stomps_tab:Toggle({Name="Anti stomp", Default =false,Callback=function(x)
    Eclipse_Settins.miscs.anti_stomp.enable = x
    while Eclipse_Settins.miscs.anti_stomp.enable do
        task.wait()
        if checkifalive(game.Players.LocalPlayer) then
            if Eclipse_Settins.miscs.anti_stomp.enable == true then
        if game.Players.LocalPlayer.Character.BodyEffects["K.O"].Value == true  then
        wait(Eclipse_Settins.miscs.anti_stomp.delata)
            if Eclipse_Settins.miscs.anti_stomp.anti_stommp_method == "Destroy" then
                destroybody()
            elseif Eclipse_Settins.miscs.anti_stomp.anti_stommp_method == "Humanoid" then
                game.Players.LocalPlayer.Character.Humanoid:Destroy()
            end
        end
        end
            end
end
end})

stomps_tab:Slider({Name = "Delay", def = 0,min = 0,max = 10,Callback=function(x)
    Eclipse_Settins.miscs.anti_stomp.delata = x
end})

stomps_tab:Dropdown({Name = "Anti stomp method", options = {"Destroy","Humanoid" }, def = "Destroy", Callback=function(x)
    Eclipse_Settins.miscs.anti_stomp.anti_stommp_method = x
end})

stomps_tab:Toggle({Name="Auto stomp", Default =false,Callback=function(x)
    Eclipse_Settins.miscs.auto_stomp.enable = x
end})

Cframe_tab:Toggle({Name="Toggle", Default =false,Callback=function(x)
    Eclipse_Settins.cframe_speed.enable = x
end})

Cframe_tab:Keybind({Name = "Cframe keybind", Default = Enum.KeyCode.Z, KeybindName = "Readjustment", Mode = "Hold", Pointer = "AimbotExtra_Readjustment",Callback=function(x)
    Eclipse_Settins.cframe_speed.keybind = x
end})

Cframe_tab:Slider({Name = "Speed", def = 1,min = 1,max = 5,Callback=function(x)
    Eclipse_Settins.cframe_speed.speed = x
end})

local lol2dsada = HVHTAPTARGET:Toggle({Name="Target Strafe", Default =false,Callback=function(x)
    Eclipse_Settins.target_aim.target_strafe.toggle = x
end})

lol2dsada:Colorpicker({Info = "Target Strafe color", Alpha = 0.75, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.target_aim.target_strafe.color = x end})

HVHTAPTARGET:Slider({Name = "Height", def = 0,min = 0,max = 10,Callback=function(x)
    Eclipse_Settins.target_aim.target_strafe.height = x
end})

HVHTAPTARGET:Slider({Name = "Speed", def = 1,min = 1,max = 10,Callback=function(x)
    Eclipse_Settins.target_aim.target_strafe.speed = x
end})

HVHTAPTARGET:Slider({Name = "Distance", def = 4,min = 1,max = 25,Callback=function(x)
    Eclipse_Settins.target_aim.target_strafe.distance = x
end})

local tracertarge = TARGETLOCKVISUALS:Toggle({Name="Tracer", Default =false,Callback=function(x)
    Eclipse_Settins.target_aim.tracer = x
end})


tracertarge:Colorpicker({Info = "Tracer color", Alpha = 0.75, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.target_aim.tracer_color = x end})

local hightlicthrada = TARGETLOCKVISUALS:Toggle({Name="Highlight", Default =false,Callback=function(x)
    Eclipse_Settins.target_aim.Highlight = x
end})


hightlicthrada:Colorpicker({Info = "Highlight's color", Alpha = 0.75, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.target_aim.Highlight_COlor = x end})


local partfigcar = TARGETLOCKVISUALS:Toggle({Name="Part", Default =false,Callback=function(x)
    Eclipse_Settins.target_aim.fakehitbox = x
end})


partfigcar:Colorpicker({Info = "part's color", Alpha = 0.75, Default = Color3.fromRGB(255, 255, 255), Callback=function(x) Eclipse_Settins.target_aim.fakehitbox_color = x end})

TARGETLOCKVISUALS:Dropdown({Name = "part material", options = {"Neon", "Glass","ForceField" }, def = "ForceField", Callback=function(x)
    Eclipse_Settins.target_aim.fakehitbox_material = x
end})



target_tab:Toggle({Name="Toggle",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.enable = x
end})

target_tab:Keybind({Name = "Keybind", callback = function(x) Eclipse_Settins.target_aim.keybind = x end})

target_tab:Toggle({Name="Wall Check",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.wallcheck = x
end})

target_tab:Toggle({Name="Grabbed Check",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.grabbed_check = x
end})

target_tab:Toggle({Name="Pickup Check",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.pickup_check = x
end})


target_tab:Toggle({Name="Look At",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.lookat = x
end})

target_tab:Toggle({Name="Unlock on knocked",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.unlocked_on_knocked = x
end})

target_tab:Toggle({Name="reload on knocked",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.reload_on_knocked = x
end})

target_tab:Toggle({Name="Notify",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.notify = x
end})

target_tab:Toggle({Name="Resolver",Default=false,Callback=function(x)
    Eclipse_Settins.target_aim.resolver = x
end})

target_tab:Dropdown({Name = "Resolving type", options = {"Reverse", "UnderGround", "HVH (nopred)"}, def = "UnderGround", Callback=function(x)
    Eclipse_Settins.target_aim.resolver_type = x
end})

target_tab:Textbox({Name = "Prediction", Callback=function(x)
    Eclipse_Settins.target_aim.prediciton = x
end})

target_tab:Dropdown({Name = "Aiming Part", options = {"HumanoidRootPart", "LowerTorso", "Head", "UpperTorso"}, def = "HumanoidRootPart", Callback=function(x)
    Eclipse_Settins.target_aim.aiming_part = x
end})

target_tab:Dropdown({Name = "method", options = {"Closet to mouse", "Closest to distance"}, def = "Closet to mouse", Callback=function(x)
    Eclipse_Settins.target_aim.methodtoget = x
end})








Aimbot_Main:Toggle({Name = "Toggle",Default  = false,Callback = function(x)
    Eclipse_Settins.Camlock.enable = x
end})

Aimbot_Main:Keybind({Name = "Keybind",Default=false,callback=function(x)
    Eclipse_Settins.Camlock.keybind = x
end})

Aimbot_Main:Toggle({Name = "Smoothness",Default  = false,Callback = function(x)
    Eclipse_Settins.Camlock.smoothness = x
end})

Aimbot_Main:Toggle({Name = "Wall Check",Default  = false,Callback = function(x)
    Eclipse_Settins.Camlock.wallcheck = x
end})

Aimbot_Main:Toggle({Name = "Grabbed Check",Default  = false,Callback = function(x)
    Eclipse_Settins.Camlock.grabbed_check = x
end})

Aimbot_Main:Toggle({Name = "Pick up Check",Default  = false,Callback = function(x)
    Eclipse_Settins.Camlock.pickup_check = x
end})

Aimbot_Main:Toggle({Name = "Resolver",Default  = false,Callback = function(x)
    Eclipse_Settins.Camlock.resolver = x
end})

Aimbot_Main:Dropdown({Name = "Resolving type", options = {"Reverse", "UnderGround"}, def = "UnderGround", Callback=function(x)
    Eclipse_Settins.Camlock.resolver_type = x
end})

Aimbot_Main:Dropdown({Name = "Aiming Part", options = {"HumanoidRootPart", "LowerTorso", "Head", "UpperTorso"}, def = "HumanoidRootPart", Callback=function(x)
    Eclipse_Settins.Camlock.aiming_part = x
end})

Aimbot_Main:Textbox({Name = "0.121", Callback=function(x)
    Eclipse_Settins.Camlock.prediciton = x
end})

Aimbot_Main:Textbox({Name = "0.0065", Callback=function(x)
    Eclipse_Settins.Camlock.smoothness_value = x 
end})


Settings_Main:Button({Name = "Unload", Callback = function() Window:Unload() end})



Window:Initialize()
 --[[
 
 ░█████╗░░█████╗░███╗░░░███╗██╗░░░░░░█████╗░░█████╗░██╗░░██╗
 ██╔══██╗██╔══██╗████╗░████║██║░░░░░██╔══██╗██╔══██╗██║░██╔╝
 ██║░░╚═╝███████║██╔████╔██║██║░░░░░██║░░██║██║░░╚═╝█████═╝░
 ██║░░██╗██╔══██║██║╚██╔╝██║██║░░░░░██║░░██║██║░░██╗██╔═██╗░
 ╚█████╔╝██║░░██║██║░╚═╝░██║███████╗╚█████╔╝╚█████╔╝██║░╚██╗
 ░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝░╚════╝░░╚════╝░╚═╝░░╚═╝
 
 ]]

 local camlock_enable = false
 
 function GetNearestTargetToPlayerCAMLOCK()
     local target
     local maxdis = math.huge 


     for i,v in pairs(players:GetPlayers()) do
        local knocked = nil
        local isntgrabbed = nil
        local wallchecker = nil

        if Eclipse_Settins.Camlock.wallcheck == true then
            wallchecker = Wallcheck2(v.Character.HumanoidRootPart)
        else
            wallchecker = true
        end

    if Eclipse_Settins.Camlock.grabbed_check == true then
        knocked = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
    else
        knocked = true
    end



    if Eclipse_Settins.Camlock.pickup_check == true then
        isntgrabbed = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
    else
        isntgrabbed = true
    end



 if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and wallchecker and knocked and isntgrabbed and v.Character.Humanoid.Health ~= 0  and v.Character:FindFirstChild("HumanoidRootPart") then
             local position = camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
             local magni = (vec2(position.X, position.Y) - vec2(mouse.X, mouse.Y)).magnitude
             if magni < maxdis then
                 target = v
                 maxdis = magni
             end
         end
     end
     return target
 end


inputservice.InputBegan:Connect(function(z)
     if z.KeyCode == Eclipse_Settins.Camlock.keybind then	
         if Eclipse_Settins.Camlock.enable == true  then
             camlock_enable = not camlock_enable	
             if camlock_enable then	
                 target = GetNearestTargetToPlayerCAMLOCK()


             else	
                 if target ~= nil then	
                    target = nil	
	
                 end	
             end	
         end
         end
 end)	
 
 runservice.RenderStepped:Connect(function()
     


     if Eclipse_Settins.Camlock.enable == true and camlock_enable then
         if target ~= nil then
            if Eclipse_Settins.Camlock.resolver == true and Eclipse_Settins.Camlock.resolver_type == "UnderGround" then
                target.Character.Humanoid.HipHeight = 0
                if Eclipse_Settins.Camlock.enable == true and Eclipse_Settins.Camlock.smoothness == false then
                    local oldpos = vec3(target.Character[Eclipse_Settins.Camlock.aiming_part].Velocity.X ,0.1, target.Character[Eclipse_Settins.Camlock.aiming_part].Velocity.Z)
                    camera.CFrame = cf(camera.CFrame.p, target.Character[Eclipse_Settins.Camlock.aiming_part].Position + oldpos * Eclipse_Settins.Camlock.prediciton)
                    elseif  Eclipse_Settins.Camlock.enable == true and Eclipse_Settins.Camlock.smoothness == true then
                        local oldpos = vec3(target.Character[Eclipse_Settins.Camlock.aiming_part].Velocity.X,0,target.Character[Eclipse_Settins.Camlock.aiming_part].Velocity.Z)
                    local Main = cf(camera.CFrame.p, target.Character[Eclipse_Settins.Camlock.aiming_part].Position + oldpos * Eclipse_Settins.Camlock.prediciton)
                        
                    camera.CFrame = camera.CFrame:Lerp(Main, Eclipse_Settins.Camlock.smoothness_value, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                end
            elseif Eclipse_Settins.Camlock.resolver == true and Eclipse_Settins.Camlock.resolver_type == "Reverse" then
            if Eclipse_Settins.Camlock.enable == true and Eclipse_Settins.Camlock.smoothness == false then
                camera.CFrame = cf(camera.CFrame.p, target.Character[Eclipse_Settins.Camlock.aiming_part].Position - target.Character[Eclipse_Settins.Camlock.aiming_part].Velocity * Eclipse_Settins.Camlock.prediciton)
                elseif  Eclipse_Settins.Camlock.enable == true and Eclipse_Settins.Camlock.smoothness == true then
                local Main = cf(camera.CFrame.p, target.Character[Eclipse_Settins.Camlock.aiming_part].Position - target.Character[Eclipse_Settins.Camlock.aiming_part].Velocity * Eclipse_Settins.Camlock.prediciton)

                camera.CFrame = camera.CFrame:Lerp(Main, Eclipse_Settins.Camlock.smoothness_value, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                end
            else
                if Eclipse_Settins.Camlock.enable == true and Eclipse_Settins.Camlock.smoothness == false then
                    camera.CFrame = cf(camera.CFrame.p, target.Character[Eclipse_Settins.Camlock.aiming_part].Position + target.Character[Eclipse_Settins.Camlock.aiming_part].Velocity * Eclipse_Settins.Camlock.prediciton)
                    elseif  Eclipse_Settins.Camlock.enable == true and Eclipse_Settins.Camlock.smoothness == true then
                    local Main = cf(camera.CFrame.p, target.Character[Eclipse_Settins.Camlock.aiming_part].Position + target.Character[Eclipse_Settins.Camlock.aiming_part].Velocity * Eclipse_Settins.Camlock.prediciton)
    
                    camera.CFrame = camera.CFrame:Lerp(Main, Eclipse_Settins.Camlock.smoothness_value, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                    end
            end
        end
     end

     
if  Eclipse_Settins.Camlock.autopred then
    if ping < 130 then
        Eclipse_Settins.Camlock.prediciton = 0.1657
    elseif ping < 90 then
        Eclipse_Settins.Camlock.prediciton = 0.165
    elseif ping < 70 then
        Eclipse_Settins.Camlock.prediciton = 0.165
    elseif ping < 60 then
        Eclipse_Settins.Camlock.prediciton = 0.143
    elseif ping < 40 then
        Eclipse_Settins.Camlock.prediciton = 0.108
    elseif ping < 20 then
        Eclipse_Settins.Camlock.prediciton = 0.121
    end
end
 end)



 --------

 ---[[TARGET AIM]]
local toggled_target_aim = Eclipse_Settins.target_aim.toggled 

local tracer_line_targetlock = Drawing.new("Line")
--------------------------------------------------------
local circle_strafe = drawing_shapes_api:New3DCircle()

circle_strafe.Transparency = 0.5
circle_strafe.Thickness = 2

 
function getclosesttargeetaim()
    -----------GGS NOT COPIED ABD PASTE FROM THE OTHER FUNCTION NOPE
    local target
    local maxdis = math.huge 

    for i,v in pairs(players:GetPlayers()) do
       local knocked2 = false
       local isntgrabbed2 = false
       local wallchecker2 = false

       if Eclipse_Settins.target_aim.wallcheck == true then
           wallchecker2 = Wallcheck2(v.Character.HumanoidRootPart)
       else
           wallchecker2 = true
       end

   if Eclipse_Settins.target_aim.grabbed_check == true then
       knocked2 = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
   else
       knocked2 = true
   end



   if Eclipse_Settins.target_aim.pickup_check == true then
       isntgrabbed2 = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
   else
       isntgrabbed2 = true
   end



if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and wallchecker2 and knocked2 and isntgrabbed2 and v.Character.Humanoid.Health ~= 0  and v.Character:FindFirstChild("HumanoidRootPart") then
            local position = camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magni = (vec2(position.X, position.Y) - vec2(mouse.X, mouse.Y)).magnitude
            if magni < maxdis then
                target = v
                maxdis = magni
            end
        end
    end
    return target
end

function getclosesttargeetaimdistance()
    -----------GGS NOT COPIED ABD PASTE FROM THE OTHER FUNCTION NOPE
    local target
    local maxdis = math.huge 

    for i,v in pairs(players:GetPlayers()) do
       local knocked2 = false
       local isntgrabbed2 = false
       local wallchecker2 = false

       if Eclipse_Settins.target_aim.wallcheck == true then
           wallchecker2 =   Wallcheck(v.Character.HumanoidRootPart, game.Players.LocalPlayer.Character.HumanoidRootPart)
       else
           wallchecker2 = true
       end

   if Eclipse_Settins.target_aim.grabbed_check == true then
       knocked2 = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
   else
       knocked2 = true
   end



   if Eclipse_Settins.target_aim.pickup_check == true then
       isntgrabbed2 = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
   else
       isntgrabbed2 = true
   end  
   


if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and wallchecker2 and knocked2 and isntgrabbed2 and v.Character.Humanoid.Health ~= 0  and v.Character:FindFirstChild("HumanoidRootPart") then
    local DistanceFromPlayer = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if maxdis > DistanceFromPlayer then
            target = v
            maxdis = DistanceFromPlayer
        end
    end
end
    return target
end



inputservice.InputBegan:Connect(function(x)
    if x.KeyCode == Eclipse_Settins.target_aim.keybind and Eclipse_Settins.Camlock.enable == false then
        if Eclipse_Settins.target_aim.enable == true then
            toggled_target_aim = not toggled_target_aim
            if Eclipse_Settins.target_aim.methodtoget == 'Closet to mouse' then
            target = getclosesttargeetaim()
            elseif Eclipse_Settins.target_aim.methodtoget == "Closest to distance" then
                target = getclosesttargeetaimdistance()
            end

            runservice.Stepped:Connect(function()
                if Eclipse_Settins.target_aim.unlocked_on_knocked then
                    if target.Character.Humanoid.Health < 1 then
                        toggled_target_aim = false
                    end
                
                    if Eclipse_Settins.target_aim.reload_on_knocked then
                        if target.Character.Humanoid.Health < 1   then
                            toggled_target_aim = false
                        end
                    end


            end
            end)

            while Eclipse_Settins.target_aim.enable and toggled_target_aim do
                task.wait()
                if  Eclipse_Settins.target_aim.enable  and Eclipse_Settins.target_aim.lookat then
                    if toggled_target_aim then
                    cframefix()
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position, vec3(target.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position.Y, target.Character.HumanoidRootPart.CFrame.Z))    
                    game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false   
                    else
                        game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true ---ty roblox forums <3
                end
                end
            end

            

            if Eclipse_Settins.target_aim.notify and toggled_target_aim then
                notify(target.Name, 2)
            elseif Eclipse_Settins.target_aim.notify and toggled_target_aim == false then
                notify("unlocked", 2)
            end

        else
            
            if target ~= nil then
                target = nil
            end
        end
    end
end)





runservice.Stepped:Connect(function(a, deltaTime)
    if target ~= nil and Eclipse_Settins.target_aim.target_strafe.toggle and Eclipse_Settins.target_aim.enable and toggled_target_aim and game.Players.LocalPlayer.Character:WaitForChild("Humanoid") then
    
        mathhh = (mathhh + deltaTime / Eclipse_Settins.target_aim.target_strafe.speed) %1
        circle_strafe.Visible = true
        circle_strafe.Position = target.Character.HumanoidRootPart.Position
        circle_strafe.Radius = Eclipse_Settins.target_aim.target_strafe.distance
        circle_strafe.Color = Eclipse_Settins.target_aim.target_strafe.color
        cframefix()
        
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cfa(0, 2 * mp * mathhh, 0) * cf(0, 0, Eclipse_Settins.target_aim.target_strafe.distance) + target.Character.PrimaryPart.Position + vec3(0,Eclipse_Settins.target_aim.target_strafe.height,0)
   else
        circle_strafe.Visible = false
   end
end)

runservice.Stepped:Connect(function()
    if toggled_target_aim and Eclipse_Settins.target_aim.enable then
    local VIEWPOINT = camera:WorldToViewportPoint(target.Character[Eclipse_Settins.target_aim.aiming_part].Position+(target.Character[Eclipse_Settins.target_aim.aiming_part].Velocity*Eclipse_Settins.target_aim.prediciton))
        
       if Eclipse_Settins.target_aim.tracer then
       tracer_line_targetlock.From = vec2(mouse.X, mouse.Y + GuiInset)
       tracer_line_targetlock.To = vec2(VIEWPOINT.X,VIEWPOINT.Y)
       tracer_line_targetlock.Visible = toggled_target_aim

       tracer_line_targetlock.Thickness = 1.5
       tracer_line_targetlock.Color = Eclipse_Settins.target_aim.tracer_color

       
       end

       if Eclipse_Settins.target_aim.fakehitbox then
           lodlasdolafa = target.Character.PrimaryPart.Position
           
           fakehitbox_part.CFrame = cf(lodlasdolafa.X,lodlasdolafa.Y,lodlasdolafa.Z)
           fakehitbox_part.Color = Eclipse_Settins.target_aim.fakehitbox_color
           fakehitbox_part.Material = Eclipse_Settins.target_aim.fakehitbox_material
       end

       if Eclipse_Settins.target_aim.Highlight then
           targetlock_hightlight.Parent = target.Character
           targetlock_hightlight.FillColor = Eclipse_Settins.target_aim.Highlight_COlor
       end

    else
        targetlock_hightlight.Parent = Eclipse_Folder
        fakehitbox_part.CFrame = cf(99999,99999,99999)
        tracer_line_targetlock.Visible = false
    end
end)



---the function---

local target_metable = getrawmetatable(game)
local target_aim_old = target_metable.__namecall
setreadonly(target_metable, false)
target_metable.__namecall = newcclosure(function(...)
    local args = {...}
    if Eclipse_Settins.target_aim.enable and toggled_target_aim and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        if Eclipse_Settins.target_aim.resolver == true and Eclipse_Settins.target_aim.resolver_type == "UnderGround" then
            target.Character.Humanoid.HipHeight = 0
            local aiming4141r1resloerggs = vec3(target.Character[Eclipse_Settins.target_aim.aiming_part].Velocity.X,0,target.Character[Eclipse_Settins.target_aim.aiming_part].Velocity.Z)
            args[3] = target.Character[Eclipse_Settins.target_aim.aiming_part].Position + aiming4141r1resloerggs * Eclipse_Settins.target_aim.prediciton
        elseif Eclipse_Settins.target_aim.resolver == true and Eclipse_Settins.target_aim.resolver_type == "Revesed" then
            args[3] = target.Character[Eclipse_Settins.target_aim.aiming_part].Position - (target.Character[Eclipse_Settins.target_aim.aiming_part].Velocity * Eclipse_Settins.target_aim.prediciton)
        elseif Eclipse_Settins.target_aim.resolver == true and Eclipse_Settins.target_aim.resolver_type == "HVH (nopred)" then
            args[3] = target.Character[Eclipse_Settins.target_aim.aiming_part].Position
        else
             args[3] = target.Character[Eclipse_Settins.target_aim.aiming_part].Position + (target.Character[Eclipse_Settins.target_aim.aiming_part].Velocity * Eclipse_Settins.target_aim.prediciton)
        end
            return target_aim_old(unpack(args))
    end
    return target_aim_old(...)
end)

--silebt aim

local silient_aim_circle = Drawing.new("Circle")
silient_aim_circle.Thickness = 2
silient_aim_circle.Filled = Eclipse_Settins.silent_aim.fov.filled
silient_aim_circle.NumSides = 10










function FindClosestUser()
    local closestPlayer
    local shortestDistance = Eclipse_Settins.silent_aim.fov.size
    local chances = usechance(Eclipse_Settins.silent_aim.chance)

    local checkcer = false

    

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos, IsVisibleOnViewPort = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)

            if IsVisibleOnViewPort then
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y)).magnitude
                    if  magnitude < shortestDistance and chances == true then
                        if (not Eclipse_Settins.silent_aim.friendcheck or not v:IsFriendsWith(game.Players.LocalPlayer.UserId)) and (not Eclipse_Settins.silent_aim.grabbed_check or v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true) and (not Eclipse_Settins.silent_aim.pickup_check or v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil) and (not Eclipse_Settins.silent_aim.wallcheck or WallCheck(v.Character.HumanoidRootPart, game.Players.LocalPlayer.Character.HumanoidRootPart)) then
                            closestPlayer = v
                            shortestDistance = magnitude
                        end
                    end
                end
            end
        end

    return closestPlayer, shortestDistance
end






local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local old = gmt.__namecall
gmt.__namecall =newcclosure(function(...)
        local args = {...}
        local method = getnamecallmethod()
        if Eclipse_Settins.silent_aim.enable  and method == "FireServer" and args[2] == "UpdateMousePos" and target ~= nil then
            args[3] = target.Character.HumanoidRootPart.Position + (target.Character.HumanoidRootPart.Velocity * Eclipse_Settins.silent_aim.prediciton)
            return old(unpack(args))
        end
        return old(...)
    end)

    runservice.Stepped:Connect(function()
        if Eclipse_Settins.silent_aim.enable then
            silient_aim_circle.Visible = Eclipse_Settins.silent_aim.fov.visible
            silient_aim_circle.Radius = Eclipse_Settins.silent_aim.fov.size
            silient_aim_circle.Position = vec2(mouse.X, mouse.Y + GuiInset)
            silient_aim_circle.Color = Eclipse_Settins.silent_aim.fov.color
            target = FindClosestUser()
        else
            silient_aim_circle.Visible = false
        end
    end)


--[[
    
███╗░░░███╗██╗░██████╗░█████╗░
████╗░████║██║██╔════╝██╔══██╗
██╔████╔██║██║╚█████╗░██║░░╚═╝
██║╚██╔╝██║██║░╚═══██╗██║░░██╗
██║░╚═╝░██║██║██████╔╝╚█████╔╝
╚═╝░░░░░╚═╝╚═╝╚═════╝░░╚════╝░

]]
---copied and pasted from my other script(THAT I MADE )
inputservice.InputBegan:Connect(function(f)
    if f.KeyCode == Eclipse_Settins.cframe_speed.keybind then
        if Eclipse_Settins.cframe_speed.toggled == false then
        Eclipse_Settins.cframe_speed.toggled = true
        else
            Eclipse_Settins.cframe_speed.toggled = false
        end
    end
end)

runservice.RenderStepped:Connect(function()
    
    if Eclipse_Settins.cframe_speed.enable  then
        if Eclipse_Settins.cframe_speed.toggled and checkifalive(game.Players.LocalPlayer) then
         game:GetService("RunService").Stepped:wait()
         cframefix()
         game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Eclipse_Settins.cframe_speed.speed 
        end
    end

end)


runservice.Heartbeat:Connect(function()
    if Eclipse_Settins.anti_aim.vecspoofer.toggle and Eclipse_Settins.anti_aim.vecspoofer.desync == false and checkifalive(game.Players.LocalPlayer) then
       local oldpos= game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(Eclipse_Settins.anti_aim.vecspoofer.X_Axis, Eclipse_Settins.anti_aim.vecspoofer.Y_Axis, Eclipse_Settins.anti_aim.vecspoofer.Z_Axis) * Eclipse_Settins.anti_aim.vecspoofer.multiple
            runservice.RenderStepped:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = oldpos
    elseif Eclipse_Settins.anti_aim.vecspoofer.desync == true and Eclipse_Settins.anti_aim.vecspoofer.toggle == false and checkifalive(game.Players.LocalPlayer) then
        local olspo =  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity cframefix() 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *  CFrame.Angles(0,360, 0)
     game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(olspo.X + math.random(1000,10000) ,olspo.Y + math.random(1000,1000),olspo.Z + math.random(1000,10000))
     runservice.RenderStepped:wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =  olspo
        runservice.RenderStepped:wait()
    end
end)


local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()

    if tostring(string.lower(NameCallMethod)) == "kick" then
        return nil
    end
    
    return OldNameCall(Self, ...)
end)