local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Toy Clicking Simulator")
local b = w:CreateFolder("AutoFarm")
local h = w:CreateFolder("Rebirth")
local f = w:CreateFolder("Shop")
local g = w:CreateFolder("Egg")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local can = true
local SelectedRebirth = "1"
local SelectedSuperRebirth = "1"
local SelectedEgg = "Free Egg"

Rebirth = {}
SuperRebirth = {}
Eggs = {}

for i,v in pairs(game:GetService("Workspace")["__Map"]:GetDescendants()) do
    if v.ClassName == "Folder" then
        if v.Name == "Eggs" then
            for i,v1 in pairs(v:GetChildren()) do
                if v1.ClassName == "Model" then
                    if not table.find(Eggs,v1.Name) then
                        table.insert(Eggs,v1.Name)
                    end
                end
            end
        end
    end
end

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frames.Rebirth.Container.List:GetChildren()) do
    if v.ClassName ~= "UIGridLayout" then
        Rebirth[i] = v.Name
    end
end

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frames.Rebirth.SRContainer.List:GetChildren()) do
    if v.ClassName ~= "UIGridLayout" then
        SuperRebirth[i] = v.Name
    end
end

b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)
    
h:Toggle("AutoRebirth",function(bool)
    shared.toggle = bool
    AutoRebirth = bool
end)

h:Dropdown("Select Rebirth",Rebirth,true,function(mob)
    SelectedRebirth = mob
end)

h:Toggle("AutoSuperRebirth",function(bool)
    shared.toggle = bool
    AutoSuperRebirth = bool
end)

h:Dropdown("Select Super Rebirth",SuperRebirth,true,function(mob)
    SelectedSuperRebirth = mob
end)

f:Toggle("Gem Upgrade",function(bool)
    shared.toggle = bool
    AutoRUpgrade = bool
end)

f:Toggle("Super Upgrade",function(bool)
    shared.toggle = bool
    AutoSRUpgrade = bool
end)

g:Dropdown("Select Egg",Eggs,true,function(mob)
    SelectedEgg = mob
end)

g:Toggle("Open Egg",function(bool)
    shared.toggle = bool
    OpenEgg = bool
end)

g:Button("Tp Egg",function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == SelectedEgg then
            for i,v1 in pairs(v:GetChildren()) do
                if v1.ClassName == "MeshPart" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.CFrame.Position + Vector3.new(0,0,0))
                end
            end
        end
    end
end)

e:Toggle("BypassJumpCD",function(bool)
    shared.toggle = bool
    BypassJumpCD = bool
end)

e:Toggle("Craft All",function(bool)
    shared.toggle = bool
    CraftAll = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    spawn(function()
        if OpenEgg == true then
            game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.OpenEgg:InvokeServer(tostring(SelectedEgg),false)
        end
    end)
    
    spawn(function()
        if AutoRUpgrade == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Upgrades.GemUpgrades:GetChildren()) do
                game:GetService("ReplicatedStorage").Knit.Services.UpgradeService.RF.BuyUpgrade:InvokeServer(v.Name)
            end
        end
    end)
    
    spawn(function()
        if AutoSRUpgrade == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Upgrades.SuperUpgrades:GetChildren()) do
                game:GetService("ReplicatedStorage").Knit.Services.UpgradeService.RF.BuySRUpgrade:InvokeServer(v.Name)
            end
        end
    end)
    
    spawn(function()
        if CraftAll == true then
            game:GetService("ReplicatedStorage").Knit.Services.PetService.RF.CraftAllPets:InvokeServer()
        end
    end)
    
    spawn(function()
        if AutoClicker == true then
            game:GetService("ReplicatedStorage").Knit.Services.ClickService.RF.Click:InvokeServer()
        end
    end)
    
    spawn(function()
        if AutoRebirth == true then
            game:GetService("ReplicatedStorage").Knit.Services.RebirthService.RF.AttemptRebirth:InvokeServer(tonumber(SelectedRebirth))
        end
    end)
    
    spawn(function()
        if AutoSuperRebirth== true then
            game:GetService("ReplicatedStorage").Knit.Services.RebirthService.RF.AttemptRebirth:InvokeServer(tonumber(SelectedSuperRebirth))
        end
    end)
    
    spawn(function()
        if BypassJumpCD == true then
            if can == true then
                can = false
                for i,v in pairs(getgc()) do
                    if type(v) == 'function' and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.KnitClient.Modules.DoubleJump then
                        pcall(function()
                            if debug.getconstant(v,7) == 'wait'then
                                debug.setconstant(v,7,'print') 
                            end
                            if debug.getconstant(v,21) == 'wait'then
                                debug.setconstant(v,21,'print') 
                            end
                            if debug.getconstant(v,16) == 'wait'then
                                debug.setconstant(v,16,'print') 
                            end
                        end)
                    end
                end
            end
        else
            if can == false then
                can = true
                for i,v in pairs(getgc()) do
                    if type(v) == 'function' and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.KnitClient.Modules.DoubleJump then
                        pcall(function()
                            if debug.getconstant(v,7) == 'print'then
                                debug.setconstant(v,7,'wait') 
                            end
                            if debug.getconstant(v,21) == 'print'then
                                debug.setconstant(v,21,'wait') 
                            end
                            if debug.getconstant(v,16) == 'print'then
                                debug.setconstant(v,16,'wait') 
                            end
                        end)
                    end
                end
            end
        end
    end)
    
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
end