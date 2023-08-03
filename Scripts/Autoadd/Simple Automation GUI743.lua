local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Replicated = game:GetService("ReplicatedStorage");
local bv = 0 
local autosum = 0

local Theft = Laz:NewWindow("Theft Menu")
local Van = Laz:NewWindow("Sell Menu")

local Basic = Theft:NewSection("Basic People")

local Sell = Van:NewSection("Sell Loot")

function notify(a,b)
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>"..a.."</font>",
        Description = b
    }
end

Basic:CreateButton("Rob Once",function()
    for _, x in pairs(game:GetService("Workspace"):GetChildren()) do
        local n = tostring(x)
        if string.find(n, "Base:") then
            print(x)
            if x:FindFirstChild("HumanoidRootPart") ~= nil then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.HumanoidRootPart.CFrame
                wait(0.2)
                pcall(function()
                    fireproximityprompt(x.HumanoidRootPart.ProximityPrompt, 1000) 
                end)
                wait(0.2)
                break
            end
        end
    end
    notify("Robbing","Robbed Innocent Person")
end)

Basic:CreateButton("Rob Everybody Once",function()
    for _, x in pairs(game:GetService("Workspace"):GetChildren()) do
        local n = tostring(x)
        if string.find(n, "Base:") then
            bv = bv + 1
            if x:FindFirstChild("HumanoidRootPart") ~= nil then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.HumanoidRootPart.CFrame
                wait(0.2)
                fireproximityprompt(x.HumanoidRootPart.ProximityPrompt, 1000)    
                wait(0.2)
            end
        end
    end
        notify("Robbing","Robbed "..tostring(bv).." People")
    bv = 0
end)

Basic:CreateToggle("Rob Looped",function(g)
    notify("Robbing", "Looped: "..tostring(g))
    getgenv().basic = g
    if g == false then
        notify("Robbed",autosum.." People Robbed")    
        autosum = 0
    end
end)

Sell:CreateButton("Sell",function()
    firetouchinterest(game:GetService("Workspace").Sells.World1.Sell,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,0)
end)

while true do
    wait(0.01)
    while getgenv().basic == true do
        wait(0.05)
        for _, x in pairs(game:GetService("Workspace"):GetChildren()) do
        local n = tostring(x)
            if string.find(n, "Base:") then
                print(x)
                autosum = autosum + 1
                if x:FindFirstChild("HumanoidRootPart") ~= nil then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.HumanoidRootPart.CFrame
                    wait(0.2)
                    fireproximityprompt(x.HumanoidRootPart.ProximityPrompt, 1000)
                    wait(0.2)
                end
            end
        end
    end
end