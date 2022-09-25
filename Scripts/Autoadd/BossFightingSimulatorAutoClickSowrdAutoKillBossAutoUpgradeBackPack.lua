local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/GrubHub/main/modules/GrubHub_UI.lua"))()
local Thread = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/GrubHub/main/Thread.lua"))()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mooncores/lib/d74663634965be19c972f137bcf683194362be28/notif.lua"))()
local Bosses = {}
getgenv().sBoss="ForcefullyDeactivated"


local function Tween(time, pos)
    workspace.Gravity = 0
    local tw =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(time, Enum.EasingStyle.Linear),
        {CFrame = pos}
    )
    tw:Play()
    tw.Completed:Wait()
    workspace.Gravity = 196.19999694824
end

local plr=game:GetService("Players").LocalPlayer

    local Settings = {
        ["AC"]=false,
        ["AS"]=false,
        ["AUBAG"]=false,
        ["autoKillBoss"]=false
    }
    
    local SwordName = "Wigglebottom"
    
    
    local function UpdateSword()
    local Toolsie
    
    for i,v in pairs(plr.Backpack:GetChildren()) do
        if v:IsA("Tool") and v:FindFirstChild("Preferences") then
            
            Toolsie = v
            
        end
    end
    
    if Toolsie == nil then
    for i,v in pairs(plr.Character:GetChildren()) do
        if v:IsA("Tool") and v:FindFirstChild("Preferences") then
            
            Toolsie = v
            
        end
    end
    end
    if Toolsie ~= nil then
        SwordName=Toolsie.Name
    end
    end
    
local function AutoClick()
    
    if SwordName ~= "Wigglebottom" then
    
    if Settings["AC"]==true then

    if plr.Backpack:FindFirstChild(SwordName) then
        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(SwordName))
    else
        if plr.Character:FindFirstChild(SwordName) then
            local sw = plr.Character:FindFirstChild(SwordName)
            game:GetService("ReplicatedStorage").Remotes.Power:FireServer(sw)
        end
    end
    end
    end
end

local function AutoSell()
    if Settings["AS"]==true then
        local c=game:GetService("Players").LocalPlayer.PlayerGui.UI.Power.Balance.Text
        
        if not string.find(string.upper(c),"INFINITE") or not string.find(string.upper(c),"INF") then
        
        local s=string.split(c,"/")
        
        if s[1]==s[2] then
            game:GetService("ReplicatedStorage").Remotes.SellPower:InvokeServer()
        end
        end
    end
end

    local Module = require(game:GetService("ReplicatedStorage").Bags)

    local function uBag(bool)
        
        local ID
        
        if Settings["AUBAG"]==true then
            
            local BagSize = game:GetService("Players").ReturnString.Storage.Value
            
            for i,v in pairs(Module) do
                if v['Storage'] == BagSize then
                    local ID = v['id'] + 1
                    for p,e in pairs(Module) do
                        if e['id'] == ID then
                            local Coins = game:GetService("Players").ReturnString.leaderstats.Coins.Value
                            if Coins >= e['Price'] then
                
                            game:GetService("ReplicatedStorage").Remotes.BagPurchase:InvokeServer(p)

                            else
                            
                            if bool==true then 
                            library:Notification("GrubHub Error", "You can't afford the next bag", 10, Color3.fromRGB(255, 255, 255))
                            end    
                            end
                        end
                    end
                 end   
            end
            
        end
        end

    
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)

local function FarmTP(part)
    noclip=true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=part.CFrame + Vector3.new(0,3,0)
end

