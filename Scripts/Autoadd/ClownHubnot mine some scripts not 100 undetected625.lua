local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Clown Hub v2.6 Paid (Bonus 2)")

local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(255, 255, 255),
    Accent = Color3.fromRGB(44, 44, 44),
    LightContrast = Color3.fromRGB(57, 57, 57),
    DarkContrast = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(163, 163, 163)
}

local uiPages = {}
local uiSecs = {}

local varbs = {}

uiPages.page = venyx:addPage("Ui", 5012544693)
uiPages.page2 = venyx:addPage("Main", 5012544693)
uiPages.page3 = venyx:addPage("Ct Characters", 5012544693)
uiPages.page4 = venyx:addPage("Ct Attacks", 5012544693)
uiPages.page6 = venyx:addPage("Paid things", 5012544693)
uiPages.page7 = venyx:addPage("Mics", 5012544693)
uiPages.page8 = venyx:addPage("Custom Things", 5012544693)
uiPages.page5 = venyx:addPage("Credits", 5012544693)

uiSecs.opstuffs1 = uiPages.page7:addSection("Custom Lock On(It's NOT done yet)")
uiSecs.stuffs = uiPages.page7:addSection("Another Stuffs")
uiSecs.susmap1 = uiPages.page7:addSection("Secret map in soulshatters")
uiSecs.dmgmodule = uiPages.page7:addSection("Damage Module")
uiSecs.ui = uiPages.page:addSection("Graphical Interface")
uiSecs.place = uiPages.page:addSection("Game")
uiSecs.place3 = uiPages.page:addSection("Music not Loop")
uiSecs.place5 = uiPages.page:addSection("Music Loop")
uiSecs.main3 = uiPages.page2:addSection("Custom Chat")
uiSecs.main = uiPages.page2:addSection("Main")
uiSecs.main6 = uiPages.page2:addSection("Hide Name(In Menu)")
uiSecs.main5 = uiPages.page2:addSection("Day/Night Cycle")
uiSecs.main4 = uiPages.page2:addSection("Teleport to other player")
uiSecs.main2 = uiPages.page2:addSection("Troll Scripts")
uiSecs.custom = uiPages.page3:addSection("In Menu")
uiSecs.custom1 = uiPages.page3:addSection("Undertale Frisk")
uiSecs.custom2 = uiPages.page3:addSection("Asriel")
uiSecs.custom3 = uiPages.page3:addSection("XTale")
uiSecs.custom4 = uiPages.page3:addSection("Old Sans")
uiSecs.custom5 = uiPages.page3:addSection("Glitchtale Chara")
uiSecs.custom6 = uiPages.page3:addSection("Glitchtale Frisk")
uiSecs.custom7 = uiPages.page3:addSection("Glitchtale Betty")
uiSecs.Credit = uiPages.page5:addSection("Credits")
uiSecs.asriel = uiPages.page4:addSection("Undertale Ariel")
uiSecs.betty = uiPages.page4:addSection("Glitchtale Betty")
uiSecs.undyne = uiPages.page4:addSection("Glitchtale Undyne")
uiSecs.place2 = uiPages.page4:addSection("Glitchtale Chara")
uiSecs.sschara = uiPages.page4:addSection("StoryShift Chara")
uiSecs.delta = uiPages.page4:addSection("Delta Sans")
uiSecs.frisk = uiPages.page4:addSection("Undertale Frisk")
uiSecs.nsans = uiPages.page4:addSection("Undertale New Sans")
uiSecs.place0 = uiPages.page4:addSection("XTale")
uiSecs.place6 = uiPages.page4:addSection("Others")
uiSecs.place4 = uiPages.page6:addSection("Paid Guis")
uiSecs.secretchar = uiPages.page6:addSection("My Own Custom Characters")
uiSecs.place1 = uiPages.page7:addSection("Places")
uiSecs.ctthings2 = uiPages.page8:addSection("Custom Name Color")
uiSecs.ctthings2 = uiPages.page8:addSection("Custom Name Color")
uiSecs.ctthings3 = uiPages.page8:addSection("Custom Name Text")
uiSecs.freeze = uiPages.page2:addSection("Delete Someone's Godmode(Shadow dio's godmode)")
uiSecs.freeze1 = uiPages.page2:addSection("Delete Someone's HumanoidRootPart(Can't lock on to them)")
uiSecs.opstuffs = uiPages.page7:addSection("OP Stuffs")

uiSecs.susmap1:addButton(
    "Summon the secret house(Lag)(Non-FE)",
    function()
        local newmap = game:GetService("ReplicatedStorage").Resources.Baseplate
        newmap:Clone()
        newmap.Parent = game:GetService("Workspace").Map.Model
    end
)

teleList2 = {"Normal", "KnockBack"}
uiSecs.dmgmodule:addDropdown(
    "Choose a hit type",
    teleList2,
    function(types)
        htype = types
    end
)

uiSecs.dmgmodule:addSlider(
    "Damage",
    0,
    0,
    40,
    function(dmg)
        damage = dmg
    end
)

uiSecs.dmgmodule:addSlider(
    "Hit Time",
    0,
    0,
    2.5,
    function(htime)
        htim = htime
    end
)

uiSecs.dmgmodule:addSlider(
    "Fly",
    0,
    0,
    100,
    function(vec)
        vector = vec
    end
)

uiSecs.dmgmodule:addKeybind(
    "Damage Module Attack",
    nil,
    function()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = htim,
                ["Type"] = htype,
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(),
                ["Velocity"] = Vector3.new(vector, 0, 0),
                ["Damage"] = dmg
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
    end,
    function()
    end
)

teleList1 = {
    "Asriel",
    "UNDERTALE Frisk",
    "Old Sans",
    "New Sans",
    "Glitchtale Chara",
    "Glitchtale Undyne",
    "Glitchtale Betty",
    "Glitchtale Frisk",
    "StoryShift Chara",
    "XTale Sans/Chara",
    "Delta Sans"
}
uiSecs.main6:addDropdown(
    "Choose a character",
    teleList1,
    function(hnchars)
        chrs = hnchars
    end
)

uiSecs.main6:addButton(
    "Spawn with hide name",
    function()
        if chrs == "Asriel" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Asriel"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "UNDERTALE Frisk" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Frisk"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "Old Sans" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "New Sans" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "BadTimeSans"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "Glitchtale Chara" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "Glitchtale Undyne" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Undyne"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "Glitchtale Betty" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Betty"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "Glitchtale Frisk" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "GTFrisk"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "StoryShift Chara" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "SFChara"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "Xtale Sans/Chara" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
        if chrs == "Delta Sans" then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "DeltaSans"
            wait(1)
            game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        end
    end
)

uiSecs.main5:addSlider(
    "Day/Night Cycle",
    10,
    0,
    24,
    function(time)
        local Lighting = game:GetService("Lighting")
        Lighting.ClockTime = time
    end
)

uiSecs.freeze:addTextbox(
    "Who?",
    "",
    function(player)
        plr = player
    end
)

uiSecs.freeze1:addButton(
    "Delete HumanoidRootPart Of Other Player",
    function()
        game.Players.plr.Character["HumanoidRootPart"]:Destroy()
    end
)

uiSecs.freeze:addButton(
    "Delete Godmode Of Other Player",
    function()
        game.Players.plr.Character["Inv"]:Destroy()
    end
)

