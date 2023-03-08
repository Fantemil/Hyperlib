local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
OrionLib:MakeNotification({
    Name = "Hydra Network",
    Content = "Hydra Network is Loading.",
    Image = "rbxassetid://4483345998",
    Time = 4
})
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
wait(4)
OrionLib:MakeNotification({
    Name = "Hydra Network",
    Content = "Hydra Network is Ready!",
    Image = "rbxassetid://4483345998",
    Time = 2
})
local Window = OrionLib:MakeWindow({Name = "Hydra Network |Evade|", HidePremium = false,IntroText = "Evade V2.", SaveConfig = false, ConfigFolder = "OrionTest"})

--locals
local GuiService = game:GetService("GuiService")
local Light = game:GetService("Lighting")

--functions and shit

AutoSlide = true
money = true
revivedie = true
autowistle = true
autochat = true
autofarm = true

function functionautofarm()
    while autofarm == true do task.wait()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(3080.2978515625, -740.00439453125, 16.78089714050293)
        wait(0.0000000000000001)
    end
end

function SpamChat()
    while autochat == true do
        local ohString1 = "Hydra Network on top"
        local ohString2 = "All"
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
        wait(1)
    end
end

function autowistlefunction()
    while autowistle == true do
        local ohString1 = "Whistle"
        local ohBoolean2 = true
        game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire(ohString1, ohBoolean2)
        game:GetService("ReplicatedStorage").Events.Whistle:FireServer()
        wait(5)
    end
end

function god()
    while revivedie == true do
        game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
        wait()
    end
end
            


function dofullbright()
    Light.Ambient = Color3.new(1, 1, 1)
    Light.ColorShift_Bottom = Color3.new(1, 1, 1)
    Light.ColorShift_Top = Color3.new(1, 1, 1)
    game.Lighting.FogEnd = 100000
    game.Lighting.FogStart = 0
    game.Lighting.ClockTime = 14
    game.Lighting.Brightness = 2
    game.Lighting.GlobalShadows = false
end

function freemoney()
    while money == true do
        local ohString1 = "Free money <font color=\"rgb(100,255,100)\">($99999)</font>"
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Messages.Use:Fire(ohString1)
        wait(5)
    end
end

function Autoslide()
    while AutoSlide == true do
    game:GetService("ReplicatedStorage").ModuleStorage.WeaponBase.Framework.BaseVM.Slide:Fire()
    local ohString1 = "Crouch"
    local ohBoolean2 = true
    game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire(ohString1, ohBoolean2)
    wait()
    end
end
    

function Notification()
OrionLib:MakeNotification({
    Name = "Respawning...",
    Content = "You pressed the respawn keybind",
    Image = "rbxassetid://4483345998",
    Time = 5
})
end

OrionLib:MakeNotification({
    Name = "Welcome To Hydra Network",
    Content = "Thanks for using Hydra Network!",
    Image = "rbxassetid://4483345998",
    Time = 5
})
    

