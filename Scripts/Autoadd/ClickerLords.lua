local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Clicker Lords")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
SelectedRebirth = "Rebirth1"
Rebirth = {}
for i,v in pairs(game:GetService("ReplicatedStorage").RebirthFolder:GetChildren()) do
    if not table.find(Rebirth,v.Name) then
        table.insert(Rebirth,v.Name)
    end
end

b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

f:Toggle("Upgrades",function(bool)
    shared.toggle = bool
    Upgrades = bool
end)

f:Toggle("Classes",function(bool)
    shared.toggle = bool
    Classes = bool
end)

f:Toggle("Portals",function(bool)
    shared.toggle = bool
    Portals = bool
end)

f:Toggle("Egg (Be Near)",function(bool)
    shared.toggle = bool
    AutoEgg = bool
end)

f:Dropdown("Select Rebirth",Rebirth,true,function(mob)
    SelectedRebirth = mob
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    Rebirth = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Toggle("AutoCarft (Dupe)",function(bool)
    shared.toggle = bool
    AutoCarft = bool
end)

e:Toggle("Claim Achiev",function(bool)
    shared.toggle = bool
    Achievements = bool
end)

e:Toggle("Claim Quest",function(bool)
    shared.toggle = bool
    Quest = bool
end)

e:Button("Use Codes",function()
    for i,v in pairs(game:GetService("Players"):GetDescendants()) do
        if v.Name == "CodesFolder" then
            for i,v1 in pairs(v:GetChildren()) do
                game:GetService("ReplicatedStorage").CodeFolder.CodesFunction:InvokeServer(v1.Name)
            end
        end
    end
    --more Codes
    pcall(function()
        local a = {"bossmanyt","cavepart1","dojopet","1mvisits","templepet","meteorpet","opfuturepet","20xdojopet","1klikes"}
        for i,v in pairs(a) do
            game:GetService("ReplicatedStorage").CodeFolder.CodesFunction:InvokeServer(v)
        end
    end)
    -- local a = {}
    -- for i,v in pairs(game:GetService("Players").LocalPlayer.CodesFolder:GetChildren()) do
    --     a[i] = '"'..v.Name..'",'
    -- end
    -- setclipboard(table.concat(a))
end)

--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

if game:GetService("Players").LocalPlayer.PlayerGui.DisplayGui.CUIClone.CUI1:FindFirstChild("Button") then
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "HACK.EXE"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    game:GetService("Players").LocalPlayer.PlayerGui.DisplayGui.CUIClone.CUI1.Button.Parent = ScreenGui
    for i,v in pairs(ScreenGui.Button:GetChildren()) do
        v.Visible = false
    end
end

while wait() do
    spawn(function()
        if AutoClicker == true then
            game.Players.LocalPlayer:WaitForChild("PlayerGui")["HACK.EXE"].Button.Visible = true
            game.Players.LocalPlayer:WaitForChild("PlayerGui")["HACK.EXE"].Button.ImageTransparency = 1
            game:service'VirtualUser':ClickButton1(Vector2.new())
        else
            game.Players.LocalPlayer:WaitForChild("PlayerGui")["HACK.EXE"].Button.Visible = false
            game.Players.LocalPlayer:WaitForChild("PlayerGui")["HACK.EXE"].Button.ImageTransparency = 0
        end
    end)
    
    spawn(function()
        if AutoCarft == true then
            game:GetService("ReplicatedStorage").RemoteEvents.PetActionRequest:InvokeServer("Craft All")
        end
    end)
    
    spawn(function()
        if AutoEgg == true then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
                    game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(tostring(v.Name),"Single")
                end
                for i,v in pairs(game:GetService("Workspace")["Limited Eggs"]:GetChildren()) do
                    game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(tostring(v.Name),"Single")
                end
            end)
        end
    end)
    
    spawn(function()
        if Rebirth == true then
            game:GetService("ReplicatedStorage").RebirthFolder[tostring(SelectedRebirth)]:InvokeServer()
        end
    end)
    
    spawn(function()
        if Upgrades == true then
            for i,v in pairs(game:GetService("ReplicatedStorage").UpgradeFolder:GetChildren()) do
                game:GetService("ReplicatedStorage").UpgradeFolder[v.Name]:InvokeServer()
            end
        end
    end)
    
    spawn(function()
        if Classes == true then
            number = nil
            PrevClass = nil
            ClassName = nil
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.FrameUI.ClassFrame.ScrollingFrame:GetChildren()) do
                if v.ClassName == "ImageButton" then
                    for i,v1 in pairs(v:GetDescendants()) do
                        if v1.Name == "PreviousClassName" then
                            PrevClass = v1.Value
                        end
                        if v1.Name == "ClassNumber" then
                            number = v1.Value
                        end
                        if v1.Name == "ClassName" then
                            ClassName = v1.Value
                        end
                    end
                    game:GetService("ReplicatedStorage").ClassFolder.ClassFunction:InvokeServer(ClassName,number,PrevClass)
                end
            end
        end
    end)
    
    spawn(function()
        if Portals == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PortalValue:GetChildren()) do
                if v.Value == false then
                    game:GetService("ReplicatedStorage").PortalFolder[v.Name]:InvokeServer()
                end
            end
        end
    end)
    
    spawn(function()
        if Achievements == true then
            for i,v in pairs(game:GetService("ReplicatedStorage").AchieveFolder:GetDescendants()) do
                if v.ClassName == "RemoteFunction" then
                    spawn(function()
                        v:InvokeServer()
                    end)
                end
            end
        end
    end)
    
    spawn(function()
        if Quest == true then
            for i,v in pairs(game:GetService("ReplicatedStorage").RemoteEvents:GetChildren()) do
                if string.find(v.Name,"Quest") then
                    v:FireServer()
                end
            end
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