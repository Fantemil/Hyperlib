local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Shit hub", "GrapeTheme")


local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Get Infinite Yield", "infinite yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewButton("Random ass fe script", "Useless description", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/0QfjMKrF"))()
end)

MainSection:NewButton("Give shitty Client Btools", "Gives you clientsided btools", function()
    a = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
a.BinType = 2
b = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
b.BinType = 3
c = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
c.BinType = 4
end)

MainSection:NewToggle("Toggle JumpPower", "Get high or low jumppower!", function(state)
    if state then
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = 100
    else
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = 50    
        end
end)

MainSection:NewToggle("Toggle Hyperspeed", "Be very fast or get normal speed", function(state)
    if state then
        _G.WS = "99";
				local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
				Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = _G.WS;
				end)
				Humanoid.WalkSpeed = _G.WS;
    else
        _G.WS = "16";
				local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
				Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = _G.WS;
				end)
				Humanoid.WalkSpeed = _G.WS;
    end
end)

local Scnd = Window:NewTab("Misc")
local ScndSection = Scnd:NewSection("Keybinds")



ScndSection:NewKeybind("ToggleUi", "KeybindInfo", Enum.KeyCode.H, function()
	Library:ToggleUI(H)
end)

ScndSection:NewKeybind("Shit fling script ", "Hitboxes needed", Enum.KeyCode.F, function()
	power = 500 -- change this to make it more or less powerful
 
game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)
 
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)

local THRD = Window:NewTab("Other guis")
local THRDSection = THRD:NewSection("Other Guis (NOT MINE)")

THRDSection:NewLabel("Prison life")

THRDSection:NewButton("PrevaliX + Admin", "WARNING THESE GUIS ARE NOT MINE!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife", true))()

loadstring(game:HttpGet("https://pastebin.com/raw/mHfK0Xk4", true))()
end)

THRDSection:NewLabel("Da hood")

THRDSection:NewButton("DaHood Faded script", "Da hood script made by 097YT!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic", true))()
end)

THRDSection:NewLabel("Rate My Avatar")

THRDSection:NewButton("Rate my avatar script", "A script for rate my avatar!", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/1tyre/my-pile-of-stuff/main/lua/tyresbucketstealer.lua"),true))()
end)

THRDSection:NewLabel("Blox Fruits")

THRDSection:NewButton("Master hub (blox fruits)", "Master hub is a script hub for blox fruits!!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/masterhubv311/itachi/Main.lua"))()
end)

local Four = Window:NewTab("Credits")
local FourSection = Four:NewSection("Credits to-")

FourSection:NewLabel("Creator of this shit script: Orchi")

FourSection:NewLabel("Version: 0.0")

FourSection:NewLabel("Thanks for using!")