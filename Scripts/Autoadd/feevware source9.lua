local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/asdasdasd2sd23sda/bll/main/black", true))()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/asdasdasd2sd23sda/pastor/main/silent", true))()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/venus/source.lua", true))()

local day = os.date("%d")
local month = os.date("%B")
local dd4 = " "
local djdsd = "th"
local year = os.date("%Y")
local CoreGui = game:GetService("StarterGui")


local notif = {}

function notif:Notification(title,desc,font,font2,visibletime)
pcall(function()
local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))

local instances = {
	["UICorner_1"] = Instance.new("UICorner"),
	["LocalScript_1"] = Instance.new("LocalScript"),
	["Frame_2"] = Instance.new("Frame"),
	["UICorner_2"] = Instance.new("UICorner"),
	["TextLabel_1"] = Instance.new("TextLabel"),
	["Frame_1"] = Instance.new("Frame"),
	["TextLabel_2"] = Instance.new("TextLabel"),
	["LocalScript_2"] = Instance.new("LocalScript"),
	["TextButton_1"] = Instance.new("TextButton"),
}


screenGui.Name = title
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

instances.Frame_1.Parent = screenGui
instances.Frame_1.Name = 'Main'


instances.Frame_1.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
instances.Frame_1.BorderSizePixel = 0
instances.Frame_1.Position = UDim2.new(1, 0,0.509, 0)
instances.Frame_1.Size = UDim2.new(0, 331, 0, 61)

instances.Frame_2.Parent = instances.Frame_1
instances.Frame_2.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
instances.Frame_2.Size = UDim2.new(0, 11, 0, 61)
instances.Frame_2.Name = 'Bar'

instances.UICorner_1.Parent = instances.Frame_2
instances.UICorner_1.CornerRadius = UDim.new(0, 10)

instances.UICorner_2.Parent = instances.Frame_1
instances.UICorner_2.CornerRadius = UDim.new(0, 7)

instances.TextLabel_1.Parent = instances.Frame_1
instances.TextLabel_1.Font = Enum.Font[font]
instances.TextLabel_1.Text = title
instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.TextSize = 14
instances.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.BackgroundTransparency = 1
instances.TextLabel_1.Position = UDim2.new(0.08849557489156723, 0, 0, 0)
instances.TextLabel_1.Size = UDim2.new(0, 201, 0, 28)
instances.TextLabel_1.Name = 'Title'

instances.TextLabel_2.Parent = instances.Frame_1
instances.TextLabel_2.Font = Enum.Font[font2]
instances.TextLabel_2.Text = desc
instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.TextSize = 13
instances.TextLabel_2.TextTruncate = Enum.TextTruncate.AtEnd
instances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.BackgroundTransparency = 1
instances.TextLabel_2.Position = UDim2.new(0.08645028620958328, 0, 0.6040353178977966, 0)
instances.TextLabel_2.Size = UDim2.new(0, 191, 0, 9)
instances.TextLabel_2.Name = 'Description'

instances.TextButton_1.Parent = instances.Frame_1
instances.TextButton_1.Font = Enum.Font.GothamSemibold
instances.TextButton_1.Text = 'X'
instances.TextButton_1.TextColor3 = Color3.new(1, 1, 1)
instances.TextButton_1.TextSize = 18
instances.TextButton_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextButton_1.BackgroundTransparency = 1
instances.TextButton_1.Position = UDim2.new(0.9070796370506287, 0, 0, 0)
instances.TextButton_1.Size = UDim2.new(0, 16, 0, 61)
instances.TextButton_1.Name = 'Close'

instances.LocalScript_1.Parent = instances.TextButton_1

instances.LocalScript_2.Parent = instances.Frame_1

local DO_NOT_COPY_THIS_VARIABLE_001 = {}
local DO_NOT_COPY_THIS_VARIABLE_002 = require

local require = function(object)
	local module = DO_NOT_COPY_THIS_VARIABLE_001[object]

	if module then
		return DO_NOT_COPY_THIS_VARIABLE_001[object]()
	end

	return DO_NOT_COPY_THIS_VARIABLE_002(object)
end



function Code_LocalScript_1() --LocalScript
	local script = instances.LocalScript_1

	script.Parent.MouseButton1Down:Connect(function()
	    script.Parent.Parent:TweenPosition(UDim2.new(50, 0,0,0),"InOut","Sine",7.2)
		wait(2)
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(Code_LocalScript_1)()


function Code_LocalScript_2()
	local script = instances.LocalScript_2
	local newpos = UDim2.new(0.82, 0,0.507, 0)
	
	
	script.Parent:TweenPosition(newpos,"InOut","Sine",0.5)
end
coroutine.wrap(Code_LocalScript_2)()
wait(visibletime)
		instances.Frame_1:TweenPosition(UDim2.new(50,0,0,0),"InOut","Sine",7.2)
		wait(2)
		screenGui:Destroy()
	
	

	end)
end








local main = library:Load({Name = "FeevWare.cock || "..month..dd4..day..djdsd..dd4..year , Theme = "Light", SizeX = 440, SizeY = 550, ColorOverrides = {}})
local aimbot = main:Tab("Aimbot")
local LOCAL = main:Tab("Local")
local visuals = main:Tab("Visuals")
local settingsui = main:Tab("Settinss")

-----------------------------------------------------------
local settingsuiforui = settingsui:Section({Name = "Camera Aimbot", column = 1})

local camlock = aimbot:Section({Name = "Camera Aimbot", column = 1})
local target = aimbot:section({Name="Target Aimbot", column = 2})
local mouselock = aimbot:section({Name="Mouse Lock", column = 1})
local settingsforlock = aimbot:section({Name="Settins", column = 2})
----------------Local Player-----------------------
local Cframe = LOCAL:section({Name="Cframe Speed", column = 1})
local SelfCham = LOCAL:section({Name="Self Cham", column = 2})
local gripos = LOCAL:section({Name="Grip Editer", column = 2})
local localplayer = LOCAL:section({Name="Player", column = 1})

local teleports = LOCAL:section({Name="Teleports", column = 2})
local gumods = LOCAL:section({Name="Gun Mods", column = 1})
----------Visuals-----------------
local esp = visuals:section({Name="extrasensory perception"})
local mousedh = visuals:section({Name="Cursor", column=2})
local world = visuals:section({Name="World", column=2})
local playerlooks = visuals:section({Name="PLayer Looks", column=1})




getgenv().guncham = false

gumods:Toggle({Name = "Cham", Callback=function(x) 
    getgenv().guncham = x
    
    if getgenv().guncham == true then
        while getgenv().guncham do
            wait()
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.Material = "ForceField"
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Material = "ForceField"
        end
        
        if getgenv().guncham == false then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Material = "Plastic"
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.Material = "Plastic"
            end
        end
    end})

      

gumods:ColorPicker({name = "Gun Color", Default = Color3.fromRGB(255, 0, 255),  Flag = "Color Picker", Callback = function(x)
  game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.Color = x
  game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Color = x
end})





getgenv().Distancet = 10
getgenv().Speedfortarget = 1
settingsforlock:label("Target Strafe")
settingsforlock:Slider({Name = "Distance", Min = 1, Max = 50, Default = 10, Flag = "Slider", Callback = function(x)
    getgenv().Distancet = x 
 end})

settingsforlock:Slider({Name = "Speed", Min = 1, Max = 10, Default = 1, Flag = "Slider", Callback = function(x)
      getgenv().Speedfortarget = x 
 end})

getgenv().ECLIPSE = 1 -- ranges from 0 to 1, perfect circle if 1
getgenv().ROTATION = CFrame.Angles(0,0,0) --rotate which direction to rotate around


