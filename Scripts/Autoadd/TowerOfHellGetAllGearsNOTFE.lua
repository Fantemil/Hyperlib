if game.PlaceId == 662417684 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("CockerHub", "Synapse")--[[u can change the theme:
    LightTheme
    DarkTheme
    GrapeTheme
    BloodTheme
    Ocean
    Midnight
    Sentinel
    Synapse
    ]]
    local Blocks = Window:NewTab("Blocks")
    local BlocksSection = Blocks:NewSection("Give Blocks")
    BlocksSection:NewButton("Regular Block", "", function()
    game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
end)
    BlocksSection:NewButton("Super Block", "", function()
    game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
end)
    BlocksSection:NewButton("Diamond Block", "", function()
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
end)
    BlocksSection:NewButton("Rainbow Block", "", function()
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
end)
    BlocksSection:NewButton("Galaxy Block", "", function()
    game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
end)
    BlocksSection:NewButton("Void Block", "", function()
    game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
end)
    BlocksSection:NewButton("Limited Time Block", "", function()
    game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    wait(0.1)
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    wait(0.1)
    
end)

    local Misc = Window:NewTab("Misc")
    local MiscSection = Misc:NewSection("Misc")
    MiscSection:NewSlider("Walkspeed", "Gives Speed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
    MiscSection:NewSlider("JumpPower", "Gives JumpPower", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
end

if game.PlaceId == 155615604 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("CockerHub", "Sentinel")

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
 
    MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)
 
    MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)
 

    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
 
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
 
    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    end

    if game.PlaceId == 189707 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("CockerHub", "Synapse")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Walkspeed", "Changes WalkSpeed", 50, 16, function(s) -- 50 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
    PlayerSection:NewSlider("JumpPower", "Changes JumpPower", 80, 50, function(s) -- 50 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
    PlayerSection:NewSlider("Gravity", "Changes Gravity", 1000, 0, function(s) -- 50 (MaxValue) | 50 (MinValue)
    game.Workspace.Gravity = s
end)
    end

    if game.PlaceId == 1962086868 then

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("CockerHub", "Synapse")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    MainSection:NewButton("Give all gears", "Gives Gears", function()
    for i, v in pairs (game:GetService("ReplicatedStorage").Gear:GetChildren()) do
if v:IsA("Tool") then
poop = v:Clone()
poop.Parent = game:GetService("Players").LocalPlayer:FindFirstChild("Backpack")
end
end
end)
end
    if game.PlaceId == 6677985923 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("CockerHub", "Synapse")
    local Cash = Window:NewTab("Cash")
    local CashSection = Cash:NewSection("Give Cash [[In Collector]]")
    CashSection:NewButton("Gives 1 Cash", "ButtonInfo", function()
    local A_1 = 1
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 10 Cash", "ButtonInfo", function()
    local A_1 = 10
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 100 Cash", "ButtonInfo", function()
    local A_1 = 100
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 1k Cash", "ButtonInfo", function()
    local A_1 = 1000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 10k Cash", "ButtonInfo", function()
    local A_1 = 10000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 100K Cash", "ButtonInfo", function()
    local A_1 = 100000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 1M Cash", "ButtonInfo", function()
    local A_1 = 1000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 10M Cash", "ButtonInfo", function()
    local A_1 = 10000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 100M Cash", "ButtonInfo", function()
    local A_1 = 100000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 1B Cash", "ButtonInfo", function()
    local A_1 = 1000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 10B Cash", "ButtonInfo", function()
    local A_1 = 10000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 100B Cash", "ButtonInfo", function()
    local A_1 = 100000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 1T Cash", "ButtonInfo", function()
    local A_1 = 1000000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 10T Cash", "ButtonInfo", function()
    local A_1 = 10000000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 100T Cash", "ButtonInfo", function()
    local A_1 = 100000000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 1Qa Cash", "ButtonInfo", function()
    local A_1 = 1000000000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 10Qa Cash", "ButtonInfo", function()
    local A_1 = 10000000000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 100Qa Cash", "ButtonInfo", function()
    local A_1 = 100000000000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    CashSection:NewButton("Gives 1Qu Cash", "ButtonInfo", function()
    local A_1 = 1000000000000000000
    game:GetService("ReplicatedStorage").RespawnService:FireServer(A_1)
end)
    
    
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Walkspeed", "Changes WalkSpeed", 500, 16, function(s) -- 50 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
    PlayerSection:NewSlider("JumpPower", "Changes JumpPower", 500, 50, function(s) -- 50 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
    PlayerSection:NewSlider("Gravity", "Changes Gravity", 1000, 0, function(s) -- 50 (MaxValue) | 50 (MinValue)
    game.Workspace.Gravity = s
end)

end