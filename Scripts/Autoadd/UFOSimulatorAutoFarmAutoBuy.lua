local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("UFO Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
Level = ""
SelectedEgg = "Bunny Egg"
Eggs = {}
for i,v in pairs(game:GetService("Workspace").EggCapsules:GetChildren()) do
    a = string.gsub(v.Name,"Capsule -- ","")
    table.insert(Eggs,a)
end

b:Toggle("AutoKill",function(bool)
    shared.toggle = bool
    AutoKill = bool
end)

b:Box("Level","number",function(a)
    Level = a
end)

b:Toggle("AutoCollectDrop",function(bool)
    shared.toggle = bool
    AutoCollectDrop = bool
end)

f:Dropdown("Select Egg",Eggs,true,function(a)
    SelectedEgg = a
end)

f:Toggle("Egg",function(bool)
    shared.toggle = bool
    Egg = bool
end)

f:Toggle("UFO",function(bool)
    shared.toggle = bool
    UFO = bool
end)

f:Toggle("UFOUpgrade",function(bool)
    shared.toggle = bool
    UFOUpgrade = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Box("Walkspeed","number",function(a)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
end)

e:Button("Tp World",function()
    for _,v in pairs(game:GetService("Workspace").UITouchObjects["Teleport-Home"]:GetDescendants()) do
        if string.find(v.Name, "TouchPart") then
            for _,v1 in pairs(v:GetChildren()) do
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
            end
        end
    end
end)

e:Button("Rejoin",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end)

--Credits
u:Button("AdriaD2103#0001",function()
    setclipboard("AdriaD2103#0001")
end)

u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
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

spawn(function()
    while wait() do
        if Egg == true then
            for i,v in pairs(Eggs) do
                if SelectedEgg == v then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Purchase One Egg",i,{["Pets"] = {},["Hats"] = {}})
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if AutoKill == true then
            for i,v in pairs(game.Workspace.Humans:GetChildren()) do
                if v.HumanGui.StarFrame.Star1.StarAmount.Text == Level then
                    spawn(function()
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Damage Humans",{[tostring(v.Name)] = {["Last"] = 0,["Current"] = 99999999999999999999999}})
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if AutoCollectDrop == true then
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if string.find(v.Name,"Item") then
                    for i1,v1 in pairs(v:GetChildren()) do
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1, 1)
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if UFO == true then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Buy +1 UFO", 1)
        end
    end
end)

spawn(function()
    while wait() do
        if UFOUpgrade == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.UFOFrame.UFOContents.Contents.ScrollingFrame:GetChildren()) do
                pcall(function()
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Buy UFO Upgrade", 1, tonumber(v.Name))
                end)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if KillLevel == true then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Damage Humans",{[Enemyid] = {["Last"] = 0,["Current"] = 99999999999999999999999}})
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Retreat UFOs")
        end
    end
end)

pcall(function()
    if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
        game:GetService("CoreGui").PurchasePromptApp:Destroy()
    end
end)