getgenv().sin, cos = math.sin, math.cos
getgenv().ROTSPEED = math.pi*2/getgenv().Speedfortarget
getgenv().ECLIPSE = ECLIPSE * getgenv().Distancet
getgenv().rot = 0

getgenv().selfdot = false

	local breadcrumbDistance = 5
	local distanceTraveled = 0
	local previousTime = tick()
	 
	local function placeBreadcrumb(position)
	    local breadcrumb = Instance.new("Part")
	    breadcrumb.Position = position
	    breadcrumb.Anchored = true
	    breadcrumb.Shape = Enum.PartType.Ball
	    breadcrumb.Material = "ForceField"
	    breadcrumb.CanCollide = false
	    breadcrumb.Color = Color3.fromRGB(4,0,255)
	    breadcrumb.Parent = game.Workspace
	    breadcrumb.Size = Vector3.new(1,1,1)
	    wait(0.2)
breadcrumb:Destroy()
	end

playerlooks:Toggle({Name="Self Dot", Callback=function(x)
    getgenv().selfdot = x

	 
	while getgenv().selfdot do
	    local ET = tick() - previousTime
	    previousTime = tick()
	 
	    distanceTraveled = distanceTraveled + ET * (game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Magnitude)
	    print(distanceTraveled)
	    if distanceTraveled > breadcrumbDistance then
	        placeBreadcrumb(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
	        distanceTraveled = 0
	    end
	    wait()
	end
end
    
})



settingsuiforui:Keybind({Name = "Toggle UI", Default = Enum.KeyCode.RightShift,  Flag = "Keybind", Callback = function(x)
    library.keybind = x
end})


settingsuiforui:label("Credits:")
settingsuiforui:label("Scripting: Din,Flood")
settingsuiforui:label("Ui: Flood")
settingsuiforui:label("Contacts")
settingsuiforui:label("Feev#7599,floodsick#7776")
settingsuiforui:label("^")

getgenv().selfchamfollow = false
getgenv().selfchamfollowingcolor = Color3.fromRGB(4, 0, 255)
getgenv().selfchamfollowwait = 0.4

getgenv().clonematerial = "ForceField"

playerlooks:ToggleColorPicker({Name = "Clone", Default = Color3.fromRGB(4), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
      getgenv().selfchamfollow = x
if getgenv().selfchamfollow == true then
    repeat
                            game.Players.LocalPlayer.Character.Archivable = true
                            local Clone = game.Players.LocalPlayer.Character:Clone()
                            for _,Obj in next, Clone:GetDescendants() do
                                if Obj.Name == "HumanoidRootPart" or Obj:IsA("Humanoid") or Obj:IsA("LocalScript") or Obj:IsA("Script") or Obj:IsA("Decal") then
                                    Obj:Destroy()
                                elseif Obj:IsA("BasePart") or Obj:IsA("Meshpart") or Obj:IsA("Part") then
                                    if Obj.Transparency == 1 then
                                        Obj:Destroy()
                                    else
                                        Obj.CanCollide = false
                                        Obj.Anchored = true
                                        Obj.Material = getgenv().clonematerial
                                        Obj.Color = getgenv().selfchamfollowingcolor
                                        Obj.Transparency = 0
                                        Obj.Size = Obj.Size + Vector3.new(0.03, 0.03, 0.03)
                                        
                                        
                                    end
                                end
                                pcall(function()
                                    Obj.CanCollide = false
                                end)
                            end
                            Clone.Parent = game.Workspace
                                                                wait(getgenv().selfchamfollowwait)
                                    Clone:Destroy()
                            
  until getgenv().selfchamfollow == false
    end
end,
ColorPickerCallback = function(x2)
   getgenv().selfchamfollowingcolor = x2
end})


playerlooks:label("Clone Material")
playerlooks:Dropdown({Default = "ForceField", Content = {"ForceField", "Neon"}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
    getgenv().clonematerial = x
 end})


playerlooks:Slider({Name = "cham respawn", Min = 1, Max = 10, Default = 2, Flag = "Slider", Callback = function(x)
    getgenv().selfchamfollowwait = x / 10
 end})

playerlooks:Button({Name="Korblox",Callback=function()
    local L_396_ = game.Players.LocalPlayer.Character
	local L_397_ = game.Players.LocalPlayer.Character
	local L_398_ = L_396_.Head
	local L_399_ = L_398_.face
	local L_400_ = L_397_.RightFoot
	local L_401_ = L_397_.RightLowerLeg
	local L_402_ = L_397_.RightUpperLeg
	local L_403_ = L_397_.LeftFoot
	local L_404_ = L_397_.LeftLowerLeg
	local L_405_ = L_397_.LeftUpperLeg
    
    -- Right
	L_400_.MeshId = "http://www.roblox.com/asset/?id=902942093"
	L_401_.MeshId = "http://www.roblox.com/asset/?id=902942093"
	L_402_.MeshId = "http://www.roblox.com/asset/?id=902942096"
	L_402_.TextureID = "http://roblox.com/asset/?id=902843398"
	L_400_.Transparency = 1
	L_401_.Transparency = 1
    end
})


playerlooks:Button({Name="Headless",Callback=function() 
    	local L_393_ = game.Players.LocalPlayer.Character
	local L_394_ = L_393_:WaitForChild("Head")
	local L_395_ = L_394_:WaitForChild("face")
	L_395_.Transparency = 1 --Texture = "rbxassetid://209712379"
	L_394_.Transparency = 1
    end})


playerlooks:Button({Name="SSHF",Callback=function() 
	local L_409_ = game.Players.LocalPlayer.Character
	local L_410_ = L_409_:WaitForChild("Head")
	local L_411_ = L_410_:WaitForChild("face")
	L_411_.Texture = "rbxassetid://494290547"
end})


playerlooks:Button({Name="Playful Vampire",Callback=function() 
	local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://2409281591"
    end})

----------Visuals SEttings-----------------
getgenv().Ambience = false
getgenv().Ambiencecolor = Color3.fromRGB(4, 0, 255)
getgenv().OutdoorAmbient = false
getgenv().OutdoorAmbientcolor = Color3.fromRGB(4, 0, 255)

world:ToggleColorPicker({Name = "Ambience", Default = Color3.fromRGB(4, 0, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   getgenv().Ambience = x
   

       while getgenv().Ambience do
           wait()
           game:GetService("Lighting").Ambient = getgenv().Ambiencecolor
       end
   if getgenv().Ambience == false then
       game:GetService("Lighting").Ambient = Color3.fromRGB(0,0,0)
    end
end,
ColorPickerCallback = function(x2)
   getgenv().Ambiencecolor = x2
end})


world:ToggleColorPicker({Name = "OutDoor Ambience", Default = Color3.fromRGB(4, 0, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
    getgenv().OutdoorAmbient = x
    
 
        while getgenv().OutdoorAmbient do
            wait()
            game:GetService("Lighting").OutdoorAmbient = getgenv().OutdoorAmbientcolor
        end
    if getgenv().OutdoorAmbient == false then
        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(255,255,255)
     end
 end,
 ColorPickerCallback = function(x2)
    getgenv().OutdoorAmbientcolor = x2
 end})


world:ColorPicker({name = "Fog Color", Default = Color3.fromRGB(255, 0, 255),  Flag = "Color Picker", Callback = function(x)
  game:GetService("Lighting").FogColor = x
end})

world:Slider({Name = "Fog End", Min = 100, Max = 3000, Default = 500, Flag = "Slider", Callback = function(x)
    game:GetService("Lighting").FogEnd = x
 end})

world:Toggle({Name="Shadows",Callback=function(x)
    game:GetService("Lighting").GlobalShadows = x
    end
})

world:Slider({Name = "Brightness", Min = 1, Max = 30, Default = 1, Flag = "Slider", Callback = function(x)
    game:GetService("Lighting").Brightness = x
end})
getgenv().skybox = false
getgenv().theskybox = "Defualt"
world:Toggle({Name="Custom Skybox",Callback=function(x) getgenv().skybox = x 
    while getgenv().skybox do
        task.wait()
    if getgenv().skybox and getgenv().theskybox == "The Rock" then
        game:GetService("Lighting").Sky.SkyboxBk = "http://www.roblox.com/asset/?id=8583043737"
        game:GetService("Lighting").Sky.SkyboxDn = "http://www.roblox.com/asset/?id=8583043737"
        game:GetService("Lighting").Sky.SkyboxFt = "http://www.roblox.com/asset/?id=8583043737"
        game:GetService("Lighting").Sky.SkyboxLf = "http://www.roblox.com/asset/?id=8583043737"
         game:GetService("Lighting").Sky.SkyboxRt = "http://www.roblox.com/asset/?id=8583043737"
          game:GetService("Lighting").Sky.SkyboxUp = "http://www.roblox.com/asset/?id=8583043737"
    elseif getgenv().theskybox == "Among us" then 
                game:GetService("Lighting").Sky.SkyboxBk = "http://www.roblox.com/asset/?id=5850251189"
        game:GetService("Lighting").Sky.SkyboxDn = "http://www.roblox.com/asset/?id=5850251189"
        game:GetService("Lighting").Sky.SkyboxFt = "http://www.roblox.com/asset/?id=5850251189"
        game:GetService("Lighting").Sky.SkyboxLf = "http://www.roblox.com/asset/?id=5850251189"
         game:GetService("Lighting").Sky.SkyboxRt = "http://www.roblox.com/asset/?id=5850251189"
          game:GetService("Lighting").Sky.SkyboxUp = "http://www.roblox.com/asset/?id=411367386"
 end
end
end})

if getgenv().skybox == false then
        game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://600830446"
        game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://600831635"
        game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://600832720"
        game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://600886090"
         game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://600833862"
          game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://600835177"
        end

world:label("Skybox")

world:Dropdown({Default = "Defualt", Content = {"The Rock", "Among us"}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
    getgenv().theskybox = x
 end})




------------------------------------------------------------------------------------------

mousedh:ColorPicker({name = "Middle", Default = Color3.fromRGB(255, 0, 255),  Flag = "Color Picker", Callback = function(x)
   game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.BackgroundColor3 = x
   end})

mousedh:ToggleColorPicker({Name = "Top", Default = Color3.fromRGB(255, 255, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   game:GetService("Players").LeonBenjamin91.PlayerGui.MainScreenGui.Aim.Top.Visible = x
end,
ColorPickerCallback = function(x2)
   game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.BackgroundColor3 = x2
end})

mousedh:ToggleColorPicker({Name = "Bottom", Default = Color3.fromRGB(255, 255, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   game:GetService("Players").LeonBenjamin91.PlayerGui.MainScreenGui.Aim.Bottom.Visible = x
end,
ColorPickerCallback = function(x2)
   game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.BackgroundColor3 = x2
end})

mousedh:ToggleColorPicker({Name = "Right", Default = Color3.fromRGB(255, 255, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   game:GetService("Players").LeonBenjamin91.PlayerGui.MainScreenGui.Aim.Right.Visible = x
end,
ColorPickerCallback = function(x2)
   game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.BackgroundColor3 = x2
end})

mousedh:ToggleColorPicker({Name = "Left", Default = Color3.fromRGB(255, 255, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   game:GetService("Players").LeonBenjamin91.PlayerGui.MainScreenGui.Aim.Left.Visible = x
end,
ColorPickerCallback = function(x2)
   game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.BackgroundColor3 = x2
end})





esp:ToggleColorPicker({Name = "Box", Default = Color3.fromRGB(255, 255, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   getgenv().taffy_esp.box.enabled = x
end,
ColorPickerCallback = function(x2)
   getgenv().taffy_esp.box.color1  = x2
end})

esp:ToggleColorPicker({Name = "healthbar", Default = Color3.fromRGB(4, 0, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   getgenv().taffy_esp.box.healthbar = x
end,
ColorPickerCallback = function(x2)
   getgenv().taffy_esp.box.healthbarcolor  = x2
end})

esp:ToggleColorPicker({Name = "tracer", Default = Color3.fromRGB(255, 255, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   getgenv().taffy_esp.tracer.enabled = x
end,
ColorPickerCallback = function(x2)
   getgenv().taffy_esp.tracer.color  = x2
end})

esp:ToggleColorPicker({Name = "Name", Default = Color3.fromRGB(255, 255, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   getgenv().taffy_esp.name.enabled = x
end,
ColorPickerCallback = function(x2)
   getgenv().taffy_esp.name.color  = x2
end})

esp:ToggleColorPicker({Name = "Tool", Default = Color3.fromRGB(147, 39, 161), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   getgenv().taffy_esp.Toolsshow.enable = x
end,
ColorPickerCallback = function(x2)
   getgenv().taffy_esp.Toolsshow.color  = x2
end})

local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local mouse = game.Players.LocalPlayer:GetMouse()
local UserInput = game:GetService("UserInputService")

getgenv().taffy_esp = {
    box = {
        enabled1 = true,
        enabled = false,
        outline = false,
        healthbar = false,
        color1 = Color3.fromRGB(255, 255, 255),
        color2 = Color3.fromRGB(0, 0, 0),
        healthbarcolor = Color3.fromRGB(4, 0, 255)
    },
    tracer = {
        enabled = false,
        unlocktracers = false,
        color = Color3.fromRGB(255, 255, 255)
    },
    name = {
        enabled = false,
        outline = false,
        size = 13,
        font = 2,
        color = Color3.fromRGB(255, 255, 255)
    },
    misc = {
        teamcheck = false,
        useteamcolors = false,
        visibleonly = true
    },
    Toolsshow = {
        enable = false,
        outline = false,
        size = 8,
        font = 3,
        color = Color3.fromRGB(147, 39, 161)
    }
}

assert(getgenv().taffy_esp, "not loaded lol")

function esp(v)
    -- box --
    local BLOCKOUTLINE = Drawing.new("Square")
    BLOCKOUTLINE.Visible = false
    BLOCKOUTLINE.Color = Color3.new(0,0,0)
    BLOCKOUTLINE.Thickness = 3
    BLOCKOUTLINE.Transparency = 1
    BLOCKOUTLINE.Filled = false

    local BOXPLAYER = Drawing.new("Square")
    BOXPLAYER.Visible = false
    BOXPLAYER.Color = taffy_esp.box.color1
    BOXPLAYER.Thickness = 1
    BOXPLAYER.Transparency = 1
    BOXPLAYER.Filled = false

    local HealthBarOUTLINE = Drawing.new("Square")
    HealthBarOUTLINE.Thickness = 3
    HealthBarOUTLINE.Filled = false
    HealthBarOUTLINE.Color = Color3.new(0,0,0)
    HealthBarOUTLINE.Transparency = 1
    HealthBarOUTLINE.Visible = false

    local HealthBarITSELF = Drawing.new("Square")
    HealthBarITSELF.Thickness = 1
    HealthBarITSELF.Filled = false
    HealthBarITSELF.Transparency = 1
    HealthBarITSELF.Visible = false
    
    
    
    -- tracer --

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    -- name --

    local Name = Drawing.new("Text")
    Name.Transparency = 1
    Name.Visible = false
    Name.Color = taffy_esp.name.color
    Name.Size = 16
    Name.Center = true
    Name.Outline = false
    Name.Font = 2
    Name.Text = "name [100/100]"


    --tool--

    local toolshow = Drawing.new("Text")
    toolshow.Transparency = 1
    toolshow.Visible = false
    toolshow.Color = getgenv().taffy_esp.Toolsshow.color
    toolshow.Size = 16
    toolshow.Center = true
    toolshow.Outline = false
    toolshow.Font = 2
    toolshow.Text = ""
    














    game:GetService("RunService").RenderStepped:Connect(function()
        if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health  > 0 and (not taffy_esp.misc.teamcheck or v.TeamColor == lplr.TeamColor) then
            local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local Distance = (CurrentCamera.CFrame.p - v.Character.HumanoidRootPart.Position).Magnitude
            local RootPart = v.Character.HumanoidRootPart
            local Head = v.Character.Head
            local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
            local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + Vector3.new(0,0.5,0))
            local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - Vector3.new(0,3,0))
            if (not taffy_esp.misc.visibleonly or onScreen) then
                if taffy_esp.box.enabled1 then
                    BLOCKOUTLINE.Size = Vector2.new(2500 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BLOCKOUTLINE.Position = Vector2.new(RootPosition.X - BLOCKOUTLINE.Size.X / 2, RootPosition.Y - BLOCKOUTLINE.Size.Y / 2)
                    BLOCKOUTLINE.Visible = taffy_esp.box.outline
                    BLOCKOUTLINE.Color = taffy_esp.box.color2
    
                    BOXPLAYER.Size = Vector2.new(2500 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BOXPLAYER.Position = Vector2.new(RootPosition.X - BOXPLAYER.Size.X / 2, RootPosition.Y - BOXPLAYER.Size.Y / 2)
                    BOXPLAYER.Visible = taffy_esp.box.enabled
                    if not taffy_esp.misc.useteamcolors then
                        local color = v.TeamColor
                        BOXPLAYER.Color = taffy_esp.box.color1
                    else
                        BOXPLAYER.Color = taffy_esp.box.color1
                    end
                        
                    HealthBarOUTLINE.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                    HealthBarOUTLINE.Position = HealthBarOUTLINE.Position - Vector2.new(6,0)
                    HealthBarOUTLINE.Visible = taffy_esp.box.outline
    
                    HealthBarITSELF.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0,v.Character.Humanoid.MaxHealth)))
                    HealthBarITSELF.Position = Vector2.new(BOXPLAYER.Position.X - 5, BOXPLAYER.Position.Y + (1 / HealthBarITSELF.Size.Y))
                    HealthBarITSELF.Color = taffy_esp.box.healthbarcolor
                    HealthBarITSELF.Visible = taffy_esp.box.healthbar
                    
                    
                    
                    
                else
                    BLOCKOUTLINE.Visible = false
                    BOXPLAYER.Visible = false
                    HealthBarOUTLINE.Visible = false
                    HealthBarITSELF.Visible = false
                end
                if taffy_esp.tracer.enabled then
                    if taffy_esp.tracer.unlocktracers then
                        Tracer.From = Vector2.new(mouse.X, mouse.Y + 36)
                    else
                        Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    end
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    Tracer.Visible = taffy_esp.tracer.enabled
                    if not taffy_esp.misc.useteamcolors then
                        local color = v.TeamColor
                        Tracer.Color = taffy_esp.tracer.color
                    else
                        Tracer.Color = taffy_esp.tracer.color
                    end
                else
                    Tracer.Visible = false
                end

                if taffy_esp.Toolsshow.enable then
                      local Equipped = v.Character:FindFirstChildOfClass("Tool") and v.Character:FindFirstChildOfClass("Tool").Name or "None"
                    toolshow.Text = Equipped
                    toolshow.Position = Vector2.new(workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).X, workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).Y + 30)
                    toolshow.Color = getgenv().taffy_esp.Toolsshow.color
                    toolshow.Font = 3
                    Name.Size = taffy_esp.Toolsshow.size
                    toolshow.Visible = true
                    else
                        toolshow.Visible = false
                end


                if taffy_esp.name.enabled then
                    Name.Text = tostring(v.Name).. " [" .. tostring(math.floor(v.Character.Humanoid.Health + 0.5)) .. "/" .. tostring(v.Character.Humanoid.MaxHealth) .. "]"
                    Name.Position = Vector2.new(workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).X, workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).Y - 30)
                    Name.Visible = true
                    Name.Size = taffy_esp.name.size
                    if not taffy_esp.misc.useteamcolors then
                        local color = v.TeamColor
                        Name.Color = taffy_esp.name.color
                    else
                        Name.Color = taffy_esp.name.color
                    end
                    Name.Outline = taffy_esp.name.outline
                else
                    Name.Visible = false
                end
            else
                BLOCKOUTLINE.Visible = false
                BOXPLAYER.Visible = false
                toolshow.Visible=false
                HealthBarOUTLINE.Visible = false
                HealthBarITSELF.Visible = false
                Tracer.Visible = false
                Name.Visible = false
            end
        else
            toolshow.Visible=false
            BLOCKOUTLINE.Visible = false
            BOXPLAYER.Visible = false
            HealthBarOUTLINE.Visible = false
            HealthBarITSELF.Visible = false
            Tracer.Visible = false
            Name.Visible = false
        end
    end)
end

for i,v in pairs(game.Players:GetChildren()) do
    esp(v)
end

game.Players.PlayerAdded:Connect(function(v)
    esp(v)
end)


getgenv().mainlocation = ""

teleports:label("Main")
teleports:Dropdown({Default = "", Content = {"Bank", "Food","UpHill", "Gas Station", "School","Casino","Down hill"}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
    getgenv().mainlocation = x

    if getgenv().mainlocation == "Bank" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-395.639313, 21.7499943, -296.996582, 0.0315065868, -7.03567977e-08, -0.999503553, -3.38179507e-09, 1, -7.04983449e-08, 0.999503553, 5.60127855e-09, 0.0315065868)
    elseif getgenv().mainlocation =="Food" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-329.771393, 23.682642, -290.737885, 0.00267133373, -1.85452436e-08, -0.999996424, -3.10311457e-08, 1, -1.86282048e-08, 0.999996424, 3.10807948e-08, 0.00267133373)
    elseif getgenv().mainlocation =="UpHill" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(485.570068, 47.7549896, -569.496826, 0.013204433, 8.4341373e-08, 0.999912798, 5.66054439e-08, 1, -8.50962394e-08, -0.999912798, 5.77241543e-08, 0.013204433)
    elseif getgenv().mainlocation == "Gas Station" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(569.729248, 49.0000343, -255.716797, -0.0274654441, -8.37121945e-08, 0.999622762, -2.34975168e-08, 1, 8.30981719e-08, -0.999622762, -2.12063238e-08, -0.0274654441)
    elseif getgenv().mainlocation == "School" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-593.704712, 21.7499924, 173.596588, -0.999854207, -8.25533135e-08, -0.0170756821, -8.15472774e-08, 1, -5.96126384e-08, 0.0170756821, -5.8211473e-08, -0.999854207)
    elseif getgenv().mainlocation == "Casino" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1004.89423, 21.7499943, -164.039993, 0.997695506, -2.03665209e-08, -0.0678502768, 1.96321039e-08, 1, -1.1490882e-08, 0.0678502768, 1.01323572e-08, 0.997695506)
    elseif getgenv().mainlocation == "Down hill" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550.641724, 7.99984598, -735.04248, -0.0338952243, 7.9451496e-08, 0.999425411, -3.13831237e-08, 1, -8.05615201e-08, -0.999425411, -3.40957413e-08, -0.0338952243)
        end
 end})