uiSecs.betty:addKeybind(
    "Betty True Power Slashes",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Move1",
            [3] = "Spawn"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "Betty True Power Combat Grab Attack(OP)",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "CombatGrab"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "Betty Grab",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "KumuGrab",
            [3] = Vector3.new(154.23783874512, 46.462890625, -134.76675415039)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addButton(
    "Betty Kumu Fuse(Stackable yes)",
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "KumuFused"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
        wait(2)
        game.Players.LocalPlayer.Character.Transformed:Destroy()
    end
)

uiSecs.betty:addKeybind(
    "Rhabdophobia",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Rhabdophobia"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "True Power Explosion",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "BettyGroundBlast"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "Heavy Dash Slash 1",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Move4",
            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "Heavy Dash Slash 2",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Move5"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "Dash Slash",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ScytheDash"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "Soul Steal",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Spear",
            [3] = "Start"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "True Power Punch",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Move3"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.betty:addKeybind(
    "Dark Pink Projective",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "BettySpikeProjectile",
            [3] = "Spawn"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "BettySpikeProjectile",
            [3] = "SpawnTwo"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "BettySpikeProjectile",
            [3] = "Release"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.ctthings3:addTextbox(
    "Put Your Name Here",
    "Name goes here",
    function(nametx)
        game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = nametx
    end
)

uiSecs.ctthings2:addColorPicker(
    "The color of your name",
    Color3.new(255, 255, 255),
    function(name)
        game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = name
    end
)

uiSecs.main3:addColorPicker(
    "The color of the text",
    Color3.new(255, 255, 255),
    function(val)
        rgbb = val
    end
)

uiSecs.main3:addTextbox(
    "What to say?",
    "",
    function(val)
        textt = val
    end
)

uiSecs.main3:addButton(
    "Send the text",
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = textt,
            [4] = rgbb
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
    end
)

uiSecs.delta:addKeybind(
    "Block Breaker",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "GuardBreak"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.delta:addKeybind(
    "Bone 1",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Bones1",
            [3] = "Spawn"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.delta:addKeybind(
    "Bone 2",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Bones2",
            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.delta:addKeybind(
    "Blaster 1",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Blasters1"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.delta:addKeybind(
    "Blaster 2",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Blasters2"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.delta:addKeybind(
    "Blaster 3",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Blasters3"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.delta:addKeybind(
    "Blaster 4(no need to hold)",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Blasters4"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.sschara:addKeybind(
    "Constant Knife",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Knives",
            [3] = "ConstantSpawn",
            [4] = Vector3.new(154.23783874512, 28.705627441406, -518.83972167969)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.sschara:addKeybind(
    "Knifes Barrage",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Knives",
            [3] = "Special1"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.sschara:addKeybind(
    "1 Blaster",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ChaosBusterBlasters",
            [3] = "SummonOne",
            [4] = Vector3.new(154.23783874512, 6.9326171875, -219.64356994629)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.sschara:addKeybind(
    "2 Blaster",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ChaosBusterBlasters",
            [3] = "SummonTwo",
            [4] = Vector3.new(154.23783874512, 6.9326171875, -219.64356994629)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.sschara:addKeybind(
    "4 Blaster",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ChaosBusterBlasters",
            [3] = "SummonFour",
            [4] = Vector3.new(154.23783874512, 6.9326171875, -219.64356994629)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.sschara:addKeybind(
    "8 Blaster",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ChaosBusterBlasters",
            [3] = "SummonEight",
            [4] = Vector3.new(154.23783874512, 6.9326171875, -219.64356994629)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.nsans:addKeybind(
    "Telekinesis",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Telekinesis1"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.nsans:addKeybind(
    "Blaster 1",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Blasters1"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.nsans:addKeybind(
    "Blaster 2",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Blasters2"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.nsans:addKeybind(
    "Blaster 3",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Blasters3"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.nsans:addKeybind(
    "Blaster 4",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Blasters4"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.nsans:addKeybind(
    "Special 1",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Special1"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.nsans:addKeybind(
    "Special 2",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Special2"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.asriel:addKeybind(
    "Star Blazing",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "StarBlazing",
            [3] = "Start",
            [4] = "Galacta"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.asriel:addKeybind(
    "Chaos Slicer",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ChaosBlades",
            [3] = "Summon",
            [4] = true
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.asriel:addKeybind(
    "Shocker Breaker",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ShockerBreaker",
            [3] = "Start",
            [4] = " II"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.asriel:addKeybind(
    "Asriel's Barrage(Boosted)",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "AsrielBarrageMove",
            [3] = "Fire",
            [4] = 10
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.asriel:addKeybind(
    "Hyper Beam",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "HyperBeam",
            [3] = "Fire"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.asriel:addKeybind(
    "Hyper Goner(Multitimes use)",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "HyperGoner",
            [3] = "Start"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
        wait(1)
        game.Players.LocalPlayer.Character.HyperGonered:Destroy()
    end,
    function()
    end
)

uiSecs.undyne:addKeybind(
    "Spears Barrage",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Spear",
            [3] = "MultipleSpears",
            [4] = 50
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.undyne:addKeybind(
    "Spear Of Justice Barrage(In working)(Bug)",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Spear",
            [3] = "MultipleSpears",
            [4] = "Special",
            [5] = 30
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.undyne:addKeybind(
    "Huge Spear",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Spear",
            [3] = "Spawn",
            [4] = "Undying"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.undyne:addKeybind(
    "Spear Zone",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Spear",
            [3] = "SpawnGround2"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.undyne:addKeybind(
    "Spear Of Justice",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Spear",
            [3] = "Special"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.frisk:addKeybind(
    "Punch Barrage",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ToughGloves",
            [3] = "PunchBarrage"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.frisk:addKeybind(
    "Knife Barrage",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "RealKnifeBaragge"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.frisk:addKeybind(
    "Air Slashes",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "RealKnifeSlashes"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.frisk:addKeybind(
    "Knife Stab",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "RealKnifeBigSlash"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.ui:addButton(
    "Destroy Gui",
    function()
        game.CoreGui["Clown Hub v2.6 Paid (Bonus 2)"]:Destroy()
    end
)

uiSecs.place:addButton(
    "Rejoin",
    function()
        game:GetService("TeleportService"):Teleport(3198259055, LocalPlayer)
    end
)

uiSecs.place2:addKeybind(
    "Justice Beam",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "YellowBeam",
            [3] = "Fire"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Justice Projective",
    nil,
    function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectileYellow",
                [3] = "Spawn",
                [4] = r2.p
            }
        }

        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Purple Projective",
    nil,
    function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectilePurple",
                [3] = "Spawn",
                [4] = r2.p
            }
        }

        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Knife Projective",
    nil,
    function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectile",
                [3] = "Spawn",
                [4] = r2.p
            }
        }

        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Integrity Slam",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "IntegrityAttack",
            [3] = "Start"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Integrity Sweep",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "IntegrityAttack2",
            [3] = "Start"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
        local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]
    end,
    function()
    end
)

uiSecs.place2:addButton(
    "Knife Shield(Enable)",
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeShield",
            [3] = true
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
    end
)

uiSecs.place2:addButton(
    "Knife Shield(Disable)",
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeShield",
            [3] = false
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
    end
)

uiSecs.place2:addKeybind(
    "HateBall",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "HateBall",
            [3] = "Start",
            [4] = true
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Patient Rod 2",
    nil,
    function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "PatienceAttack2",
            [3] = r2.p,
            [4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Patient Rod 1",
    nil,
    function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "PatienceAttack",
            [3] = r2.p,
            [4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Special hell area",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "AreaAttack",
            [3] = "Start"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
        local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Special hell slash",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "SpecialHell2"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Heal Knife",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeHeal"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
        local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Dark Red Projectiles",
    nil,
    function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectileDarkRed",
                [3] = "Spawn",
                [4] = r2.p
            }
        }

        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    end,
    function()
    end
)

uiSecs.place2:addKeybind(
    "Orange Projective",
    nil,
    function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectileOrange",
                [3] = "Spawn",
                [4] = r2.p
            }
        }

        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    end,
    function()
    end
)

uiSecs.place6:addKeybind(
    "Muda Muda Muda MUDA!",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "Muda Muda Muda Muda",
            [4] = Color3.new(0, 255, 100)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4920871999"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "BurstEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, -50, 0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
    end,
    function()
    end
)

uiSecs.place6:addKeybind(
    "Super KnockBack",
    nil,
    function()
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["Type"] = "Knockback",
            ["HitEffect"] = "HeavyHitEffect",
            ["HitTime"] = 2.5,
            ["Velocity"] = Vector3.new(0, 100, 0) +
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 173.2,
            ["VictimCFrame"] = CFrame.new(),
            ["CombatInv"] = true,
            ["Damage"] = 10
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "OverWrite Heal",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Overwrite",
            [3] = "Heal"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Bones Barrage",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "SummonBones",
            [3] = "Spawn"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Summon Blaster",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "CrossBlaster"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Bones Line",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "LineBones"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Special Slash Red",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeSpecial1"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Special Slash Purple",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "XCharaKnifeSpecial1"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Red Corruption",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeSpecial3"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Purple Corruption",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "XCharaKnifeSpecial2"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Summon Knifes Purple",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "SummonKnivesChara",
            [3] = "Spawn"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Summon Knifes Red",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "SummonKnives",
            [3] = "Spawn"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Lower Attack and Defense",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Overwrite",
            [3] = "LowerAttack"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place0:addKeybind(
    "Overwrite Teleport",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Overwrite",
            [3] = "OverwriteKnives"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
        Event:InvokeServer(A_1)
    end,
    function()
    end
)

uiSecs.place3:addButton(
    "Necrofantasia",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://3878888130"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Bullet Hell Nitro Remix",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://5184496328"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Galaxy Collapse",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://582476855"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Animal Fnf",
    function()
        --Music = Meet Me At The Hotel Room Mashup
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://6690328923"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Gospel Remix",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://6651394655"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Inking Mistake",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://1326552262"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Manifest UTAU Cover",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://6726283668"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Build Our Machine",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://825878724"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Bad Apple",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://412333048"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place3:addButton(
    "Manifest but everyone sing it",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://6871079145"
        KG.Looped = false
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Manifest UTAU Cover",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://6726283668"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Build Our Machine",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://825878724"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Necrofantasia",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://3878888130"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Bullet Hell Nitro Remix",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://5184496328"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Galaxy Collapse",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://582476855"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Bad Apple",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://412333048"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Animal Fnf",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://6690328923"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Gospel Remix",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://6651394655"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Inking Mistake",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://1326552262"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.place5:addButton(
    "Manifest but everyone sing it",
    function()
        --Music
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 10
        KG.SoundId = "rbxassetid://6871079145"
        KG.Looped = true
        KG:Play()
    end
)

uiSecs.main2:addButton(
    "Bring All(Left Bracket to toggle bring all)",
    function()
        --[[
bad skid
--]]
        local L_1_ = true
        local L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart
        local L_3_ = L_2_.Position - Vector3.new(5, 0, 0)

        game.Players.LocalPlayer:GetMouse().KeyDown:Connect(
            function(L_4_arg1)
                if L_4_arg1 == "]" then
                    L_1_ = not L_1_
                end
                if L_4_arg1 == "[" then
                    L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart
                    L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
                end
            end
        )

        for L_5_forvar1, L_6_forvar2 in pairs(game.Players:GetPlayers()) do
            if L_6_forvar2 == game.Players.LocalPlayer then
            else
                local L_7_ =
                    coroutine.create(
                    function()
                        game:GetService("RunService").RenderStepped:Connect(
                            function()
                                local L_8_, L_9_ =
                                    pcall(
                                    function()
                                        local L_10_ = L_6_forvar2.Character
                                        if L_10_ then
                                            if L_10_:FindFirstChild("HumanoidRootPart") then
                                                if L_1_ then
                                                    L_6_forvar2.Backpack:ClearAllChildren()
                                                    for L_11_forvar1, L_12_forvar2 in pairs(L_10_:GetChildren()) do
                                                        if L_12_forvar2:IsA("Tool") then
                                                            L_12_forvar2:Destroy()
                                                        end
                                                    end
                                                    L_10_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
                                                end
                                            end
                                        end
                                    end
                                )
                                if L_8_ then
                                else
                                    warn("Unnormal error: " .. L_9_)
                                end
                            end
                        )
                    end
                )
                coroutine.resume(L_7_)
            end
        end

        game.Players.PlayerAdded:Connect(
            function(L_13_arg1)
                if L_13_arg1 == game.Players.LocalPlayer then
                else
                    local L_14_ =
                        coroutine.create(
                        function()
                            game:GetService("RunService").RenderStepped:Connect(
                                function()
                                    local L_15_, L_16_ =
                                        pcall(
                                        function()
                                            local L_17_ = L_13_arg1.Character
                                            if L_17_ then
                                                if L_17_:FindFirstChild("HumanoidRootPart") then
                                                    if L_1_ then
                                                        L_13_arg1.Backpack:ClearAllChildren()
                                                        for L_18_forvar1, L_19_forvar2 in pairs(L_17_:GetChildren()) do
                                                            if L_19_forvar2:IsA("Tool") then
                                                                L_19_forvar2:Destroy()
                                                            end
                                                        end
                                                        L_17_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
                                                    end
                                                end
                                            end
                                        end
                                    )
                                    if L_15_ then
                                    else
                                        warn("Unnormal error: " .. L_16_)
                                    end
                                end
                            )
                        end
                    )
                    coroutine.resume(L_14_)
                end
            end
        )
    end
)

uiSecs.place4:addButton(
    "Tcss Gui But It's Free",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/OP_GUI_2.lua", true)
        )()
    end
)

uiSecs.place4:addButton(
    "SoulHacker Gui",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/Soulhaker.txt", true)
        )()
    end
)

uiSecs.place4:addButton(
    "Shatters X Gui",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/iHavoc101/Miscellaneous-Releases/main/High%20Quality/SoulShatters.lua"
            )
        )()
    end
)

uiSecs.place4:addButton(
    "Tcss Gui But It's Paid",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/7e6a460176f21b79acd587be890ab6d3/raw/6bcce0f3deac1dac82999bdec7b523c69e294bbf/tcssskidded",
                true
            )
        )()
    end
)

uiSecs.place4:addButton(
    "Shatter-Core Hub",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/Shattercore_2_1.lua")
        )()
    end
)

uiSecs.place6:addButton(
    "Super Unfair Custom Attack(RightAlt)",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/3095e9d8729ac8e6d361bc797484e7de/raw/5db7ed7d86b23b54cec6dd4437e7a1449e7cb071/spv4"
            )
        )()
    end
)

uiSecs.place6:addButton(
    "Chara Bravery Boost(Press G to Stop)",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/gt_chara_bravey_2-3_shot.txt"
            )
        )()
    end
)

uiSecs.place6:addKeybind(
    "Stop Time A Player",
    nil,
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Chatted",
            [3] = "The World: Stop Time",
            [4] = Color3.new(0, 1, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["HitTime"] = 2.5,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                ["Damage"] = 1
            }
        }
        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
    end
)

uiSecs.main:addToggle(
    "GodMode",
    false,
    function()
        repeat
            wait(1)
            loadstring(
                game:HttpGet(
                    "https://gist.githubusercontent.com/LiterallyATrueClown/3accafca439db109b4e1955989c60440/raw/a325e2a76e9494f92052e5cc2951ab326848e61f/Ehh2",
                    true
                )
            )()
        until false
    end
)

uiSecs.main:addButton(
    "GodMode Old Sans",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/0e323655abf65b6081875672fa470bd3/raw/a7bfc6cf0d97ad8b1d741f9f409d0b23b651823b/godmode%2520sans",
                true
            )
        )()
    end
)

uiSecs.main:addButton(
    "RoseShield Block Ut Frisk",
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "EquipWeapon",
            [3] = "RoseShield"
        }
        game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "EquipArmor",
            [3] = "RoseShield"
        }
        game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
    end
)

uiSecs.main:addButton(
    "High Dmg Ut!Frisk(Lv 20)",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/35be7a038b8d5f2b6585804926d494e2/raw/4810f540f0f1037b2d3f7eec184e71e28b391df5/frisk%2520high%2520dmg",
                true
            )
        )()
    end
)

