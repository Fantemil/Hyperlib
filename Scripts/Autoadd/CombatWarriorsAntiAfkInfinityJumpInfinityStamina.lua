local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
function offlog()
    for _, v in pairs(getgc(true)) do
        if type(v) == 'table' and rawget(v, 'getIsMaxed') then
            v.addFlags = function(sf, ...)
                sf:setFlags(0)
                return
            end
            v.getIsMaxed = function()
                return false
            end
            v.getFlags = function()
                return 0
            end
        end
    end
end
offlog()
game.Players.LocalPlayer.CharacterAdded:connect(function()
    offlog()
end)
local fw = require(game.ReplicatedStorage.Framework.Nevermore);
syn_context_set(1)
local acc = fw("AntiCheatHandlerClient")
syn_context_set(7)
local func = acc.createNotification
hookfunc(func, function() return end)
local hook
hook = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "FireServer" and self.Name == "LogKick" then
        return wait(9e9)
    end
    if getcallingscript() == "AntiCheatHandler" and getnamecallmethod() == "Destroy" then
        return wait(9e9)
    end
    
    return hook(self, ...)
end)
nhk = hookfunc(Instance.new, function(...)
    if getcallingscript() == "AntiCheatHandler" then
        return wait(9e9) end
    return nhk(...)
end)
lolz = hookfunc(task.spawn, function(...)
    if getcallingscript() == "AntiCheatHandler" then return wait(9e9) end
    return lolz(...)
end)
lolw = hookfunc(task.spawn, function(...)
    if getcallingscript() == "AntiCheatHandlerClient" then return wait(9e9) end
    return lolw(...)
end)
syn_context_set(1)
local acc = fw("Flag")
syn_context_set(7)

local func = acc.setFlags
local func1 = acc.addFlags
local func2 = acc.getIsMaxed
local func3 = acc.getFlags


hookfunc(func, function() return wait(9e9) end)
hookfunc(func1, function() return wait(9e9) end)
hookfunc(func2, function() return wait(9e9) end)
hookfunc(func3, function() return wait(9e9) end)
syn_context_set(1)
local khook
khook = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "Kick" and not checkcaller() then
        return wait(9e9)
    end
    return khook(self, ...)
end)
hookfunc(string.format, function()
    if getcallingscript() == "AntiCheatHandler" then
        return 
    end
end)
hookfunc(fw("AntiCheatHandler").punish, function()
    return;
end)
local nvm = require(game.ReplicatedStorage.Framework.Nevermore)
local kb = nvm("RagdollHandlerClient")
local old = kb.toggleRagdoll
kb.toggleRagdoll = function(self, val)
    return old(self, val)
end
local hk
hk = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "FireServer" and self.Name == "RagdollRemoteEvent" and getgenv().nr then
            return
    end
    return hk(self, ...)
end)
local hk2
hk2 = hookmetamethod(game, "__namecall", function(self, ...)
    args = {...}
    
    if getnamecallmethod() == "FireServer" and self.Name == '' and type(args[1]) == "number" and getgenv().nr then
            return
    end
    return hk2(self, ...)
end)




local venyx = library.new("Amaterasu Custom", 5013109572)

-- themes
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}
local page = venyx:addPage("Test", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")

section1:addToggle(
    "Cum Pools",
    nil,
    function(v)
        if v then
            for _, v in pairs(game:GetService("Workspace").BloodPools:GetChildren()) do
                if v:IsA("Part") and v.Name == "BloodPool" then
                    v.BrickColor = BrickColor.White()
                end
            end
        else
            for _, v in pairs(game:GetService("Workspace").BloodPools:GetChildren()) do
                if v:IsA("Part") and v.Name == "BloodPool" then
                    v.BrickColor = BrickColor.Red()
                end
            end
        end
    end
)
section1:addToggle(
    "Anti-AFK",
    nil,
    function(v)
        getgenv().antiafktog = v
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            if getgenv().antiafktog then else return end
            game:GetService("VirtualUser"):ClickButton2(Vector2.new())
        end)
    end
)
infjmp = false