teleports:label("Guns")
teleports:Dropdown({Default = "", Content = {"Revolver","Double-Barrel","LMG","Shotgun","Flame","Rpg",}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
    getgenv().mainlocation = x
    
    if getgenv().mainlocation == "Revolver" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.706543, 21.7499943, -122.334557, -0.999612391, 2.84732096e-08, 0.0278408676, 2.87540765e-08, 1, 9.68795089e-09, -0.0278408676, 1.0484734e-08, -0.999612391)
    elseif  getgenv().mainlocation == "Double-Barrel" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1040.19189, 21.7499943, -259.223602, -0.999949157, -4.52931168e-08, 0.0100818248, -4.46730475e-08, 1, 6.17290254e-08, -0.0100818248, 6.12755073e-08, -0.999949157)
        elseif getgenv().mainlocation == "LMG" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-621.367004, 23.2457371, -301.458893, 0.99715513, 3.35022925e-08, -0.0753767341, -2.70048179e-08, 1, 8.72192203e-08, 0.0753767341, -8.49355644e-08, 0.99715513)
        elseif getgenv().mainlocation == "Shotgun" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-581.336975, 8.31477833, -724.993225, 0.0150808478, 8.61463434e-09, -0.999886274, -2.04647534e-08, 1, 8.30695246e-09, 0.999886274, 2.03371489e-08, 0.0150808478)
        elseif getgenv().mainlocation == "Flame" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-157.769897, 53.8106041, -100.650063, 0.996714413, 2.41718445e-09, -0.0809963122, -5.0577138e-09, 1, -3.23954517e-08, 0.0809963122, 3.26986687e-08, 0.996714413)
            elseif getgenv().mainlocation == "Rpg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112.992836, -26.7500362, -277.141602, -0.999445081, 2.13909601e-08, 0.0333095416, 2.13499671e-08, 1, -1.58629943e-09, -0.0333095416, -8.74261552e-10, -0.999445081)
        end
