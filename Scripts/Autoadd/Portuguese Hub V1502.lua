local window = PabloLib:Create(
"Portuguese Hub V1ð§ð·ðµð¹", -- Name here.
"Enabled", -- If you want draggable set here to "Enabled" if you dont want set to "Disabled".
"p" -- You can put any keybind here to open close.
)

local tab1 = window:CreateTab("Adminware")

tab1:CreateButton("adminware by obeskit", function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/obeskit/Adminware/main/Adminware
end)


   tab1:CreateTextbox("Change Speed", function(a)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
print(a)
end)

tab1:CreateTextbox("Change JPP", function(a)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = a
print(a)
end)