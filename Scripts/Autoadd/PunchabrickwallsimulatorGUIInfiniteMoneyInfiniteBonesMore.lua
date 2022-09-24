if game.PlaceId == 9662949425 then
 local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
 local Window = Library.CreateLib("Punch a brick wall Simulator Script by lucky#9919", "Ocean")
    
    _G.antiAFK = true

        --antiAFK credit: https://www.reddit.com/r/ROBLOXExploiting/comments/kdpuov/comment/gfzp16y/?utm_source=share&utm_medium=web2x&context=3
spawn(function()
    while _G.antiAFK == true do
game:GetService('Players').LocalPlayer.Idled:Connect(function()
game:GetService('VirtualUser'):CaptureController(); wait();
game:GetService('VirtualUser'):ClickButton2(Vector2.new(0,0)) end)
wait()
end
end)
    
    --MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Game")
    MainSection:NewLabel("AntiAFK should be on btw. if not just use")
    MainSection:NewLabel("infinite yield ;antiafk it should work")
--REJOIN
 MainSection:NewButton("Rejoin", "rejoins the server incase rebirth broke", function()
 game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
 print("rejoined")
 end)
--INF MONEY
    MainSection:NewButton("Infinite money", "Gives you infinite money", function()
        local args = {
            [1] = math.huge
        }
        workspace.ChangeMoney:FireServer(unpack(args))        
        print("Gave infinite money")
    end)
--INF BONES
MainSection:NewButton("Infinite bones", "Gives you infinite bones", function()
    local args = {
        [1] = math.huge,
        [2] = math.huge
    }
    workspace.AddBones:FireServer(unpack(args))
    print("Gave infinite bones")
end)
--BUY ALL ANIMATIONS
MainSection:NewButton("Buy all animations", "Buys all the animations", function()
    local args = {
        [1] = 500,
        [2] = "Headbutt",
        [3] = "rbxassetid://9847758182"
    }
    game:GetService("ReplicatedStorage").buyAnimation:FireServer(unpack(args))    
    local args = {
        [1] = 1000,
        [2] = "Kick",
        [3] = "rbxassetid://9800328889"
    }
    game:GetService("ReplicatedStorage").buyAnimation:FireServer(unpack(args))    
    local args = {
        [1] = 10000,
        [2] = "Uppercut",
        [3] = "rbxassetid://9848568040"
    }
    game:GetService("ReplicatedStorage").buyAnimation:FireServer(unpack(args))    
    local args = {
        [1] = 1000000,
        [2] = "Roundhouse Kick",
        [3] = "rbxassetid://9800387507"
    }
    game:GetService("ReplicatedStorage").buyAnimation:FireServer(unpack(args))    
    local args = {
        [1] = 9000000,
        [2] = "Rocket Fist",
        [3] = "rbxassetid://9853165620"
    }
    game:GetService("ReplicatedStorage").buyAnimation:FireServer(unpack(args))    
    local args = {
        [1] = 125000000,
        [2] = "R6 Punch",
        [3] = "rbxassetid://9848646407"
    }
    game:GetService("ReplicatedStorage").buyAnimation:FireServer(unpack(args))    
    local args = {
        [1] = 150000000,
        [2] = "360 Wavedash Flick",
        [3] = "rbxassetid://9848429130"
    }
    game:GetService("ReplicatedStorage").buyAnimation:FireServer(unpack(args))    
    local args = {
        [1] = 1000000000,
        [2] = "Chainsaw Hand",
        [3] = "rbxassetid://9853205101"
    }
    game:GetService("ReplicatedStorage").buyAnimation:FireServer(unpack(args))    
print("Bought all animations")
end)
    --STRENGTH
    MainSection:NewToggle("Upgrade strength", "Upgrade strength", function(state)
        if state then
            print("Now upgrading strength")
            _G.upgradeStrength = true
            spawn(function()
                while _G.upgradeStrength == true do
                    workspace.UpgradeStrength:FireServer()
                    wait(0.01)
                wait()
                end
            end)
            --stop
        else
            print("Stopped autofarming strength")
            _G.upgradeStrength = false
        end
    end)