end})



localplayer:Toggle({Name="Anchored", Callback=function(x) 
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = x
    end
})

getgenv().bhop = false

localplayer:Toggle({Name="Bhop", Callback=function(x) 
    getgenv().bhop = x
    while getgenv().bhop do
        wait()
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
    end
})
localplayer:button({Name="Jump Cooldown",Callback=function()
    local IsA = game.IsA;
    local newindex = nil 
    
    newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
        if not checkcaller() and IsA(self, "Humanoid") and Index == "JumpPower" then 
            return
        end
        
        return newindex(self, Index, Value);
    end)
    end
})

localplayer:Toggle({Name="Anti Slow",Callback=function(x) 
    	antislow = x
	repeat
		wait(0.1)
		local gaylolfsa = game.Players.LocalPlayer
		local L_177_ = gaylolfsa.Character.BodyEffects.Movement:FindFirstChild('NoJumping') or gaylolfsa.Character.BodyEffects.Movement:FindFirstChild('ReduceWalk') or gaylolfsa.Character.BodyEffects.Movement:FindFirstChild('NoWalkSpeed')
		if L_177_ then
			L_177_:Destroy()
		end
		if gaylolfsa.Character.BodyEffects.Reload.Value == true then
			gaylolfsa.Character.BodyEffects.Reload.Value = false
		end
	until antislow == false
    end})

