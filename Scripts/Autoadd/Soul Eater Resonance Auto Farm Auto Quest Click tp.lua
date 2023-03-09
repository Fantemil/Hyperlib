local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local X = Material.Load({
Title = "Soul Eater",
Style = 3,
SizeX = 500,
SizeY = 350,
ColorOverrides = {
MainFrame = Color3.fromRGB(20,20,20),
Minimise = Color3.fromRGB(20, 20, 20),
MinimiseAccent = Color3.fromRGB(219, 210, 202),
Maximise = Color3.fromRGB(189, 183, 177),
MaximiseAccent = Color3.fromRGB(189, 183, 177),
NavBar = Color3.fromRGB(166, 255, 0),
NavBarAccent = Color3.fromRGB(20,20,20),
NavBarInvert = Color3.fromRGB(30,30,30),
TitleBar = Color3.fromRGB(166, 255, 0),
TitleBarAccent = Color3.fromRGB(20,20,20),
Overlay = Color3.fromRGB(166, 255, 0),
Banner = Color3.fromRGB(20,20,20),
BannerAccent = Color3.fromRGB(166, 255, 0),
Content = Color3.fromRGB(166, 255, 0),
Button = Color3.fromRGB(166, 255, 0),
ButtonAccent = Color3.fromRGB(20,20,20),
ChipSet = Color3.fromRGB(166, 255, 0),
ChipSetAccent = Color3.fromRGB(20,20,20),
DataTable = Color3.fromRGB(166, 255, 0),
DataTableAccent = Color3.fromRGB(20,20,20),
Slider = Color3.fromRGB(20,20,20),
SliderAccent = Color3.fromRGB(166, 255, 0),
Toggle = Color3.fromRGB(166, 255, 0),
ToggleAccent = Color3.fromRGB(20,20,20),
Dropdown = Color3.fromRGB(20,20,20),
DropdownAccent = Color3.fromRGB(166, 255, 0),
ColorPicker = Color3.fromRGB(20,20,20),
ColorPickerAccent = Color3.fromRGB(166, 255, 0),
TextField = Color3.fromRGB(166, 255, 0),
TextFieldAccent = Color3.fromRGB(20,20,20),
}
})


-- functions --
local tp = false
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(function()
    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) and Mouse.Target and tp then
        Plr.Character:MoveTo(Mouse.Hit.p)
    end
end)
local function pressKey(key)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, key, false, game)
end
local farmM = false
local monsters = {}
local farmMonsters = function()
    local npcs = game:GetService("Workspace").NPCS:GetChildren()
    while farmM do
        wait()
        for i,v in pairs(npcs) do
            for j,x in pairs(monsters) do
                if string.match(v.Name, x) then
                    while farmM do
                        wait()
                        Plr.Character.HumanoidRootPart.CFrame = v[x].HumanoidRootPart.CFrame + v[x].HumanoidRootPart.CFrame.LookVector * -3
                        local args = {
                            [1] = "Up",
                            [2] = CFrame.new(35.08075714111328, 140.1752166748047, -382.56640625) * CFrame.Angles(2.9372031688690186, 0.6149491667747498, -3.0225722789764404),
                            [3] = "\240\159\152\153\240\159\152\153\240\159\152\161\240\159\152\173\240\159\152\173\240\159\152\173\240\159\152\173\240\159\164\160",
                            [4] = "Down"
                        }
                        game:GetService("ReplicatedStorage").Remotes.KeyEvent:FireServer(unpack(args))
                        pressKey(Enum.KeyCode.Q)
                        pressKey(Enum.KeyCode.E)
                        pressKey(Enum.KeyCode.F)
                        pressKey(Enum.KeyCode.R)
                        if v[x].Humanoid.Health == 0 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                            break
                        end
                    end
                    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                        wait(5)
                        pressKey(Enum.KeyCode.L)
                    end
                end
            end
        end
    end
end

local farmQ = false
local quest = nil
local farmQuests = function()
    local location = nil
    if quest == "Psychopath" then
        location = "PoliceQuest"
    elseif quest == "Blademaster" then
        location = "BurnedTunafishDog"
    elseif quest == "Meister" then
        location = "Chrona"
    elseif quest == "Zombie" then
        location = "ZombieQuest"
    end
    while farmQ do
        wait()
        if game:GetService("Players").LocalPlayer.PlayerGui.Gui.Quests.Visible == false then
            Plr.Character.HumanoidRootPart.CFrame = game.Workspace.NPCS.Quests[location].HumanoidRootPart.CFrame
            local args = {
                [1] = quest,
                [2] = workspace.NPCS.Quests[location].Detect
            }

            game:GetService("ReplicatedStorage").Remotes.Quest:FireServer(unpack(args))
        end
    end
end

-- Buttons --
local Page1 = X.New({
Title = "Main"
})

local cntrltp = Page1.Toggle({
Text = "Ctrl Click TP",
Callback = function(Value)
        tp = Value
end,
Enabled = false
})

local farmmonsters = Page1.Toggle({
Text = "Farm Monsters",
Callback = function(Value)
        farmM = Value
        farmMonsters()
end,
Enabled = false
})

local monsterTypes = Page1.ChipSet({
Callback = function(ChipSet)
table.foreach(ChipSet, function(Option, Value)
if Value then
local ispresent = false
for i,v in pairs(monsters) do
if v == Option then
ispresent = true
end
end
if ispresent == false then
table.insert(monsters, Option)
end
else
for i,v in pairs(monsters) do
if v == Option then
table.remove(monsters, i)
end
end
end
end)
end,
Options = {
        Zombies = true,
        Meister = true,
        Psychopath = true,
        Blademaster = true
}
})

local farmquests = Page1.Toggle({
Text = "Farm Quests",
Callback = function(Value)
        farmQ = Value
        farmQuests()
end,
Enabled = false
})

local questselect = Page1.Dropdown({
Text = "Choose a quest",
Callback = function(Value)
quest = Value
end,
Options = {
        "Psychopath",
        "Blademaster",
        "Meister",
        "Zombie"
    }
})