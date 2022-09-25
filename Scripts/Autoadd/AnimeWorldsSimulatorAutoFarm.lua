local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Anime Worlds Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
Base = ""
for i,v in pairs(game:GetService("Workspace").Nests:GetChildren()) do
    if v.ClassName == "Folder" then
        if v.Base.Owner.Sign.Text == game.Players.LocalPlayer.Name.."'s Dojo" then
            Base = v.Name
        end
    end
end
SelectedFruit = "MeadowFruit"
Fruits = {}
for i,v in pairs(game:GetService("Workspace").FruitBushes:GetChildren()) do
    table.insert(Fruits,v.Name)
end
SelectedEnemy = "Hoshi"
Emenies = {}
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.HumanoidRootPart:FindFirstChildOfClass("BillboardGui") then
        if not table.find(Emenies,v.HumanoidRootPart:FindFirstChildOfClass("BillboardGui").Back["NPC_Name"].Text) then
            table.insert(Emenies,v.HumanoidRootPart:FindFirstChildOfClass("BillboardGui").Back["NPC_Name"].Text)
        end
    end
end

b:Dropdown("Select Fruit",Fruits,true,function(a)
    SelectedFruit = a
end)
 
b:Toggle("Farm Fruits",function(bool)
    shared.toggle = bool
    FarmFruits = bool
end)

b:Dropdown("Select Emeny",Emenies,true,function(a)
    SelectedEnemy = a
end)
 
b:Toggle("Kill Enemies",function(bool)
    shared.toggle = bool
    KillEnemyies = bool
end)

b:Toggle("AutoPlaceOrbs",function(bool)
    shared.toggle = bool
    AutoPlaceOrbs = bool
end)

b:Toggle("AutoHatchOrbs",function(bool)
    shared.toggle = bool
    AutoHatchOrbs = bool
end)

b:Toggle("TpBaseWhenFull",function(bool)
    shared.toggle = bool
    TpBaseWhenFull = bool
end)

b:Toggle("BoostAttackers",function(bool)
    shared.toggle = bool
    BoostAttackers = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Tp Base",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Nests[Base].Base.CFrame.Position + Vector3.new(0,6,0))
end)
--Credits
u:Button(game:service("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Maxgat5/Decode/main/JSON")).username,function()
    setclipboard(game:service("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Maxgat5/Decode/main/JSON")).username)
end)
 
u:Button("Discord Server",function()
    setclipboard(game:service("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Maxgat5/Decode/main/JSON")).discord)
end)

game:GetService('RunService').Stepped:connect(function()
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
end)

function ClosestPart()
    local dist = math.huge
    local target = nil
    for i,v in pairs(game:GetService("Workspace").FruitBushes[SelectedFruit]:GetChildren()) do
        if v:FindFirstChildOfClass("Model") then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
                local magnitude = (v.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                if magnitude < dist then
                    dist = magnitude
                    target = v
                end
            end
        end
    end
    return target
end

function ClosestPart1()
    local dist = math.huge
    local target = nil
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            if v.HumanoidRootPart:FindFirstChildOfClass("BillboardGui") then
                if v.HumanoidRootPart:FindFirstChildOfClass("BillboardGui").Back["NPC_Name"].Text == SelectedEnemy then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
                        local magnitude = (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                        if magnitude < dist then
                            dist = magnitude
                            target = v.HumanoidRootPart
                        end
                    end
                end
            end
        end
    end
    return target
end

spawn(function()
    while wait() do
        if FarmFruits == true then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ClosestPart().CFrame.Position + Vector3.new(0,0,0))
                game:GetService("ReplicatedStorage").Remotes.Events.PerformAttack:FireServer("Melee","Punch")
            end)
        end
        if KillEnemyies == true then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ClosestPart1().CFrame.Position + Vector3.new(0,0,0))
                game:GetService("ReplicatedStorage").Remotes.Events.PerformAttack:FireServer("Melee","Punch")
            end)
        end
        if TpBaseWhenFull == true then
            if game:GetService("Players").LocalPlayer.PlayerGui.Confirmation.Enabled == true then
                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Confirmation.Holder:GetChildren()) do
                    if v.ClassName == "Frame" then
                        if v.Label.Text == "Your backpack is full. Do you want to teleport back to your dojo?" then
                            pcall(function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Nests[Base].Base.CFrame.Position + Vector3.new(0,6,0))
                                wait(5)
                                firesignal(v.No.Activated)
                            end)
                        end
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if AutoPlaceOrbs == true then
            for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Orbs:GetChildren()) do
                for i,v1 in pairs(game:GetService("Workspace").Nests[Base].Podiums:GetChildren()) do
                    if not v1:FindFirstChild("OrbModel") then
                        for i,v2 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Orbs.Holder.Back.Front.Orbs:GetChildren()) do
                            if v2.ClassName == "Frame" then
                                if v2.Visible == true then
                                    game:GetService("ReplicatedStorage").Remotes.Events.PlaceOrb:FireServer(tonumber(v1.Name),tostring(v.Name))
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if AutoHatchOrbs == true then
            for i,v in pairs(game:GetService("Workspace").Nests[Base].Podiums:GetChildren()) do
                if v:FindFirstChild("Pedestal") then
                    if v.Pedestal["Meshes/podium_Cube"].HatchOrb.BarHolder.Hatch.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.Events.HatchOrb:FireServer(tostring(i))
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if BoostAttackers == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Attacks:GetChildren()) do
                if v.ClassName == 'Frame' then
                    if v.Visible == true then
                        firesignal(v.Button.Activated)
                    end
                end
            end
        end
    end
end)