--BONES
MainSection:NewToggle("Upgrade bones", "Upgrade bones", function(state)
    if state then
        print("Now upgrading bones")
        _G.upgradeBones = true
        spawn(function()
            while _G.upgradeBones == true do
                workspace.UpgradeBone:FireServer()
                wait(0.01)
            wait()
            end
        end)
        --stop
    else
        print("Stopped upgrading bones")
        _G.upgradeBones = false
    end
end)
--AUTOFARM REBIRTHS
MainSection:NewToggle("Autofarm rebirths", "Autofarms rebirths", function(state)
if state then
    print("Now autofarming rebirths")
    _G.autofarmRebirths = true
    spawn(function()
    while _G.autofarmRebirths == true do
        game:GetService("ReplicatedStorage").Rebirth:FireServer()
        local args = {
            [1] = math.huge
        }
        workspace.ChangeMoney:FireServer(unpack(args))        
        wait(0.01)
        wait()
    end
    end)
    --stop
else
    print("Stopped autofarming rebirths")
    _G.autofarmRebirths = false
end
end)
--SELL
MainSection:NewToggle("Auto sell", "Automatically sell your frogs", function(state)
    if state then
        print("Now auto selling")
        _G.autoSell = true
        spawn(function()
            while _G.autoSell == true do
                -- location of sell area -20 3 25
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-20, 3, 25)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                --jump
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                pl.CFrame = location
                wait(0.01)
                wait()
            end
        end)
        --stop
    else
        print("Stopped auto selling")
        _G.autoSell = false
    end
end)

    --UNIVERSAL
    local Universal = Window:NewTab("Universal")
    local UniversalSection = Universal:NewSection("Universal")    
    --speed
    UniversalSection:NewSlider("Walkspeed", "Changes your walkspeed (default:16)", 500, 16, function(speedset)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedset
        print("changed walkspeed to ", speedset)
    end)
--jumppower
    UniversalSection:NewLabel("Jump power is broken in this game")

    UniversalSection:NewButton("Reset walkspeed and jumppower", "reset your walkspeed and jumppower", function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        print("Reset your walkspeed and jumppower")
    end)

--infjump
UniversalSection:NewButton("Infinite Jump press F to toggle", "Infinitely jump (press F to toggle)", function()
    print("Now infinite jumping")
-- //~ F to toggle ~\\ --
print("started the infinite jump script")
_G.infinjump = true

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "f" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
end)

--the error gui cuz a diff game
else 
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local text = Instance.new("TextLabel")
local errorquestion = Instance.new("TextLabel")
local closebutton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
main.Position = UDim2.new(0.303797454, 0, 0.320245385, 0)
main.Size = UDim2.new(0, 577, 0, 342)
main.Active = true
main.Draggable = true

text.Name = "text"
text.Parent = main
text.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
text.BorderColor3 = Color3.fromRGB(255, 0, 0)
text.BorderSizePixel = 0
text.Size = UDim2.new(0, 577, 0, 117)
text.Font = Enum.Font.SourceSans
text.Text = "Game is not Punch a brick wall simulator. Script did not run "
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextSize = 31.000

errorquestion.Name = "errorquestion"
errorquestion.Parent = main
errorquestion.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
errorquestion.BorderColor3 = Color3.fromRGB(255, 0, 0)
errorquestion.BorderSizePixel = 0
errorquestion.Position = UDim2.new(0.24783361, 0, 0.234635338, 0)
errorquestion.Size = UDim2.new(0, 291, 0, 117)
errorquestion.Font = Enum.Font.SourceSans
errorquestion.Text = "If this is an error and you are on 9662949425 then dm lucky#9919"
errorquestion.TextColor3 = Color3.fromRGB(255, 255, 255)
errorquestion.TextScaled = true
errorquestion.TextSize = 34.000
errorquestion.TextWrapped = true

closebutton.Name = "closebutton"
closebutton.Parent = main
closebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closebutton.Position = UDim2.new(0.325823218, 0, 0.707602322, 0)
closebutton.Size = UDim2.new(0, 200, 0, 50)
closebutton.Font = Enum.Font.SourceSans
closebutton.Text = "Close"
closebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
closebutton.TextSize = 57.000
closebutton.MouseButton1Down:connect(function()
main.Visible = false
 end)
end