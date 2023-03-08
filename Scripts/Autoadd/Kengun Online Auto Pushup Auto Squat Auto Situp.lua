--[[
    Contains Discord server prompt
]]

local request = (syn and syn.request) or (http and http.request) or http_request
if request then
    request(
        {
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode(
                {
                    cmd = "INVITE_BROWSER",
                    args = {code = "TbNZ7cSaE9"},
                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                }
            )
        }
    )
end

local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/KylnDantas/Valiant-UI/main/mainFile.lua'))()

local Window = library:CreateWindow("KylnDantas", "discord.gg/TbNZ7cSaE9", 10044538000)

local Tab = Window:CreateTab("Main")
local Page = Tab:CreateFrame("Auto Tools")

local backpack = game:GetService('Players').LocalPlayer.Backpack;
local chr = game:GetService('Players').LocalPlayer.Character;

Label = Page:CreateLabel("Note: Clicker Cooldown is required")

local clickerCooldown
Page:CreateSlider("Clicker Cooldown", 0, 150,function(c)
    clickerCooldown = c
end)

Toggle = Page:CreateToggle("Auto Pushups", "Automatic Pushups", function(t)
getgenv().autoPushup = t;

while getgenv().autoPushup do task.wait()
    for i,v in pairs(backpack:GetChildren()) do
        if v.Name == "Pushups" then
            v.Parent = chr
            while getgenv().autoPushup and task.wait(clickerCooldown) do
                game:GetService("VirtualUser"):ClickButton1(Vector2.new(125,125))
            end
        end
    end
end
end)

Toggle = Page:CreateToggle("Auto Situps", "Automatic Situps", function(t)
getgenv().autoSitup = t;

while getgenv().autoSitup do task.wait()
    for i,v in pairs(backpack:GetChildren()) do
        if v.Name == "Situps" then
            v.Parent = chr
            while getgenv().autoSitup and task.wait(clickerCooldown) do
                game:GetService("VirtualUser"):ClickButton1(Vector2.new(125,125))
            end
        end
    end
end
end)

Toggle = Page:CreateToggle("Auto Squats", "Automatic Squats", function(t)
getgenv().autoSquat = t;

while getgenv().autoSquat do task.wait()
    for i,v in pairs(backpack:GetChildren()) do
        if v.Name == "Squats" then
            v.Parent = chr
            while getgenv().autoSquat and task.wait(clickerCooldown) do
                game:GetService("VirtualUser"):ClickButton1(Vector2.new(125,125))
            end
        end
    end
end
end)