function RandomEmote()
    OrionLib:MakeNotification({
        Name = "Random Emoting...",
        Content = "You pressed the Random Emote keybind",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end


--tabs

local MainTab= Window:MakeTab({
 Name = "Main features",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local MiscTab= Window:MakeTab({
 Name = "Extra",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local ESPTab = Window:MakeTab({
    Name =  "Tracers",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TeleportTab= Window:MakeTab({
    Name = "Teleport",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local FunTab= Window:MakeTab({
    Name = "Fun",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
 Name = "Credits",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = true
})

--sliders

local MainTab3 = MainTab:AddSection({
 Name = "Sliders"
})

local TargetWalkspeed
MainTab:AddSlider({
 Name = "Speed",
 Min = -2,
 Max = 100,
 Default = -2,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 Callback = function(Value)
  TargetWalkspeed = Value
 end   
})

MainTab:AddSlider({
    Name = "Hip height",
    Min = -1.40,
    Max = 100,
    Default = -1.40,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    Callback = function(HipValue)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipValue
    end    
})


--toggles

local FunTab2 = FunTab:AddSection({
 Name = "Toggles"
})

local MiscTab3 = MainTab:AddSection({
 Name = "Toggles"
})

MainTab:AddToggle({
 Name = "AutoFarm",
 Default = false,
 Callback = function(Value)
        autofarm = Value
        functionautofarm()
 end    
})

FunTab:AddToggle({
 Name = "Spam Chat",
 Default = false,
 Callback = function(Value)
        autochat = Value
        SpamChat()
 end    
})

FunTab:AddToggle({
 Name = "AutoSlide (press c for onces after turning on)",
 Default = false,
 Callback = function(Value)
        AutoSlide = Value
  Autoslide()
 end    
})

FunTab:AddToggle({
 Name = "fake money giver",
 Default = false,
 Callback = function(Value)
        money = Value
        freemoney()
 end    
})

MainTab:AddToggle({
 Name = "auto respawn (you respawn when you get downed)",
 Default = false,
 Callback = function(Value)
        revivedie = Value
        god()
 end    
})

FunTab:AddToggle({
 Name = "Auto Wistle",
 Default = false,
 Callback = function(Value)
  autowistle = Value
        autowistlefunction()
 end    
})

--buttons

local FunTab3 = FunTab:AddSection({
 Name = "Buttons"
})

local MiscTab2 = MiscTab:AddSection({
 Name = "Buttons"
})

MiscTab:AddButton({
 Name = "Inf Jump",
 Callback = function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
   end    
})

MiscTab:AddButton({
 Name = "Q to Teleport",
 Callback = function()
        plr = game.Players.LocalPlayer 
        hum = plr.Character.HumanoidRootPart 
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == "q" then
            if mouse.Target then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
                end
            end
        end)
   end    
})

MiscTab:AddButton({
 Name = "Full Bright",
 Callback = function()
        dofullbright()
   end    
})

MiscTab:AddButton({
 Name = "Return Too Main Menu",
 Callback = function()
        game:GetService("ReplicatedStorage").Events.ReturnToMenu:FireServer()
   end    
})

MiscTab:AddButton({
 Name = "Low Quality",
 Callback = function()
        local ohString1 = "LowQuality"
        local ohBoolean2 = true
        game:GetService("ReplicatedStorage").Events.UpdateSetting:FireServer(ohString1, ohBoolean2)
   end    
})

FunTab:AddButton({
    Name = "Free cam (shift + P)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/script/main/Freecam.lua"))()
      end    
})


--credits FeIix#9431
FunTab:AddButton({
    Name = "Server Crasher",
    Callback = function()
        while task.wait() do
            game:GetService("ReplicatedStorage").Events.Reset:FireServer()
            game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
        end
      end    
})

TeleportTab:AddButton({
    Name = "Main Game",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 9872472334
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
      end    
})


TeleportTab:AddButton({
    Name = "Casual",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 10662542523
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
      end    
})

TeleportTab:AddButton({
    Name = "Social Space",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 10324347967
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
      end    
})

TeleportTab:AddButton({
    Name = "Big Team",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 10324346056
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
      end    
})

TeleportTab:AddButton({
    Name = "Team DeathMatch",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 110539706691
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
      end    
})

local MiscTab2 = MiscTab:AddSection({
 Name = "Item Giver"
})

MiscTab:AddButton({
 Name = "Alpha Skin (Permanant)",
 Callback = function()
        game:GetService("ReplicatedStorage").Events.UI.Purchase:InvokeServer("Skins", "AlphaTester")
   end    
})

MiscTab:AddButton({
 Name = "Boombox Skin (Permanant)",
 Callback = function()
        game:GetService("ReplicatedStorage").Events.UI.Purchase:InvokeServer("Skins", "Boombox")
   end    
})

MiscTab:AddButton({
 Name = "Test Emote (Permanant)",
 Callback = function()
        game:GetService("ReplicatedStorage").Events.UI.Purchase:InvokeServer("Emotes", "Test")
   end    
})

--keybinds

local MiscTab1 = MiscTab:AddSection({
 Name = "KeyBinds"
})

local FunTab1 = FunTab:AddSection({
 Name = "KeyBinds"
})

MiscTab:AddBind({
 Name = "Random Vote",
 Default = Enum.KeyCode.X,
 Hold = false,
 Callback = function()
        local RandomVote = math.random(3)
  local ohNumber1 = (RandomVote)
        game:GetService("ReplicatedStorage").Events.Vote:FireServer(ohNumber1)
 end    
})

FunTab:AddBind({
 Name = "Random Emote",
 Default = Enum.KeyCode.Z,
 Hold = false,
 Callback = function()
        local number = math.random(4)
        local ohString1 = (number)
        game:GetService("ReplicatedStorage").Events.Emote:FireServer(ohString1)
        RandomEmote()
 end    
})

MiscTab:AddBind({
 Name = "Respawn",
 Default = Enum.KeyCode.R,
 Hold = false,
 Callback = function()
        game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
        Notification()
 end    
})

--test

ESPTab:AddToggle({
    Name = "Esp",
    Default = true,
    Callback = function(Value)
        getgenv().toggleespmpt = Value
    end    
})

ESPTab:AddColorpicker({
    Name = "Colour",
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(Value)
        getgenv().mptespcolour = Value
    end  
})

--credits

CreditsTab:AddParagraph("Owner/Main Dev","hydra#1000")
CreditsTab:AddParagraph("Credits","Felix and ss.spooky.ss")


local cam = workspace.CurrentCamera
local rs = game:GetService'RunService'

getgenv().toggleespmpt = true
function esp(plr)
   if game:GetService'Players':GetPlayerFromCharacter(plr) == nil then
    local rat = Drawing.new("Line")
        rs.RenderStepped:Connect(function()
            if plr:FindFirstChild'HumanoidRootPart' then
                local vector,screen = cam:WorldToViewportPoint(plr.HumanoidRootPart.Position)
                if screen then
                    rat.Visible = toggleespmpt
                    rat.From = Vector2.new(cam.ViewportSize.X / 2,cam.ViewportSize.Y / 1)
                    rat.To = Vector2.new(vector.X,vector.Y)
                    rat.Color = getgenv().mptespcolour
                    rat.Thickness = getgenv().mptespthickness
                    else
                        rat.Visible = false
                end
                else
                    pcall(function()
                    rat.Visible = false
                    end)
            end
                if not plr:FindFirstChild'HumanoidRootPart' or not plr:FindFirstChild'HumanoidRootPart':IsDescendantOf(game:GetService'Workspace') then
                    pcall(function()
                    rat:Remove()
                    end)
            end
        end)
   end
end

for i,v in pairs(game:GetService'Workspace'.Game.Players:GetChildren()) do
    esp(v)
end

game:GetService'Workspace'.Game.Players.ChildAdded:Connect(function(plr)
    esp(plr)
end)

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)

setclipboard("https://discord.gg/k9a4zym5uG")

OrionLib:MakeNotification({
Name = "Join Discord",
Content = "Join the Discord Copied in your clip Board",
Image = "rbxassetid://4483345998",
Time = 5
})

OrionLib:Init()