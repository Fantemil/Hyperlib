-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local Window = Library.CreateLib("Milk Tycoon", "GrapeTheme")
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local MainTab = Window:NewTab("Main")
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local MainSection = MainTab:NewSection("Main Functions")
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local plr = game:GetService("Players").LocalPlayer
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
function GetTycoon()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local Tycoon 
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    for _,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        if v.Owner.Value == plr.Name then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
           Tycoon = v 
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    return Tycoon
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
getgenv().AutoCollect = false
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
MainSection:NewToggle("Auto Collect Milk", "Auto collects milk", function(state)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    if state then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        getgenv().AutoCollect = true
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        local Tycoon = GetTycoon()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        repeat
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            for _,v in pairs(Tycoon.Drops:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                if getgenv().AutoCollect then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                pcall(function()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                    v.Part.CFrame = plr.Character.HumanoidRootPart.CFrame 
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                end)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                wait()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        until getgenv().AutoCollect == false
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    else
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        getgenv().AutoCollect = false
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
getgenv().AutoProcess = false
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
MainSection:NewToggle("Auto Process Milk", "Auto processes milk", function(state)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    if state then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        getgenv().AutoProcess = true
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        local Tycoon = GetTycoon()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        repeat
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            firetouchinterest(plr.Character.HumanoidRootPart, Tycoon.Buttons.Process, 0)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            firetouchinterest(plr.Character.HumanoidRootPart, Tycoon.Buttons.Process, 1)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            wait()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        until getgenv().AutoProcess == false
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    else
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        getgenv().AutoProcess = false
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
MainSection:NewButton("Redeem Codes", "Redeems codes", function()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local A_1 = "Cowmedian"
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local Event = game:GetService("ReplicatedStorage").Events.Codes
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
Event:FireServer(A_1)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local A_1 = "Bullseye"
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local Event = game:GetService("ReplicatedStorage").Events.Codes
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
Event:FireServer(A_1)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local A_1 = "Cowmedian"
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local Event = game:GetService("ReplicatedStorage").Events.Codes
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
Event:FireServer(A_1)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local A_1 = "Legend Dairy"
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local Event = game:GetService("ReplicatedStorage").Events.Codes
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
Event:FireServer(A_1)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local CreditsTab = Window:NewTab("Credits")
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local CreditsSection = CreditsTab:NewSection("Credits")
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
CreditsSection:NewLabel("Made by Valco#7818")
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
CreditsSection:NewButton("Join Discord", "Joins the discord server.", function()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local http = game:GetService('HttpService') 
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local req = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
	if req then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
		req({
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
			Url = 'http://127.0.0.1:6463/rpc?v=1',
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
			Method = 'POST',
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
			Headers = {
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
				['Content-Type'] = 'application/json',
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
				Origin = 'https://discord.com'
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
			},
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
			Body = http:JSONEncode({
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
				cmd = 'INVITE_BROWSER',
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
				nonce = http:GenerateGUID(false),
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
				args = {code = 'nFKSeMVTG7'}
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
			})
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
		})
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
	end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local vu = game:GetService("VirtualUser")
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
	game:GetService("Players").LocalPlayer.Idled:connect(function()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
		wait(1)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
	end)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
