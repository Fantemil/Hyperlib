-- Game ID: 10894722579

getgenv().autoCollectEnabled = true
getgenv().autoSellEnabled = true
getgenv().autoBuyEnabled = true
getgenv().infiniteJumpEnabled = true
getgenv().clickTpEnabled = true
getgenv().autoObbyEnabled = true

-------- Config -------------------

local function destroyIfExists(obj)
    if obj then
        obj:Destroy()
    end
end

function teleportLocalPlayer(input)
    local Player = game.Players.LocalPlayer
    local Mouse = Player:GetMouse()
    local UIS = game:GetService("UserInputService")
    if clickTpEnabled and input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       local Char = Player.Character
       if Char then
          Char:MoveTo(Mouse.Hit.p)
       end
    end
 end

function walkSpeed(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end

function teleportTo(player)    
    local localPlayer = game.Players.LocalPlayer
    localPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame  
    wait()        
end

function infiniteJump()
    task.spawn(function()
        local character = game.Players.LocalPlayer.Character
        local humanoid = character:FindFirstChild("Humanoid")
        while true do
            if not infiniteJumpEnabled then break end
            if humanoid.Jump and humanoid.FloorMaterial == Enum.Material.Air then
                humanoid.JumpPower = 50
                humanoid:ChangeState("Jumping")
            end
            wait()
        end
    end)
end

function getTycoonIndex()
    for tycoonIndex = 1, 8 do
        if tostring(game:GetService("Workspace").Tycoons[tycoonIndex].TycoonInfo.Owner.Value) == game.Players.LocalPlayer.Name then
            return tycoonIndex
        end
    end
end

function autoCollect()
    spawn(function() 
        local tycoonIndex = getTycoonIndex()
        if not tycoonIndex then return end
        while wait() do
            if not autoCollectEnabled then break end
            for i, item in pairs(game:GetService("Workspace").Tycoons[tycoonIndex].ItemDebris:GetChildren()) do
                local args = {[1] = item}
                game:GetService("ReplicatedStorage").RF.CollectItem:InvokeServer(unpack(args))
            end
        end
    end)
end

function autoBuy()
    spawn(function()
        while wait(0.5) do
            if not autoBuyEnabled then break end
            local tycoonIndex = getTycoonIndex()
            if not tycoonIndex then return end
            local character = game.Players.LocalPlayer.Character
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

            local dropperButtons = game:GetService("Workspace").Tycoons[tycoonIndex].DropperButtons
            local children = dropperButtons:GetChildren()
            for i = #children, 1, -1 do
                local dropperButton = children[i]
                firetouchinterest(humanoidRootPart, dropperButton.Main, 0)
                firetouchinterest(humanoidRootPart, dropperButton.Main, 1)
            end
            local speedUpgrades = game:GetService("Workspace").Tycoons[tycoonIndex].SpeedUpgrades
            local children = speedUpgrades:GetChildren()
            for i = #children, 1, -1 do
                local dropperButton = children[i]
                firetouchinterest(humanoidRootPart, dropperButton.Main, 0)
                firetouchinterest(humanoidRootPart, dropperButton.Main, 1)
            end
        end
    end)
end

function autoSell()
    spawn(function()
        game:GetService("ReplicatedStorage").RF.EssentialFunction:InvokeServer("SettingsChange", {"Sound Effects"})
        local character = game.Players.LocalPlayer.Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        while wait(0.5) do
            if not autoSellEnabled then break end
            local tycoonIndex = getTycoonIndex()
            for i,v in pairs(game:GetService("Workspace").Tycoons[tycoonIndex].SellPad:GetChildren()) do
                firetouchinterest(humanoidRootPart,  v, 0)
                firetouchinterest(humanoidRootPart,  v, 1)
            end
        end
    end)
end

function autoObby()
    spawn(function()
        while wait(0.5) do
            if not autoObbyEnabled then break end
            local character = game.Players.LocalPlayer.Character
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            local obbyRewardButtons = game:GetService("Workspace").ObbyRewardButtons
            for i, rewardButton in pairs(obbyRewardButtons:GetChildren()) do
                firetouchinterest(humanoidRootPart, rewardButton, 0)
                firetouchinterest(humanoidRootPart, rewardButton, 1)
            end
        end
    end)
end

----------- Functions ------------------

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Feed The Noob Tycoon Exploit By Balgo", HidePremium = false, SaveConfig = true, ConfigFolder = "SpeedRunSimulator", IntroText = "Balgo Security"})

local Auto = Window:MakeTab({
 Name = "Auto",
 Icon = "rbxassetid://259820115",
 PremiumOnly = false
})


Auto:AddToggle({
 Name = "Auto Collect",
 Callback = function(value)
  autoCollectEnabled = value
        autoCollect()
   end    
})

Auto:AddToggle({
 Name = "Auto Sell",
 Callback = function(value)
  autoSellEnabled = value
        autoSell()
   end    
})

Auto:AddToggle({
 Name = "Auto Buy",
 Callback = function(value)
  autoBuyEnabled = value
        autoBuy()
   end    
})

Auto:AddToggle({
 Name = "Auto Obby",
 Callback = function(value)
  autoObbyEnabled = value
        autoObby()
   end    
})

local Misc = Window:MakeTab({
 Name = "Misc",
 Icon = "rbxassetid://259820115",
 PremiumOnly = false
})

Misc:AddToggle({
 Name = "Infinite Jump",
 Callback = function()
  infiniteJumpEnabled = not infiniteJumpEnabled
        infiniteJump()
   end    
})


Misc:AddToggle({
 Name = "Control Click TP",
 Callback = function()
        clickTpEnabled = not clickTpEnabled
        game:GetService("UserInputService").InputBegan:Connect(teleportLocalPlayer)
   end    
})

Misc:AddSlider({
 Name = "Walk Speed",
 Min = 16,
 Max = 600,
 Default = 32,
 Color = Color3.fromRGB(51, 204, 51),
 Increment = 1,
 ValueName = "Walk Speed",
 Callback = function(Value)
  walkSpeed(Value)
 end    
})

local TeleportTo = Window:MakeTab({
 Name = "Teleport Player",
 Icon = "rbxassetid://259820115",
 PremiumOnly = false
})

TeleportTo:AddSection({
    Name = "Teleport To A Player"
})

for i, player in ipairs(game.Players:GetPlayers()) do
    TeleportTo:AddButton({
        Name = player.Name,
        Callback = function()
            teleportTo(player)
        end
    })
end
------------- UI ----------------
destroyIfExists(game.Players.LocalPlayer.PlayerGui.FDN.BuyCashFrame)
destroyIfExists(game.Players.LocalPlayer.PlayerGui.UI.Notifications.NotificationCreator)
-----------Remove unwanted GUI------------