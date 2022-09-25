local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Anime Fighters Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
SelectedEnemy = "Frieza1"
Enemies = {}
for i,v in pairs(game:GetService("Workspace").Worlds:GetDescendants()) do
    if v.Name == "Enemies" and v.ClassName == "Folder" then
        for i,v1 in pairs(v:GetChildren()) do
            if not table.find(Enemies,v1.Name) then
                table.insert(Enemies,v1.Name)
            end
        end
    end
end

function ClosestPart()
    local dist = math.huge
    local target = nil
    for i,v in pairs(game:GetService("Workspace").Worlds:GetDescendants()) do
        if v.ClassName == "Humanoid" then
            if v.Parent.Name == SelectedEnemy then
                if v.Parent:FindFirstChild("HumanoidRootPart") then
                    local magnitude = (v.Parent.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                    if magnitude < dist then
                        dist = magnitude
                        target = v.Parent.HumanoidRootPart
                    end
                end
            end
        end
    end
    return target
end

b:Toggle("AutoKillEnemies",function(bool)
    shared.toggle = bool
    AutoKillEnemies = bool
end)

b:Dropdown("Select Mob",Enemies,true,function(mob)
    SelectedEnemy = mob
end)

b:Toggle("AutoClickDamage",function(bool)
    shared.toggle = bool
    AutoClickDamage = bool
end)

b:Toggle("AutoCollectCoins",function(bool)
    shared.toggle = bool
    AutoCollectCoins = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

--Credits
u:Button("Lunaaa#2912",function()
    setclipboard("Lunaaa#2912")
end)
 
u:Button("Discord server for updates",function()
    setclipboard("https://discord.gg/tGkcYjrM4z")
end)

while wait() do
    spawn(function()
        if AutoCollectCoins == true then
            for i,v in pairs(game:GetService("Workspace").Effects:GetDescendants()) do
                if v.Name == "Base" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                end
            end
        end
    end)
    
    spawn(function()
        if AutoKillEnemies == true then
            for i,v in pairs(workspace.Pets:GetDescendants()) do
                if v.Name == "Owner" then
                    if v.Value == game.Players.LocalPlayer then
                        if v.Parent.Attacking.Value == nil then
                            game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ClosestPart().CFrame.Position + Vector3.new(0,0,0))
                            mouse1press() wait() mouse1release()
                        else
                            game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 128
                        end
                    end
                end
            end
        end
    end)
    
    spawn(function()
        if AutoClickDamage == true then
            game:GetService("ReplicatedStorage").Remote.ClickerDamage:FireServer()
        end
    end)
    
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
end