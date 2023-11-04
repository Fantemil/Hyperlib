for _, v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
end

for _, v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
    v:Disable()
end

local getupvalue = (getupvalue or debug.getupvalue)
local hookmetamethod = hookmetamethod or function(tbl, mt, func) return hookfunction(getrawmetatable(tbl)[mt], func) end
local Request = (syn and syn.request or request or http and http.request or http_request) or error("No request function")
local Time = os.clock()

repeat wait() until game:IsLoaded()
local Tablefind = table.find
local players = game:GetService("Players")
local lplr = players.LocalPlayer
local camera = workspace.CurrentCamera
local runservice = game:GetService("RunService")

do
    local Remotes = {
        "FireToDieInstantly",
        "LoadString",
        "FlyRequest",
        "FinishTimeTrial",
        "UpdateDunceList",
        "FF",
        "okbye",
        "Fling",
        "ClientFling",
        "LCombo",
        "SubmitCombo",
        "GetCurrentCombo",
        "MaxCombo",
        "UpdateCombo",
        "SetTrail",
        "InsertTrail",
    }

    local hook
    hook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        if (method == "FireServer" and Tablefind(Remotes, self.Name)) then
            return
        end
        if (method == "InvokeServer" and Tablefind(Remotes, self.Name)) then
            return
        end
        return hook(self, unpack(args))
    end))
    
    local function onCharacterAdded(char)
        if (not char) then
            return
        end
        wait(1)
        local Main = lplr.Backpack:WaitForChild("Main")
        main = getupvalue(getsenv(lplr.Backpack:WaitForChild("Main")).resetAmmo, 1)
        getsenv(Main).adminLevel = 13
        getfenv().script = Main
    end
    
    onCharacterAdded(lplr.Character)
    lplr.CharacterAdded:Connect(onCharacterAdded)
end

local Settings = {
    autocombo = false,
    combolvl = 1,
    Nofall = false,
    Slidespeed = false,
    slidevalue = 1,
    chargecooldown = false,
    infwallboost = false,
    infwallrun = false,
    trickpass = false,
    reset = false,
    resetvalue = 10000,
    flow = false,
    autoquest = false,
    infglidestamina = false,
    infmagrail = false,
    walkspeedvalue = 1,
    walkspeedtoggle = false,
    infdrink = false,
    AntiComboSubtract = false,
    AntiComboHealth = false,
    RemoveHardfall = false,
    alwaysgliding = false,
    Esp = false,
    EspDistance = 1000,
    UseColor = false,
    autroll = false,
}

local foundSupportedFolder = false

local Support = {
    general29 = false,
    general11 = false,
    general9 = false,
    general17 = false,
    general41 = false,
    general4 = false,
    general16 = false,
    general13 = false,
    general45 = false,
    general1 = false,
    general23 =false,
    general54 = false,
}

