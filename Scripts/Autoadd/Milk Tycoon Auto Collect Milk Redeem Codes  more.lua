-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local Window = Library.CreateLib("Milk Tycoon", "GrapeTheme")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local MainTab = Window:NewTab("Main")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local MainSection = MainTab:NewSection("Main Functions")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local plr = game:GetService("Players").LocalPlayer
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
function GetTycoon()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    local Tycoon 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    for _,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        if v.Owner.Value == plr.Name then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
           Tycoon = v 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    return Tycoon
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
getgenv().AutoCollect = false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
MainSection:NewToggle("Auto Collect Milk", "Auto collects milk", function(state)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    if state then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        getgenv().AutoCollect = true
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        local Tycoon = GetTycoon()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        repeat
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            for _,v in pairs(Tycoon.Drops:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                if getgenv().AutoCollect then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                pcall(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    v.Part.CFrame = plr.Character.HumanoidRootPart.CFrame 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        until getgenv().AutoCollect == false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    else
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        getgenv().AutoCollect = false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
getgenv().AutoProcess = false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
MainSection:NewToggle("Auto Process Milk", "Auto processes milk", function(state)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    if state then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        getgenv().AutoProcess = true
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        local Tycoon = GetTycoon()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        repeat
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            firetouchinterest(plr.Character.HumanoidRootPart, Tycoon.Buttons.Process, 0)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            firetouchinterest(plr.Character.HumanoidRootPart, Tycoon.Buttons.Process, 1)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        until getgenv().AutoProcess == false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    else
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        getgenv().AutoProcess = false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
MainSection:NewButton("Redeem Codes", "Redeems codes", function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    local A_1 = "Cowmedian"
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local Event = game:GetService("ReplicatedStorage").Events.Codes
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
Event:FireServer(A_1)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local A_1 = "Bullseye"
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local Event = game:GetService("ReplicatedStorage").Events.Codes
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
Event:FireServer(A_1)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local A_1 = "Cowmedian"
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local Event = game:GetService("ReplicatedStorage").Events.Codes
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
Event:FireServer(A_1)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local A_1 = "Legend Dairy"
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local Event = game:GetService("ReplicatedStorage").Events.Codes
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
Event:FireServer(A_1)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local CreditsTab = Window:NewTab("Credits")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local CreditsSection = CreditsTab:NewSection("Credits")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
CreditsSection:NewLabel("Made by Valco#7818")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
CreditsSection:NewButton("Join Discord", "Joins the discord server.", function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    local http = game:GetService('HttpService') 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    local req = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
 if req then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
  req({
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
   Url = 'http://127.0.0.1:6463/rpc?v=1',
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
   Method = 'POST',
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
   Headers = {
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    ['Content-Type'] = 'application/json',
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    Origin = 'https://discord.com'
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
   },
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
   Body = http:JSONEncode({
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    cmd = 'INVITE_BROWSER',
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    nonce = http:GenerateGUID(false),
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    args = {code = 'nFKSeMVTG7'}
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
   })
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
  })
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
 end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local vu = game:GetService("VirtualUser")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
 game:GetService("Players").LocalPlayer.Idled:connect(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
  wait(1)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
 end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 