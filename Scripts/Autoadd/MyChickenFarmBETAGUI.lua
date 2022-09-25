local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("My Chicken Farm")
local b = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("Chickens",function(bool)
    shared.toggle = bool
    Chicken = bool
end)

b:Toggle("Chicken Upgrades",function(bool)
    shared.toggle = bool
    ChickenUpg = bool
end)

b:Toggle("Rebirth",function(bool)
    shared.togge = bool
    Rebirth = bool
end)

b:Toggle("Golden Shop",function(bool)
    shared.toggle = bool
    RebirthUpg = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Toggle("Achieve",function(bool)
    shared.toggle = bool
    Achieve = bool
end)
--Credits
u:Button("Moepi#1149",function()
    setclipboard("Moepi#1149")
end)

u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    spawn(function()
        if Achieve == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Gui.Achievements.List:GetDescendants()) do
                if v.ClassName == "TextButton" then
                    firesignal(v.MouseButton1Click)
                end
            end
        end
    end)
    
    spawn(function()
        if Chicken == true then
            text = nil
            for i,v in pairs(game:GetService("Workspace").Farms:GetDescendants()) do
                if v.ClassName == "TextLabel" then
                    if v.Text == game.Players.LocalPlayer.Name.."'s Farm" then
                        text = v.Parent.Parent.Parent.Info.Frame.Chickens.Text
                    end
                end
            end
            a = string.gsub(text,"Total Chickens","")
            b = string.gsub(a,"font","")
            c = string.gsub(b,">","")
            d = string.gsub(c,"<","")
            e = string.gsub(d,"color","")
            f = string.gsub(e,"=","")
            f1 = string.gsub(f,"'","")
            f2 = string.gsub(f1,"rgb","")
            f3 = string.gsub(f2,"229","")
            f4 = string.gsub(f3,",","")
            f5 = string.gsub(f4," ","")
            f6 = string.gsub(f5,"%b()","")
            string = f6
            a1111,b1111 = string:match("(.+)//(.+)/")
            game:GetService("ReplicatedStorage").Remotes.PurchaseFarm:FireServer(a1111 + 1)
        end
    end)
    
    spawn(function()
        if ChickenUpg == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Data.Farm:GetChildren()) do
                game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(v.Name)
            end
        end
    end)

    spawn(function()
        if Rebirth == true then
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
        end
    end)

    spawn(function()
        if RebirthUpg == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Gui.GoldenShop.List:GetChildren()) do
                game:GetService("ReplicatedStorage").Remotes.GUpgrade:FireServer(v.Name)
            end
        end
    end)

    spawn(function()
        if AntiAfk == true then
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
        end
    end)
end