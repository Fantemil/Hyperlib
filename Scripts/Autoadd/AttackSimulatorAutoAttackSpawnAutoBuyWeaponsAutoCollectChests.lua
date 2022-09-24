local function Attack()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
end

local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Soggy Hub ")

local serv = win:Server("Attack Simulator", "")

local btns = serv:Channel("Autofarm")

local hum = game.Players.LocalPlayer.Character.HumanoidRootPart

btns:Seperator()

btns:Toggle("Auto Attack | Spawn",false, function(bool)
    getgenv().autofarm = bool 

    while autofarm do 
        for i,v in next, game:GetService("Workspace")["__AREAS"].Spawn:GetDescendants() do
            if v.Name == "Health" then wait()
                repeat          
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame wait()
                until v.Value == 0
                wait()
            end
        end
    end
end)

btns:Seperator()

btns:Toggle("Auto Attack | Snow",false, function(bool)
    getgenv().snowautofarm = bool 

    while snowautofarm do 
        for i,v in next, game:GetService("Workspace")["__AREAS"].Snow:GetDescendants() do
            if v.Name == "Health" then wait()
                repeat          
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame wait()
                until v.Value == 0
                wait()
            end
        end
    end
end)

btns:Seperator()

btns:Toggle("Auto Attack | Youtube",false, function(bool)
    getgenv().youtube = bool 

    while youtube do 
        for i,v in next, game:GetService("Workspace")["__AREAS"].Youtube:GetDescendants() do
            if v.Name == "Health" then wait()
                repeat          
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame wait()
                until v.Value == 0
                wait()
            end
        end
    end
end)

btns:Seperator()

btns:Toggle("Auto Attack | Lava",false, function(bool)
    getgenv().lava = bool 

    while lava do 
        for i,v in next, game:GetService("Workspace")["__AREAS"].Lava:GetDescendants() do
            if v.Name == "Health" then wait()
                repeat          
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame wait()
                until v.Value == 0
                wait()
            end
        end
    end
end)

btns:Seperator()

btns:Toggle("Auto Attack | Ocean",false, function(bool)
    getgenv().ocean = bool 

    while ocean do 
        for i,v in next, game:GetService("Workspace")["__AREAS"].Ocean:GetDescendants() do
            if v.Name == "Health" then wait()
                repeat          
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame wait()
                until v.Value == 0
                wait()
            end
        end
    end
end)

btns:Seperator()

btns:Toggle("Auto Attack | Void",false, function(bool)
    getgenv().Void = bool 

    while Void do 
        for i,v in next, game:GetService("Workspace")["__AREAS"].Void:GetDescendants() do
            if v.Name == "Health" then wait()
                repeat          
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame wait()
                until v.Value == 0
                wait()
            end
        end
    end
end)

btns:Seperator()

local btns = serv:Channel("Auto Buy")

btns:Seperator()

btns:Toggle("Auto Buy Weapons",false, function(bool)
    getgenv().autobuyweps = bool 

    while autobuyweps do wait()
                    
        local tbl = {}
        local order = {}
        for a,b in pairs(game:GetService("ReplicatedStorage")["__CANNONS"]:GetChildren()) do 
            table.insert(tbl, b)
        for i, v in ipairs(tbl) do
           table.insert(order, i)
            wait()
                local args = {
                    [1] = (#order),
                    [2] = "Cannons"
                }

                game:GetService("ReplicatedStorage").__REMOTES.__Buy_System:InvokeServer(unpack(args))
            end
        end
    end
end)

local btns = serv:Channel("Chests")

btns:Seperator()

btns:Toggle("Auto Collect Chests",false, function(bool)
    getgenv().autochests = bool 

    while autochests do wait()
        for i,v in pairs(game:GetService("Workspace")["__CHESTS"]:GetDescendants()) do 
            if v.Name == "TouchInterest" and v.Parent then wait()
                firetouchinterest(hum, v.Parent, 0)
                firetouchinterest(hum, v.Parent, 1)
            end
        end
    end
end)

local btns = serv:Channel("Eggs")

btns:Seperator()

btns:Toggle("Single Open Egg Your Near",false, function(bool)
    getgenv().singleEgg = bool 
    
    while singleEgg do wait()
        keypress(0x45)
        keyrelease(0x45)
    end
end)

btns:Seperator()

btns:Toggle("Triple Open Egg Your Near",false, function(bool)
    getgenv().tripleEgg = bool 
    
    while tripleEgg do wait()
        keypress(0x52)
        keyrelease(0x52)
    end
end)

local btns = serv:Channel("Player")

btns:Seperator()

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