local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Anime Destroyers")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
SelectedPowerCrate = ""
PowerCrates = {}
for i,v in pairs(game:GetService("Workspace").PowerCrates:GetChildren()) do
    if not table.find(PowerCrates,v.Name) then
        table.insert(PowerCrates,v.Name)
    end
end
SelectedEnemy = ""
Enemies = {}
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if not table.find(Enemies,v.Name) then
        table.insert(Enemies,v.Name)
    end
end

b:Dropdown("Select Enemy",Enemies,true,function(a)
    SelectedEnemy = a
end)

b:Toggle("AutoKill",function(bool)
    shared.toggle = bool
    AutoKill = bool
end)

b:Toggle("AutoCollectCoins",function(bool)
    shared.toggle = bool
    AutoCollectCoins = bool
end)

f:Dropdown("Select PowerCrate",PowerCrates,true,function(a)
    SelectedPowerCrate = a
end)

f:Toggle("PowerCrate",function(bool)
    shared.toggle = bool
    PowerCrate = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Toggle("AutoHeal",function(bool)
    shared.toggle = bool
    AutoHeal = bool
end)
--Credits
u:Button("Alan.#9235",function()
    setclipboard("Alan.#9235")
end)

u:Button(game:service("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Maxgat5/Decode/main/JSON")).username,function()
    setclipboard(game:service("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Maxgat5/Decode/main/JSON")).username)
end)
 
u:Button("Discord Server",function()
    setclipboard(game:service("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Maxgat5/Decode/main/JSON")).discord)
end)

function ClosestPart()
    local dist = math.huge
    local target = nil
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.ClassName == "Model" and v.Name == SelectedEnemy then
            local magnitude = (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
            if magnitude < dist then
                dist = magnitude
                target = v
            end
        end
    end
    return target
end

game:GetService('RunService').Stepped:connect(function()
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
    spawn(function()
        if AutoKill == true then
            pcall(function()
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ClosestPart().HumanoidRootPart.CFrame.Position + Vector3.new(0,-5,0))
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end)
        end
    end)
    spawn(function()
        if AutoCollectCoins == true then
            for i,v in pairs(game:GetService("Workspace").Coins:GetChildren()) do
                pcall(function()
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                end)
            end
        end
    end)
    spawn(function()
        if AutoHeal == true then
            pcall(function()
                game:GetService("Workspace").HealingWells.Well.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            end)
        end
    end)
end)

spawn(function()
    while wait() do
        if AutoKill == true then
            pcall(function()
                spawn(function()
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    game:GetService("ReplicatedStorage").Remotes.UseSword:InvokeServer(tool,{{ClosestPart()}})
                end)
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if PowerCrate == true then
            game:GetService("ReplicatedStorage").Remotes.OpenPowerCrate:InvokeServer(tonumber(SelectedPowerCrate),false)
        end
    end
end)