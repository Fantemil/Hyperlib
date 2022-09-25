local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Warrior Champions")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoSwing",function(bool)
    shared.toggle = bool
    AutoSwing = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("Blades",function(bool)
    shared.toggle = bool
    Blades = bool
end)

f:Toggle("Dna",function(bool)
    shared.toggle = bool
    Dna = bool
end)

f:Toggle("Ranks",function(bool)
    shared.toggle = bool
    Ranks = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

--Credits
u:Button("Pojken#8815",function()
    setclipboard("Pojken#8815")
end)

u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
    game:GetService("CoreGui").PurchasePromptApp:Destroy()
end
    
while wait() do
    spawn(function()
        if AutoSwing == true then
            game:GetService("ReplicatedStorage").Knit.Services.CharacterService.RF.Swing:InvokeServer()
        end
    end)
    
    spawn(function()
        if AutoSell == true then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Resources.Sell.Part.CFrame.Position + Vector3.new(0,0,0))
        end
    end)
    
    spawn(function()
        if Blades == true then
            game:GetService("ReplicatedStorage").Knit.Services.ShopService.RF.BuyBest:InvokeServer("Blades")
        end
    end)
    
    spawn(function()
        if Dna == true then
            game:GetService("ReplicatedStorage").Knit.Services.ShopService.RF.BuyBest:InvokeServer("DNA")
        end
    end)
    
    spawn(function()
        if Ranks == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Classes.Background.Frame.Frames.ItemHolder:GetChildren()) do
                if v.ClassName ~= "UIGridLayout" then
                    game:GetService("ReplicatedStorage").Knit.Services.ShopService.RF.BuyItem:InvokeServer(v.Name)
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