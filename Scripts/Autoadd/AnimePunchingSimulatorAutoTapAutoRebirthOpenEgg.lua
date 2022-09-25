--[[
https://www.roblox.com/games/8357510970/
loadstring(game:HttpGet("https://scriptblox.com/raw/AnimePunchingCopy_586"))()
--]]

if game.PlaceId == 8357510970 then

    repeat wait() until game:IsLoaded()

    _G.Settings = {
        autoTap = false;
        autoRebirth = false;
        autoPractice = false;
        autoEgg = false;
        autoUpgrade = false;
        autoRank = false;
        autoAura = false;
        autoWorld = false;
        tripleEgg = "1";
        autoMaxElite = false;
    }

    local codes = {
        "14MVISITS";
        "Dreamzinho";
        "40KLIKES";
        "HERO";
        "35KLIKES";
        "50KFAVS";
        "10MVISITS";
        "30KLIKES";
        "8MVISITS";
        "BOLINHOBLOX";
        "25KLIKES";
        "VAGNERGAMES";
        "15klikes";
        "4MVisits";
        "2MVISITS";
        "10KLIKES";
        "5KLIKES";
        "1MVISITS";
        "MASTER";
        "500KVISITS";
        "250kvisits";
        "80KVISITS";
        "1KLIKES";
        "Release";
    }

    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Ui.CenterFrame.Error:Destroy()
        game:GetService("Players").LocalPlayer.PlayerGui.EggAnimation:Destroy()
    end)

    local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tickk = tick()
    local reb = {"-- Rebirth Amount --"}
    local practiceArea = {"-- Practice Area --"}
    local egg = {"-- Select Egg --"}

    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Ui.CenterFrame.Rebirths.Frame:GetChildren()) do
        if v:IsA("ImageLabel") and not table.find(reb,v.Price.Text) then
            table.insert(reb,v.Price.Text)
        end
    end

    for i, v in pairs(game.Workspace.__SETTINGS.__INTERACT:GetChildren()) do
        if v.Name == "Practice" and not table.find(practiceArea,v.Area.Value.." Boost: "..v.Boost.Value) then
            table.insert(practiceArea,v.Area.Value.." Boost: "..v.Boost.Value)
        end
    end 

    for i, v in pairs(game.Workspace.__SETTINGS.__INTERACT:GetChildren()) do
        if v.Name == "EGG" and not table.find(egg,v.Tier.Value) then 
            table.insert(egg,v.Tier.Value)
        end
    end

    local library = loadstring(game:HttpGet("https://pastebin.com/raw/vB8nLMCk", true))()
    local b = library:CreateWindow("Farming")
    local c = library:CreateWindow("Heroes")
    local d = library:CreateWindow("Shop")
    local e = library:CreateWindow("Teleport")
    local f = library:CreateWindow("Misc")

    b:Toggle("Auto Tap", {flag = "a"}, function(v)
        _G.Settings.autoTap = v

        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoTap then break end
                game:GetService("ReplicatedStorage").Remotes.TappingEvent:FireServer()
            end
        end)
    end)

    b:Toggle("Auto Rebirth", {flag = "b"}, function(v)
        _G.Settings.autoRebirth = v

        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoRebirth then break end
                game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer("Rebirths",selectedNum)
            end
        end)
    end)

    b:Dropdown("Select Rebirth Amount", {flag = "c", list = reb}, function(value) 
        for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Ui.CenterFrame.Rebirths.Frame:GetChildren()) do
            if v:IsA("ImageLabel") and v.Price.Text == tostring(value) then
                selectedNum = tonumber(v.Name)
            end
        end
    end)

    b:Toggle("Auto Practice", {flag = "d"}, function(v)
        _G.Settings.autoPractice = v
        
        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoPractice then break end
                for i, v in pairs(game.Workspace.__SETTINGS.__INTERACT:GetChildren()) do
                    if v.Name == "Practice" and v.Boost.Value == tonumber(selectedArea) then
                        plr.CFrame = v.CFrame * CFrame.new(0,0,5)
                        game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer("Practice",v)
                    end
                end
            end
        end)
    end)

    b:Dropdown("Select Practice Area", {flag = "e", list = practiceArea}, function(v) 
        selectedArea = string.match(v,"%d+")
    end)

    c:Toggle("Open Egg", {flag = "f"}, function(v)
        _G.Settings.autoEgg = v

        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoEgg then break end
                plr.CFrame = selectedEgg.CFrame * CFrame.new(0,0,5)
                game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer("EGG",selectedEgg,_G.Settings.tripleEgg,{})
            end
        end)
    end)

 c:Toggle("Triple Egg",{flag = "z"}, function(v)
  if c.flags.z then
   _G.Settings.tripleEgg = "3"
  else
   _G.Settings.tripleEgg = "1"
  end
 end)

    c:Dropdown("Select Egg", {flag = "g", list = egg}, function(value) 
        for i, v in pairs(game.Workspace.__SETTINGS.__INTERACT:GetChildren()) do
            if v.Name == "EGG" and v.Tier.Value == value then 
                selectedEgg = v
            end
        end 
    end)
    
    c:Toggle("Auto Max Elite", {flag = "asd"}, function(v)
        _G.Settings.autoMaxElite = v

        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoMaxElite then break end
                game:GetService("ReplicatedStorage").Remotes.NPCSystem:InvokeServer(true,"MAXELITE")
            end
        end)
    end)

    d:Toggle("Buy Upgrade", {flag = "h"}, function(v)
        _G.Settings.autoUpgrade = v

        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoUpgrade then break end
                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Ui.CenterFrame.Shop.Upgrades:GetChildren()) do
                    if v:IsA("ImageLabel") then
                        game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer("Upgrade",tonumber(v.Name))
                    end
                end
                
            end
        end)
    end)

    d:Toggle("Buy Rank", {flag = "i"}, function(v)
        _G.Settings.autoRank = v

        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoRank then break end
                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Ui.CenterFrame.Shop.Ranks:GetChildren()) do
                    if v:IsA("ImageLabel") then
                        game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer("Ranks",tonumber(v.Name))
                    end
                end
                
            end
        end)
    end)

    d:Toggle("Buy Aura", {flag = "j"}, function(v)
        _G.Settings.autoAura = v

        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoAura then break end
                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Ui.CenterFrame.Auras.Frame:GetChildren()) do
                    if v:IsA("ImageLabel") then
                        game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer("Auras",tonumber(v.Name))
                    end
                end
                
            end
        end)
    end)

    d:Toggle("Buy World", {flag = "asd"}, function(value)
        _G.Settings.autoWorld = value

        task.spawn(function()
            while task.wait() do
                if not _G.Settings.autoWorld then break end
                for i, v in pairs(game:GetService("Workspace")["__SETTINGS"]["__AREAS"]:GetChildren()) do
                    game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer("Areas",v.Name)
                end
            end
        end)
    end)

    for i, v in pairs(game:GetService("Workspace")["__SETTINGS"]["__AREAS"]:GetChildren()) do
        e:Button(v.Name, function()
            plr.CFrame = v.CFrame
        end)
    end

    f:Button("New World",function()
        for i, v in pairs(game.Workspace.__Map:GetChildren()) do
            if v:FindFirstChild("TouchInterest") then
                firetouchinterest(v,plr,0)
            end
        end
    end)
        
    f:Button("Redeem Codes", function()
        for i, v in pairs(codes) do
            game:GetService("ReplicatedStorage").Remotes.ClientRemote:InvokeServer("Codes",v)
        end
    end)
    
    f:Section("Script by Uzu")

 f:Button("discord.gg/waAsQFwcBn", function()
     setclipboard(tostring("discord.gg/waAsQFwcBn"))
 end)

    warn("Script loaded in",string.format("%.0f",tick()-tickk),"seconds")
elseif game.PlaceId == 8649665676 then
    _G.selectedMob = "Krunks"
    loadstring(game:HttpGet("https://pastebin.com/raw/UXXedEzP"))()
end

local bb = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
 bb:CaptureController()
 bb:ClickButton2(Vector2.new())
end)