localplayer:Toggle({Name="Auto Stomp",Callback=function(x) 
    	autostomp = x
	game:GetService("RunService").Stepped:connect(function()
		if autostomp then
			game.ReplicatedStorage.MainEvent:FireServer("Stomp")
		end
	end)
	dads = game.Players.LocalPlayer
	mouas = dads:GetMouse()
	mouas.KeyDown:connect(function(L_174_arg0)
		if L_174_arg0 == "h" then
			autostomp = not autostomp
			game.ReplicatedStorage.MainEvent:FireServer("Stomp")
		end
	end)
end })


localplayer:button({Name="Destroy bag",Callback=function()
    game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
    end
})

getgenv().antistomp = false
getgenv().AntiStompMethod = "Destroy"
localplayer:Toggle({Name="Anti Stomp",Callback=function(x)
   
     getgenv().antistomp = x


while getgenv().antistomp do
    wait()
    if game.Players.LocalPlayer.Character.BodyEffects["K.O"].Value == true then
        if getgenv().AntiStompMethod == "Humanoid" then
        game.Players.LocalPlayer.Character.Humanoid:Destroy()
        elseif getgenv().AntiStompMethod == "Destroy" then
            wait()
            game.Players.LocalPlayer.Character.UpperTorso:Destroy()
            wait()
            game.Players.LocalPlayer.Character.LeftHand:Destroy()
            wait()
            game.Players.LocalPlayer.Character.RightHand:Destroy()
            wait()
            game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
            wait()
            game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
            wait()
            game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
            wait()
            game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
            wait()
            game.Players.LocalPlayer.Character.LeftFoot:Destroy()
            wait()
            game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
            wait()
            game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
            wait()
            game.Players.LocalPlayer.Character.LowerTorso:Destroy()
            wait()
            game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
            wait()
            game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
            wait()
            game.Players.LocalPlayer.Character.Head:Destroy()
            wait()
            game.Players.LocalPlayer.Character.RightFoot:Destroy()

        end
    end
end
end
})


localplayer:label("Anti Stomp Method")

localplayer:Dropdown({Default = "Destroy", Content = {"Destroy", "Humanoid"}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
    getgenv().AntiStompMethod = x
 end})



getgenv().EnableGrip = false
getgenv().EnableGripFront = 10
getgenv().EnableGripSide = 10
getgenv().EnableGripHeight = 10

gripos:Toggle({Name="Enable",Callback=function(x) 
    getgenv().EnableGrip = x
while  getgenv().EnableGrip do
    game:GetService("RunService").Stepped:wait()
        local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        niggertool.GripPos = Vector3.new(-EnableGripSide, -EnableGripHeight, EnableGripFront)
end
    
        if getgenv().EnableGrip == false then
        local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        niggertool.GripPos = Vector3.new(-0, -0, 0)
end    end})




gripos:Slider({Name = "Grip Height", Min = 0, Max = 100, Default = 10, Flag = "Slider", Callback = function(x)
    getgenv().EnableGripHeight = x
 end})

gripos:Slider({Name = "Grip Side", Min = 0, Max = 100, Default = 10, Flag = "Slider", Callback = function(x)
    getgenv().EnableGripSide = x
end})

gripos:Slider({Name = "Grip Front", Min = 0, Max = 100, Default = 10, Flag = "Slider", Callback = function(x)
    getgenv().EnableGripFront = x
 end})


getgenv().selfchamcolor = Color3.fromRGB(4, 0, 255)

SelfCham:button({Name="New",Callback=function() 
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


for i,v in next, game:GetService('Players').LocalPlayer.Character:GetChildren() do
   if v:IsA('Accessory') then
       v.Handle.Material = "ForceField"
       v.Handle.Color = getgenv().selfchamcolor
end
end
Players.Character['Body Colors'].LeftArmColor3 = getgenv().selfchamcolor
Players.Character['Body Colors'].RightArmColor3 = getgenv().selfchamcolor
Players.Character['Body Colors'].LeftLegColor3 = getgenv().selfchamcolor
Players.Character['Body Colors'].RightLegColor3 = getgenv().selfchamcolor
Players.Character['Body Colors'].HeadColor3 = getgenv().selfchamcolor
Players.Character['Body Colors'].TorsoColor3 = getgenv().selfchamcolor
    end})


SelfCham:ColorPicker({name = "Self Cham Color", Default = Color3.fromRGB(255, 0, 255),  Flag = "Color Picker", Callback = function(color)
   getgenv().selfchamcolor = color
end})


















---settings---
getgenv().targeting = false
getgenv().prediction = 0.1218925
getgenv().keybind = "q"
getgenv().aimingpart = "HumanoidRootPart"
getgenv().airshotfunction = false
getgenv().recurringpart = "HumanoidRootPart"
getgenv().chatmode = false
getgenv().targetstrafe = false
getgenv().notify = false
getgenv().cameramode = false
getgenv().LineMode = "Mouse"
getgenv().flymode = false
getgenv().LOOKAT = false
-----settings for shit---
getgenv().dotvisible = false