uiSecs.main:addButton(
    "ESP(works well and not lag)",
    function()
        ALLYCOLOR = {0, 0, 255} --//Color of the ESP  of people on the same team
        ENEMYCOLOR = {0, 0, 255} --//Color of the ESP  of people on NOT the same team
        TRANSPARENCY = 0.3 --//Transparency of the ESP
        HEALTHBAR_ACTIVATED = true --//Renders the Healthbar
        --
        --

        --							!!!Don't Change Anything Below Here Unless You Know What You're Doing!!!

        function createFlex()
            -- -----------------------------------------------------------------------------------
            --[VARIABLES] //Changing may result in Errors!
            players = game:GetService("Players") --//Required for PF
            faces = {"Front", "Back", "Bottom", "Left", "Right", "Top"} --//Every possible Enum face
            currentPlayer = nil --//Used for the Team-Check
            lplayer = players.LocalPlayer --//The LocalPlayer
            -- -----------------------------------------------------------------------------------
            players.PlayerAdded:Connect(
                function(p)
                    currentPlayer = p
                    p.CharacterAdded:Connect(
                        function(character) --//For when a new Player joins the game
                            createESP(character)
                        end
                    )
                end
            )
            -- -----------------------------------------------------------------------------------
            function checkPart(obj)
                if (obj:IsA("Part") or obj:IsA("MeshPart")) and obj.Name ~= "HumanoidRootPart" then
                    return true
                end
            end --//Check if the Part is suitable
            -- -----------------------------------------------------------------------------------
            function actualESP(obj)
                for i = 0, 5 do
                    surface = Instance.new("SurfaceGui", obj) --//Creates the SurfaceGui
                    surface.Face = Enum.NormalId[faces[i + 1]] --//Adjusts the Face and chooses from the face table
                    surface.AlwaysOnTop = true

                    frame = Instance.new("Frame", surface) --//Creates the viewable Frame
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BorderSizePixel = 0
                    frame.BackgroundTransparency = TRANSPARENCY
                    if currentPlayer.Team == players.LocalPlayer.Team then --//Checks the Players Team
                        frame.BackgroundColor3 = Color3.new(ALLYCOLOR[1], ALLYCOLOR[2], ALLYCOLOR[3]) --//If in same Team
                    else
                        frame.BackgroundColor3 = Color3.new(ENEMYCOLOR[1], ENEMYCOLOR[2], ENEMYCOLOR[3]) --//If in another Team
                    end
                end
            end
            -- ---------------------------------------------  --------------------------------------
            function createHealthbar(hrp)
                board = Instance.new("BillboardGui", hrp) --//Creates the BillboardGui with HumanoidRootPart as the Parent
                board.Name = "total"
                board.Size = UDim2.new(1, 0, 1, 0)
                board.StudsOffset = Vector3.new(3, 1, 0)
                board.AlwaysOnTop = true

                bar = Instance.new("Frame", board) --//Creates the red background
                bar.BackgroundColor3 = Color3.new(255, 0, 0)
                bar.BorderSizePixel = 0
                bar.Size = UDim2.new(0.2, 0, 4, 0)
                bar.Name = "total2"

                health = Instance.new("Frame", bar) --//Creates the changing green Frame
                health.BackgroundColor3 = Color3.new(0, 255, 0)
                health.BorderSizePixel = 0
                health.Size = UDim2.new(1, 0, hrp.Parent.Humanoid.Health / 100, 0)
                hrp.Parent.Humanoid.Changed:Connect(
                    function(property) --//Triggers when any Property changed
                        hrp.total.total2.Frame.Size = UDim2.new(1, 0, hrp.Parent.Humanoid.Health / 100, 0) --//Adjusts the size of the green Frame
                    end
                )
            end
            -- -----------------------------------------------------------------------------------
            function createESP(c) --//Checks and calls the proper function
                bugfix = c:WaitForChild("Head") --// *Used so the children of the character arent nil.
                for i, v in pairs(c:GetChildren()) do
                    if checkPart(v) then
                        actualESP(v)
                    end
                end
                if HEALTHBAR_ACTIVATED then --//If the user decided to
                    createHealthbar(c:WaitForChild("Torso")) --//Calls the function of the creation
                end
            end
            -- -----------------------------------------------------------------------------------
            for i, people in pairs(players:GetChildren()) do
                if people ~= players.LocalPlayer then
                    currentPlayer = people
                    --//Used for Players already in the Game
                    createESP(people.Character)
                    people.CharacterAdded:Connect(
                        function(character)
                            createESP(character)
                        end
                    )
                end
            end
            -- -----------------------------------------------------------------------------------
        end --//End of the entire function

        createFlex() --// Does exactly that :)
    end
)

