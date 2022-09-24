--// Services
local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local teleportService = game:GetService("TeleportService")
local httpService = game:GetService("HttpService")
local replicatedStorage = game:GetService("ReplicatedStorage")

--// Player
local player = players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character.HumanoidRootPart
local playerGui = player.PlayerGui
local camera = workspace.Camera

--// Map
local map = workspace.Map
local dealer = map.NPCs.BankDealerNPC
local jewelryStore = map.Buildings.Jewelry
local alarm = jewelryStore.Rob["alarm_box"]
local sellingPoint = map.Buildings.Bank.Rob.Sell

--// Remotes
local purchase = replicatedStorage._network.purchase

--// Tweening
local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear)

--// Teleporting
queueonteleport = syn.queue_on_teleport or queue_on_teleport
player.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        queueonteleport([[
            repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.PlayerGui:WaitForChild("Intro")
            loadstring(game:HttpGet('https://raw.githubusercontent.com/jasonsworks/cr-autofarm/master/main.lua'))()
        ]])
    end
 end)

--// Servers
--Credit to ProtonDev on v3rmillion.net, my brain was fried and i just wanted this to work
local OtherServers = httpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
local function joinNew()
    if not isfile('servers.json') then 
        writefile('servers.json',httpService:JSONEncode({}))
    end
    local dontJoin = readfile('servers.json') 
    dontJoin = httpService:JSONDecode(dontJoin)

    for _, Server in next, OtherServers["data"] do
        if Server ~= game.JobId then
            local j = true
            for a,c in pairs(dontJoin) do 
               if c == Server.id then 
                   j = false 
               end
            end
            if j then
                table.insert(dontJoin,Server["id"])
                writefile("servers.json",httpService:JSONEncode(dontJoin))
                task.wait()
                return Server['id']
            end
        end
    end
end

--// Script
local server = joinNew()
local function serverHop()
    if not server then 
        writefile("servers.json",httpService:JSONEncode({}))
        local server = joinNew()
        teleportService:TeleportToPlaceInstance(game.PlaceId, server)
    else
        teleportService:TeleportToPlaceInstance(game.PlaceId, server)
    end
end

humanoid.Died:Connect(function()
    serverHop()
end)

if alarm.Sound.IsPlaying then --Checks if the jewelry store is currently being robbed, we want this to be happening so no money has to be spent on a gun
    if playerGui:FindFirstChild("Intro") then
        local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
        local playButton = playerGui.Intro.container.buttons.play.hitbox
        for _,v in pairs(events) do
            for _,v in pairs(getconnections(playButton[v])) do
                v:Fire() --Click the play button
            end
        end 
        camera.CameraType = Enum.CameraType.Custom --Set the camera back to the player
    elseif game:IsLoaded() and character then end --If the player is already in the game then continue

    tweenService:Create(rootPart, tweenInfo, {CFrame = dealer.HumanoidRootPart.CFrame}):Play() --Teleport to the dealer
    task.wait(1)
    fireproximityprompt(dealer.HumanoidRootPart.PromptAttachment.ProximityPrompt) --Opens the shop gui
    task.wait(0.1)
    purchase:InvokeServer("bank_dealer", "Duffel Bag") --Buy the duffle bag
    
    local function sellJewels()
        tweenService:Create(rootPart, tweenInfo, {CFrame = sellingPoint.PrimaryPart.CFrame}):Play() --Teleport to selling point
        task.wait(1)
        fireclickdetector(sellingPoint.ClickDetector)
        serverHop()
    end

    for _,v in next, jewelryStore.Rob.stealable:GetDescendants() do
        if v:IsA("Part") then
            local parentGlass = v.Parent.parent_glass.Value --Find out what glass box is related to the boxes, this is important to see what boxes can be robbed
            if parentGlass.CanCollide == false and v.Parent.Union.Transparency == 0 then --Has the glass been destroyed?
                bagSplit = string.split(character:WaitForChild("Duffel Bag").Handle.AmountDisplay.container["jewelry_container"].amount.Text, "/") --How much jewels do we have?
                bagAmount = tonumber(bagSplit[1])
                bagMax = tonumber(bagSplit[2])
                if bagAmount == bagMax then --If we can't carry anymore jewels then sell jewels and server hop
                    sellJewels()
                else --If we haven't reached the maximum capacity then continue stealing
                    task.wait(0.1)
                    if parentGlass.CFrame.X == 616 then continue end --Stops the player getting stuck on this one stupid jewel box
                    tweenService:Create(rootPart, tweenInfo, {CFrame = v.CFrame}):Play() --Teleport to a jewel box
                    fireclickdetector(v.Parent.ClickDetector)
                end
            end
        end
    end

    sellJewels() --If the loop has finished then sell regardless of if we managed to collect the maximum amount of jewels or not

else --If the store isn't being robbed then server hop
    serverHop()
end