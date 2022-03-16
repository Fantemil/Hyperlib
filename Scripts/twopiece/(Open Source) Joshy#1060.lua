--[[
********************* IMPORTANT *****************************
Created By: Sensei Joshy#1060
Our Website: https://senseijoshy.com/
Our Business Email: info@senseijoshy.com
Our Discord: https://senseijoshy.com/discord
************************************************************
]]--
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local Settings = {}

local UI = Material.Load({
     Title = "Two Piece Script | SenseiJoshy.Com/Discord",
     Style = 1,
     SizeX = 350,
     SizeY = 250,
     Theme = "Dark"
})

local main = UI.New({Title = "Auto-Farm"})
local SelectMob = {}
for i,v in pairs(workspace:GetChildren()) do 
    if v:IsA("Model") and v:FindFirstChild("NPC") and not table.find(SelectMob, v.Name) then 
        table.insert(SelectMob, v.Name)
    end
end

main.Dropdown({
    Text = "Select Mob To Farm",
    Options = SelectMob,
    Callback = function(v)
        Settings["ChosenMob"] = v 
    end
})

main.Toggle({
    Text = "Auto Farm Mobs",
    Enabled = false,
    Callback = function(v)
        Settings["Autofarm"] = v 
    end
})

main.Slider({
    Text = "Distance From Mob",
    Callback = function(v)
        Settings["Distance"] = v
    end,
    Min = -20,
    Max = 20,
    Def = -5
})

local tele = UI.New({Title = "Teleport"})

local plrs = {}
for i,v in pairs(game.Players:GetPlayers()) do
    if v:IsA("Player") and not table.find(plrs, v.Name) then 
        table.insert(plrs, v.Name)
        table.sort(plrs)
    end;
end;

local teledrop = tele.Dropdown({
    Text = "Select - Player",
    Options = plrs,
    Callback = function(v)
        Settings["Players"] = v
    end;
})

game.Players.PlayerAdded:Connect(function(player)
    if player:IsA("Player") then 
        table.insert(plrs, player.Name)
        teledrop:SetOptions(plrs)
    end;
end);

game.Players.PlayerRemoving:Connect(function(player)
    if player:IsA("Player") then 
        for i,v in pairs(plrs) do 
            if v == player.Name then 
                table.remove(plrs, i)
            end;
        end;
    end;
    teledrop:SetOptions(plrs)
end);

tele.Toggle({
    Text = "Specate - Player",
    Enabled = false,
    Callback = function(v)
        Settings["Spec"] = v
        if Settings.Spec then
            game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(Settings.Players).Character.Humanoid
        else
            game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        end;
    end;
})

tele.Button({
    Text = "Teleport - Player",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(Settings.Players).Character.HumanoidRootPart.CFrame
    end;
})

local misc = UI.New({
    Title = "Misc"
});

misc.Dropdown({
    Text = "Select Stat",
    Options = {"Melee","Defense","Sword","Power",},
    Callback = function(v)
        Settings["Stats"] = v 
    end
})

misc.Toggle({
    Text = "Auto Use Stats",
    Enabled = false,
    Callback = function(v)
        Settings["AutoStats"] = v 
    end
})

misc.Button({
    Text = "Rejoin Server - Current Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end;
});

misc.Button({
    Text = "Server Hop - Different Server",
    Callback = function()
        local PlaceID = game.PlaceId
            local AllIDs = {}
            local foundAnything = ""
            local actualHour = os.date("!*t").hour
            local Deleted = false
            --[[
            local File = pcall(function()
                AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
            end)
            if not File then
                table.insert(AllIDs, actualHour)
                writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
            end
            ]]
            function TPReturner()
                local Site;
                if foundAnything == "" then
                    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                else
                    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                end
                local ID = ""
                if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                    foundAnything = Site.nextPageCursor
                end
                local num = 0;
                for i,v in pairs(Site.data) do
                    local Possible = true
                    ID = tostring(v.id)
                    if tonumber(v.maxPlayers) > tonumber(v.playing) then
                        for _,Existing in pairs(AllIDs) do
                            if num ~= 0 then
                                if ID == tostring(Existing) then
                                    Possible = false
                                end
                            else
                                if tonumber(actualHour) ~= tonumber(Existing) then
                                    local delFile = pcall(function()
                                        -- delfile("NotSameServers.json")
                                        AllIDs = {}
                                        table.insert(AllIDs, actualHour)
                                    end)
                                end
                            end
                            num = num + 1
                        end
                        if Possible == true then
                            table.insert(AllIDs, ID)
                            wait()
                            pcall(function()
                                -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                wait()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                            end)
                            wait(4)
                        end
                    end
                end
            end

            function Teleport()
                while wait() do
                    pcall(function()
                        TPReturner()
                        if foundAnything ~= "" then
                            TPReturner()
                        end
                    end)
                end
            end

            Teleport()
    end;
});

-- // Credits \\ --
local cred = UI.New({
    Title = "Credits"
})

cred.Button({
    Text = "Discord Server",
    Callback = function()
        if syn then
            syn.request({
               Url = "http://127.0.0.1:6463/rpc?v=1",
               Method = "POST",
               Headers = {
                   ["Content-Type"] = "application/json",
                   ["Origin"] = "https://discord.com"
               },
               Body = game:GetService("HttpService"):JSONEncode({
                   cmd = "INVITE_BROWSER",
                   args = {
                       code = "xgRwzdtnXC"
                   },
                   nonce = game:GetService("HttpService"):GenerateGUID(false)
               }),
            })
        else 
                setclipboard("https://discord.gg/xgRwzdtnXC")
                game.StarterGui:SetCore("SendNotification", {
                Title = "Please Read!!"; 
                Text = "Discord Link Copied";
                Duration = 35; 
            })
        end;
    end;
});

local creators = {
    "Sensei Joshy#1060",
}

for i,v in pairs(creators) do 
    cred.Button({
        Text = v,
        Callback = function()
            setclipboard(v) 
        end;
    });
end;

UI.Banner({
    Text = "Two Piece Script.. Has Load Successfully."
});

spawn(function()
    while wait() do 
        if Settings.Autofarm then 
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") then 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) 
                end
                
                for i,v in pairs(workspace:GetChildren()) do
                    if v:IsA("Model") and v.Name == Settings.ChosenMob then 
                        repeat wait() 
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,Settings.Distance)
                            workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Combat").Attack.A1:FireServer(game:GetService("Players").LocalPlayer)
                        until not Settings.Autofarm or v:FindFirstChild("Humanoid").Health <= 0
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do 
        if Settings.AutoStats then 
            pcall(function()
                if Settings.Stats == "Melee" then
                    game:GetService("Players").LocalPlayer.PlayerGui.GUI.Stats.Melee.TextButton.RemoteEvent:FireServer("1",game:GetService("Players").LocalPlayer)
                elseif Settings.Stats == "Defense" then
                    game:GetService("Players").LocalPlayer.PlayerGui.GUI.Stats.Defense.TextButton.RemoteEvent:FireServer("1",game:GetService("Players").LocalPlayer)
                elseif Settings.Stats == "Sword" then
                    game:GetService("Players").LocalPlayer.PlayerGui.GUI.Stats.Sword.TextButton.RemoteEvent:FireServer("1",game:GetService("Players").LocalPlayer)
                elseif Settings.Stats == "Power" then
                    game:GetService("Players").LocalPlayer.PlayerGui.GUI.Stats.Power.TextButton.RemoteEvent:FireServer("1",game:GetService("Players").LocalPlayer)
                end 
            end)
        end
    end
end)