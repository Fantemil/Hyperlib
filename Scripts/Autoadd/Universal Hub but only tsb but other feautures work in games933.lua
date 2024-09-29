local PabloLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BatuKvi123/PabloLibV3/main/PabloLibV3"))()
local window = PabloLib:Create("Universal Hub(by sirenc00kid on discord)")

---Tabs---

local tab1 = window:CreateTab("Admin Commands")
local tab2 = window:CreateTab("Test")

---buttons---

tab1:CreateButton("Infinite Yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

tab2:CreateButton("The Strongest Battleground KJ", function()
tab1:CreateButton("Infinite Yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)()
end)


tab1:CreateTextbox("Change your Speed", function(a)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
print(a)
end)

tab1:CreateTextbox("Change your Jumppower", function(a)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = a
print(a)
end)

tab2:CreateButton("test if work", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

---WARNING---

tab1:CreateWarning("Warning")