uiSecs.main:addToggle(
    "Auto Block",
    false,
    function()
        if state == true then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Blocking",
                [3] = true
            }
            game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
        end

        if state == false then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Blocking",
                [3] = false
            }
            game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
        end
    end
)

uiSecs.main:addToggle(
    "Auto Perfect Block",
    false,
    function()
        if state == true then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "PerfectBlocking",
                [3] = true
            }
            game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
        end

        if state == false then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "PerfectBlocking",
                [3] = false
            }
            game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
        end
    end
)

uiSecs.main:addKeybind(
    "Temmie Armor Boost Ut!Frisk(Lv 20)(Spam)",
    nil,
    function()
        spawn(
            function()
                local A_1 = {
                    [1] = getrenv()._G.Pass,
                    [2] = "EquipArmor",
                    [3] = "TemmieArmor"
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
                Event:InvokeServer(A_1)
            end
        )
    end
)

uiSecs.main:addKeybind(
    "RealKnife Boost Ut!Frisk(Lv 20)(Spam)",
    nil,
    function()
        spawn(
            function()
                local A_1 = {
                    [1] = getrenv()._G.Pass,
                    [2] = "EquipWeapon",
                    [3] = "RelKnife"
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
                Event:InvokeServer(A_1)
            end
        )
    end
)

uiSecs.main:addKeybind(
    "Teleportation(Lock On)",
    nil,
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame *
            CFrame.new(0, 0, 3)
    end
)

uiSecs.main:addButton(
    "Inf Stamina",
    function()
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )

        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )

        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )

        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )

        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )

        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )

        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )

        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )

        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainStamina" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DrainSprint" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
    end
)

uiSecs.stuffs:addButton(
    "AutoRun(For Undyne + Betty)",
    function()
        game:GetService("Players").LocalPlayer.Backpack.Main.WalkSpeed.Value = 60
    end
)

uiSecs.stuffs:addButton(
    "AutoRun(For Sakuya)",
    function()
        game:GetService("Players").LocalPlayer.Backpack.Main.WalkSpeed.Value = 50
    end
)

uiSecs.stuffs:addButton(
    "AutoRun + Esp(Don't use in betty or Undyne)",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/9eb5e3162cf9906015209348a32462b3/raw/7544279d5a84e41f6732df602f590cadc2c8ad14/espop",
                true
            )
        )()
    end
)

uiSecs.stuffs:addButton(
    "Custom Blaster",
    function()
        local p = game.Players.LocalPlayer
        local char = p.Character
        local mouse = p:GetMouse()
        local larm = char["Left Arm"]
        local rarm = char["Right Arm"]
        local lleg = char["Left Leg"]
        local rleg = char["Right Leg"]
        local hed = char.HumanoidRootPart
        local torso = char.Torso
        local hum = char.Humanoid
        local root = char.HumanoidRootPart
        local rs = game:GetService("RunService").RenderStepped
        local new = Instance.new
        local v3 = Vector3.new
        local ns = NumberSequence.new
        local nr = NumberRange.new
        local bc = BrickColor.new
        local cf = CFrame.new
        local cfa = CFrame.Angles
        local rad = math.rad

        a1 = new("Part", char)
        a1.Name = "Head"
        a1.BrickColor = BrickColor.new("White")
        a1.Material = "Neon"
        a1.Transparency = 0
        aa1 = new("SpecialMesh", a1)
        aa1.MeshType = "FileMesh"
        aa1.Offset = v3(7, 3, -0.1)
        aa1.Scale = v3(0.1, 0.1, 0.1)
        aa1.MeshId = "rbxassetid://2267134290"
        aaa1 = new("Weld", a1)
        aaa1.Part0 = hed
        aaa1.Part1 = a1
        aaa1.C0 = CFrame.Angles(0, math.rad(0), 0)

        a2 = new("Part", char)
        a2.Name = "RJaw"
        a2.BrickColor = BrickColor.new("White")
        a2.Material = "Neon"
        a2.Transparency = 0
        aa2 = new("SpecialMesh", a2)
        aa2.MeshType = "FileMesh"
        aa2.Offset = v3(9.1, 2.01, -0.2)
        aa2.Scale = v3(0.07, 0.07, 0.07)
        aa2.MeshId = "rbxassetid://2267146284"
        aaa2 = new("Weld", a2)
        aaa2.Part0 = hed
        aaa2.Part1 = a2
        aaa2.C0 = CFrame.Angles(0, math.rad(0), 0)

        a3 = new("Part", char)
        a3.Name = "LJaw"
        a3.BrickColor = BrickColor.new("White")
        a3.Material = "Neon"
        a3.Transparency = 0
        aa3 = new("SpecialMesh", a3)
        aa3.MeshType = "FileMesh"
        aa3.Offset = v3(5, 2.01, -0.2)
        aa3.Scale = v3(0.07, 0.07, 0.07)
        aa3.MeshId = "rbxassetid://2267147917"
        aaa3 = new("Weld", a3)
        aaa3.Part0 = hed
        aaa3.Part1 = a3
        aaa3.C0 = CFrame.Angles(0, math.rad(0), 0)

        a4 = new("Part", char)
        a4.Name = "Inside"
        a4.BrickColor = BrickColor.new("White")
        a4.Material = "Neon"
        a4.Transparency = 0
        aa4 = new("SpecialMesh", a4)
        aa4.MeshType = "FileMesh"
        aa4.Offset = v3(7, 3, -0.1)
        aa4.Scale = v3(0.1, 0.1, 0.1)
        aa4.MeshId = "rbxassetid://2267130588"
        aaa4 = new("Weld", a4)
        aaa4.Part0 = hed
        aaa4.Part1 = a4
        aaa4.C0 = CFrame.Angles(0, math.rad(0), 0)

        a5 = new("Part", char)
        a5.Name = "Inside2"
        a5.BrickColor = BrickColor.new("White")
        a5.Material = "Neon"
        a5.Transparency = 0
        aa5 = new("SpecialMesh", a5)
        aa5.MeshType = "FileMesh"
        aa5.Offset = v3(7, 3, -0.1)
        aa5.Scale = v3(0.1, 0.1, 0.1)
        aa5.MeshId = "rbxassetid://2267130588"
        aaa5 = new("Weld", a5)
        aaa5.Part0 = hed
        aaa5.Part1 = a5
        aaa5.C0 = CFrame.Angles(0, math.rad(0), 0)

        a1e = new("Part", char)
        a1e.Name = "Head"
        a1e.BrickColor = BrickColor.new("White")
        a1e.Material = "Neon"
        a1e.Transparency = 0
        aa1e = new("SpecialMesh", a1e)
        aa1e.MeshType = "FileMesh"
        aa1e.Offset = v3(-7, 3, -0.1)
        aa1e.Scale = v3(0.1, 0.1, 0.1)
        aa1e.MeshId = "rbxassetid://2267134290"
        aaa1e = new("Weld", a1e)
        aaa1e.Part0 = hed
        aaa1e.Part1 = a1e
        aaa1e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a2e = new("Part", char)
        a2e.Name = "RJaw"
        a2e.BrickColor = BrickColor.new("White")
        a2e.Material = "Neon"
        a2e.Transparency = 0
        aa2e = new("SpecialMesh", a2e)
        aa2e.MeshType = "FileMesh"
        aa2e.Offset = v3(-5, 2.01, -0.2)
        aa2e.Scale = v3(0.07, 0.07, 0.07)
        aa2e.MeshId = "rbxassetid://2267146284"
        aaa2e = new("Weld", a2e)
        aaa2e.Part0 = hed
        aaa2e.Part1 = a2e
        aaa2e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a3e = new("Part", char)
        a3e.Name = "LJaw"
        a3e.BrickColor = BrickColor.new("White")
        a3e.Material = "Neon"
        a3e.Transparency = 0
        aa3e = new("SpecialMesh", a3e)
        aa3e.MeshType = "FileMesh"
        aa3e.Offset = v3(-9.1, 2.01, -0.2)
        aa3e.Scale = v3(0.07, 0.07, 0.07)
        aa3e.MeshId = "rbxassetid://2267147917"
        aaa3e = new("Weld", a3e)
        aaa3e.Part0 = hed
        aaa3e.Part1 = a3e
        aaa3e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a4e = new("Part", char)
        a4e.Name = "Inside"
        a4e.BrickColor = BrickColor.new("White")
        a4e.Material = "Neon"
        a4e.Transparency = 0
        aa4 = new("SpecialMesh", a4e)
        aa4e.MeshType = "FileMesh"
        aa4e.Offset = v3(-7, 3, -0.1)
        aa4e.Scale = v3(0.1, 0.1, 0.1)
        aa4e.MeshId = "rbxassetid://2267130588"
        aaa4e = new("Weld", a4e)
        aaa4e.Part0 = hed
        aaa4e.Part1 = a4e
        aaa4e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a5e = new("Part", char)
        a5e.Name = "Inside2"
        a5e.BrickColor = BrickColor.new("White")
        a5e.Material = "Neon"
        a5e.Transparency = 0
        aa5e = new("SpecialMesh", a5e)
        aa5e.MeshType = "FileMesh"
        aa5e.Offset = v3(-7, 3, -0.1)
        aa5e.Scale = v3(0.1, 0.1, 0.1)
        aa5e.MeshId = "rbxassetid://2267130588"
        aaa5e = new("Weld", a5e)
        aaa5e.Part0 = hed
        aaa5e.Part1 = a5e
        aaa5e.C0 = CFrame.Angles(0, math.rad(0), 0)
    end
)