local SupportedMission = {
    general29 = function()
        if Support.general29 then
            Library:Notify("Doing: Break a leg", 5)
            for i = 1, 15 do
                getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("landms", math.random(50, 75))
             end
        end
    end,
    general11 = function()
        if Support.general11 then
            Library:Notify("Doing: Dropper", 5)
            getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("damage", 0, 85)
        end
    end,
    general9 = function()
        if Support.general9 then
            Library:Notify("Doing: Quick fingers", 5)
            for i = 1, 15 do
                getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("boost", math.random(50.1, 85))
            end
        end
    end,
    general17 = function()
        if Support.general17 then
            Library:Notify("Doing: Boost master", 5)
            for i = 1,55 do
                getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("boost", 100)
            end
        end
    end,
    general41 = function()
        if Support.general41 then
            Library:Notify("Doing: Luck landing", 5)
            for i = 1,30 do
                getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("pLand")
            end
        end
    end,
    general4 = function()
        if Support.general4 then
            Library:Notify("Doing: Combo Legend", 5)
            getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("combobreak", 5, 5)
        end
    end,
    general16 = function()
        if Support.general16 then
            Library:Notify("Doing: Push your limits", 5)
            getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("general16", 8)
        end
    end,
    general13 = function()
        if Support.general13 then
            Library:Notify("Doing: Highrider", 5)
            getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("zipline", math.random(850 ,1000))
        end
    end,
    general45 = function()
        if Support.general45 then
            Library:Notify("Doing: Lax to Chi", 5)
            getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("general45")
        end
    end,
    general1 = function()
        if Support.general1 then
            Library:Notify("Doing: Combo Breaker", 5)
            getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("combobreak", 2, 2)
        end
    end,
    general23 = function()
        if Support.general23 then
            Library:Notify("Doing: Vaultist", 5)
            for i = 1, 105 do
                getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("vault")
            end
        end
    end,
    general54 = function()
        if Support.general54 then
            Library:Notify("Doing: Deep n Damp", 5)
            for i = 1, 255 do
                getsenv(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main")).fireMissionTrigger("dampen")
            end
        end
    end,
}

local function reset()
    for _,v in pairs(game:GetService("ReplicatedStorage").PlayerRuntimeData[lplr.Name]:GetDescendants()) do
        if v.Name ~= Support[v.Name] then
            game:GetService("ReplicatedStorage").MissionReroll:FireServer(v.Name)
            wait()
        end
    end
end

task.defer(function()
    while task.wait() do
        if Settings.flow then
            main.flowActive = true
            main.flowAlpha = 100
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.reset then
            if lplr.leaderstats.Points.Value >= Settings.resetvalue then
                game:GetService("ReplicatedStorage").Reset:InvokeServer()
            end
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.trickpass then
            main.hasTricksPass = Settings.trickpass
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.alwaysgliding then
            main.gliding = Settings.alwaysgliding
        end
    end
end)


task.defer(function()
    while task.wait() do
        if Settings.infwallboost then
            main.numWallclimb = math.huge
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.RemoveHardfall then
            main.landinghard = false
            main.landing4s = false
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.infdrink then
            main.lastDrink = 0
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.infmagrail then
            main.lastMagSlap = 0
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.infwallrun then
            main.numWallrun = math.huge
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.autocombo then
            main.comboLevel = Settings.combolvl
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.Slidespeed then
            main.slidespeed = Settings.slidevalue
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.walkspeedtoggle then
            main.walkspeedMult = Settings.walkspeedvalue
        elseif not Settings.walkspeedtoggle then
            main.walkspeedMult = 1
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.AntiComboHealth then
            main.comboHealth = math.huge
            main.extendeddrop = false
        else
            local originalValue = main.comboHealth
            main.comboHealth = originalValue
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.autroll then
            main.landRolling = true
        else
            main.landRolling = false
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.AntiComboSubtract then
            local originalValue = main.comboXp
            local newValue = main.comboXp
            main.timeBelowSpeed = 0
            main.timeStopped = 0
            main.timeSlow = 0
            if newValue >= originalValue then
                main.comboXp = newValue
            end
        else
            local originalValue = main.comboXp
            main.comboXp = originalValue
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.chargecooldown then
            main.chargeCooldown = 0
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.infglidestamina then
            main.glideStamina = math.huge
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.autoquest then
            for _,v in pairs(game:GetService("ReplicatedStorage").PlayerRuntimeData[lplr.Name]:GetDescendants()) do
                if v.ClassName == "Folder" and Support[v.name] ~= nil then
                    Support[v.name] = true
                    SupportedMission[v.name]()
                    repeat task.wait() until not v:FindFirstChild("DisplayName")
                        foundSupportedFolder = false
                end
            end
            if not foundSupportedFolder then
                reset()
            end
        elseif not Settings.autoquest then
            foundSupportedFolder = false
        end
    end
end)

local Nofall
Nofall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if (method == "TakeDamage" and self.ClassName == "Humanoid") and Settings.Nofall then
        return
    end
    return Nofall(self, unpack(args))
end))

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Parkour Script by Hydra#8270',
    Center = true,
    AutoShow = true,
    TabPadding = 4
})

