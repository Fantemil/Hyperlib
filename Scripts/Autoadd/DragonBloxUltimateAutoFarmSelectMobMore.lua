--anti afk

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


--Variable
transform = false
local player = game:GetService("Players").LocalPlayer
local events = game:GetService("ReplicatedStorage").Package.Events
local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")
local data = game.ReplicatedStorage.Datas[player.UserId]
local skills = game.ReplicatedStorage.Package.Skills
local events = game.ReplicatedStorage.Package.Events
local market = game:GetService("MarketplaceService")
local key = (function()
    for i,v in pairs(getgc()) do
        if type(v) == "function" and islclosure(v) and table.find(getconstants(v),"ShakeOnce") and getconstant(v,1) == "_G" then
            local c = getconstants(v)
            return c[table.find(c,"InvokeServer")-1]
        end
    end
    return game.Players.LocalPlayer:Kick("Patched!")
end)()
local Quest = {
    "Top X Fighter",
    "SSJB Wukong",
    "Citizen",
    "Kid Nohag",
    "Chilly",
    "X Fighter Trainer",
    "Super Vegetable",
    "Klirin",
    "SSJ2 Wukong",
    "Perfect Atom",
    "Radish",
    "Mapa",
    "Broccoli",
    "SSJG Kakata",
    "Kai-fist Master",
    "Kaio Student",
    "Turtle Student"
}
-- Shitty Tabels
local MobTable = {}
for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
    table.insert(MobTable, v.Name)
end


-- Drain
local drain = events.drain
local drain2 = drain:Clone()
drain2.Parent = events

-- Grab Gamepasses
function gamepass(gamepassid)
    local s,res = pcall(market.UserOwnsGamePassAsync,market,player.UserId,gamepassid)
    if not s then
        res = false
    end
    return res
end
local gamepasses = {}
for i,v in pairs(skills:GetChildren()) do
    if v:FindFirstChild("Gamepass") then
        gamepasses[v.Gamepass.Value] = gamepass(v.Gamepass.Value)
    end
end

--Recharge
function recharge()
    repeat
        spawn(function()
            events.cha:InvokeServer(key)
        end)
        wait()
    until player.Character.Stats.Ki.Value == player.Character.Stats.Ki.MaxValue
end


-- Check Tranformations
function trans()
 local unlocked = {}
    if pcall(function() return player.Character.Status.Transformation,player.Character.Status.SelectedTransformation,player.Character.Stats.Ki end) then
  local shit = skills:GetChildren()
  for i = 1, #shit do local v = shit[i]
   if v:FindFirstChild("Time") then
    local un = true
                local shit2 = v.Requirements:GetChildren()
                local al = v:FindFirstChild("Allignment")
    for i2 = 1, #shit2 do local v2 = shit2[i2]
     if data[v2.Name].Value < v2.Value then
      un = false
     end
    end
    if al and al.Value ~= data.Allignment.Value then
        un = false
                end
                if v:FindFirstChild("Gamepass") and not gamepasses[v.Gamepass.Value] then
                    un = false
                end
    if un then
     table.insert(unlocked, v.Name)
    end
            end
  end
  if #unlocked > 1 then
   table.sort(unlocked, function(a,b)
    return skills[a].Requirements.Strength.Value > skills[b].Requirements.Strength.Value
            end)
            if unlocked[1] ~= player.Character.Status.Transformation.Value then
       return unlocked[1]
            end
        end
  return false
 end
end

-- Transformation
function transformation()
    local form = trans()
    if typeof(form) == "string" then
        print(form)
        if player.Character.Status.Transformation.Value ~= "None" then
            spawn(function()
                events.ta:InvokeServer()
            end)
        end
        repeat
            spawn(function()
                events.equipskill:InvokeServer(form)
            end)
            wait(.25)
        until player.Character.Status.SelectedTransformation.Value == form
        repeat
            spawn(function()
                events.cha:InvokeServer(key)
            end)
            wait()
        until player.Character.Stats.Ki.Value == player.Character.Stats.Ki.MaxValue
        local max = player.Character.Stats.Ki.MaxValue
        repeat
            wait(.25)
            spawn(function()
                events.ta:InvokeServer()
            end)
        until max < player.Character.Stats.Ki.MaxValue
        if not energy then
            recharge()
        end
    end
end
-- Ui Lib Section
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("DBU") -- Creates the window

local farm = w:CreateFolder("Autofarm") -- Creates the folder(U will put here your buttons,etc)
local trans = w:CreateFolder("Transform")
local info = w:CreateFolder("Information")

farm:Toggle("On/Off Toggle", function(Val)
    Autofarm = Val
end)

farm:Dropdown("Select Mob", MobTable ,true, function(Value)
    SelectedMob = Value
end)
farm:Dropdown("Select Quest",Quest, true, function(Value)
    SelectedQuest = Value
end)
farm:Slider("Tp Distance",{
    min = 0; -- min value of the slider
    max = 10; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    TpDistance = value
end)
trans:Toggle("Auto Transform", function(Val)
    Transform = Val
end)
trans:Toggle("No Energy Drain", function(Val)
    energy = Val
end)
--NoClip
Stepped = game:GetService('RunService').Stepped:Connect(function()
    if player.Character and player.Character:FindFirstChild("Humanoid") then 
        player.Character.Humanoid:ChangeState(11)
    end
    if Autofarm == false then 
        Stepped:Disconnect()
    end
end)

--Function
local function quest()
    if game:GetService("ReplicatedStorage").Datas[player.UserId].Quest.Value ~= SelectedQuest then
        player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Others.NPCs[SelectedQuest].HumanoidRootPart.CFrame
  repeat
   wait()
   events.Qaction:InvokeServer(game:GetService("Workspace").Others.NPCs[SelectedQuest])
  until game:GetService("ReplicatedStorage").Datas[player.UserId].Quest.Value == SelectedQuest
 end
end


--Loop
spawn(function()
    while true do wait()
        if Autofarm and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
    for i, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do
        if v.Name:lower() == SelectedMob:lower() and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            repeat
                quest()
                player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + v.HumanoidRootPart.CFrame.lookVector * TpDistance
                wait()
                local ohString1 = "Blacknwhite27"
                local ohNumber2 = 1
                game:GetService("ReplicatedStorage").Package.Events.p:FireServer(ohString1, ohNumber2)
            until Autofarm == false or v == nil or v.Humanoid.Health <= 0
   
        end
    end
        end
end
end)

spawn(function()
    while true do wait()
        if Transform then
            transformation()
            wait(1)
        end
    end
end)


-- Energy Toggle
spawn(function()
    while true do
        if energy and drain.Name == "drain" then
            drain.Name = "drain2"
            drain2.Name = "drain"
        elseif not energy and drain.Name == "drain2" then
            drain.Name = "drain"
            drain2.Name = "drain2"
        end
        wait(.7)
    end
end)