getgenv().boxenable = false
getgenv().boxcolor = Color3.fromRGB(137, 207, 240)
getgenv().heathbar = false
getgenv().linevisile =false

getgenv().linecolor = Color3.fromRGB(137, 207, 240)






--- 0.12 0.135 0.109
---0.132 0.115

---12183
---1215924

----122199 mid
---0.1234772452176 close
--*accomidationfactor ---133 0.126
local CC = game:GetService'Workspace'.CurrentCamera
local Plr




local HR = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

local enabled = false
local mouse = game.Players.LocalPlayer:GetMouse()
local CurrentCamera = game:GetService("Workspace").CurrentCamera
local Inset = game:GetService("GuiService"):GetGuiInset().Y
local RunService = game:GetService("RunService")
local placemarker = Instance.new("Part", game.Workspace)
local Circle = Drawing.new("Circle")
local guimain = Instance.new("Folder", game.CoreGui)
local runshit = game:GetService("RunService")
local Line = Drawing.new("Line")
local Inset2 = game:GetService("GuiService"):GetGuiInset().Y
local Box = Drawing.new("Square")
local HealthBar = Drawing.new("Square")

function makemarker(Parent, Adornee, Color, Size, Size2)
    local e = Instance.new("BillboardGui", Parent)
    e.Name = "PP"
    e.Adornee = Adornee
    e.Size = UDim2.new(Size, Size2, Size, Size2)
    e.AlwaysOnTop = true
    local a = Instance.new("Frame", e)
    a.Size = UDim2.new(1, 0, 1, 0)
    a.BackgroundTransparency = 0
    a.BackgroundColor3 = Color
    local g = Instance.new("UICorner", a)
    g.CornerRadius = UDim.new(30, 30)
    return(e)
end

local data = game.Players:GetPlayers()
function noob(player)
    local character
    repeat wait() until player.Character
    local handler = makemarker(guimain, player.Character:WaitForChild(getgenv().aimingpart), Color3.fromRGB(0, 76, 153), 0.0, 0)
    handler.Name = player.Name
    player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(getgenv().aimingpart) end)
    
	local TextLabel = Instance.new("TextLabel", handler)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0, 0, 0, -50)
	TextLabel.Size = UDim2.new(0, 100, 0, 100)
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.TextSize = 14
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextStrokeTransparency = 0
	TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
	TextLabel.Text = 'Name: '..player.Name
	TextLabel.ZIndex = 10
	
	spawn(function()
        while wait() do
            if player.Character then
                --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
            end
        end
	end)
end

for i = 1, #data do
    if data[i] ~= game.Players.LocalPlayer then
        noob(data[i])
    end
end

game.Players.PlayerAdded:connect(function(Player)
    noob(Player)
end)

game.Players.PlayerRemoving:Connect(function(player)
    guimain[player.Name]:Destroy()
end)

spawn(function()
    placemarker.Anchored = true
    placemarker.CanCollide = false
    placemarker.Size = Vector3.new(0.2, 0.2, 0.2)
     placemarker.Transparency = 1
    makemarker(placemarker, placemarker, Color3.fromRGB(137, 207, 240), 0.55, 0)
end)    





mouse.KeyDown:Connect(function(k)
    if k ~= (keybind) then return end
    if enabled  and getgenv().targeting == true then
        enabled = false



        if getgenv().chatmode then
            local A_1 = "FeevWare: Unlocked" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        end

        if getgenv().cameramode then
             workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
        end
        if getgenv().notify then
            CoreGui:SetCore("SendNotification", {
	Title = "FeevWare:";
	Text = "Unlocked";
	Duration = 2.5;
})
        end

        
       guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    else
        enabled = true
        Plr = getClosestPlayerToCursor()
------
local i = 0




        if getgenv().targetstrafe  then
            while enabled do
  game:GetService("RunService").Stepped:wait()
	rot = rot + wait() * getgenv().Speedfortarget
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ROTATION * CFrame.new(sin(rot)*ECLIPSE, 0, cos(rot)*getgenv().Distancet) + Plr.Character.HumanoidRootPart.Position
	game:GetService("RunService").Stepped:wait()
	end
end
            

        
         if getgenv().chatmode then
            local A_1 = "FeevWare: "..tostring(Plr.Character.Humanoid.DisplayName) local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
         end

                if getgenv().notify then
            CoreGui:SetCore("SendNotification", {
	Title = "FeevWare";
	Text = "Locked:"..tostring(Plr.Character.Humanoid.DisplayName) ;
	Duration = 1.5;
})
                end 
        
            if getgenv().cameramode then
            workspace.CurrentCamera.CameraSubject = Plr.Character
         end
        
        if getgenv().LOOKAT then
while enabled do
    
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position, Vector3.new(Plr.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position.Y, Plr.Character.HumanoidRootPart.CFrame.Z))         
	game:GetService("RunService").Stepped:wait()
end
        end
        if getgenv().flymode then
            while enabled do 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.CFrame.X,75,Plr.Character.HumanoidRootPart.CFrame.Z)
game:GetService("RunService").Stepped:wait()
                end
        end
    





        guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end    
end)



    


function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild(getgenv().aimingpart) then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
   return closestPlayer
end





local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local mouse = game.Players.LocalPlayer:GetMouse()
local UserInput = game:GetService("UserInputService")
	


game:GetService"RunService".Stepped:connect(function()
    	
if enabled and getgenv().targeting  and Plr.Character and Plr.Character:FindFirstChild(getgenv().aimingpart) then
local Vector = CurrentCamera:WorldToViewportPoint(Plr.Character[getgenv().aimingpart].Position+(Plr.Character[getgenv().aimingpart].Velocity*prediction))
local dvecotr2 = CurrentCamera:WorldToViewportPoint(game.Players.LocalPlayer.Character[getgenv().aimingpart].Position)
local RootPart = Plr.Character.HumanoidRootPart
local RootPart = Plr.Character.HumanoidRootPart
local Head = Plr.Character.Head
local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + Vector3.new(0,0.5,0))
local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - Vector3.new(0,3,0))


if getgenv().LineMode == "Mouse" then
Line.From = Vector2.new(mouse.X, mouse.Y + Inset2)
elseif getgenv().LineMode == "Body" then
    Line.From = Vector2.new(dvecotr2.X, dvecotr2.Y)
end
Line.Color = getgenv().linecolor
Line.Thickness = 1.5
Line.Transparency = 1

Line.To = Vector2.new(Vector.X, Vector.Y)
Line.Visible = getgenv().linevisile 


-----------------------------------

HealthBar.Thickness = 1
HealthBar.Filled = false
HealthBar.Transparency = 1
HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (Plr.Character.Humanoid.MaxHealth / math.clamp(Plr.Character.Humanoid.Health, 0,Plr.Character.Humanoid.MaxHealth)))
HealthBar.Position = Vector2.new(Box.Position.X - 5, Box.Position.Y + (1 / HealthBar.Size.Y))
HealthBar.Color = Color3.fromRGB(137 - 207 / (Plr.Character.Humanoid.MaxHealth / Plr.Character.Humanoid.Health), 240 / (Plr.Character.Humanoid.MaxHealth / Plr.Character.Humanoid.Health), 0)
HealthBar.Visible = getgenv().heathbar