local Tabs = {
    Main = Window:AddTab('Main'),
    Visuals = Window:AddTab('Visuals'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local Player = Tabs.Main:AddLeftGroupbox('Player')
local Remove = Tabs.Main:AddLeftGroupbox('Remove')
local Exp = Tabs.Main:AddRightGroupbox('Exp')
local Inf = Tabs.Main:AddRightGroupbox('inf')
local Combo = Tabs.Main:AddRightGroupbox('Combo')
local Other = Tabs.Main:AddLeftGroupbox('Other')
local Visuals = Tabs.Visuals:AddLeftGroupbox('Bag Esp')

--Combo Tab--

Combo:AddToggle('ComboToggle', {
    Text = 'Combo',
    Default = false,
    Tooltip = 'Toggles the combo feature',
})

Toggles.ComboToggle:OnChanged(function()
    Settings.autocombo = Toggles.ComboToggle.Value
end)

Combo:AddSlider('Combo', {
    Text = 'Combo lvl',
    Default = 1,
    Min = 1,
    Max = 5,
    Rounding = 0,
    Compact = false,
})

Options.Combo:OnChanged(function()
    Settings.combolvl = Options.Combo.Value
end)

Combo:AddToggle('AntiComboHealth', {
    Text = 'Anti Combo Health',
    Default = false,
    Tooltip = 'Toggles the Anti combo Health feature',
})

Toggles.AntiComboHealth:OnChanged(function()
    Settings.AntiComboHealth = Toggles.AntiComboHealth.Value
end)

Combo:AddToggle('ComboSubtract', {
    Text = 'Anti Combo Subtract',
    Default = false,
    Tooltip = 'Toggles the Anti Combo Subtract feature',
})

Toggles.ComboSubtract:OnChanged(function()
    Settings.AntiComboSubtract = Toggles.ComboSubtract.Value
end)

--Player Tab--

Player:AddToggle('slideToggle', {
    Text = 'Slidespeed',
    Default = false,
    Tooltip = 'toggles slide speed feature',
})

Toggles.slideToggle:OnChanged(function()
    Settings.Slidespeed = Toggles.slideToggle.Value
end)

Player:AddSlider('slideValue', {
    Text = 'Slidespeed value',
    Default = 34,
    Min = 34,
    Max = 1000,
    Rounding = 0,
    Compact = false,
})

Options.slideValue:OnChanged(function()
    Settings.slidevalue = Options.slideValue.Value
end)

Player:AddToggle('speedtogle', {
    Text = 'Walkspeed',
    Default = false,
    Tooltip = 'toggles walkspeed feature',
})

Toggles.speedtogle:OnChanged(function()
    Settings.walkspeedtoggle = Toggles.speedtogle.Value
end)

Player:AddSlider('runvalue', {
    Text = 'Walkspeed value',
    Default = 1,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = false,
})

Options.runvalue:OnChanged(function()
    Settings.walkspeedvalue = Options.runvalue.Value
end)

Player:AddToggle('tricking', {
    Text = 'freerunnning pass',
    Default = false,
    Tooltip = 'gives freerunning pass features',
})

Toggles.tricking:OnChanged(function()
    Settings.trickpass = Toggles.tricking.Value
end)

Player:AddLabel('Ammo Reset'):AddKeyPicker('ammoreset', {
    Default = 'F',
    SyncToggleState = false, 
    Mode = 'Hold',
    Text = 'Reset Ammo',
    NoUI = false,
})

task.defer(function()
    while task.wait() do
        local state = Options.ammoreset:GetState()
        if state then
            getsenv(lplr.Backpack:WaitForChild("Main")).resetAmmo()
        end

        if Library.Unloaded then break end
    end
end)

Player:AddToggle('Glide', {
    Text = 'Always Glide',
    Default = false,
    Tooltip = 'toggles slide speed feature',
})

Toggles.Glide:OnChanged(function()
    Settings.alwaysgliding = Toggles.Glide.Value
end)

--Exp Tab--

Exp:AddToggle('Reset', {
    Text = 'Auto turn in points',
    Default = false,
    Tooltip = 'it turns in your points automatic', 
})

Toggles.Reset:OnChanged(function()
    Settings.reset = Toggles.Reset.Value
end)


Exp:AddSlider('Resetvalue', {
    Text = 'Points value',
    Default = 10000,
    Min = 10000,
    Max = 10000000,
    Rounding = 0,
    Compact = false,
})

Options.Resetvalue:OnChanged(function()
    Settings.resetvalue = Options.Resetvalue.Value
end)

Exp:AddToggle('flow', {
    Text = 'flow',
    Default = false,
    Tooltip = 'toggles flow', 
})

Toggles.flow:OnChanged(function()
    Settings.flow = Toggles.flow.Value
end)

Exp:AddToggle('quest', {
    Text = 'Auto Mission',
    Default = false,
    Tooltip = 'Toggles the auto mission feature',
})

Toggles.quest:OnChanged(function()
    Settings.autoquest = Toggles.quest.Value
end)

--Inf Tab--

Inf:AddToggle('wallboost', {
    Text = 'inf Wallboost',
    Default = false,
    Tooltip = 'Toggles the inf wallboost feature',
})

Toggles.wallboost:OnChanged(function()
    Settings.infwallboost = Toggles.wallboost.Value
end)

Inf:AddToggle('wallrun', {
    Text = 'inf Wallrun',
    Default = false,
    Tooltip = 'Toggles the inf wallrun feature',
})

Toggles.wallrun:OnChanged(function()
    Settings.infwallrun = Toggles.wallrun.Value
end)


Inf:AddToggle('magrail', {
    Text = 'inf Magrail',
    Default = false,
    Tooltip = 'Toggles the inf Magrail feature',
})

Toggles.magrail:OnChanged(function()
    Settings.infmagrail = Toggles.magrail.Value
end)

Inf:AddToggle('glide', {
    Text = 'inf glide stamina',
    Default = false,
    Tooltip = 'Toggles the inf glide stamina feature',
})

Toggles.glide:OnChanged(function()
    Settings.infglidestamina = Toggles.glide.Value
end)

--Remove Tab--

Remove:AddToggle('Nofall', {
    Text = 'Remove Fall Damage',
    Default = false,
    Tooltip = 'Toggles the No fall feature',
})

Toggles.Nofall:OnChanged(function()
    Settings.Nofall = Toggles.Nofall.Value
end)


Remove:AddToggle('LandingHard', {
    Text = 'Remove Hard Landing Slowdown',
    Default = false,
    Tooltip = 'Toggles the Hard Landing Cooldown feature',
})

Toggles.LandingHard:OnChanged(function()
    Settings.RemoveHardfall = Toggles.LandingHard.Value
end)


Remove:AddToggle('Charge', {
    Text = 'Remove Charge cooldown',
    Default = false,
    Tooltip = 'Toggles the no charge feature',
})

Toggles.Charge:OnChanged(function()
    Settings.chargecooldown = Toggles.Charge.Value
end)

Remove:AddToggle('drink', {
    Text = 'Remove Drink cooldown',
    Default = false,
    Tooltip = 'Toggles the No drink cooldown feature',
})

Toggles.drink:OnChanged(function()
    Settings.infdrink = Toggles.drink.Value
end)

Remove:AddToggle('autoroll', {
    Text = 'Remove Fall animation',
    Default = false,
    Tooltip = 'toggles Remove Fall Animation feature',
})

Toggles.autoroll:OnChanged(function()
    Settings.autroll = Toggles.autoroll.Value
end)

--Misc tab--

local MyButton = Other:AddButton('Unlock all spawns', function()
    for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.ClassName == "SpawnLocation" then
            lplr.Character.HumanoidRootPart.CFrame = v.CFrame + 1.5
            wait(1)
        end
    end
end)

local MyButton = Other:AddButton('Unlock Badges', function()
    for _, v in next, workspace:GetChildren() do
        if (v.Name ~= "BadgeAwarder" or not lplr.Character) then continue end
        local part = v:FindFirstChildWhichIsA("Part")
        firetouchinterest(lplr.Character.HumanoidRootPart, part, 1)
        firetouchinterest(lplr.Character.HumanoidRootPart, part, 0)
    end
end)

--Visuals Tab--

Visuals:AddToggle('Esp', {
    Text = 'Bag esp',
    Default = false,
    Tooltip = 'Toggles Bag Esp feature',
})

Toggles.Esp:OnChanged(function()
    Settings.Esp = Toggles.Esp.Value
    if Settings.Esp then
        ToggleEsp()
    end
end)

Visuals:AddSlider('Distance', {
    Text = 'Esp Distance',
    Default = 100,
    Min = 100,
    Max = 5000,
    Rounding = 0,
    Compact = false,
})

Options.Distance:OnChanged(function()
    Settings.EspDistance = Options.Distance.Value
end)

Visuals:AddToggle('Color', {
    Text = 'Use Color',
    Default = false,
    Tooltip = 'Toggles Use Color feature',
})

Toggles.Color:OnChanged(function()
    Settings.UseColor = Toggles.Color.Value
end)

local function onCharacterAdded(char)
    if (not char)  then return end
    wait(1)
    local function BagEsp(Object)
        local text = Drawing.new("Text")
        text.Color = Color3.new(1, 1, 1)
        text.OutlineColor = Color3.new(0, 0, 0)
        text.Center = true
        text.Outline = true
        text.Position = Vector2.new(100, 100)
        text.Size = 16
        text.Font = Drawing.Fonts.Monospace
        text.Transparency = .6
    
        local renderstepped
        renderstepped = runservice.RenderStepped:Connect(function()
            local Success, Error = pcall(function()
                if Object and Settings.Esp then
                    if Object ~= nil then
                        local Vector, OnScreen
                        if Object.Name then
                            Vector, OnScreen = camera:WorldToViewportPoint(Object.Position)
                            local distance = (Object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                            if distance <= Settings.EspDistance then
                                local distanceInMeters = distance * 0.282
                                text.Text = string.format("%s\n[%.2f Meters]", Object.Parent.Rarity.Value, distanceInMeters)
                                if Object.Parent:FindFirstChild("Rarity") and Settings.UseColor then
                                    if Object.Parent.Rarity.Value == "Common" then
                                        text.Color = Color3.fromRGB(148, 148, 145)
                                    elseif Object.Parent.Rarity.Value == "Uncommon" then
                                        text.Color = Color3.fromRGB(9, 255, 0)
                                    elseif Object.Parent.Rarity.Value == "Rare" then
                                        text.Color = Color3.fromRGB(179, 0, 255)
                                    elseif Object.Parent.Rarity.Value == "Epic" then
                                        text.Color = Color3.fromRGB(0, 251, 255)
                                    elseif Object.Parent.Rarity.Value == "Legendary" then
                                        text.Color = Color3.fromRGB(255, 255, 0)
                                    elseif Object.Parent.Rarity.Value == "Ultimate" then
                                        text.Color = Color3.fromRGB(255, 0, 255)
                                    elseif Object.Parent.Rarity.Value == "Resplendent" then
                                        text.Color = Color3.fromRGB(255, 0, 0)
                                    end
                                else
                                    text.Color = Color3.new(1, 1, 1)
                                end
                                if OnScreen then
                                    text.Position = Vector2.new(Vector.X, Vector.Y)
                                    text.Visible = true
                                else
                                    text.Visible = false
                                end
                            else
                                text.Visible = false
                            end
                        else
                            text.Visible = false
                        end
                    else
                        text.Visible = false
                        text:Remove()
                        renderstepped:Disconnect()
                    end
                else
                    text.Visible = false
                end
            end)
            if not Success then
                warn(Error)
                text:Remove()
                renderstepped:Disconnect()
            end
        end)
    
        Object.AncestryChanged:Connect(function(_, parent)
            if not parent then
                text:Remove()
                renderstepped:Disconnect()
            end
        end)
    end
    
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Side" then
            BagEsp(v)
        end
    end
end
onCharacterAdded(lplr.Character)
lplr.CharacterAdded:Connect(onCharacterAdded)

--settings
Library:SetWatermark('Parkour Script By Hydra#8270')

Library:OnUnload(function()
    Library.Unloaded = true
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

local MyButton = MenuGroup:AddButton({
    Text = 'Unload',
    Func = function()
        Library:Unload()
    end,
    DoubleClick = true,
    Tooltip = 'Unload Script'
})

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

MenuGroup:AddToggle('keybindframe', {
    Text = 'Keybind Frame',
    Default = false,
    Tooltip = 'Toggles KeybindFrame',
})

Toggles.keybindframe:OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.keybindframe.Value
end)

MenuGroup:AddToggle('Watermark', {
    Text = 'Watermark',
    Default = false,
    Tooltip = 'Toggles Watermark',
})

Toggles.Watermark:OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.Watermark.Value)
end)

local MyButton = MenuGroup:AddButton({
    Text = 'Join Discord',
    Func = function()
        Request(
            {
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["origin"] = "https://discord.com",
                },
                Body = game:GetService("HttpService"):JSONEncode(
                    {
                        ["args"] = {
                            ["code"] = "YvwEyH2W6t",
                        },
                        ["cmd"] = "INVITE_BROWSER",
                        ["nonce"] = "."
                    })
            })
    end,
    DoubleClick = false,
    Tooltip = 'makes you join the discord server'
})



Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])
getsenv(lplr.PlayerScripts.SystemChatMessageHandler).message("Took: " .. math.floor((os.clock() - Time) * 100) / 100 .. "s to load!")