uiSecs.main:addButton(
    "Tp bypass",
    function()
        game.Workspace.Map["MapCFrame"]:Destroy()
        game.Workspace.Map["MapSize"]:Destroy()
        game.Workspace.Map.Model["InvisibleWalls"]:Destroy()
    end
)

uiSecs.main:addButton(
    "InfJump",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
    end
)

uiSecs.place6:addKeybind(
    "Inf Attack",
    nil,
    function()
        local on = false

        if on == false then
            local plr = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local lockedplr = workspace[plr.Name]
            on = true

            repeat
                wait()
                local args = {
                    [1] = getrenv()._G.Pass,
                    [2] = lockedplr,
                    [3] = {
                        ["HitTime"] = 2.5,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "CarrotHitEffect",
                        ["VictimCFrame"] = CFrame.new(
                            Vector3.new(
                                lockedplr.HumanoidRootPart.Position.X,
                                lockedplr.HumanoidRootPart.Position.Y,
                                lockedplr.HumanoidRootPart.Position.Z + 5
                            )
                        ),
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                        ["Velocity"] = Vector3.new(0, 0.00001, 0),
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                        ["Damage"] = 1,
                        ["CombatInv"] = true
                    }
                }
                game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                if lockedplr.Humanoid.Health <= 0 then
                    print("Done!")
                    on = false
                end
            until lockedplr.Humanoid.Health <= 0
        end
    end,
    function()
    end
)

uiSecs.main:addButton(
    "Can chat in menu",
    function()
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    end
)

uiSecs.opstuffs1:addTextbox(
    "Who?",
    "",
    function(lkonplr)
        game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value = lkonplr
    end
)

uiSecs.opstuffs1:addToggle(
    "Lock on to the target",
    false,
    function(state)
        if state == true then
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.UnLock.Value = true
        end

        if state == false then
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.UnLock.Value = false
        end
    end
)

uiSecs.opstuffs:addToggle(
    "Can lock on to 0 hp ppl",
    false,
    function(state)
        if state == true then
            while wait(1) do
                for i, v in pairs(game.Players:GetChildren()) do
                    v.Character.Humanoid.Health = math.huge
                end
            end
        end

        if state == false then
            while wait(1) do
                for i, v in pairs(game.Players:GetChildren()) do
                    v.Character.Humanoid.Health = math.huge
                end
            end
        end
    end
)

uiSecs.stuffs:addButton(
    "Anti Blind",
    function()
        game:GetService("ReplicatedStorage").Effects.ScriptEffects:Destroy()
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
                        if v.Name == "WhiteScreen" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game:GetService("Lighting"):GetChildren()) do
                        if v.Name == "Blur" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
    end
)

