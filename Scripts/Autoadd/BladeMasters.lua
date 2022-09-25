local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Blade Masters")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

b:Toggle("AutoCollectGems",function(bool)
    shared.toggle = bool
    AutoCollectGems = bool
end)

b:Toggle("AutoKillBoss",function(bool)
    shared.toggle = bool
    AutoKillBoss = bool
end)

f:Toggle("Blades",function(bool)
    shared.toggle = bool
    Blades = bool
end)

f:Toggle("Backpacks",function(bool)
    shared.toggle = bool
    Backpacks = bool
end)

f:Toggle("Ranks",function(bool)
    shared.toggle = bool
    Ranks = bool
end)

f:Toggle("Skills",function(bool)
    shared.toggle = bool
    Skills = bool
end)

e:Toggle("AntiAfk",function(boosl)
    shared.toggle = bool
    AntiAfk = bool
end)

--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

pcall(function()
    function Click1()
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        game:service'VirtualUser':ClickButton1(Vector2.new())
    end
    
    function Sell1()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").ScriptedAssets.Sell.Sell1.Stuff.Touch.CFrame.Position + Vector3.new(0,0,0))
    end
    
    function Boss1()
        for i,v in pairs(game:GetService("Workspace").BossFolder:GetDescendants()) do
            if v.ClassName == "Humanoid" then
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                game:service'VirtualUser':ClickButton1(Vector2.new())
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.HumanoidRootPart.CFrame.Position + Vector3.new(0,3,0))
            end
        end
    end
    
    function Codes1()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Codes:GetChildren()) do
            game:GetService("ReplicatedStorage").RemoteEvents.Codes:InvokeServer(v.Name)
        end
    end
    
    function Blade1()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Items.Blades:GetChildren()) do
            if v.Value == false then
                game:GetService("ReplicatedStorage").RemoteEvents.ServerRequest:InvokeServer("BuyBlade",i)
            end
        end
    end
    
    function Backpacks1()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Items.Backpacks:GetChildren()) do
            if v.Value == false then
                game:GetService("ReplicatedStorage").RemoteEvents.ServerRequest:InvokeServer("BuyBackpack",i)
            end
        end
    end
    
    function Ranks1()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Items.Ranks:GetChildren()) do
            if v.Value == false then
                game:GetService("ReplicatedStorage").RemoteEvents.ServerRequest:InvokeServer("BuyRank",i)
            end
        end
    end
    
    function Skills1()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Items.Skills:GetChildren()) do
            if v.Value == false then
                game:GetService("ReplicatedStorage").RemoteEvents.ServerRequest:InvokeServer("BuySkill",i)
            end
        end
    end
    
    function CollectGems1()
        for i,v in pairs(game:GetService("Workspace").ScriptedAssets.Gems:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                v.Parent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            end
        end
    end
    
    function Chests1()
        for i,v in pairs(game:GetService("Workspace").ScriptedAssets.Chests:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.CFrame.Position + Vector3.new(0,0,0))
                wait(.1)
            end
        end
    end

    e:Button("Use All Codes",function()
        Codes1()
    end)
    
    e:Button("Tp All Chests",function()
        Chests1()
    end)
    
    e:Button("Inf Jumps",function()
        game:GetService("UserInputService").JumpRequest:connect(function()
      game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")  
     end)
    end)
    
    while wait() do
        spawn(function()
            if AutoClicker == true then
                Click1()
            end
        end)
        spawn(function()
            if AutoKillBoss == true then
                Boss1()
            end
        end)
        spawn(function()
            if Blades == true then
                Blade1()
            end
        end)
        spawn(function()
            if Backpacks == true then
                Backpacks1()
            end
        end)
        spawn(function()
            if Ranks == true then
                Ranks1()
            end
        end)
        spawn(function()
            if Skills == true then
                Skills1()
            end
        end)
        spawn(function()
            if AutoCollectGems == true then
                CollectGems1()
            end
        end)
        if AutoSell == true then
            wait(.1)
            Sell1()
        end
        spawn(function()
            if AntiAfk == true then
                local bb=game:service'VirtualUser'
                bb:CaptureController()
                bb:ClickButton2(Vector2.new())
            end
        end)
    end
end)