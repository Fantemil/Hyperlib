--[[
                       Features
    --------------------------------------------------
    Automatically reports and chats a message to convince them
    Automatically finishes tasks aswell
    Completely afkable
    Messages can be changed
                   CUSTOM MESSAGES INFO
    --------------------------------------------------
    "/player" will be replaced with imposters name
    "/otherplayer" will be replaced with victims name
    "/location" will be replaced with location
--]]
local messages = {
    "/player killed infront of me in /location",
    "i saw /player put an end to /otherplayer at /location",
    "/player put /otherplayer to death in /location right before I reported",
    "in /location /player terminated /otherplayer right infront of my eyes",
    "/player is the imposter and if not then vote me out body was in /location",
    "/player did an imposter on /otherplayer in /location vote them"
}
local closest = math.huge
local players = game:GetService("Players")
local locations = {}
for i,v in pairs(game.Workspace.Floors:GetDescendants()) do
    if not string.match(v.Parent.Name,"Hallway") and v.ClassName == "MeshPart" and not table.find(locations,v) then
        table.insert(locations,v)
    end
end
local function tasks()
   for i,v in pairs(game:GetService("Players").LocalPlayer.Tasks:GetChildren()) do
        for c,b in pairs(v.Parts:GetChildren()) do
            game:GetService("ReplicatedStorage").RemoteEvents.Client.roomChanged:FireServer(b.locationName)
            game:GetService("ReplicatedStorage").RemoteEvents.Client.taskRequest:FireServer(b.Value,tostring(i))
            game:GetService("ReplicatedStorage").RemoteEvents.Client.taskCompleted:FireServer(b.Value,tostring(i))
        end
    end 
end
local function notify(text)
    local args = {
        [1] = text,
        [2] = "Players"
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
local function getclosestplayer(part)
    for i,v in next, players:GetPlayers() do
        if game:GetService("Workspace").Dead:FindFirstChild(v.Name) == nil then
            local mag = (part.Position - v.Character.HumanoidRootPart.Position).Magnitude
            if mag < closest then 
                closest = mag 
                plr = v
            end
        end
    end
    closest = math.huge
    return plr
end
local function getlocation(part)
    for i,v in next, locations do
        local mag = (part.Position - v.Position).Magnitude
        if mag < closest then 
            closest = mag 
            loc = v
        end
    end
    closest = math.huge
    return loc.Parent.Name
end
game:GetService("Workspace").Dead.DescendantAdded:Connect(function(des)
    if des.Name == "Bone" and players.LocalPlayer.Character:FindFirstChild("isGhostValue") == nil then
        local imposter = des.Parent.Name
        local othercolor = game.Players[imposter]:WaitForChild("playerColorValue").Value
        local location = getlocation(des)
        local message = string.gsub(string.gsub(string.gsub(messages[math.random(1,#messages)],"/player",getclosestplayer(des):WaitForChild("playerColorValue").Value),"/otherplayer",othercolor),"/location",location)
        local args = {
            [1] = des.Parent.Name
        }
        game:GetService("ReplicatedStorage").RemoteEvents.Client.reportDeadBody:FireServer(unpack(args))
        wait(4)
        notify(message)
        tasks()
        local args = {
            [1] = imposter
        }
        game:GetService("ReplicatedStorage").RemoteEvents.Client.submitVote:InvokeServer(unpack(args))
    end
end)
