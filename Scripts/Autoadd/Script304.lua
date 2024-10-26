local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window = Library.CreateLib("TITLE", "GrapeTheme")

local Tab = Window:NewTab("Steve")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Steve.Remotes.TNT:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = 0.23651869199966313
}

game:GetService("ReplicatedStorage").Characters.Steve.Remotes.BowShoot:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = 23.571313560001727
}

game:GetService("ReplicatedStorage").Characters.Steve.Remotes.BowShoot:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Steve.Remotes.Mine:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Steve.Remotes.FireCounter:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Steve.Remotes.BlockPlace:FireServer(unpack(args))

end)

local Tab = Window:NewTab("Anakin")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Anakin.Remotes.DropKickRem:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Anakin.Remotes.ChargeStart:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Anakin.Remotes.SlashRelease:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Anakin.Remotes.ForcePush:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Anakin.Remotes.Counter:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Anakin.Remotes.Finisher:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Anakin.Remotes.Rage:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Anakin.Remotes.ForceHold:FireServer()

end)

local Tab = Window:NewTab("Joe")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Joe.Remotes.BugsSlam:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Joe.Remotes.ChokeSlam:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Joe.Remotes.StabCounter:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Joe.Remotes.TheCage:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Joe.Remotes.Finisher:FireServer()

end)

local Tab = Window:NewTab("Springbonnie")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Springbonnie.Remotes.Assist:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Springbonnie.Remotes.Cupcake:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Ghostface.Remotes.CounterStab:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Ghostface.Remotes.Finisher:FireServer()

end)

local Tab = Window:NewTab("Vecna")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Vecna.Remotes.ArmBreak:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Vecna.Remotes.TelePunch:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Vecna.Remotes.WindExplosion:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Vecna.Remotes.ElevenFinisher:FireServer(unpack(args))

end)

local Tab = Window:NewTab("Pibby")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Pibby.Remotes.Glitch:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Pibby.Remotes.HeartBeam:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Pibby.Remotes.Finisher:FireServer()

end)

local Tab = Window:NewTab("Spider Man")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.SpiderMan.Remotes.TrippleShot:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.SpiderMan.Remotes.DownSlam:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.SpiderMan.Remotes.ElectricWebs:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.SpiderMan.Remotes.TomFinisher:FireServer()

end)

local Tab = Window:NewTab("Luffy")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Luffy.Remotes.Pistol:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Luffy.Remotes.Gatling:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Luffy.Remotes.Bell:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Luffy.Remotes.GrabStretch:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Luffy.Remotes.Balloon:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Luffy.Remotes.Finisher:FireServer(unpack(args))

end)

local Tab = Window:NewTab("A Tarin")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters:FindFirstChild("A-Train").Remotes.BellyPunch:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters:FindFirstChild("A-Train").Remotes.BehindYou:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters:FindFirstChild("A-Train").Remotes.Hammer:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters:FindFirstChild("A-Train").Remotes.Grab:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("A-train").Inject:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters:FindFirstChild("A-Train").Remotes.Finisher:FireServer()

end)

local Tab = Window:NewTab("Homelander")

local Section = Tab:NewSection("Skill")

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Homelander.Remotes.LaserEyes:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Homelander.Remotes.EarClap:FireServer()

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Homelander.Remotes.ThrowDown:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("Players").LocalPlayer.Character.Homelander.Milk:FireServer(unpack(args))

end)

Section:NewButton("", "ButtonInfo", function()
game:GetService("ReplicatedStorage").Characters.Homelander.Remotes.Finisher:FireServer()

end)