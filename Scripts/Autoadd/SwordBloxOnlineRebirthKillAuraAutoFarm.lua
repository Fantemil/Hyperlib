repeat wait() until game:IsLoaded()
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
    Title = "「SBO:R」 | By Ausommet",
    Style = 3,
    SizeX = 300,
    SizeY = 250,
    Theme = "Jester",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(9,49,69),
  Minimise = Color3.fromRGB(255,106,0),
  MinimiseAccent = Color3.fromRGB(147,59,0),
  Maximise = Color3.fromRGB(25,255,0),
  MaximiseAccent = Color3.fromRGB(0,255,110),
  NavBar = Color3.fromRGB(60,100,120),
  NavBarAccent = Color3.fromRGB(9,49,69),
  NavBarInvert = Color3.fromRGB(255,255,255),
  TitleBar = Color3.fromRGB(60,100,120),
  TitleBarAccent = Color3.fromRGB(255,255,255),
  Overlay = Color3.fromRGB(255,255,255),
  Banner = Color3.fromRGB(9,49,69),
  BannerAccent = Color3.fromRGB(255,255,255),
  Content = Color3.fromRGB(255,255,255),
  Button = Color3.fromRGB(9,49,69), 
  ButtonAccent = Color3.fromRGB(255,255,255),
  ChipSet = Color3.fromRGB(255,255,255),
  ChipSetAccent = Color3.fromRGB(9,49,69),
  DataTable = Color3.fromRGB(255,255,255),
  DataTableAccent = Color3.fromRGB(9,49,69),
  Slider = Color3.fromRGB(9,49,69),
  SliderAccent = Color3.fromRGB(255,255,255),
  Toggle = Color3.fromRGB(255,255,255),
  ToggleAccent = Color3.fromRGB(9,49,69),
  Dropdown = Color3.fromRGB(9,49,69),
  DropdownAccent = Color3.fromRGB(255,255,255),
  ColorPicker = Color3.fromRGB(9,49,69),
  ColorPickerAccent = Color3.fromRGB(255,255,255),
  TextField = Color3.fromRGB(255,255,255),
  TextFieldAccent = Color3.fromRGB(255,255,255),
    }
})

local Main = UI.New({
    Title = "Main"
})

--Builders
local Players = game:GetService("Players")
local Client = Players.LocalPlayer.Name
local RunService = game:GetService("RunService")
local Imput = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Chr = Plr.Character
local ts = game:GetService("TweenService")
local lc = game.Players.LocalPlayer.Character
local hm = lc.HumanoidRootPart
local Player = Players.LocalPlayer
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local Mobs = {}

--Server Hop Section
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

--Kill Aura Section
Main.Toggle({
    Text = 'Kill Aura',
    Callback = function(Value)
      if Value then
        killaura = true
      else
        killaura = false
      end
      while killaura do
        for Index, Value in next, workspace.Mobs:GetChildren() do
            if workspace.Mobs:FindFirstChild(Value.Name) and workspace.Mobs[Value.Name]:FindFirstChild('Head') then
              if (Value['Head'].Position - workspace[Client]['Head'].Position).magnitude < 50  then 
                game:GetService("ReplicatedStorage").ChangeWeld:FireServer("One-Handed Held", "RightLowerArm")
                game:GetService("ReplicatedStorage").DamageMob:FireServer(workspace.Mobs[Value.Name].Humanoid, false, workspace[Client].Sword.Middle)
              end
          end
      end
      Wait(1)  
  end
    end,
    killaura = false
  })
--Auto Farm Section

local function Mob_Update()
    for i, v in pairs(workspace.Mobs:GetChildren()) do
        if workspace.Mobs[v.Name]:FindFirstChild('MOBBEBEB')  and not table.find(Mobs, v['MOBBEBEB'].Value) then
            table.insert(Mobs, v['MOBBEBEB'].Value)
        end
    end
end

local function Closest() 
    local Closest = {math.huge} 
        for Index, Value in next, workspace.Mobs:GetChildren() do 
            if workspace.Mobs:FindFirstChild(Value.Name) and workspace.Mobs[Value.Name]:FindFirstChild('Head') and workspace.Mobs[Value.Name]:FindFirstChild('HumanoidRootPart') and Value['MOBBEBEB'].Value == Mob and Value['Humanoid'].Health > 0  then 
                local Distance = (hm.Position - Value.HumanoidRootPart.Position).magnitude
                if Distance < Closest[1] then 
                    Closest = {Distance, Value} 
                end
            end
        end
    return Closest[2]   
end

local function to(newpos)
    local Chr = Plr.Character
    if Chr ~= nil then
        local ts = game:GetService("TweenService")
        local dist = (hm.Position - target.HumanoidRootPart.Position).magnitude
        local tweenspeed = dist / 30
        local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
        local tp = {CFrame = CFrame.new(newpos)}
        local tween =  ts:Create(hm, ti, tp)
        tween:Play()
        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(100000,100000,100000)
        bv.Velocity = Vector3.new(0,0,0)
        bv.Parent = hm
        bv:Destroy()
        wait(tonumber(tweenspeed))
    end
end

ff = Instance.new("Part", game.Workspace)

function Float()
ff.CFrame = hm.CFrame + Vector3.new(0,-3,0)
ff.Anchored = true
ff.Size = Vector3.new(1,0.01,1)
end


Main.Toggle({
    Text= 'Auto Farm',
    Callback = function(Value)
        if Value then
            autofarm = true
          else
            autofarm = false
          end
        while autofarm do
            RunService.Heartbeat:Wait(0)
            target = Closest()
            if target ~= nil then
                newpos = target.HumanoidRootPart.Position+ Vector3.new(0,-30,0) 
                pcall(function() to(newpos) end)
            end
            Float()
        end
end,
autofarm = false
})

local Select = Main.Dropdown({
    Text = "Select Mob",
    Callback = function(Value)
            Mob = Value
        end,
        Options = {}
    })

    Main.Button({
        Text = 'Refresh Mobs List',
        Callback = function()
            Mob_Update()
            Select:SetOptions(Mobs)
        end,
    })
    
-- Staff Detection // Re-join On kick
    Players.PlayerAdded:Connect(function(Plr)
        if Plr:GetRankInGroup(5683480) > 1 then 
                        Teleport()
                    end
                end)

    Main.Toggle({
        Text= 'Staff Detection',
        Callback = function(Value)
            if Value then 
                for Index, Value in next, Players:GetPlayers() do 
                    if Value ~= Player and Value:GetRankInGroup(5683480) > 1 then 
                            Teleport()
                            end
                        end
                    end
            end,
            Value = true
        })