uiSecs.stuffs:addToggle(
    "Faceless eyes trail",
    false,
    function(state)
        if state == true then
            for _, v in pairs(game.ReplicatedStorage.RogueEffects:GetChildren()) do
                if v.Name == "RedEyes" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Trail.Lifetime = 2
                    sword2.Trail.Lifetime = 2
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Head"]
                    sword2.Name = "CLOWNEYES"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNEYES" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "IDK's Dark Aura",
    false,
    function(state)
        if state == true then
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "DarkAuraEffect" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Torso"]
                    sword2.Name = "CLOWNDARKAURA"
                    weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "TransformationAura" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Torso"]
                    sword2.Name = "CLOWNDARKAURA"
                    weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNDARKAURA" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "Stevonie Pink Trail",
    false,
    function(state)
        if state == true then
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "PinkTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["HumanoidRootPart"]
                    sword2.Name = "CLOWNPINKTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "PinkTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Head"]
                    sword2.Name = "CLOWNPINKTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "PinkTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Torso"]
                    sword2.Name = "CLOWNPINKTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "PinkTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Left Arm"]
                    sword2.Name = "CLOWNPINKTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "PinkTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Leg"]
                    sword2.Name = "CLOWNPINKTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "PinkTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "CLOWNPINKTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "PinkTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Leg"]
                    sword2.Name = "CLOWNPINKTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNPINKTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNPINKTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNPINKTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNPINKTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNPINKTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNPINKTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNPINKTRAIL" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "Asriel Rainbow trail",
    false,
    function(state)
        if state == true then
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "RainbowTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["HumanoidRootPart"]
                    sword2.Name = "CLOWNRBTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "RainbowTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Head"]
                    sword2.Name = "CLOWNRBTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "RainbowTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Leg"]
                    sword2.Name = "CLOWNRBTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "RainbowTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "CLOWNRBTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "RainbowTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Left Leg"]
                    sword2.Name = "CLOWNRBTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "RainbowTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Left Arm"]
                    sword2.Name = "CLOWNRBTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "RainbowTrail" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Torso"]
                    sword2.Name = "CLOWNRBTRAIL"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNRBTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNRBTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNRBTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNRBTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNRBTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNRBTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNRBTRAIL" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNRBTRAIL" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "Faceless Ultimate Flame Aura",
    false,
    function(state)
        if state == true then
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "Flame" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["HumanoidRootPart"]
                    sword2.Name = "CLOWNFLAMEAURA1"
                    weld.C0 = CFrame.new(0, 3, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "Flame2" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["HumanoidRootPart"]
                    sword2.Name = "CLOWNFLAMEAURA2"
                    weld.C0 = CFrame.new(0, 3, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNFLAMEAURA1" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNFLAMEAURA2" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "Sans's Eyes Trail",
    false,
    function(state)
        if state == true then
            for _, v in pairs(
                game.ReplicatedStorage.Resources.Character.Accessories.Sans.BadTimePlayer.BadTimeEye:GetChildren()
            ) do
                if v.Name == "Part" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Head"]
                    sword2.Name = "CLOWNSANSEYE"
                    weld.C0 = CFrame.new(-0.2, -0.03, 0.5) * CFrame.Angles(-0.1, 0, -1.6)
                    sword2.Transparency = 0
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "CLOWNSANSEYE" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "Asriel's Dusts Aura",
    false,
    function(state)
        if state == true then
            local player = game:GetService("Players").LocalPlayer.Character
            local aura = game:GetService("ReplicatedStorage").Resources.Character.Auras.AsrielAura

            aura:Clone()
            aura.Head.BodyAura.Parent = player.Head
            aura.Torso.BodyAura.Parent = player.Torso
            aura.Torso.BodyAura.Parent = player.Torso
            aura:FindFirstChild("Left Arm").BodyAura.Parent = player:FindFirstChild("Left Arm")
            aura:FindFirstChild("Right Arm").BodyAura.Parent = player:FindFirstChild("Right Arm")
            aura:FindFirstChild("Left Leg").BodyAura.Parent = player:FindFirstChild("Left Leg")
            aura:FindFirstChild("Right Leg").BodyAura.Parent = player:FindFirstChild("Right Leg")
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character.Torso:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character.Torso:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character["Left Arm"]:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character["Right Arm"]:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character["Left Leg"]:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character["Right Leg"]:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "Frisk's Power Up Aura Aura",
    false,
    function(state)
        if state == true then
            local player = game:GetService("Players").LocalPlayer.Character
            local aura = game:GetService("ReplicatedStorage").Resources.Character.Auras.PowerUp

            aura:Clone()
            aura.Head.BodyAura.Parent = player.Head
            aura.Torso.BodyAura.Parent = player.Torso
            aura.Torso.BodyAura.Parent = player.Torso
            aura:FindFirstChild("Left Arm").BodyAura.Parent = player:FindFirstChild("Left Arm")
            aura:FindFirstChild("Right Arm").BodyAura.Parent = player:FindFirstChild("Right Arm")
            aura:FindFirstChild("Left Leg").BodyAura.Parent = player:FindFirstChild("Left Leg")
            aura:FindFirstChild("Right Leg").BodyAura.Parent = player:FindFirstChild("Right Leg")
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character.Torso:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character.Torso:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character["Left Arm"]:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character["Right Arm"]:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character["Left Leg"]:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character["Right Leg"]:GetChildren()) do
                if v.Name == "BodyAura" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addButton(
    "Delete the sky",
    function()
        for _, v in pairs(game.Lighting:GetChildren()) do
            if v.Name == "Sky" then
                v:Destroy()
            end
        end
    end
)

uiSecs.stuffs:addButton(
    "No Karma",
    function()
        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "Karma" then
                v:Destroy()
            end
        end
    end
)

uiSecs.opstuffs:addButton(
    "GTChara 0 Hp Godmode(Phase 1)",
    function()
        game.Players.LocalPlayer.Character["HateMode"]:Destroy()
        Spawn(
            function()
                while wait() do
                    game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
                end
            end
        )
    end
)

uiSecs.opstuffs:addButton(
    "Betty 0 Hp Godmode(Menu)",
    function()
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Betty"
        wait(2.5)
        game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
        Spawn(
            function()
                while wait() do
                    game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
                end
            end
        )
    end
)

uiSecs.opstuffs:addKeybind(
    "Funni Knife Slash Flying(GTChara)",
    nil,
    function()
        _G.cdr = false
        if _G.cdr then
            return
        end
        _G.cdr = true
        pass = getrenv()._G.Pass
        player = game.Players.LocalPlayer
        m = player:GetMouse()
        local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        char = player.Character
        h = char.Humanoid
        a = Instance.new("Animation")
        a.AnimationId = "rbxassetid://4905914802"
        k = h:LoadAnimation(a)
        k:Play()
        k:AdjustSpeed(3)
        amm = 6
        for i = 1, amm, 1 do
            spawn(
                function()
                    local A_1 = {
                        [1] = pass,
                        [2] = "KnifeProjectile",
                        [3] = "Spawn",
                        [4] = r2.p
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                    Event:InvokeServer(A_1)
                end
            )
        end
        am = 0
        val = Instance.new("NumberValue", player)
        val.Name = "KnifeSlashes Amount"
        detect =
            char.Attacks.ChildAdded:Connect(
            function(pp)
                if pp.Name == "KnifeSlashProjectile" then
                    am = am + 1
                    val.Value = am
                end
            end
        )
        detect2 =
            val:GetPropertyChangedSignal("Value"):Connect(
            function()
                if val.Value == amm then
                    tab = {}
                    tab2 = {}
                    for _, v in pairs(char.Attacks:GetChildren()) do
                        if v.Name == "KnifeSlashProjectile" then
                            v:WaitForChild("BodyVelocity"):Destroy()
                            v.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 10, -2)
                            v1 = Instance.new("BodyPosition", v)
                            fol = Instance.new("Folder", v1)
                            v1.Name = "Client"
                            v1.MaxForce = Vector3.new(1, 1, 1) * 100000
                            v1.D = 1000
                            v1.P = 30000
                            v2 = Instance.new("BodyGyro", v)
                            fol = Instance.new("Folder", v2)
                            v2.Name = "Client"
                            v2.MaxTorque = Vector3.new(1, 1, 1) * 10000
                            v2.D = 0
                            v2.P = 3000
                            v2.CFrame = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                            x = math.random(-10, 10) * 2
                            z = math.random(-10, 10) * 2
                            v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0, 1, 0)
                            table.insert(tab, v1)
                            table.insert(tab2, v)
                            v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x, 70, z)
                        end
                    end
                    wait(.5)
                    for i = 1, #tab do
                        m.TargetFilter = game.workspace.Terrain
                        local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
                        if LockOn then
                            target = LockOn
                            r2 = target.HumanoidRootPart.CFrame
                            r1 = target.HumanoidRootPart
                        elseif not LockOn then
                            r2 = m.Hit
                            r1 = m.Target
                        end
                        x = math.random(-20, 20)
                        z = math.random(-20, 20)
                        tab[i].D = 150
                        tab[i].Position = r2.p + Vector3.new(0, -4, 0)
                        tab2[i].CFrame = r2 * CFrame.new(x, 10, z)
                        spawn(
                            function()
                                local A_1 = {
                                    [1] = pass,
                                    [2] = "KnifeProjectile",
                                    [3] = "Hit",
                                    [4] = tab2[i],
                                    [5] = r2,
                                    [6] = r1
                                }
                                local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                                Event:InvokeServer(A_1)
                            end
                        )
                        wait(.1)
                    end
                end
            end
        )
        wait(0.5)
        detect:Disconnect()
        detect2:Disconnect()
        val:Destroy()
        _G.cdr = false
    end
)

uiSecs.opstuffs:addKeybind(
    "Funny betty soul steal",
    nil,
    function()
        spawn(
            function()
                local target = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                if not target:FindFirstChild("Torso") then
                    return
                end
                opsoulcd = true
                spawn(
                    function()
                        local A_1 = {
                            [1] = getrenv()._G.Pass,
                            [2] = "Spear",
                            [3] = "Start"
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
                        Event:InvokeServer(A_1)
                    end
                )
                wait(4)
                if not game.Players.LocalPlayer.Character:FindFirstChild("BettySpear") then
                    return
                end
                local prpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Torso.CFrame
                spawn(
                    function()
                        wait(0.2)
                        for i = 1, 30 do
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prpos
                            wait()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    end
                )
                wait()
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.Name == "BettySpear" then
                        spawn(
                            function()
                                local A_1 = {
                                    [1] = getrenv()._G.Pass,
                                    [2] = "Spear",
                                    [3] = "Hit",
                                    [4] = v,
                                    [5] = target.Torso.CFrame,
                                    [6] = target.Torso
                                }
                                local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
                                Event:InvokeServer(A_1)
                            end
                        )
                    end
                end
            end
        )
        wait(20)
        opsoulcd = false
    end
)

uiSecs.stuffs:addToggle(
    "XSans Bone",
    false,
    function(state)
        if state == true then
            for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "Bone" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Bone:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "ClownXBone"
                    sword2.Color = Color3.fromRGB(1, 0, 0)
                    weld.C0 = CFrame.new(-0.01, 0.5, 0)
                    sword2.Transparency = 0
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "ClownXBone" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "Undyne Spear",
    false,
    function(state)
        if state == true then
            for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "Spear" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Spear:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "ClownSpear"
                    sword2.Color = Color3.fromRGB(0, 255, 255)
                    weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
                    sword2.Transparency = 0
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "ClownSpear" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "GTFrisk Sword",
    false,
    function(state)
        if state == true then
            for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "GTFriskSword" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.GTFriskSword:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "GTClownSword"
                    sword2.Color = Color3.fromRGB(255, 0, 0)
                    weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
                    sword2.Transparency = 0
                end
            end
        end

        if state == false then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "GTClownSword" then
                    v:Destroy()
                end
            end
        end
    end
)

uiSecs.stuffs:addToggle(
    "Hate Knife(Updated)",
    false,
    function()
        game.Players.LocalPlayer.Character.RealKnife.Blade.SpecialHell:Destroy()
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(0, 0, 0),
                [5] = 0,
                [6] = "SpecialHell"
            }
        }

        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(0, 0, 0),
                [5] = 0,
                [6] = "RedMode"
            }
        }

        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    end
)