local function FuckBoss(boss,showNotif)
    
    if boss ~= "ForcefullyDeactivated" then

    local Arena = boss.."Arena"
    
    local ArenaObject = workspace.Arenas:FindFirstChild(Arena)
    
    if ArenaObject ~= nil then
        local BossHumanoid = ArenaObject:WaitForChild("Boss"):FindFirstChild(boss)
        if BossHumanoid ~= nil then
        local plrPower = game:GetService("Players").LocalPlayer.leaderstats.Power.Value
        local requiredPower = ArenaObject.Spawner.CFG.RequiredPower.Value + 1000
        
        if plrPower >= tonumber(requiredPower) then
            
            repeat
                
            wait(0.1)
            
            FarmTP(BossHumanoid:WaitForChild("Head"))

            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Doom Dagger").Attack:FireServer(BossHumanoid:WaitForChild("HumanoidRootPart"))

            until ArenaObject:WaitForChild("Boss"):FindFirstChild(boss):WaitForChild("Humanoid").Health<= 0
        else
            if showNotif == true then
            library:Notification("GrubHub Error", "You need more Power to unlock this Boss", 10, Color3.fromRGB(255, 255, 255))
            end
        end
        else
            if showNotif == true then
            library:Notification("GrubHub Error", "This Boss is on Cooldown!", 10, Color3.fromRGB(255, 255, 255))
            end
        end
    else
        warn("ARENA NOT FOUND BRUV")
    end
    end
end

for i,v in pairs(workspace.Arenas:GetChildren()) do
    if v:IsA("Model") then
        local Nam = string.gsub(v.Name,"Arena","")
        table.insert(Bosses,Nam)
    end
end

    local Window = Library.CreateLib("GrubHub","Boss Fighting Simulator")

    local MainSection = Window:NewTab("Main")
    local LocalPlayerSection  = Window:NewTab("Player")
    local TPSection  = Window:NewTab("Teleports")
    local CreditsSection  = Window:NewTab("Credits")

    local Credits = CreditsSection:NewSection("Credits")
    local Main = MainSection:NewSection("Functions")
    local TP = TPSection:NewSection("Waypoints")
    local Local = LocalPlayerSection:NewSection("Player")
    
    Main:Label1("Manual")
    
    Main:NewButton("Sell Power","",function()
        game:GetService("ReplicatedStorage").Remotes.SellPower:InvokeServer()
    end)
    
    Main:NewButton("Upgrade Bag","",function()
        uBag(true)
    end)
    
    Main:Label1("Automation")
    
    Main:NewToggle("Auto-Click Sword","",function(bool)
        
    Settings["AC"]=bool
    
    end)
    
    Main:NewToggle("Auto-Sell Strength","",function(bool)
        
    Settings["AS"]=bool
    
    end)
    
    Main:NewToggle("Auto-Upgrade Backpack","",function(bool)
        
    Settings["AUBAG"]=bool
    
    end)
    
    Main:Label1("Bosses")
    
    Main:NewDropdown("Defeat Boss","",Bosses,function(sel)
        getgenv().sBoss = sel
        FuckBoss(sel,true)
    end)
    
    Main:NewToggle("Auto-Kill Boss","",function(boolean)
        Settings["autoKillBoss"]=boolean
    end)
    
    for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    TP:NewButton("Teleport to "..v.Name,"",function()
        Tween(2,v.Note.CFrame)
    end)
    end
    
    for i,v in pairs(game:GetService("Workspace").Arenas:GetChildren()) do
    TP:NewButton("Teleport to "..string.gsub(v.Name,"Arena",""),"",function()
        Tween(2,v.Teleport.CFrame)
    end)
    end
    
    Local:NewSlider("Walkspeed","",200,1,function(selection)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = selection
    end)
    
    Local:NewSlider("JumpPower","",200,1,function(selection)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = selection
    end)
    
    Local:NewSlider("HipHeight","",100,1,function(selection)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").HipHeight = selection
    end)

Credits:Label2("Boxking776#0001","Full UI Coding and Development")
Credits:Label2("GrubHub Development Team","Continued Support and UI Coding")
Credits:NewButton("Join GrubHub Today","",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/GrubHub/main/modules/return/JoinGrubHub"))()
end)


local function checkthing()
    if Settings["autoKillBoss"]==false then
    getgenv().sBoss="ForcefullyDeactivated"
    end
end

while Thread:Wait(1) do
AutoClick()
AutoSell()
UpdateSword()
uBag(false)
checkthing()
FuckBoss(getgenv().sBoss,false)
end