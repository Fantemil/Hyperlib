game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
  
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SmoxHub/Smox-UI/main/F2B'))()

_G.AutoRebirth = true
function autorebirth()
    while _G.AutoRebirth == true do 
        wait(0.1)
        game:GetService("ReplicatedStorage").Events.rebirth:FireServer(game:GetService("Players").LocalPlayer)    end
end

_G.AutoClick = true
function autoclick()
    while _G.AutoClick == true do 
        task.wait()
        game:GetService("ReplicatedStorage").Events.processClicks:FireServer()
    end
end

_G.AutoGems = true
function autogems()
    while _G.AutoGems == true do 
        task.wait()
        local localPlr = game:GetService("Players").LocalPlayer
        if #workspace.Z7Gems:GetChildren() == 0 and #workspace.Z6Gems:GetChildren() == 0 and #workspace.Z5Gems:GetChildren() == 0 then
            print("No Gems")
        end
            
        for _, Coin in pairs(workspace.Z7Gems:GetChildren()) and (workspace.Z6Gems:GetChildren()) and (workspace.Z5Gems:GetChildren()) do
            if Coin:FindFirstChild("TouchInterest") ~= nil then
                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), Coin, 0)
                firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), Coin, 1)
                task.wait()
            end
        end
    end
end


local Window = Rayfield:CreateWindow({
    Name = "LOAKS-HUB",
    LoadingTitle = "Smarter Every Second",
    LoadingSubtitle = "By F2B",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "F2B",
        FileName = "F2B-HUB"
    },
    KeySystem = false, 
    KeySettings = {
        Title = "F2B-HUB",
        Subtitle = "Key System",
        Note = "Join copied to clipboard (discord.gg/VbT6QVJqYN)",
        SaveKey = true,
        Key = "FK9YH*$#GRJI!@*"
    }
})

local Tab = Window:CreateTab("Auto Farm", 4483362458)
local Section = Tab:CreateSection("Section Example")

Section:Set("Smarter Every Second")

local Toggle = Tab:CreateToggle({
    Name = "Auto Collect Gems",
    CurrentValue = false,
    Flag = "Toggle1", 
    Callback = function(Value)
        _G.AutoGems = Value
        autogems()
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Auto Click For Gems",
    CurrentValue = false,
    Flag = "Toggle1", 
    Callback = function(Value)
        _G.AutoClick = Value
        autoclick()
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "Toggle1", 
    Callback = function(Value)
        _G.AutoRebirth = Value
        autorebirth()
    end,
})

local Dropdown = Tab:CreateDropdown({
 Name = "Egg",
 Options = {"Z1","Z2","Z3","Z4","Z5","Z6","Coming Soon...","Coming Soon..."},
 CurrentOption = "",
    Flag = "", 
 Callback = function(value)
        print(value)
        selectedegg = value
 end,
})

local Toggle = Tab:CreateToggle({
    Name = "Auto Hatch",
    CurrentValue = false,
    Flag = "",
    Callback = function(state)
        getgenv().egg = state
        while egg do wait(0.5)
            game:GetService("ReplicatedStorage").Events.petHatching:FireServer("Single",selectedegg,false,{},false)
        end
    end,
})

local Tab1 = Window:CreateTab("Server", 4483362458) 
local Section = Tab1:CreateSection("Server")

local Button = Tab1:CreateButton({
    Name = "Rejoin-Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer) 
    end,
})

local Button = Tab1:CreateButton({
    Name = "Server-Hop",
    Callback = function()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        local File = pcall(function()
            AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
        end)
        if not File then
            table.insert(AllIDs, actualHour)
            writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
        end
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
                                    delfile("NotSameServers.json")
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
                            writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
    end,
}) 