---------------
Box.Size = Vector2.new(2500 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
Box.Visible = getgenv().boxenable
Box.Color =  getgenv().boxcolor
Box.Thickness = 1
Box.Transparency = 1
Box.Filled = false


-----------------------------------


		else
		    Box.Visible = false
		    HealthBar.Visible = false
		    Line.Visible = false
        end
end)
	
	
	

	


	
	

	game:GetService"RunService".Stepped:connect(function()
		if enabled and getgenv().targeting  and Plr.Character and Plr.Character:FindFirstChild(getgenv().aimingpart) then
			placemarker.CFrame = CFrame.new(Plr.Character[getgenv().aimingpart].Position+(Plr.Character[getgenv().aimingpart].Velocity*prediction))
		else
			placemarker.CFrame = CFrame.new(0, 9999, 0)
		end
	end)

	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if enabled and getgenv().targeting and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character[getgenv().aimingpart].Position+(Plr.Character[getgenv().aimingpart].Velocity*prediction)
			return old(unpack(args))
		end
		return old(...)
	end)
	
	






target:Toggle({Name = "Enable", Callback = function(x)
    getgenv().targeting = x
end})


target:Box({Name="Prediction", Flag ="SmoothnessdREDICTION", callback=function(x)
    getgenv().prediction = x 
end})


target:Toggle({Name = "Draw Line", Callback = function(x)
    getgenv().linevisile = x
end})





target:Toggle({Name = "Draw Box", Callback = function(x)
   getgenv().boxenable = x
end})


target:Toggle({Name = "HealthBar", Callback = function(x)
   getgenv().heathbar =x
end})


target:Toggle({Name = "Notify", Callback = function(x)
    getgenv().notify = x
end})

target:Toggle({Name="Chat Mode",Callback=function(x) getgenv().chatmode  = x end})

target:Toggle({Name = "Camera Mode", Callback = function(x)
    getgenv().cameramode = x
end})

target:Toggle({Name="Fly Mode",Callback=function(x) getgenv().flymode = x end})

target:Toggle({Name="Look At", Callback=function(x) getgenv().LOOKAT =x end})

target:Toggle({Name = "Target Strafe", Callback = function(x)
  getgenv().targetstrafe = x
end})

target:Dropdown({Default = "HumanoidRootPart", Content = {"HumanoidRootPart", "Head", "LowerTorso", "UpperTorso"}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
    getgenv().aimingpart =x
 end})


target:Dropdown({Default = "Mouse", Content = {"Mouse", "Body"}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
    getgenv().LineMode =x
 end})





































getgenv().cframetoggle = false
getgenv().cframespeed = 0.4




local toggleKeybind = Cframe:ToggleKeybind({Name = "Toggle Keybind", Default = Enum.KeyCode.Z,  KeybindFlag = "ToggleKeybind", ToggleFlag = "ToggleKeybindToggle", ToggleCallback = function(x)
   getgenv().cframetoggle =x
   
   while getgenv().cframetoggle do
                game:GetService("RunService").Stepped:wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * cframespeed
       end
end,
KeybindCallback = function(key)
end})

Cframe:Slider({Name = "Speed", Min = 1, Max = 5, Default = 1, Flag = "Slider", Callback = function(x)
    getgenv().cframespeed = x
 end})

























Cframe:Button({Name="Fix Damage(When Stomp)", callback=function()
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
                v:Destroy()
            end
        end
        game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
            repeat
                wait()
            until game.Players.LocalPlayer.Character
            char.ChildAdded:Connect(function(child)
                if child:IsA("Script") then 
                    wait(0.1)
                    if child:FindFirstChild("LocalScript") then
                        child.LocalScript:FireServer()
                    end
                end
            end)
        end)
    local glitch = false
    local clicker = false
    
    end})


getgenv().OldAimPart = "HumanoidRootPart"
 getgenv().AimPart = "HumanoidRootPart"
 getgenv().AimRadius = 30
 getgenv().ThirdPerson = true
 getgenv().FirstPerson = true
 getgenv().TeamCheck = false
 getgenv().line = false
 getgenv().linecolor2 = Color3.fromRGB(4,0,255)
 getgenv().keybind ="q"
 getgenv().PredictMovement = false
 getgenv().PredictionVelocity = 12.29
 getgenv().CheckIfJumped = true
 getgenv().Smoothness = false
 getgenv().WallCheck = false
 getgenv().SmoothnessAmount = 0.05
 getgenv().Notificationmode = false
 
 
 
 local CurrentCamera = game:GetService "Workspace".CurrentCamera
 local services = setmetatable({ }, {
     __index = function(t,k)
         return game:GetService(k)
     end
 })
 local Players = services.Players
 local Uisf = services.UserInputService
 local Workgalaxy = services.Workspace
 local RService = services.RunService
 local SGui = services.StarterGui
 local Inset2 = game:GetService("GuiService"):GetGuiInset().Y
 

 
 
 local mousef = game.Players.LocalPlayer:GetMouse()
 local Clientuser = Players.LocalPlayer
 local runshit = game:GetService("RunService")
 local localnigger = game.Players.LocalPlayer
 local Line2 = Drawing.new("Line")
 
 
 local camgay = Workspace.CurrentCamera
 
 local CF = CFrame.new
 local RNew = Ray.new
 local Vec3 = Vector3.new
 local Vec2 = Vector2.new
 
 local Aimlock, MousePressed, CanNotify = false, false, false
 local AimlockTarget, OldPre
 
 
 
 local Target, PartMode, Partz, NotifMode, PredictionF
 
 
getgenv().GetObscuringObjects = function(T)
    if T and T:FindFirstChild(AimPart) and Clientuser and Clientuser.Character:FindFirstChild("Head") then 
        local RayPos = workspace:FindPartOnRay(RNew(T[AimPart].Position, Clientuser.Character.Head.Position))
        if RayPos then return RayPos:IsDescendantOf(T) end
    end
