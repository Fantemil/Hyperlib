local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord"))()

local window = library:Window("Crawl [ALPHA]")

local Tab = window:Server("Features", "")

local Section = Tab:Channel("Main")

Section:Toggle("Auto Hit [FAST]", false, function(goofy1)
    if goofy1 then -- if true then
        _G.InfCl = true
        while _G.InfCl == true do wait(0.2)
            local args = {
                [1] = game:GetService("Players").LocalPlayer
            }
            
            game:GetService("Players").LocalPlayer.Character.RemoteStarters.ClickRemote:FireServer(unpack(args))
        end
    else -- else false
        _G.InfCl = false
        while _G.InfCl == true do wait()
            print('stopped')
        end
    end
end)

Section:Toggle("Spam Wind Slash [FAST]", false, function(goofy2)
    if goofy2 then -- if true then
        _G.AutoReb = true
        while _G.AutoReb == true do wait(0.2)
            game:GetService("Players").LocalPlayer.Character.RemoteStarters.EParts.ERemote:FireServer()
        end
    else -- else false
        _G.AutoReb = false
        while _G.AutoReb == true do wait()
            print('stopped')
        end
    end
end)

Section:Button("Create party [CUSTOMIZE IN OPEN SOURCE]", function(goof) --change "false" to "true" if you want it to do farm ig
    local args = {
        [1] = {
            ["Difficulty"] = "Normal", --the difficulty of the dungeon, change to Hard or Expert if you want
            ["Name"] = "Volcanic Mines", --the name of the dungeon, you can change it to other one
            ["Settings"] = {
                ["IsMerciless"] = false, --i dont know wtf this is
                ["Private"] = false, --set to true if you don't want anyone joining you
                ["IsCataclysm"] = false, --i dont know wtf this is either
                ["IsHardcore"] = false, --make it true if you want it to be hardcore 
                ["HostStart"] = false --i don't know what this feature is either
            }
        }
    }
    
    game:GetService("ReplicatedStorage").LobbyRelated.PartyRelated.RemoteEvents.PartyCreated:FireServer(unpack(args))
end)

Section:Button("Start party [CUSTOMIZE IN OPEN SOURCE]", function(goofy) --change "false" to "true" if you want it to do farm ig
    local args = {
        [1] = "D33x3x33Party" --change this to ur user all it does is just start the party
    }
    
    game:GetService("ReplicatedStorage").LobbyRelated.PartyRelated.RemoteEvents.PartyStarted:FireServer(unpack(args))
end)

Section:Toggle("Auto start dungeon", false, function(goofy3) --change "false" to "true" if you want it to do farm ig
    if goofy3 then -- if true then
        _G.AutoStart = true
        while _G.AutoStart == true do wait(0.1)
            game:GetService("ReplicatedStorage").DungeonRelated.DungeonEvent:FireServer()
        end
    else -- else false
        _G.AutoStart = false
        while _G.AutoStart == true do wait()
            print('stopped')
        end
    end
end)

Section:Button("Inf yield [USE FOR GOD MODE AND FLY]", function(goof) --change "false" to "true" if you want it to do farm ig
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)