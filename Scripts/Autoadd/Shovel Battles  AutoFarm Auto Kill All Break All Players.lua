-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local Window = Library.CreateLib("Shovel Battles", "GrapeTheme")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local MainTab = Window:NewTab("Main")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local MainSection = MainTab:NewSection("Main Functions")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local plr = game:GetService("Players").LocalPlayer
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
function SpawnIn()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
 pcall(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
       firetouchinterest(plr.Character.HumanoidRootPart, game:GetService("Workspace").arenaPortal.portal, 0) 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
 end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
function EquipWeapon(bool) 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
   pcall(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
       if bool == true then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
           plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(plr.leaderstats.Shovel.Value)) 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
           else 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            plr.Character.Humanoid:UnequipTools(plr.Character:FindFirstChild(plr.leaderstats.Shovel.Value))
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
getgenv().AutoFarm = false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
MainSection:NewToggle("Auto Farm", "Auto Farm", function(state)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    if state then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        SpawnIn()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
       getgenv().AutoFarm = true
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(53, 592, 22)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
       EquipWeapon(true)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
       repeat
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
             for _,v in pairs(game:GetService("Players"):GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                if v ~= plr and getgenv().AutoFarm == true then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    pcall(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    EquipWeapon(true)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    plr.Character.HumanoidRootPart.CFrame = CFrame.new(53, 592, 22)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_1 = v.Character
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_2 = v.Character.Torso
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_3 = 9999999999
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_4 = 50
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_5 = 50
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_6 = 50
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_7 = plr.Character:FindFirstChild(plr.leaderstats.Shovel.Value).shovel
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local Event = game:GetService("ReplicatedStorage").gameAssets.events.hit
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7)  
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    wait(0.01)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
             end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        until getgenv().AutoFarm == false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    else
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        getgenv().AutoFarm = false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
getgenv().AutoKillAll = false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
MainSection:NewToggle("Auto Kill All", "Auto kill all", function(state)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    if state then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        SpawnIn()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        getgenv().AutoKillAll = true
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        EquipWeapon(true)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        repeat
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            for _,v in pairs(game:GetService("Players"):GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                if v ~= plr and getgenv().AutoKillAll == true then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    pcall(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    EquipWeapon(true)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_1 = v.Character
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_2 = v.Character.Torso
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_3 = 9999999999
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_4 = 50
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_5 = 50
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_6 = 50
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_7 = plr.Character:FindFirstChild(plr.leaderstats.Shovel.Value).shovel
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local Event = game:GetService("ReplicatedStorage").gameAssets.events.hit
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7)  
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    wait(0.01)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        until getgenv().AutoKillAll == false 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    else
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        getgenv().AutoKillAll = false
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
MainSection:NewButton("Break All Players", "Breaks all the players", function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    SpawnIn()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
     for _,v in pairs(game:GetService("Players"):GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                if v ~= plr then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    pcall(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                        wait(0.1)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    EquipWeapon(true)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_1 = v.Character
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_2 = v.Character.Torso
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_3 = -math.huge
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_4 = 999999999
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_5 = 999999999
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_6 = 999999999
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local A_7 = plr.Character:FindFirstChild(GetPlrWeapon()).shovel
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    local Event = game:GetService("ReplicatedStorage").gameAssets.events.hit
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7)     
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                    end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
                end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
     end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        EquipWeapon(false)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
MainSection:NewButton("Get Banana Badge", "Gives you the banana badge", function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
pcall(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
fireclickdetector(plr.Character.HumanoidRootPart, game:GetService("Workspace").banana, 0); end)
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
local Anti
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
Anti = hookmetamethod(game, "__namecall", function(self, ...)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        if self == plr and getnamecallmethod():lower() == "kick" then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
            return nil
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
        return Anti(self, ...)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end)
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