getgenv().id = "" -- PUT PET ID HERE EG {123456d-123c-1234-123456789}
getgenv().unit = "erwin" -- YOU CAN CHANGE THIS TO OTHER UNITS EX SANJI
getgenv().hidename = true -- hides name
getgenv().dif = "Normal" -- Normal = less hard,exp. Hard = more exp,more harder
getgenv().act = "demonslayer_level_1" --Lower if it is too hard

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
Title = "Made by Jaff (edit by BlxckJack)"; 
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
for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
    if v.Name == getgenv().unit then
        local args = {
    [1] = v._stats.uuid.Value,
    [2] = CFrame.new(Vector3.new(-2876.19775390625, 38.922359466552734, -124.91777038574219), Vector3.new(0, 0, 0))
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
task.wait(.1)
local args = {
    [1] = v._stats.uuid.Value,
    [2] = CFrame.new(Vector3.new(-2876.19775390625, 38.922359466552734, -124.91777038574219), Vector3.new(0, 0, 0))
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
task.wait(.1)
local args = {
    [1] = v._stats.uuid.Value,
    [2] = CFrame.new(Vector3.new(-2876.19775390625, 38.922359466552734, -124.91777038574219), Vector3.new(0, 0, 0))
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))

end
end
end

local function place3() -- place down erwin so the other place functions can work
        local args = {
    [1] = getgenv().id,
    [2] = CFrame.new(Vector3.new(-2876.19775390625, 38.922359466552734, -124.91777038574219), Vector3.new(0, 0, 0))
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))

end



local function upgrade() -- Upgrades to upgrade 5 and auto upgrades lowest upgraded unit
for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
    if v.Name == getgenv().unit then
        if v._stats.upgrade.Value < 5 then 
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
    [1] = "_lobbytemplategreen11"
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(args))
end

local function Create() -- Creates the map
local args = {
    [1] = "_lobbytemplategreen11",
    [2] = getgenv().act, -- ex 1,2,3 (LOWER THE NUMBER IF ITS TOO HARD)
    [3] = true,
    [4] = getgenv().dif --Hard mode for da exp
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(args))

end

local function start2() -- Starts the teleport
local args = {
    [1] = "_lobbytemplategreen11"
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(args))
end



local function place2() -- Places erwin until wave 5
    while getgenv().wavecount do
if game:GetService("Workspace")["_wave_num"].Value < 5 then 
    getgenv().wavecount = true
        task.wait()
        place3()
elseif game:GetService("Workspace")["_wave_num"].Value > 5 then
    getgenv().wavecount = false
    end
    end
    end

wait(10)
local function teleport() -- Teleport back to the lobby
game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
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
if game.Players.LocalPlayer.PlayerGui.ResultsUI.Enabled == true then --Checks if reward is ready to claim and claims it
local button = game.Players.LocalPlayer.PlayerGui.ResultsUI.Holder.Buttons.Next

local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
for i,v in pairs(events) do
    for i,v in pairs(getconnections(button[v])) do
        v:Fire()
    end
end
else
place()
place3()
place2()
upgrade()
start()
task.wait(30) -- Waits for the thing to claim (Not rlly needed but good measures
teleport()
end
end
  end