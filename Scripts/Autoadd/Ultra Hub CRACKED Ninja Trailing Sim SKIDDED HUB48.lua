--[[
	code generated using luamin.js, Herrtt#3868

	deobfuscated by JulMan#1234
--]]
local SelectedEgg, i
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local window =
    lib:MakeWindow({
        Name = "Ultra Hub - Ninja Training Simulator",
        HidePremium = true,
        SaveConfig = false,
        ConfigFolder = "Ultra-Hub",
        IntroEnabled = false,
        IntroText = "Ultra Hub"
    })
local mainTab = window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://6026568198",
    PremiumOnly = false
})
local eggsPetsTab = window:MakeTab({
    Name = "Eggs & Pets",
    Icon = "rbxassetidid://6034287525",
    PremiumOnly = false
})
local upgradesTab = window:MakeTab({
    Name = "Upgrades",
    Icon = "rbxassetid://6031225815",
    PremiumOnly = false
})
local miscTab = window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://6034509993",
    PremiumOnly = false
})
local creditsTab = window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://6034287594",
    PremiumOnly = false
})
local config = {
    AutoTaps = false,
    RebirthOption = 1,
    AutoRebirth = false,
    AutoClaimAchievements = false,
    AutoOpenEgg = false,
    AutoOpenEggTriple = false,
    AutoCraftPets = false,
    AutoPractice = false,
    AutoUpgradeMasters = false,
    AutoUpGems = false,
    AutoUpPower = false,
    AutoUpEquip = false,
    AutoUpStorage = false,
    AutoUpLuck = false
}
lib:MakeNotification({
    Name = "Ultra Hub",
    Content = "Thanx For Using Ultra Hub !",
    Image = "rbxassetid://4483345998",
    Time = 8
})
lib:MakeNotification({
        Name = "Ultra Hub",
        Content = "Join Our Discord Server For More Free Scripts !",
        Image = "rbxassetid://4483345998",
        Time = 8
    })
local eggsName = {}
for i, v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    if v:IsA("Mdel") then
        if not table.find(eggsName, v.Name) then
            table.insert(eggsName, v.Name)
        end
    end