uiSecs.stuffs:addToggle(
    "Chat Spam",
    false,
    function(state)
        if state == true then
            repeat
                wait(3)
                local A_1 =
                    "Clown Hub Clown Hub Clown Hub Clown HubClown Hub Clown Hub Clown Hub Clown HubClown Hub Clown Hub Clown Hub Clown HubClown Hub Clown Hub Clown Hub Clown HubClown Hub Clown Hub Clown Hub Clown Hub"
                local A_2 = "All"
                local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                Event:FireServer(A_1, A_2)
            until state == false
        end
    end
)

uiSecs.main:addButton(
    "Fly Bind is T",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/2DsZ55C9", true))()
    end
)

uiSecs.main:addButton(
    "True Reset",
    function()
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "Reset"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Functions
        Event:InvokeServer(A_1)
        wait(1)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Damage",
                [3] = math.huge,
                [4] = game.Players.LocalPlayer.Character
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
    end
)

uiSecs.custom2:addButton(
    "Unknown",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/fibinb/ss-scripts/main/Unknown%20from%20Void(execute%20on%20asriel)"
            )
        )()
    end
)

uiSecs.custom6:addButton(
    "True GTFrisk[Phase 2]",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/Daserch/f8c9ef35f5829cd8ec1b3fb25d2bda0c/raw/0f09c71a55202059c6909ec695789a06312e80f2/GTFrisk"
            )
        )()
    end
)

uiSecs.custom:addButton(
    "IDK custom character by Unknown",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/best_one.txt", true)
        )()
    end
)

uiSecs.custom5:addButton(
    "True Chara",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/True%20chara.txt")
        )()
    end
)

uiSecs.custom:addButton(
    "Fate Chara",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/fate%20chara")
        )()
    end
)

uiSecs.custom5:addButton(
    "No more deal Chara",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/No_more_deals_chara.lua"
            )
        )()
    end
)

uiSecs.custom5:addButton(
    "An op custom character by h01y#9480",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/OPCHARa.txt"))(

        )
    end
)

uiSecs.custom3:addButton(
    "Faceless One",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/2d343cf6b868390d7506d74bb71c73dc/raw/1b842a9180b25db81f07aff7c6be1621c1663c5d/face",
                true
            )
        )()
    end
)

uiSecs.custom4:addButton(
    "True Bad Time Sans",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/sans%20true%20bad%20time.txt",
                true
            )
        )()
    end
)

uiSecs.custom4:addButton(
    "DustTrust Sans but better one",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/DTRR.txt", true)
        )()
    end
)

uiSecs.custom3:addButton(
    "Shadow Dio",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/Shadow_dio_script.txt",
                true
            )
        )()
    end
)

teleList = {
    "Sans Area(Small Box)",
    "Secret house",
    "Sans Area(Large Box)",
    "Arena 1",
    "Arena 2",
    "Unsecret Room",
    "Inside The Tree In The Mountain",
    "Top Of The Tree In The Mountain"
}
uiSecs.place1:addDropdown(
    "Teleportable Places",
    teleList,
    function(placestp)
        worldtp = placestp
    end
)

uiSecs.place1:addButton(
    "Teleport to that place",
    function()
        if worldtp == "Secret house" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -385.056732,
                1117.49927,
                1236.89026,
                0.0316926986,
                -0.0196113884,
                0.999304831,
                0.0301083066,
                0.999372423,
                0.0186579525,
                -0.999043584,
                0.0294960812,
                0.0322632939
            )
        end
        if worldtp == "Sans Area(Small Box)" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1302.91138, 2847.54688, 3280.51807, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
        if worldtp == "Sans Area(Large Box)" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1302.51624, 2875.9187, 3281.04077, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
        if worldtp == "Arena 1" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(11000, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
        if worldtp == "Arena 2" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(12000, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
        if worldtp == "Unsecret Room" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -209.266479,
                70.4158173,
                -276.833679,
                0.759999871,
                0,
                0.649923205,
                0,
                1,
                0,
                -0.649923205,
                0,
                0.759999871
            )
        end
        if worldtp == "Inside The Tree In The Mountain" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-206.342285, 185.708115, -304.879242, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
        if worldtp == "Top Of The Tree In The Mountain" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-206.342285, 185.708115, -304.879242, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
    end
)

uiSecs.custom1:addButton(
    "Max Lv Frisk",
    function()
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Damage",
                [3] = math.huge,
                [4] = game.Players.LocalPlayer.Character
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
    end
)

uiSecs.custom1:addButton(
    "Max Lv lock on Frisk(Other Player)",
    function()
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Damage",
                [3] = math.huge,
                [4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
    end
)

uiSecs.custom:addButton(
    "Omori",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/Omori_on_frisk.txt",
                true
            )
        )()
    end
)

uiSecs.custom:addButton(
    "Aubrey",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/79654fa56dcced604ed52c0df46b68f8/raw/5c9c8f979f1ff46dc6958111d52f99a203283049/gistfile1.txt",
                true
            )
        )()
    end
)

uiSecs.custom:addButton(
    "X-Gaster",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/6be659c274d44693ce8b3a178780c1a8/raw/7790a49d56a17054802582b9a348a62cceec1030/xgaster",
                true
            )
        )()
    end
)

uiSecs.custom:addButton(
    "HardMode Sans",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/c85fcb9a58660db319916aeeaa0feda6/raw/3e97e7ba2796c69f9ef8797d9b665eff46994a09/gistfile1.txt",
                true
            )
        )()
    end
)

uiSecs.custom:addButton(
    "Last Breath Sans Worse Version",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/fefcaa4ec16dc0f060170c917d095674/raw/cbf895d1b056159b252906251d9c1cab4ab9e5d9/lbfree",
                true
            )
        )()
    end
)

uiSecs.custom:addButton(
    "Last Breath Sans Better Version",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/dcf1d2cba3e41aba065d821726e83601/raw/39867393d7659fa48d0ce52ad313684e54bf4e0b/lbpaid",
                true
            )
        )()
    end
)

uiSecs.custom:addButton(
    "Chara The Fallen Child",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/13f7a6171be730091670f2696f649ab0/raw/65819372dcd4df01e6507dab222347a2fa7fe30b/Ehh",
                true
            )
        )()
    end
)

uiSecs.custom:addButton(
    "Toxic 10 Years Old",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/Toxic_10_year_old_kid.txt",
                true
            )
        )()
    end
)

uiSecs.custom3:addButton(
    "UnderPlayer",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/ff43e66349f779dfc47fdf5ecbfb9782/raw/f9c895e05c374a4b0ac3bf748fd428cb66d78c93/underplayer",
                true
            )
        )()
    end
)

uiSecs.custom2:addButton(
    "Black Goku",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/LiterallyATrueClown/16c718e1feeeb9ada840ede007e80b5a/raw/e5e159a39add912a621a4b2376330c95d87b0647/black%2520goku",
                true
            )
        )()
    end
)

uiSecs.custom:addButton(
    "Carrot God Betty",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/carrot_god_betty_2.lua",
                true
            )
        )()
    end
)

