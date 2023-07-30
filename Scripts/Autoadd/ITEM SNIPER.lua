--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]



--4154513353 game id 
--TO STOP IT CHANGE THE GAME ID TO 0.
--MUST USE AUTO EXCECUTE FOLDER, OTHERWISE NOT WORK.

--CREDITS TO TRIKAES DISCORD FOR ANY PROBLEMS:blops#8788

if game.gameId == 4154513353 then


    task.wait(1)
    game:GetService("ReplicatedStorage").Events.SpawnFirst:InvokeServer()
    
    
    local item = "Crysal Chunk"
    local servertype = "Dsc"--Dsc for high and Asc for low servers
    --RECOMMEND HIGH SERVERS IF YOUR LOOKING FOR HIGH VALUED ITEMS (GOLD,CRYSTALS, EXC...)
    
    
    local Player = game.Players.LocalPlayer    
    
    
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    local _place,_id = game.PlaceId, game.JobId
    local _servers = Api.._place.."/servers/Public?sortOrder="..servertype.."&limit=10"
    
    
    --if it doesnt print than it doesnt exist
    
    
    local maxdistance = 10 --1-10 is good.
    
    function ListServers(cursor)
        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
        return Http:JSONDecode(Raw)
     end
     
    
    
    while true and item ~= "" and workspace.Items:FindFirstChild(item) do
    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - workspace.Items[item].Position).Magnitude
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Items[item].CFrame
    if distance < maxdistance then 
    local ohInstance1 = workspace.Items[item] --[[ PARENTED TO NIL OR DESTROYED ]]
    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(ohInstance1)
    wait()
    end
    end
    
    Player.Character.HumanoidRootPart.Anchored = true
    local Servers = ListServers()
    local Server = Servers.data[math.random(1,#Servers.data)]
    TPS:TeleportToPlaceInstance(_place, Server.id, Player)
    
    else
    warn("didnt find "..item)
    Player.Character.HumanoidRootPart.Anchored = true
    local Servers = ListServers()
    local Server = Servers.data[math.random(1,#Servers.data)]
    TPS:TeleportToPlaceInstance(_place, Server.id, Player)
    return false
    end
    
    