end
mainTab:AddSection({
    Name = "AutoFarm"
})
mainTab:AddToggle({
    Name = "Auto Taps",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoTaps = value
    end
})
mainTab:AddSlider({
    Name = "Rebirth Option",
    Min = 1,
    Max = 20,
    Default = 1,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(value)
        config.RebirthOption =value
    end
})
mainTab:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoRebirth = value
    end
})
mainTab:AddToggle({
    Name = "Auto Claim Achievements",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoClaimAchievements = value
    end
})
mainTab:AddToggle({
    Name = "Auto Practice",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoPractice = value
    end
})
mainTab:AddToggle({
    Name = "Auto Upgrade Normal Master",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoUpgradeMasters = value
    end
})
eggsPetsTab:AddSection({
    Name = "Auto Open Eggs"
})
eggsPetsTab:AddDropdown({
    Name = "Select Egg To Open",
    Default = "Basi",
    Options = eggsName,
    Callback = function(value)
        SelectedEgg = value
    end
})
eggsPetsTab:AddToggle({
    Name = "Auto Open Selected Egg x1",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoOpenEgg = value
    end
})
eggsPetsTab:AddToggle({
    Name = "Auto Open Selected Egg x3",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoOpenEggTriple = value
    end
})
eggsPetsTab:AddSection({
    Name = "Pets Menu"
})
eggsPetsTab:AddToggle({
    Name = "Auto Craft All Pets",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoCraftPets = value
    end
})
upgradesTab:AddSection({
    Name = "Auto Upgrades"
})
upgradesTab:AddToggle({
    Name = "Auto Upgrade More Gems",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoUpGems = value
    end
})
upgradesTab:AddToggle({
    Name = "Auto Upgrade More Power",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoUpPower = value
    end
})
upgradesTab:AddToggle({
    Name = "Auto Upgrade Pet Equip",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoUpEquip = value
    end
})
upgradesTab:AddToggle({
    Name = "Auto Upgrade Pet Storage",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoUpStorage = value
    end
})
upgradesTab:AddToggle({
    Name = "Auto Upgrade Luck Multiplier",
    Default = false,
    Save = true,
    Callback = function(value)
        config.AutoUpLuck = value
    end
})
miscTab:AddSection({
    Name = "Misc"
})
miscTab:AddButton({
    Name = "Anti AFK",
    Callback = function()
        local VirtualUser = game:GetService('VirtualUser')
        game:GetService('Players').LocalPlayer.Idled:connect(function()
            warn("anti afk")
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
        lib:MakeNotification({
                Name = "Ultra Hub",
                Content = "Anti AFK Enabled",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
    end
})
miscTab:AddSlider({
    Name = "Walk Speed",
    Min = 16,
    Max = 300,
    Default = 16,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})
miscTab:AddSlider({
    Name = "FOV",
    Min = 16,
    Max = 120,
    Default = 70,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(value)
        local camera = workspace.CurrentCamera;
        camera.FieldOfView = value
    end
})
creditsTab:AddSection({
    Name = "Credits"
})
creditsTab:AddLabel("This Script has been Developed by ZeusV1#2893")
creditsTab:AddLabel("Ultra Hub Devs : ZeusV1#2893")
creditsTab:AddLabel("Ultra Hub Deobfuscator : JulMan#1234")
creditsTab:AddLabel("----------------------------------------------------------------------")
creditsTab:AddLabel("Our Discord Has A Lot Of Free Working Scripts")
creditsTab:AddButton({
    Name = "Join The Discord !",
    Callback = function()
        local request = http_request or syn and syn.request or request;
        if request ~=
            nil then
            local HttpService = game:GetService("HttpService")
            local data ={
                cmd = "INVITE_BROWSER",
                args = {
                    code = "TT3y4gkJtq"
                },
                nonce = string.lower(HttpService:GenerateGUID(false))
            }
            local json = HttpService:JSONEncode(data)
            for port = 6463, 6472 do
                request({
                    Url = "http://127.0.0.1:" .. tostring(port) .. "/rpc?v=1",
                    Method = "POST",
                    Body = json,
                    Headers = {
                        ["Content-Type"] = "application/json",
						["Origin"] = "https://discord.com",
                    }
                })
            end
        end
    end
})
spawn(function()
    while task.wait(0.1) do
        if config.AutoTaps ==true then
            pcall(function()
                game:GetService("ReplicatedStorage").Events.Click:FireServer()
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoRebirth == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(config.RebirthOption)
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoClaimAchievements == true then
            pcall(function()
                i = 0
                repeat
                    i = i + 1
                    game:GetService("ReplicatedStorage").Events.Achivement:FireServer(i)
                    wait(0.2)
                until i == 18 or config.AutoClaimAchievements == false
                wait()
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoOpenEgg == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer( SelectedEgg, "Single")
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoOpenEggTriple == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(SelectedEgg, "Triple")
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoCraftPets == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("Craft All", { ["PetID"] = 0 })
            end)
        end
    end
end)
spawn(function()
    while task.wait(5) do
        if config.AutoUpgradeMasters == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Functions.Masters:InvokeServer()
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoUpGems == true then
            pcall(function()
				game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("Gems")
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoUpPower == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("Power")
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoUpEquip == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("PetEquip")
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoUpStorage ==true then
            pcall(function()
                game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("PetStorage")
            end)
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if config.AutoUpLuck ==true then
            pcall(function()
                game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("Luck")
            end)
		end
    end
end)
local request =http_request or syn and syn.request or request;
if request ~= nil then
    local HttpService = game:GetService("HttpService")
    local data = {
        cmd = "INVITE_BROWSER",
        args = {
            code = "pmGkj92S7p"
        },
        nonce = string.lower(HttpService:GenerateGUID(false))
    }
    local json = HttpService:JSONEncode(data)
    for port = 6463, 6472 do
        request({
            Url = "http://127.0.0.1:" .. tostring(port) .. "/rpc?v=1",
            Method = "POST",
            Body = json,
            Headers = {
                ["Content-Type"] = "application/json",
				["Origin"] = "https://discord.com",
            }
        })
    end
end
--USERNAME LOGGING REMOVED