uiSecs.custom3:addButton(
    "Black Goku Admin Version(May be better)",
    function()
        --Music

        game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
        game.Players.LocalPlayer.StarterPlaylist["1Theme"]:Destroy()
        local Sound = Instance.new("Sound")
        Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
        Sound.Volume = 2
        Sound.Playing = true
        Sound.Looped = true
        Sound.SoundId = "rbxassetid://4925150651"
        Sound.Name = "jajaja"

        --Idle

        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4900761581"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)

        --Remove stuff

        local Player = game.Players.LocalPlayer
        local Backpack = Player.Backpack
        Player.Character.CrossBone:Remove()
        Player.Character.CrossBone2:Remove()
        wait()
        --Voice

        game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://4459132147"

        --Red Name

        game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(250, 0, 0)

        --Custom LMB
        local player = game:GetService("Players").LocalPlayer
        local MoveAnimations = player.Backpack.Main.XSansMoves.Animations
        local ClickAnimations = player.Backpack.Main.XSansMoves.ModuleScript.Animations.NormalCombat
        local pass = getrenv()._G.Pass
        local remote = game.ReplicatedStorage.Remotes["Events"]

        ClickAnimations.Light1.AnimationId = "rbxassetid://5770352035"
        ClickAnimations.Light2.AnimationId = "rbxassetid://5770385566"
        ClickAnimations.Light3.AnimationId = "rbxassetid://5770410811"
        ClickAnimations.Light4.AnimationId = "rbxassetid://5770416576"
        ClickAnimations.Light5.AnimationId = "rbxassetid://5770437587"
        MoveAnimations.Block.AnimationId = "rbxassetid://4290724438"

        --Custom attacks

        --Throw + Blaster

        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "x" then
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, 90, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local v1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "CrossBlaster"
                    }
                    local rem = game:GetService("ReplicatedStorage").Remotes.XSansMoves
                    rem:InvokeServer(v1)
                end
            end
        )

        --Throw
        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "c" then
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2.5,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    wait(2)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, 0, 20),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    wait(1)
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    function getlockchar()
                        local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                        return char
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        getlockchar().HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
                    wait(0.2)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 2),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Spin,
                        ["Velocity"] = Vector3.new(0, 0, 70),
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                end
            end
        )
        wait()
        local player = game.Players.LocalPlayer
        repeat
            wait()
        until player.Character.Humanoid
        local humanoid = player.Character.Humanoid
        local mouse = player:GetMouse()

        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://4910106480"

        mouse.KeyDown:connect(
            function(key)
                if key == "c" then
                    local playAnim = humanoid:LoadAnimation(anim)
                    playAnim:Play()
                    wait(2)
                    playAnim:Stop()
                end
            end
        )
        wait()

        --Throw up

        local m = game.Players.LocalPlayer:GetMouse()
        db = true
        m.keyDown:connect(
            function(k)
                k = k:lower()
                if k == "v" then
                    if db == true then
                        wait(0.5)
                        local A_1 = getrenv()._G.Pass
                        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                        local A_3 = {
                            ["HitTime"] = 2.5,
                            ["Type"] = "Normal",
                            ["HitEffect"] = "HeavyHitEffect",
                            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                            ["Damage"] = 10
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                        Event:InvokeServer(A_1, A_2, A_3)
                        wait(1)
                        local A_1 = getrenv()._G.Pass
                        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                        local A_3 = {
                            ["HitTime"] = 1,
                            ["Type"] = "Knockback",
                            ["HitEffect"] = "HeavyHitEffect",
                            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                            ["Velocity"] = Vector3.new(0, 50, 50),
                            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                            ["Damage"] = 40
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                        Event:InvokeServer(A_1, A_2, A_3)
                        db = false
                        wait(0.6)
                        db = true
                    end
                end
            end
        )
        wait()
        local player = game.Players.LocalPlayer
        repeat
            wait()
        until player.Character.Humanoid
        local humanoid = player.Character.Humanoid
        local mouse = player:GetMouse()

        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://4911279815"

        mouse.KeyDown:connect(
            function(key)
                if key == "v" then
                    local playAnim = humanoid:LoadAnimation(anim)
                    playAnim:Play()
                    wait(2)
                    playAnim:Stop()
                end
            end
        )

        --Barrage

        --Throw up + Down then barrage

        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "b" then
                    local Anim = Instance.new("Animation")
                    Anim.AnimationId = "rbxassetid://4910106480"
                    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                    k:Play()
                    k:AdjustSpeed(1)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 2.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, 35, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local Anim = Instance.new("Animation")
                    Anim.AnimationId = "rbxassetid://4521638309"
                    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                    k:Play()
                    k:AdjustSpeed(1)
                    wait(0.5)
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    function getlockchar()
                        local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                        return char
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        getlockchar().HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    wait(0.1)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    function getlockchar()
                        local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                        return char
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        getlockchar().HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
                    wait(0.1)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    function getlockchar()
                        local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                        return char
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        getlockchar().HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                end
            end
        )

        --Barrage thingy

        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "b" then
                    wait(2)
                    local Anim = Instance.new("Animation")
                    Anim.AnimationId = "rbxassetid://4920871999"
                    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                    k:Play()
                    k:AdjustSpeed(1)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "LightHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 3
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                    wait(0.6)
                    local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 1,
                        ["Type"] = "Normal",
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.AreaAttackBurst,
                        ["Velocity"] = Vector3.new(0, -0.1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
                end
            end
        )

        --Second Phase

        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "p" then
                    game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
                    game.Players.LocalPlayer.StarterPlaylist["jajaja"]:Destroy()
                    local Sound = Instance.new("Sound")
                    Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
                    Sound.Volume = 2
                    Sound.Playing = true
                    Sound.Looped = true
                    Sound.SoundId = "rbxassetid://3337357801"
                    Sound.Name = "Second Phase Black Goku"
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Blocking",
                        [3] = true
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Functions
                    Event:InvokeServer(A_1)
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = "NO!",
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
                    wait(1)
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = "I CAN'T LOSE!",
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
                    wait(1.7)
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = "I CAN'T LET YOU WIN!",
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
                    wait(3)
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = "Heh. heh, heh.",
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
                    wait(3.2)
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = "I guess i can stop holding back..",
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
                    wait(2.5)
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = "I can already feel my powers returning.",
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
                    wait(2.5)
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = "I WILL ELIMINATE YOU!",
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
                end
            end
        )

        --Buff attacks
        --Throw down for  barrage
        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "p" then
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    mouse.KeyDown:Connect(
                        function(k)
                            if k == "b" then
                                wait(0.7)
                                local A_1 = getrenv()._G.Pass
                                local A_2 =
                                    game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                                local A_3 = {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Knockback",
                                    ["HitEffect"] = "HeavyHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                                    ["Velocity"] = Vector3.new(0, -0.1, 0),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 40
                                }
                                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                                Event:InvokeServer(A_1, A_2, A_3)
                            end
                        end
                    )
                end
            end
        )

        --Throw up

        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "p" then
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    mouse.KeyDown:Connect(
                        function(k)
                            if k == "v" then
                                wait(0.5)
                                local A_1 = getrenv()._G.Pass
                                local A_2 =
                                    game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                                local A_3 = {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Normal",
                                    ["HitEffect"] = "HeavyHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                                    ["Velocity"] = Vector3.new(0, -0.1, 0),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 10
                                }
                                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                                Event:InvokeServer(A_1, A_2, A_3)
                                wait(1.1)
                                local A_1 = getrenv()._G.Pass
                                local A_2 =
                                    game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                                local A_3 = {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Knockback",
                                    ["HitEffect"] = "HeavyHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                                    ["Velocity"] = Vector3.new(0, 50, 50),
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                                    ["Damage"] = 40
                                }
                                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                                Event:InvokeServer(A_1, A_2, A_3)
                            end
                        end
                    )
                end
            end
        )

        --Throw

        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "p" then
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    mouse.KeyDown:Connect(
                        function(k)
                            if k == "v" then
                                wait(2.1)
                                local A_1 = getrenv()._G.Pass
                                local A_2 =
                                    game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                                local A_3 = {
                                    ["HitTime"] = 2,
                                    ["Type"] = "Knockback",
                                    ["HitEffect"] = "HeavyHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                                    ["Velocity"] = Vector3.new(0, 0, 20),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 40
                                }
                                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                                Event:InvokeServer(A_1, A_2, A_3)
                            end
                        end
                    )
                end
            end
        )

        --Throw + blaster

        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "p" then
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    mouse.KeyDown:Connect(
                        function(k)
                            if k == "v" then
                                wait(0.1)
                                local A_1 = getrenv()._G.Pass
                                local A_2 =
                                    game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                                local A_3 = {
                                    ["HitTime"] = 2,
                                    ["Type"] = "Knockback",
                                    ["HitEffect"] = "HeavyHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                                    ["Velocity"] = Vector3.new(0, 0, 20),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 40
                                }
                                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                                Event:InvokeServer(A_1, A_2, A_3)
                            end
                        end
                    )
                end
            end
        )

        --Idle

        local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "p" then
                    local Anim = Instance.new("Animation")
                    Anim.AnimationId = "rbxassetid://3054144812"
                    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                    k:Play()
                    k:AdjustSpeed(1)
                    wait(13.9)
                    k:Stop()
                    local Anim = Instance.new("Animation")
                    Anim.AnimationId = "rbxassetid://4929570007"
                    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                    k:Play()
                    k:AdjustSpeed(1)
                end
            end
        )
    end
)

uiSecs.custom3:addButton(
    "TUSK_ACT_4",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/firmare.txt", true)
        )()
    end
)

uiSecs.custom3:addButton(
    "Firmare",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/ClownThingies/main/firmare.txt", true)
        )()
    end
)

uiSecs.Credit:addButton("Creator: Best Clown Ever#8417")
uiSecs.Credit:addButton("Helper: Reaper-_-#1829, tobe#2046")
uiSecs.Credit:addButton("DM Best Clown Ever#8417 if bugs or errors")

venyx:SelectPage(venyx.pages[1], true)
local theme = venyx:addPage("Ui Change", 5012544693)
local colors = theme:addSection("Color", 5012544693)

for theme, color in pairs(themes) do
    colors:addColorPicker(
        theme,
        color,
        function(color3)
            venyx:setTheme(theme, color3)
        end
    )
end

local section1 = theme:addSection("UI")

section1:addKeybind(
    "Toggle Keybind",
    Enum.KeyCode.RightControl,
    function()
        venyx:toggle()
    end
)