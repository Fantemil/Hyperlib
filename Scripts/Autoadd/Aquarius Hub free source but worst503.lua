local Library = loadstring(game:HttpGet("https://pastebin.com/raw/Q69rcHsK"))()
local Window = Library.CreateLib("Aquarius Hub [Free Open Source + Not many Function]", "Synapse")

local Tab = Window:NewTab("Boring Stuff")

local Section = Tab:NewSection("Effects")

Section:NewButton("Black Flash", "Activates a massive black flash effect", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/kMZJF27h"))()
end)

Section:NewButton("Black Flash AURA", "Can't be disabled, just rejoin", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4jVHNua4"))()
end)

local Section = Tab:NewSection("Player")

Section:NewButton("Speed Boost", "Boosts your speed by 5% using CFrame", function()
    function isNumber(str)
 
  if tonumber(str) ~= nil or str == 'inf' then
 
    return true
 
  end
 
end
 
local tspeed = 0.3
 
local hb = game:GetService("RunService").Heartbeat
 
local tpwalking = true
 
local player = game:GetService("Players")
 
local lplr = player.LocalPlayer
 
local chr = lplr.Character
 
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
 
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
 
  if hum.MoveDirection.Magnitude > 0 then
 
    if tspeed and isNumber(tspeed) then
 
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
 
    else
 
      chr:TranslateBy(hum.MoveDirection)
 
    end
 
  end
 
end
end)

local Tab = Window:NewTab("Spawn Animations")
local Section = Tab:NewSection("Spawn Animations")
Section:NewButton("The Strongest Hero", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957366251"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Hero Hunter", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957376722"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Destructive Cyborg", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957374019"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Deadly Ninja", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957361339"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Brutal Demon", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957371124"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Blade Master", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15983615423"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Martial Artists", "Spawn Animation", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18435303746"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)

local Tab = Window:NewTab("Ultimates")
local Section = Tab:NewSection("Ultimates")
Section:NewButton("The Strongest Hero", "SERIOUS MODE", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://12447707844"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Hero Hunter", "RAMPAGE", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://12342141464"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Destructive Cyborg", "MAXIMUM ENERGY OUTPUT", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://12772543293"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)

Section:NewButton("Deadly Ninja", "SPEED OF SOUND", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://13499771836"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()
wait(2.3)
game.Players.LocalPlayer.Character.Head.Transparency = 1
game.Players.LocalPlayer.Character.Torso.Transparency = 1
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
game.Players.LocalPlayer.Character.Head.face.Transparency = 1
wait(2)
game.Players.LocalPlayer.Character.Head.Transparency = 0
game.Players.LocalPlayer.Character.Torso.Transparency = 0
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 0
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0
game.Players.LocalPlayer.Character.Head.face.Transparency = 0
local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13497875049"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()
end)
Section:NewButton("Brutal Demon", "PUMPED UP", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14733282425"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Blade Master", "SCORCHING BLADE", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://15391323441"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)
Section:NewButton("Wild Psychic", "BERSERK", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16734584478"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)
Section:NewButton("KJ", "20 SERIES", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QSQysq1J"))()
end)


local plr = game.Players.LocalPlayer
local hotbar = plr.PlayerGui.Hotbar.Backpack.Hotbar
local ult = plr.PlayerGui.ScreenGui.MagicHealth.TextLabel
local ability1 = hotbar:FindFirstChild("1")
local ability2 = hotbar:FindFirstChild("2")
local ability3 = hotbar:FindFirstChild("3")
local ability4 = hotbar:FindFirstChild("4")

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Moveset Customizer")

Section:NewTextBox(ability1.Base.ToolName.Text, "First Move", function(txt)
	ability1.Base.ToolName.Text = txt
end)

Section:NewTextBox(ability2.Base.ToolName.Text, "Second Move", function(txt)
	ability2.Base.ToolName.Text = txt
end)

Section:NewTextBox(ability3.Base.ToolName.Text, "First Move", function(txt)
	ability3.Base.ToolName.Text = txt
end)

Section:NewTextBox(ability4.Base.ToolName.Text, "Second Move", function(txt)
	ability4.Base.ToolName.Text = txt
end)

local Section = Tab:NewSection("Ultimate Customizer")

Section:NewTextBox(ult.Text, "Ultimate Name", function(txt)
	ult.Text = txt
end)

local Section = Tab:NewSection("Fake Characters")

Section:NewLabel("These characters cannot be removed or disabled, rejoin.")

Section:NewButton("Skibidi Toilet", "SKIBIDI GOD", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tUDRcKB8"))()
end)

Section:NewButton("KJ", "20 SERIES", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ivnuieqY"))()
end)

Section:NewButton("A-Train", "I CANT STOP", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jE8YSAeQ"))()
end)

local Section = Tab:NewSection("Emotes")
Section:NewButton("Applause", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14056379526"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Kneel", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13721154327"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("L", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18231574269"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Bully", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14014580605"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Sleepy", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14348083862"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Bring it", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13801083337"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Section:NewButton("Tornado", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18459285150"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)

local Tab = Window:NewTab("Info")
local Section = Tab:NewSection("About")

Section:NewLabel("Youtube: l0ckerV5")
Section:NewLabel("Discord: l0ckerV5")