game:GetService("UserInputService").JumpRequest:connect(function()
    if infjmp then
        game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
    end
end)
section1:addToggle(
    "Inf-Jump",
    nil,
    function(v)
        infjmp = v
    end
)
section1:addToggle(
    "No Cooldown (funny)",
    nil,
    function(v)
        if v then 
            for _,v in pairs(getgc(true)) do 
                if type(v) == 'table' and rawget(v, 'cooldown') then 
                    rawset(v, 'cooldown', 0) 
                end
            end
           else
            for i,v in pairs(getgc(true)) do 
                if type(v) == 'table' and rawget(v, 'cooldown') then 
                    rawset(v, 'cooldown', .5) 
                end
            end
           end
    end
)
section1:addToggle(
    "No Ragdoll",
    false,
    function(v)
        getgenv().nr = v
    end)
section1:addToggle(
    "No Drown",
    nil,
    function(v)
        if v then
            for _,v in pairs(getgc(true)) do 
                if type(v) == 'table' and rawget(v, 'AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING') then 
                    rawset(v, 'AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING', 0) 
                end
            end
        else
            for _,v in pairs(getgc(true)) do 
                if type(v) == 'table' and rawget(v, 'AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING') then 
                    rawset(v, 'AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING', -15) 
                end
            end
        end
    end
)
section1:addToggle(
    "Anti-Down",
    nil,
    function(v)
        getgenv().tog = v
        if getgenv().tog then
            syn_context_set(1)
            local acc = fw("DownedConstants")
            syn_context_set(7)
            
            acc.DOWNED_DMG = 0
            for _, v in pairs(getgc(true)) do
                if type(v) == 'table' and rawget(v, 'HP_TO_DOWN_AT') then
                    rawset(v, 'HP_TO_DOWN_AT', 0)
                end
            end
        else
            acc.DOWNED_DMG = 0.5
            for _, v in pairs(getgc(true)) do
                if type(v) == 'table' and rawget(v, 'HP_TO_DOWN_AT') then
                    rawset(v, 'HP_TO_DOWN_AT', .5)
                end
            end
        end
    end
)
section1:addToggle(
    "Jesus Mode",
    nil,
    function(v)
        if v then
            local lol = Instance.new("Part")
            lol.Name = "FreeWater"
            lol.Anchored = true
            lol.Parent = game.Workspace
            lol.CFrame = CFrame.new(-365, 51, 19)
            lol.Size = Vector3.new(9e9, 1, 9e9)
            lol.Material = "Ice"
        else
            pcall(function()
                game.Workspace.FreeWater:Destroy()
            end)
        end
    end
)
section1:addToggle(
    "Auto Equip",
    nil,
    function(v)
        getgenv().ateqp = v
        while getgenv().ateqp do task.wait(1)
            if not game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool") and not game.Players.LocalPlayer.PlayerGui.RoactUI:FindFirstChild("MainMenu") then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v:FindFirstChild("Hitboxes") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    end
                end
            end
        end
    end
)


section1:addButton(
    "Inf Stamina",
    function()
        local fw = require(game.ReplicatedStorage.Framework.Nevermore)
        syn_context_set(1)
        local Stamina = fw("Stamina")
        syn_context_set(7)
        local old = Stamina._setStamina
        Stamina._setStamina = function(self, val)
            val = self._maxStamina
            return old(self, val)
        end
    end
)
section1:addButton(
    "No-Fog",
    function()
        pcall(function()
            for _, v in pairs(game.Lightning:GetChildren()) do
                v:Destroy()
            end
        end) 
end)
section1:addButton(
    "Nudify",
    function()
        pcall(function()
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Accessory") or v:IsA("BodyColors") or v:IsA("Pants") or v:IsA("Shirt") then
                    v:Destroy()
                end
            end
        end)
end)

section2:addSlider(
    "Hitbox Expander",
    0,
    -100,
    100,
    function(val)
        for _, v in pairs(game:GetService("Workspace").PlayerCharacters:GetDescendants()) do
            if v:IsA("Part") and v.Name == "Hitbox" and v.Parent.Parent:IsA("Tool") and game.Players.LocalPlayer then
                v.Size = Vector3.new(val, val, val)
                v.Transparency = .5
                v.Material = "ForceField"
                v.Shape = "Ball"
            end
        end
    end
)
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom