pcall(function()
    if game.CoreGui["Legends Re:Written"] then
        game.CoreGui["Legends Re:Written"]:Destroy() 
    end
end)

local function getNearestChests()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Chests:GetChildren()) do
        if v.ClassName == "Model" and v:FindFirstChild("Main")  then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Main.Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;

Mobs = {}
for i, v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
    if
        v.ClassName == "Model" and v:FindFirstChild("NPC") and v:FindFirstChild("Head") and v.Head:FindFirstChild("HPGui") and
            not table.find(Mobs, v.Head:WaitForChild("HPGui").Frame.plrname.Text)
     then
        v.Name = string.sub(v.Name, i)
        pcall(function()
        table.insert(Mobs, v.Head.HPGui.Frame.plrname.Text)
        end)
    end
end

local client = game:GetService("Players").LocalPlayer
local user = client.Name
local TweenService = game:GetService("TweenService")
local noclipE = nil
local antifall = nil

local function noclip()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
    end
end

local function moveto(obj, speed)
    local info = TweenInfo.new(((client.Character.HumanoidRootPart.Position - obj.Position).Magnitude) / speed,Enum.EasingStyle.Linear)
    local tween = TweenService:Create(client.Character.HumanoidRootPart, info, {CFrame = obj})
    if not client.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", client.Character.HumanoidRootPart)
        antifall.Velocity = Vector3.new(0, 0, 0)
        noclipE = game:GetService("RunService").Stepped:Connect(noclip) 
        tween:Play()
    end

    tween.Completed:Connect(function()
        antifall:Destroy()
        noclipE:Disconnect()
    end)
end


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local window = library.new("Legends Re:Written")