end
 
 
 
 local GetNearestTarget = function()
     local plr1g2 = nil;
     local distance = 99999;
     
     for i, v in next, Players:GetPlayers() do
         if v.Name ~= Clientuser.Name then
             --if v.Character and v.Team ~= Clientuser.Team then
             if v.Character then
                 local pos,aaaa = camgay:WorldToViewportPoint(v.Character.Head.Position);
                 local mouse = Uisf:GetMouseLocation()
                 local magnitude = (Vec2(pos.X, pos.Y) - Vec2(mousef.X, mousef.Y)).magnitude;
 
                 if aaaa and (magnitude < distance) then
                     plr1g2 = v;
                     distance = magnitude;
                 end
             end
         end
     end
     
     return plr1g2;
 end
 
 
 mousef.KeyDown:Connect(function(k)
     if k ~= keybind then return end
     if Aimlock and AimlockTarget == nil then
         if MousePressed ~= true then MousePressed = true end 
         local Target;Target = GetNearestTarget()
         if Target ~= nil then
             AimlockTarget = Target
             if getgenv().Notificationmode then
             notif:Notification("FeevWare","Locked:"..AimlockTarget.DisplayName,"Code","Code",2.4) 
             end
     end
     else
         if AimlockTarget ~= nil then AimlockTarget = nil end
         if MousePressed ~= false then 
             MousePressed = false 
             if getgenv().Notificationmode then
             notif:Notification("FeevWare","Unlocked","Code","Code",5) 
             end
             Line2.Visible = false
         end
     end
 end)
 
 runshit.Stepped:connect(function()
     if line == true then
         local Vector = CurrentCamera:WorldToViewportPoint(AimlockTarget.Character[AimPart].Position)
         Line2.Color = getgenv().linecolor2                                                              
         Line2.Thickness = 2.5
         Line2.Transparency = 1
  
 
         Line2.From = Vector2.new(mousef.X, mousef.Y + Inset2)
         Line2.To = Vector2.new(Vector.X, Vector.Y)
         Line2.Visible = true
     else
         Line2.Visible = false
 
     end
 end)
 
 
 
 
 
 
 
 RService.RenderStepped:Connect(function()
     if ThirdPerson == true and FirstPerson == true then 
        if WallCheck == true and not GetObscuringObjects(AimlockTarget) then
         if (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude > 1 or (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude <= 1 then 
             CanNotify = true 

         else 
             CanNotify = false 
         end
     elseif ThirdPerson == true and FirstPerson == false then 
        
         if (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude > 1 then 
             CanNotify = true 
         else 
             CanNotify = false 
         end
     elseif ThirdPerson == false and FirstPerson == true then 
         if (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude <= 1 then 
             CanNotify = true 
         else 
             CanNotify = false 
         end
     end
     if Aimlock == true and MousePressed == true then 
         if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(AimPart) then 
             if FirstPerson == true then
                 if CanNotify == true then
                        

                     if PredictMovement == true then
                         if Smoothness == true then
                             local Main = CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position + AimlockTarget.Character[AimPart].Velocity/PredictionVelocity)
                             
                             camgay.CFrame = camgay.CFrame:Lerp(Main, SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                         else
                             camgay.CFrame = CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position + AimlockTarget.Character[AimPart].Velocity/PredictionVelocity)
                         end
                     elseif PredictMovement == false then 
                         if Smoothness == true then
                           
                             local Main = CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)
 
                            
                             camgay.CFrame = camgay.CFrame:Lerp(Main, SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                         else
                             camgay.CFrame = CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)
                         end
                     end
                    end
                                            

                     if PredictMovement == true then
                         if Smoothness == true then
                             local Main = CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position + AimlockTarget.Character[AimPart].Velocity/PredictionVelocity)
                             
                             camgay.CFrame = camgay.CFrame:Lerp(Main, SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                         else
                             camgay.CFrame = CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position + AimlockTarget.Character[AimPart].Velocity/PredictionVelocity)
                         end
                     elseif PredictMovement == false then 
                         if Smoothness == true then
                           
                             local Main = CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)
 
                            
                             camgay.CFrame = camgay.CFrame:Lerp(Main, SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                         else
                             camgay.CFrame = CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)
                         end
                     end
                    end
                 end
             end
         end

 
 
if getgenv().CheckIfJumped == true then
		if AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air and AimlockTarget.Character.Humanoid.Jump == true then

			getgenv().AimPart = "LowerTorso"
		else
			getgenv().AimPart = getgenv().OldAimPart

		end
	end
end)



camlock:Toggle({Name = "Enable", callback=function(x)
   Aimlock=x
end})

camlock:Toggle({Name = "Smoothness", callback=function(x)
    getgenv().Smoothness = x
end})

camlock:Toggle({Name = "Prediction", callback=function(x)
    getgenv().PredictMovement  =x
end})



local colorPickerToggle = camlock:ToggleColorPicker({Name = "Draw Line", Default = Color3.fromRGB(255, 255, 255), ToggleFlag = "ToggleColorPickerToggle", ColorPickerFlag = "ToggleColorPicker", ToggleCallback = function(x)
   getgenv().line = x
end,
ColorPickerCallback = function(x2)
   getgenv().linecolor2   = x2
end})


camlock:Box({Name="Prediction", Flag ="CAMLOCKPREDICTION", callback=function(x)
    getgenv().PredictionVelocity =x
end})

camlock:Box({Name="Smoothness", Flag ="SmoothnessREDICTION", callback=function(x)
    getgenv().SmoothnessAmount = x
end})

camlock:Slider({Name = "Radius", Min = 10, Max = 120, Default = 20, Flag = "Slider", Callback = function(x)
    getgenv().AimRadius = x
 end})



 camlock:Toggle({Name="AirShot Function", callback=function(x)
    getgenv().CheckIfJumped=x
 end})
 
 camlock:Toggle({Name="Notification Mode", callback=function(x)
     
      getgenv().Notificationmode = x
end })


 camlock:Dropdown({Default = "Aiming Part", Content = {"HumanoidRootPart", "Head", "LowerTorso", "UpperTorso"}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
    getgenv().OldAimPart=x
 end})


getgenv().MouseLock = {
    Settings = {
        Enabled = true,
        Key = 'q',
        Prediction = 0.135,
        AimPart = 'UpperTorso'
    }
}

getgenv().enable = false

local CurrentCamera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Mouse = game.Players.LocalPlayer:GetMouse()
local Plrmouse

function FindClosestPlayer()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
            v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "b" then
        if MouseLock.Settings.Enabled  and getgenv().enable == true then
            MouseLock.Settings.Enabled = false
            Plrmouse = FindClosestPlayer()
        else
            Plrmouse = FindClosestPlayer()
            MouseLock.Settings.Enabled = true

        end
    end
end)

RunService.Stepped:connect(function()
    if MouseLock.Settings.Enabled == true  and getgenv().enable then
        local Vector = CurrentCamera:WorldToScreenPoint(Plrmouse.Character[MouseLock.Settings.AimPart].Position +
                                                            (Plrmouse.Character[MouseLock.Settings.AimPart].Velocity *
                                                                MouseLock.Settings.Prediction))
        mousemoverel(Vector.X - Mouse.X, Vector.Y - Mouse.Y)
    end

end)

mouselock:Toggle({Name="Toggle (b)",Callback=function(x)
    getgenv().enable = x
    end
})


mouselock:Box({Name="Prediction", Flag ="fsafsa51fsa", callback=function(x)
    getgenv().MouseLock.Settings.Prediction = x
end})

mouselock:Dropdown({Default = "UpperTorso", Content = {"HumanoidRootPart", "Head", "LowerTorso", "UpperTorso"}, MultiChoice = false, Flag = "Dropdown", Callback = function(x)
     getgenv().MouseLock.Settings.AimPart =x
 end})


 









--[[
local label = section:Label("Label")

local button = section:Button({Name = "Button", Callback = function()
   print("Button pressed")
end})

local toggle = section:Toggle({Name = "Toggle", Flag = "Toggle", callback = function(bool)
   print(bool)
end})



local box = section:Box({Name = "Box", Flag = "Box", Callback = function(box)
   print(box)
end})



local slider = section:Slider({Name = "Slider", Min = 10, Max = 100, Default = 20, Flag = "Slider", Callback = function(slider)
   print(slider)
end})



local dropdown = section:Dropdown({Default = "Option1", Content = {"Option1", "Option2"}, MultiChoice = false, Flag = "Dropdown", Callback = function(opt)
   print(opt)
end})

local keybind = section:Keybind({Name = "Keybind", Default = Enum.KeyCode.A,  Flag = "Keybind", Callback = function(key)
   print("keybind pressed")
end})



local toggleKeybind = section:ToggleKeybind({Name = "Toggle Keybind", Default = Enum.KeyCode.A,  KeybindFlag = "ToggleKeybind", ToggleFlag = "ToggleKeybindToggle", ToggleCallback = function(bool)
   print(bool)
end,
KeybindCallback = function(key)
   print("Toggle Keybind")
end})


local colorPicker = section:ColorPicker({name = "Color Picker", Default = Color3.fromRGB(255, 0, 255),  Flag = "Color Picker", Callback = function(color)
   print(color.r * 255, color.g * 255, color.b * 255)
end})

print(library.Flags["ToggleColorPicker"])

section:Button({Name = "Button", Callback = function()
   print("Button pressed")
end})
]]

while true do
    wait(1)
        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
                v:Destroy()
            end
        end
        game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
            repeat
                wait()
            until game.Players.LocalPlayer.Character
            char.ChildAdded:Connect(function(child)
                if child:IsA("Script") then 
                    wait(0.1)
                    if child:FindFirstChild("LocalScript") then
                        child.LocalScript:FireServer()
                    end
                end
            end)
        end)
    local glitch = false
    local clicker = false
    wait(1)
    end