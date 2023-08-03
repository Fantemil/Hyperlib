local Creator = "vfvo#5305"
local Players, Replicated = game:GetService("Players"), game:GetService("ReplicatedStorage")
local ME = Players.LocalPlayer
local Char, Backpack = ME.Character or ME.CharacterAdded:Wait(), ME:WaitForChild("Backpack")
ME.CharacterAdded:Connect(function(v)
    Char = v
end)
ME.ChildAdded:Connect(function(v)
    if v:IsA("Backpack") then
        Backpack = v
    end
end)
if not _G.V3rmillion and _G.V3rmillion ~= true then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/AutoDiscordJoin.lua"))()
end
local OverRides = {
    MainFrame = Color3.fromRGB(0, 0, 0), Minimise = Color3.fromRGB(0, 0, 0), MinimiseAccent = Color3.fromRGB(255, 0, 0),
    Maximise = Color3.fromRGB(255, 0, 0), MaximiseAccent = Color3.fromRGB(0, 0, 0), NavBar = Color3.fromRGB(255, 0, 0),
    NavBarAccent = Color3.fromRGB(0, 0, 0), NavBarInvert = Color3.fromRGB(235, 235, 235), TitleBar = Color3.fromRGB(255, 0, 0),
    TitleBarAccent = Color3.fromRGB(0, 0, 0), Overlay = Color3.fromRGB(255, 0, 0), Banner = Color3.fromRGB(0, 0, 0),
    BannerAccent = Color3.fromRGB(255, 0, 0), Content = Color3.fromRGB(255, 0, 0), Button = Color3.fromRGB(255, 0, 0),
    ButtonAccent = Color3.fromRGB(0, 0, 0), ChipSet = Color3.fromRGB(255, 0, 0), ChipSetAccent = Color3.fromRGB(0, 0, 0),
    DataTable = Color3.fromRGB(255, 0, 0), DataTableAccent = Color3.fromRGB(0, 0, 0), Slider = Color3.fromRGB(0, 0, 0),
    SliderAccent = Color3.fromRGB(255, 0, 0), Toggle = Color3.fromRGB(255, 0, 0), ToggleAccent = Color3.fromRGB(0, 0, 0), 
    Dropdown = Color3.fromRGB(255, 0, 0), DropdownAccent = Color3.fromRGB(0, 0, 0), ColorPicker = Color3.fromRGB(255, 0, 0),
    ColorPickerAccent = Color3.fromRGB(0, 0, 0), TextField = Color3.fromRGB(255, 0, 0), TextFieldAccent = Color3.fromRGB(0, 0, 0)
}
if not _G.RedGUI or _G.RedGUI == false then
    OverRides = {}
end
if #{firetouchinterest, fireproximityprompt, hookmetamethod, setupvalue, getgc} ~= 5 then
    while true do
    end
end
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = game:GetService("CoreGui")
    end
end
local OldIndex = nil
OldIndex = hookmetamethod(game, "__index", function(Self, Key)
    if not checkcaller() and tostring(Self) == "TeleportPass" and Key == "Value" then
        return true
    end
    return OldIndex(Self, Key)
end)
local Group_ID = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Creator.CreatorTargetId
local Roles = game:GetService("GroupService") :GetGroupInfoAsync(Group_ID).Roles
local Ranks = {}
Ranks.Guest = 0
for Name, Rank in next, Roles do
    Ranks[Name] = Rank
end
function ModCheck(A_1)
    local Rank = Ranks[A_1:GetRoleInGroup(Group_ID)]
    if Rank and Rank > 2 then 
        Player:Kick("Mod " .. A_1.Name .. " joined your game.")
    end
end
local AddStamina;
local RegWalkStuff;
function UpdateFuncs()
    local Scr = game:GetService('Players').LocalPlayer:FindFirstChild("CombatMain", true)
    if Scr then
        for _, A_1 in next, getgc() do
            if type(A_1) == "function" and getfenv(A_1).script == Scr then
                local Name = getinfo(A_1).name
                if Name == "AddStamina" then
                    AddStamina = A_1
                elseif Name == "RegWalkStuff" then
                    RegWalkStuff = A_1
                end
            end
        end
    end