-- themes
local themes = {
 Background = Color3.fromRGB(24, 24, 24),
 Glow = Color3.fromRGB(0, 0, 0),
 Accent = Color3.fromRGB(10, 10, 10),
 LightContrast = Color3.fromRGB(20, 20, 20),
 DarkContrast = Color3.fromRGB(14, 14, 14),  
 TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local Main = window:addPage("Main")
local Main = Main:addSection("Main")

local cust = window:addPage("Customization")
local cust = cust:addSection("Customization")

local Misc = window:addPage("Misc")
local Misc = Misc:addSection("Misc")

Main:addDropdown("Mobs", Mobs, function(x)
 getgenv().mf = x
end)


Main:addToggle("Auto Farm Mob", nil, function(x)
getgenv().farmmob = x
end)


Main:addDropdown("Attack Method", {"Left Sword", "Right Sword", "Dual Sword","Chakra Cloak Punch","Stand","God Speed", "Stand - Kira","Rinne","Susanoo","Demon"}, function(x)
getgenv().Method = x
end)

Main:addToggle("Auto Attack - Choose Method", nil, function(x)
getgenv().attack = x
end)

Main:addToggle("Auto Level Speed", nil, function(x)
getgenv().Autospeed = x
while getgenv().Autospeed do task.wait()
game:GetService("Players").LocalPlayer.PlayerGui.Parkour.Script.Dash:FireServer()
end
end)

--Misc
Misc:addToggle("Farm Chest", nil, function(x)
getgenv().Chest = x
    game:GetService("RunService").Stepped:connect(
        function()
            pcall(
                function()
                    if getgenv().Chest then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                end
            )
        end
    )
    spawn(
        function()
            while getgenv().Chest do
                wait(1)
                pcall(
                    function()
                        local Time =
                            (getNearestChests().Main.CFrame.p + Vector3.new(0, 0, 2) -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / getgenv().cSpeed
                        local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
                        local Tween =
                            game:GetService("TweenService"):Create(
                            game.Players.LocalPlayer.Character.HumanoidRootPart,
                            Info,
                            {CFrame = CFrame.new(getNearestChests().Main.CFrame.p + Vector3.new(0, 0, 2))}
                        )
                        Tween:Play()
                        repeat
                            wait()
                        until (getNearestChests().Main.CFrame.p + Vector3.new(0, 0, 2) -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                        wait(2)
                        if getNearestChests().Claimed.Value == false then
                            game:GetService("Players").LocalPlayer.PlayerGui.Loot.Ado.PickUp:FireServer(
                                getNearestChests(),
                                game:GetService("Players").LocalPlayer.Character
                            )
                        end
                        wait(0.5)
                        for i = 1, 10 do
                            wait(0.1)
                            for _, v in pairs(game:GetService("Workspace").Drops:GetDescendants()) do
                                if
                                    v:IsA("TouchTransmitter") and
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude <
                                            50
                                 then
                                    wait()
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                                    wait()
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                                end
                            end
                        end
                    end
                )
            end
        end
    )
end)

Misc:addSlider("Chest Farm Speed", 300, 300, 5000, function(x)
    getgenv().cSpeed = x
end)

Misc:addButton("Redeem All Codes", function ()
game:GetService("ReplicatedStorage").Remotes.m15visits:FireServer()
game:GetService("ReplicatedStorage").Remotes.k60likes:FireServer()
game:GetService("ReplicatedStorage").Remotes.MarinefordCode:FireServer()
game:GetService("ReplicatedStorage").Remotes.k55Likes:FireServer()
end)


Misc:addButton("Role Ur Blessing", function ()
    game:GetService("ReplicatedStorage").Remotes.NewBlessing:FireServer()
end)



--Customizations
cust:addTextbox("Custom Shirt - Asset id", "Asset id", function(value)
local args = {
    [1] = value
}

game:GetService("ReplicatedStorage").Remotes.AddShirt:FireServer(unpack(args))
end)


cust:addTextbox("Custom Pants - Asset id", "Asset Id", function(value)
local args = {
    [1] = value
}

game:GetService("ReplicatedStorage").Remotes.AddPants:FireServer(unpack(args))
end)

cust:addTextbox("Custom Face - Asset id", "Asset Id", function(value)
local args = {
    [1] = value
}

game:GetService("ReplicatedStorage").Remotes.AddFace:FireServer(unpack(args))
end)


cust:addToggle("Rainbow Character", nil, function(value)
getgenv().rc = value
    while getgenv().rc do task.wait()
    local args = {
        [1] = math.random(1,255),
        [2] = math.random(1,255),
        [3] = math.random(1,255)
    }
    
    game:GetService("ReplicatedStorage").Remotes.AddSkin:FireServer(unpack(args))
    end
end)

cust:addToggle("Rainbow Hair", nil, function(value)
getgenv().rh = value
    while getgenv().rh do task.wait()
        local args = {[1] = "NeonGreen"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "SeaGreen"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "DarkGreen"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "BabyBlue"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Blue"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "SteelBlue"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "DarkBlue"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Lapis"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Pink"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Violet"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Purple"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "DarkPurple"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Plum"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Bronze"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Brown"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "BrightGreen"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Maroon"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "LightBlonde"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Red"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Tan"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "DarkOrange"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "White"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "DarkOrange"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Orange"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Gray"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Gold"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Black2"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Blonde"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
        local args = {[1] = "Black1"}
        game:GetService("ReplicatedStorage").Remotes.HairColor:FireServer(unpack(args))
        wait(0.1)
    end
end)

--Functions
task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Left Sword" then
                repeat task.wait(0.3)
                    game:GetService("Players").LocalPlayer.Character.LeftSword.SwordScript.Activate:FireServer()
            until not getgenv().attack or not getgenv().Method == "Left Sword"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Right Sword" then
                repeat task.wait(0.3)
                    game:GetService("Players").LocalPlayer.Character.RightSword.SwordScript.Activate:FireServer()
            until not getgenv().attack or not getgenv().Method == "Right Sword"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Dual Sword" then
                repeat task.wait(0.3)
                    game:GetService("Players").LocalPlayer.Character.DualSwords.SwordScript.Activate:FireServer()
             until not getgenv().attack or not getgenv().Method == "Dual Sword"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Chakra Cloak Punch" then
                repeat task.wait(0.3)
                    game:GetService("Players").LocalPlayer.Character.Chakra.SwordScript.Activate:FireServer()
             until not getgenv().attack or not getgenv().Method == "Chakra Cloak Punch"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Stand" then
                repeat task.wait(0.3)
                    game:GetService("Players").LocalPlayer.Character.Warudo.SwordScript.Activate:FireServer()
             until not getgenv().attack or not getgenv().Method == "Stand"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "God Speed" then
                repeat task.wait(0.3)
                        game:GetService("Players").LocalPlayer.Character.GodSpeed.ServerScript.Charge:FireServer()
             until not getgenv().attack or not getgenv().Method == "God Speed"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Stand - Kira" then
                repeat task.wait(0.3)
                    game:GetService("Players").LocalPlayer.Character.Kira.SwordScript.Plant:FireServer()
             until not getgenv().attack or not getgenv().Method == "Stand - Kira"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Rinne" then
                repeat task.wait(0.3)
                        game:GetService("Players").LocalPlayer.Character.Rinne.SwordScript.Activate:FireServer()
             until not getgenv().attack or not getgenv().Method == "Rinne"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Susanoo" then
                repeat task.wait(0.3)
                        game:GetService("Players").LocalPlayer.Character.Susanoo.SwordScript.Activate:FireServer()
             until not getgenv().attack or not getgenv().Method == "Susanoo"
        end
    end
end)
end)

task.spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().attack == true and getgenv().Method == "Demon" then
                repeat task.wait(0.3)
                        game:GetService("Players").LocalPlayer.Character.Demon.SwordScript.Activate:FireServer()
             until not getgenv().attack or not getgenv().Method == "Demon"
        end
    end
end)
end)


task.spawn(function()
    pcall(function()
    while task.wait() do
        if getgenv().farmmob == true then
            for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
                if string.match(v.Name, getgenv().mf) then
                    pcall(function()
                    while v.Humanoid.Health > 0 and getgenv().farmmob do
                        repeat task.wait()
                            moveto(v:GetModelCFrame()*CFrame.new(0,0,0), 250)
                        until v.Humanoid.Health > 0 or not getgenv().farmmob or not v:IsDescendantOf(workspace)                                    
                                end
                            end)
                        end
                    end
                end
            end
        end)
    end)
venyx:SelectPage(venyx.pages[1], true)