local shared = {
    aimbot = false,
    autokick = false,
    accuracy = 0.1,
    ws,
    jp,
    autoupgrade = false,
    upgrade,
    upgradeamount,
    autochest = false,
    chest
}

local chests = {}
for i,v in pairs(workspace:WaitForChild("ChestStands"):GetChildren()) do
    table.insert(chests,tostring(v))
end


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Goal Simulator", HidePremium = false, SaveConfig = false, ConfigFolder = "asdsahgjasdhkgjbdsa"})
local resume = coroutine.resume
local create = coroutine.create
local Tab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://6026568198",
 PremiumOnly = false
})



local Tab2 = Window:MakeTab({
 Name = "Chests",
 Icon = "rbxassetid://9421664858",
 PremiumOnly = false
})

local Tab3 = Window:MakeTab({
 Name = "Player",
 Icon = "rbxassetid://6034503364",
 PremiumOnly = false
})

Tab:AddSlider({Name = "Accuracy",Min = 0.1,Max = 1,Default = 1,Increment = 0.1,ValueName = "Accuracy",Callback = function(value)
    shared.accuracy = value
end})
Tab3:AddSlider({Name = "WalkSpeed",Min = 16,Max = 150,Default = 20,Increment = 1,ValueName = "WalkSpeed",Callback = function(value)
    shared.ws = value
    if shared.ws ~= nil and game.Players.LocalPlayer.Character and shared.ws ~= 20 then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = shared.ws
    end
end})

Tab3:AddSlider({Name = "JumpPower",Min = 50,Max = 200,Default = 50,Increment = 1,ValueName = "JumpPower",Callback = function(value)
    shared.jp = value
    if shared.jp ~= nil and game.Players.LocalPlayer.Character  then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = shared.jp
    end
end})




Tab:AddToggle({Name = "Kicking Aimbot",Default = false,Callback = function(value)
    shared.aimbot = value
end})

local old = nil
old = hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    
    if args[1] == "Throw" and type(args[2]) == "number" and shared.aimbot then
        args[2] = shared.accuracy
        return self.InvokeServer(self,unpack(args))
    elseif method == "IsKeyDown" then
        return true
    end
    return old(self,...)
end)

Tab:AddToggle({Name = "Auto Kick",Default = false,Callback = function(value)
    shared.autokick = value
end})
resume(create(function()
    while true do wait()
        if shared.autokick then
            local ohString1 = "Throw"
            local ohNumber2 = shared.accuracy
            
            game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohNumber2)
        end
    end
end))

Tab:AddDropdown({
 Name = "Select Upgrade",
 Default = "",
 Options = {"KickPower","KickAccuracy","Speed"},
 Callback = function(Value)
     shared.upgrade = Value
 end    
})
Tab:AddDropdown({
 Name = "Upgrade Amount",
 Default = "",
 Options = {"1","3","10","Max"},
 Callback = function(Value)
     shared.upgradeamount = Value
 end    
})

Tab:AddToggle({Name = "Auto Upgrade",Default = false,Callback = function(value)
    shared.autoupgrade = value
end})

resume(create(function()
    while true do wait()
        if shared.autoupgrade and shared.upgrade ~= nil and shared.upgradeamount ~= "Max" then
            local ohString1 = "UpgradeStats"
            local ohString2 = shared.upgrade
            local ohNumber3 = tonumber(shared.upgradeamount)
            
            game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohString2, ohNumber3)
        elseif shared.autoupgrade and shared.upgrade ~= nil and shared.upgradeamount ~= nil then
            local ohString1 = "UpgradeStats"
            local ohString2 = shared.upgrade
            local ohNumber3 = math.huge
            
            game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohString2, ohNumber3)            
        end
    end
end))

Tab2:AddDropdown({
 Name = "Select Chest",
 Default = "",
 Options = {unpack(chests)},
 Callback = function(Value)
     shared.chest = Value
 end    
})
Tab2:AddToggle({Name = "Autofarm Chest",Default = false,Callback = function(value)
    shared.autochest = value
end})
resume(create(function()
    while true do game:GetService("RunService").Stepped:wait()
        if shared.autochest and shared.chest ~= nil then
            game:GetService("Players").LocalPlayer.PlayerGui.ChestResult.Content.ImageTransparency = 1
            local ohString1 = "PromptPurchaseChest"
            local ohInstance2 = workspace.ChestStands[shared.chest]
            
            game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohInstance2)
        end
    end
end))