end
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local X = Material.Load({
    Title = "Life Sentence" .. " | discord.gg/rips | By " .. Creator,
    Style = 3,
    SizeX = 500,
    SizeY = 350,
    Theme = _G.Theme or "Dark",
    ColorOverrides = OverRides
})
local Y = X.New({
    Title = "Main"
})
Y.Label({
    Text = "Main"
})

Y.Toggle({
    Text = "Auto Farm",
    Callback = function(autofarm)
        _G.autofarms = autofarm
        while _G.autofarms do wait()
            for i, v in pairs(workspace.Robbable:GetChildren()) do
                if v.HumanoidRootPart and _G.autofarms == true then
                    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
                    wait(0.3)
                    fireproximityprompt(v.Door.Attachment.ProximityPrompt, 1, true)
                    wait(0.3)
                    for s, g in pairs(workspace:GetChildren()) do
                        if g.Name == "DroppedCash"  and _G.autofarms == true then
                            fireproximityprompt(g.ProximityPrompt, 5, true)
                            wait(0.3)
                        end
                    end
                end
            end
        end
    end,
    Enabled = false
})

Y.Toggle({
    Text = "Auto Collect Parts",
    Callback = function(autocollectparts)
        _G.autocollectpartss = autocollectparts
        while _G.autocollectpartss do wait()
            for i, v in pairs(workspace.LootSpawns:GetChildren()) do
                if v.Part and _G.autocollectpartss == true then
                    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame + Vector3.new(0,2,0)
                    wait(0.2)
                    fireproximityprompt(v.Part.Attachment.ProximityPrompt, 1, true)
                    wait(0.3)
                end
            end
        end
    end,
    Enabled = false
})

Y.Toggle({
    Text = "Auto Steal Dropped Cash",
    Callback = function(autostealdroppedcash)
        _G.autostealdroppedcashs = autostealdroppedcash
        while _G.autostealdroppedcashs do wait()
            for s, g in pairs(workspace:GetChildren()) do
                if g.Name == "DroppedCash" and _G.autostealdroppedcashs == true  then
                    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position = g.Position + Vector3.new(0,2,0)
                    wait(0.3)
                    fireproximityprompt(g.ProximityPrompt, 5, true)
                end
            end
        end
    end,
    Enabled = false
})

Y.Toggle({
    Text = "Anti Mod",
    Callback = function(antimod)
        _G.antimods = antimod
        while _G.antimods do wait()
            for i, v in next, Players:GetPlayers() do
                ModCheck(v)
                wait(0.25)
            end
        end
    end,
    Enabled = false
})

Y.Toggle({
    Text = "Inf Energy",
    Callback = function(infenergy)
        _G.infenergys = infenergy
        local Old_AddStamina = AddStamina
        local Old_RegWalkStuff = RegWalkStuff
        while (Old_AddStamina == AddStamina or Old_RegWalkStuff == RegWalkStuff) and task.wait(1) do
            UpdateFuncs()
            if _G.infenergys == true then
                setupvalue(AddStamina, 1, math.huge)
            else
                setupvalue(AddStamina, 1, 100)
            end
        end
    end,
    Enabled = false
})

local Z = X.New({
    Title = "Credits"
})
Z.Label({
    Text = "Script Creator: " .. Creator
})
Z.Label({
    Text = "RIP Developers: RIP#6666 | vfvo#5305 | Samuel#6685 | ! Meesmans2000#2832"
})
Z.Label({
    Text = "RIP Discord: https://discord.gg/rips"
})
Z.Button({
    Text = "Copy Discord Invite",
    Callback = function()
        xpcall(function()
            setclipboard("https://discord.gg/rips")
        end, warn)
    end
})
Z.Button({
    Text = "Join Discord Server",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/AutoDiscordJoin.lua"))()
    end
})