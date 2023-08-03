repeat wait() until game:IsLoaded()

task.spawn(function()  -- Hides name for yters (not sure if its Fe)
    while task.wait() and getgenv().hidename do
        pcall(function()
            if game.Players.LocalPlayer.Character.Head:FindFirstChild("_overhead") then
               workspace[game.Players.LocalPlayer.Name].Head["_overhead"]:Destroy()
            end
        end)
    end
end)


local function WatermarkForIdiotYter() -- If the yter is stupid they cant remove this
    game.StarterGui:SetCore("SendNotification", {
Title = "Made by Jaff"; 
Text = getgenv().id.." Is your petid"; 
Icon = ""; 
Duration = 5; 
})
end


local function start() -- starts the game
if game:GetService("Workspace")["_wave_num"].Value < 1 then
game:GetService("ReplicatedStorage").endpoints.client_to_server.vote_start:InvokeServer()
end
end

local function place() -- place function if there is another erwin on the map
if game:GetService("Workspace")["_wave_num"].Value < getgenv().wavetolose then
for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
    if v.Name == getgenv().unit then
        local args = {
    [1] = v._stats.uuid.Value,
    [2] = CFrame.new(-2949.064453125, 91.80620574951172, -698.9860229492188) * CFrame.Angles(0, -0, -0)
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
end
end
end
end

local function place3() 
  if game:GetService("Workspace")["_wave_num"].Value < getgenv().wavetolose then
        local args = {
    [1] = getgenv().id,
    [2] = CFrame.new(-2949.064453125, 91.80620574951172, -698.9860229492188) * CFrame.Angles(0, -0, -0)
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
end
end



local function upgrade() -- Upgrades to upgrade 5 and auto upgrades lowest upgraded unit
for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
    if v.Name == getgenv().unit then
        if v._stats.upgrade.Value < 20 then 
local args = {
[1] = v
  }
game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(unpack(args))
end
end
end
end

local function join() -- join teleporter
local args = {
    [1] = "_lobbytemplategreen6"
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(args))
end

local function Create() -- Creates the map
local args = {
    [1] = "_lobbytemplategreen6",
    [2] = "naruto_infinite",
    [3] = true,
    [4] = "Hard"
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(args))

end

local function start2() -- Starts the teleport
local args = {
    [1] = "_lobbytemplategreen6"
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(args))
end


local function webhook()
local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "**Anime Adventures Inf**",
           ["description"] = "Lost on wave: " .. game:GetService("Workspace")["_wave_num"].Value .. ".  Amount of Gems Earned: " ..game.Players.LocalPlayer.PlayerGui.ResultsUI.Holder.GoldGemXP.GemReward.Main.Amount.Text.. ". Time Taken: " ..game.Players.LocalPlayer.PlayerGui.ResultsUI.Holder.Middle.Timer.Text.. " ",
                               
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = getgenv().webhook, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)


end

local function sell()
if game:GetService("Workspace")["_wave_num"].Value > getgenv().wavetolose -1 then
  for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
  if v.Name == getgenv().unit then
local args = {
    [1] = v
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.sell_unit_ingame:InvokeServer(unpack(args))
end
end
end
end
local function teleport() 
if game:GetService("Workspace")["_DATA"].GameFinished.Value == true then
task.wait(5)
webhook()
game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
end
end

if game.PlaceId == 8304191830 then
while true do
join()
task.wait(1)
Create()
task.wait(1)
start2()
task.wait()
WatermarkForIdiotYter()
task.wait(5)
end
elseif game.PlaceId == 8349889591 then
repeat wait() until game:IsLoaded()
task.wait(20) -- Waits for the game remotes to load (This is needed)
game.Players.LocalPlayer.PlayerGui.MessageGui.Enabled = false -- Removes the annoying error messages
_G.a = true 
while _G.a do
    task.wait()
task.wait()
place()
place3()
upgrade()
start()
sell()
teleport()
end
end
