local function luffyBuy()
    for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Tycoons.Luffy.Template.Buttons:GetChildren()) do 

        print(v.Name)
        
        local args = {
            [1] = "BuyButton",
            [2] = (v.Name)
        }
        
        game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects.UpdateTycoons:FireServer(unpack(args))
    end
end

local function autoCollect()
    local args = {
        [1] = "CollectMoney"
    }

    game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects.UpdateTycoons:FireServer(unpack(args))
end

local function gokuBuy()
    for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Tycoons.Goku.Template.Buttons:GetChildren()) do 

        print(v.Name)
        
        local args = {
            [1] = "BuyButton",
            [2] = (v.Name)
        }
        
        game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects.UpdateTycoons:FireServer(unpack(args))
    end
end

local function narutoBuy()
    for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Tycoons.Naruto.Template.Buttons:GetChildren()) do 

        print(v.Name)
        
        local args = {
            [1] = "BuyButton",
            [2] = (v.Name)
        }
        
        game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects.UpdateTycoons:FireServer(unpack(args))
    end
end

local function attack()
    local args = {
        [1] = "RequestAction",
        [2] = "Combat",
        [3] = "Combat"
    }

    game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects.UpdateMelee:FireServer(unpack(args))
end

local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Soggy Hub ")

local serv = win:Server("Anime Battle Tycoon", "")

local btns = serv:Channel("Main")

local hum = game.Players.LocalPlayer.Character.HumanoidRootPart

btns:Seperator()

btns:Toggle("Auto Collect Cash",false, function(bool)
    getgenv().autoCollectCash = bool

    while autoCollectCash do wait()
        autoCollect()
    end
end)

btns:Seperator()

btns:Toggle("Auto Farm Luffy Tycoon",false, function(bool)
    getgenv().luffyfarm = bool

    while luffyfarm do wait()
        luffyBuy()
    end
end)

btns:Seperator()

btns:Toggle("Auto Farm Goku Tycoon",false, function(bool)
    getgenv().gokufarm = bool

    while gokufarm do wait()
        gokuBuy()
    end
end)

btns:Seperator()

btns:Toggle("Auto Farm Naruto Tycoon",false, function(bool)
    getgenv().narutofarm = bool

    while narutofarm do wait()
        narutoBuy()
    end
end)

btns:Seperator()

local btns = serv:Channel("Combat")

btns:Seperator()

btns:Toggle("Auto Kill Enemies",false, function(bool)
    getgenv().autokill = bool 

    while autokill do wait()
        attack()
        for i,v in pairs(game:GetService("Workspace").Enemies.Home.Spawns:GetChildren()) do
            if v:IsA"Part" then 
                hum.CFrame = v.CFrame 
                wait(5) 
            end
        end
    end
end)


local btns = serv:Channel("Player")

local sldr = btns:Slider("Walkspeed!", 20, 200, 0, function(t)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

btns:Seperator()

local sldr = btns:Slider("JumpPower!", 20, 500, 0, function(t)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
end)

btns:Seperator()

btns:Toggle("GodMode",false, function(bool)
 if bool then wait()
     local Cam = workspace.CurrentCamera
     local Pos, Char = Cam.CFrame, speaker.Character
     local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
     local nHuman = Human.Clone(Human)
     nHuman.Parent, speaker.Character = Char, nil
     nHuman.SetStateEnabled(nHuman, 15, false)
     nHuman.SetStateEnabled(nHuman, 1, false)
     nHuman.SetStateEnabled(nHuman, 0, false)
     nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
     speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
     nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
     local Script = Char.FindFirstChild(Char, "Animate")
     if Script then
      Script.Disabled = true
      wait()
      Script.Disabled = false
     end
     nHuman.Health = nHuman.MaxHealth
 end
end)

btns:Seperator()

btns:Toggle("Infinite Jump",false, function(bool)
 local inf_jump_toggle = bool

 if inf_jump_toggle == bool then
  local UserInputService = game:GetService("UserInputService")

  local SpaceBar = Enum.KeyCode.Space
  
  local function IsShiftKeyDown()
   return UserInputService:IsKeyDown(SpaceBar) 
  end

  if getgenv().INFJUMP == bool then
   local function Input(input, gameProcessedEvent)
    if not IsShiftKeyDown() then
     print("")
    else
     game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
   end
  end
  
  UserInputService.InputBegan:Connect(Input)
 end
end)

local btns = serv:Channel("Settings")

btns:Toggle("Shadows",false, function(bool)
    game:GetService("Lighting").GlobalShadows = bool
end)

btns:Seperator()

local sldr = btns:Slider("Lighting Brightness!", 0, 200, 0, function(t)
    game:GetService("Lighting").Brightness = t
end)

btns:Seperator()

local sldr = btns:Slider("Exposure!", 0, 200, 0, function(t)
    game:GetService("Lighting").ExposureCompensation = t
end)

btns:Seperator()

btns:Label("Ambient.")

btns:Colorpicker("Ambient", Color3.fromRGB(255, 255, 255), function(t)
    game:GetService("Lighting").Ambient = t
end)

btns:Seperator()

btns:Label("Format | 12:12:12")

btns:Textbox("Time", "Can Only Be Numbers!", true, function(t)
    game:GetService("Lighting").TimeOfDay = t
end)

local btns = serv:Channel("Important!")

btns:Button("Discord Server", function()
    DiscordLib:Notification("Notification", "You will be prompted a discord invite.", "Okay!")
         local http = game:GetService('HttpService') 
 if toClipboard then
  toClipboard('https://discord.gg/DMTKwpEWnR')
 else
 end
 local req = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
 if req then
  req({
   Url = 'http://127.0.0.1:6463/rpc?v=1',
   Method = 'POST',
   Headers = {
    ['Content-Type'] = 'application/json',
    Origin = 'https://discord.com'
   },
   Body = http:JSONEncode({
    cmd = 'INVITE_BROWSER',
    nonce = http:GenerateGUID(false),
    args = {code = 'GYrTQEryum'}
   })
  })
 end
end)

btns:Seperator()

btns:Button("Owner + Scripter", function()
    if setclipboard then 
        setclipboard("sunken#0001")
    elseif toClipboard then 
        toClipboard("sunken#0001")
    end
end)