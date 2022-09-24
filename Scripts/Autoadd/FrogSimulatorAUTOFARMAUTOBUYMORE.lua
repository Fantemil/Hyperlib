if game.PlaceId == 5598577415 then
 local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
 local Window = Library.CreateLib("Frog Simulator Script by lucky#9919", "Ocean")
    
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
    local MainSection = Main:NewSection("Autofarms")
    MainSection:NewLabel("AntiAFK should be on btw. if not just use")
    MainSection:NewLabel("infinite yield ;antiafk it should work")

    --FROGS
    MainSection:NewToggle("Autofarm frogs", "Autofarm frogs", function(state)
        if state then
            print("Now autofarming frogs")
            _G.autofarmFrogs = true
            spawn(function()
                while _G.autofarmFrogs == true do
                    game:GetService("ReplicatedStorage").NetActivation:FireServer()
                    wait(0.01)
                    wait()
                end
            end)
            --stop
        else
            print("Stopped autofarming frogs")
            _G.autofarmFrogs = false
        end
    end)
--SELL
MainSection:NewToggle("Auto sell", "Automatically sell your frogs", function(state)
    if state then
        print("Now auto selling")
        _G.autoSell = true
        spawn(function()
            while _G.autoSell == true do
                game:GetService("ReplicatedStorage").Sell:FireServer()
                wait(3)
                wait()
            end
        end)
        --stop
    else
        print("Stopped auto selling")
        _G.autoSell = false
    end
end)
--GEMS
MainSection:NewToggle("Autofarm gems (wait for stop)", "Autofarm gems (wait for stop)", function(state)
    if state then
        print("Now autofarming gems")
        _G.autofarmGems = true
        spawn(function()
        while _G.autofarmGems == true do
            for i, v in pairs(workspace.Gems:GetChildren()) do
                if v.Name == 'Gem1' then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait(0.1)
    
                elseif v.Name == 'Gem2' then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                wait(0.1)
                end
                -- -1051, 32, -1207 location of gem box
                local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                local location = CFrame.new(-1051, 32, -1207)
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                --jump yayayayay
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                pl.CFrame = location
                wait(0.2)
                wait()
                end
                end
        end)
    --stop
    else
        print("Stopped autofarming gems")
        _G.autofarmGems = false
    end
    end) 
--EGGS 9MIL
MainSection:NewToggle("Autofarm pets(9MIL/3SEC)", "Automatically open pet eggs (9MIL PER)", function(state)
    if state then
        print("Now autofarming pets (9mil)")
        _G.autofarmPets9mil = true
        spawn(function()
            while _G.autofarmPets9mil == true do
                local args = {
                    [1] = "Egg11"
                }game:GetService("ReplicatedStorage").Buy3Egg:FireServer(unpack(args))                
                wait(3)
                wait()
            end
        end)
        --stop
    else
        print("Stopped autofarming pets (9mil)")
        _G.autofarmPets9mil = false
    end
end)
--EGGS 30MIL
MainSection:NewToggle("Autofarm pets(30MIL/3SEC)", "Automatically open pet eggs (30MIL PER)", function(state)
    if state then
        print("Now autofarming pets (30mil)")
        _G.autofarmPets30mil = true
        spawn(function()
            while _G.autofarmPets30mil == true do
                local args = {
                    [1] = "Egg15"
                }game:GetService("ReplicatedStorage").Buy3Egg:FireServer(unpack(args))                
                wait(3)
                wait()
            end
        end)
        --stop
    else
        print("Stopped autofarming pets (30mil)")
        _G.autofarmPets30mil = false
    end
end)
--EGGS 150MIL
MainSection:NewToggle("Autofarm pets(150MIL/3SEC)", "Automatically open pet eggs (150MIL PER)", function(state)
    if state then
        print("Now autofarming pets (150mil)")
        _G.autofarmPets150mil = true
        spawn(function()
            while _G.autofarmPets150mil == true do
                local args = {
                    [1] = "Egg20"
                }game:GetService("ReplicatedStorage").Buy3Egg:FireServer(unpack(args))                
                wait(3)
                wait()
            end
        end)
        --stop
    else
        print("Stopped autofarming pets (150mil)")
        _G.autofarmPets150mil = false
    end
end)
--REBIRTH
MainSection:NewToggle("Auto rebirth", "Automatically rebirth when you can", function(state)
    if state then
        print("Now automatically rebirthing")
        _G.autoRebirth = true
        spawn(function()
            while _G.autoRebirth == true do
                game:GetService("ReplicatedStorage").Rebirth:FireServer()         
                wait(10)
                wait()
            end
        end)
        --stop
    else
        print("Stopped automatically rebirthing")
        _G.autoRebirth = false
    end
end)
--CHESTS
MainSection:NewButton("Redeem all chests", "Redeems all chests", function()
    local args = {
        [1] = "Chest1"
    }
    game:GetService("ReplicatedStorage").Chests:FireServer(unpack(args))
    local args = {
        [1] = "Chest2"
    }
    game:GetService("ReplicatedStorage").Chests:FireServer(unpack(args))
    local args = {
        [1] = "Chest3"
    }
    game:GetService("ReplicatedStorage").Chests:FireServer(unpack(args))
    local args = {
        [1] = "Chest4"
    }
    game:GetService("ReplicatedStorage").Chests:FireServer(unpack(args))
    local args = {
        [1] = "Chest5"
    }
    game:GetService("ReplicatedStorage").Chests:FireServer(unpack(args))
    local args = {
        [1] = "Chest6"
    }
    game:GetService("ReplicatedStorage").Chests:FireServer(unpack(args))
    print("Redeemed all chests")
end)
--CODES
MainSection:NewButton("Redeem all codes", "Redeems all codes", function()
    local args = {
        [1] = "HEART"
    }
    game:GetService("ReplicatedStorage").Redeem:FireServer(unpack(args))    
    local args = {
        [1] = "STAR"
    }
    game:GetService("ReplicatedStorage").Redeem:FireServer(unpack(args))    
    local args = {
        [1] = "POISON"
    }
    game:GetService("ReplicatedStorage").Redeem:FireServer(unpack(args))   
    local args = {
        [1] = "500"
    }
    game:GetService("ReplicatedStorage").Redeem:FireServer(unpack(args))     
    local args = {
        [1] = "COTTON CANDY"
    }
    game:GetService("ReplicatedStorage").Redeem:FireServer(unpack(args))    
    local args = {
        [1] = "WHITE DRAGON"
    }
    game:GetService("ReplicatedStorage").Redeem:FireServer(unpack(args))    
    local args = {
        [1] = "BAT"
    }
    game:GetService("ReplicatedStorage").Redeem:FireServer(unpack(args))    
    local args = {
        [1] = "ORB"
    }
    game:GetService("ReplicatedStorage").Redeem:FireServer(unpack(args))    
    print("Redeemed all codes")
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
    UniversalSection:NewSlider("Jumppower", "Changes your jumppower (default:50)", 250, 50, function(jumppowerset)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumppowerset
        print("changed jumppower to ", jumppowerset)
    end)

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
text.Text = "Game is not Frog Simulator. Script did not run "
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
errorquestion.Text = "If this is an error and you are on 5598577415 then dm lucky#9919"
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