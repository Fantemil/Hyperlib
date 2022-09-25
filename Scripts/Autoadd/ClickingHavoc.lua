local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Clicking Havoc")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local SelectedRebirth = tonumber(1)
Rebirths = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Rebirths.Main.Rebirth.Rebirth:GetDescendants()) do
    if v.ClassName == "IntValue" then
        table.insert(Rebirths,tonumber(v.Value))
    end
end

if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
    game:GetService("CoreGui").PurchasePromptApp:Destroy()
end
    
b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

b:Toggle("AutoCollectGems",function(bool)
    shared.toggle = bool
    AutoCollectGems = bool
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    AutoRebirth = bool
end)

f:Dropdown("Select Rebirth",Rebirths,true,function(mob)
    SelectedRebirth = mob
end)

f:Toggle("Upgrades",function(bool)
    shared.toggle = bool
    Upgrades = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Tp Cheats",function()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                if not string.find(v.Parent.Info.Type.Text,"VIP") and 
                not string.find(v.Parent.Info.Type.Text,"PREMIUM") and 
                not string.find(v.Parent.Info.Type.Text,"GROUP") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.CFrame.Position + Vector3.new(0,0,0))
                    wait(.1)
                end
            end
        end
    end)
end)
 
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

function Upgrades1()
    local Gems = {}
    local table = {}
    local K = {}
    local M = {}
    local B = {}
    local T = {}
    local noV = {}
    i = 1
    table[i] = game:GetService("Players").LocalPlayer.leaderstats.Gems.Value
    if not string.find(table[i], "K") and 
    not string.find(table[i], "M") and 
    not string.find(table[i], "B") and
    not string.find(table[i], "T") then
        noV[i] = table[i]
    end
    if string.find(table[i], "K") then
        K[i] = string.gsub(table[i], "K", "")
    end
    if string.find(table[i], "M") then
        M[i] = string.gsub(table[i], "M", "")
    end
    if string.find(table[i], "B") then
        B[i] = string.gsub(table[i], "B", "")
    end
    if string.find(table[i], "T") then
        T[i] = string.gsub(table[i], "T", "")
    end
    for i, v in pairs(noV) do
        Gems[i] = tonumber(v)
    end
    for i, v in pairs(K) do
        Gems[i] = tonumber(v * 1000)
    end
    for i, v in pairs(M) do
        Gems[i] = tonumber(v * 1000000)
    end
    for i, v in pairs(B) do
        Gems[i] = tonumber(v * 1000000000)
    end
    for i, v in pairs(T) do
        Gems[i] = tonumber(v * 1000000000000)
    end
    local Cost = {}
    local table = {}
    local K = {}
    local M = {}
    local B = {}
    local T = {}
    local noV = {}
    for i, v2 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Upgrades.Main.RebirthShop.RebirthShop:GetChildren()) do
        if v2.ClassName == "ImageButton" then
            v2.Visible = true
            table[i] = v2.Price.Text
        end
        for i,v in pairs(table) do
            if not string.find(table[i], "K") and 
            not string.find(table[i], "M") and 
            not string.find(table[i], "B") and 
            not string.find(table[i], "T") then
                noV[i] = table[i]
            end
            if string.find(table[i], "K") then
                K[i] = string.gsub(table[i], "K", "")
            end
            if string.find(table[i], "M") then
                M[i] = string.gsub(table[i], "M", "")
            end
            if string.find(table[i], "B") then
                B[i] = string.gsub(table[i], "B", "")
            end
            if string.find(table[i], "T") then
                T[i] = string.gsub(table[i], "T", "")
            end
        end
    end
    for i,v in pairs(noV) do
        Cost[i] = tonumber(v)
    end
    for i,v in pairs(K) do
        Cost[i] = tonumber(v * 1000)
    end
    for i,v in pairs(M) do
        Cost[i] = tonumber(v * 1000000)
    end
    for i,v in pairs(B) do
        Cost[i] = tonumber(v * 1000000000)
    end
    for i,v in pairs(T) do
        Cost[i] = tonumber(v * 1000000000000)
    end
    for i,v in pairs(Cost) do
        if Cost[i] <= Gems[1] then
            for i,v1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Upgrades.Main.RebirthShop.RebirthShop:GetChildren()) do
                if v1.ClassName == "ImageButton" then
                    game:GetService("ReplicatedStorage").Upgrade:FireServer(v1.Name)
                end
            end
        end
    end
end

function CollectGems1()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Gems:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                v.Parent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            end
        end
    end)
end

function Click1()
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.GUI.BottomBar.Clicker.Activated)
end

function Rebirth1()
    game:GetService("ReplicatedStorage").Rebirth:FireServer(tonumber(SelectedRebirth))
end

while wait() do
    spawn(function()
        if AutoRebirth == true then
            Rebirth1()
        end
    end)
    
    spawn(function()
        if AutoClicker == true then
            Click1()
        end
    end)
    
    spawn(function()
        if AutoCollectGems == true then
            CollectGems1()
        end
    end)
    
    spawn(function()
        if Upgrades == true then
            Upgrades1()
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