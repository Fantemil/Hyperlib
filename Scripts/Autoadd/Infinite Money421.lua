local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/inceldom/kinx/main/ui'))()

local win = UILib:Window("Evil Dragon lol (Candy Speed Simulator",Color3.fromRGB(44, 120, 224), Enum.KeyCode.LeftControl)


local MainSection = win:Tab("Main")
local CreditsSection  = win:Tab("Credits")




MainSection:Button("Infinit Money", function()
    workspace.MainEvent.MONEY:FireServer()
end)

MainSection:Button("Sell", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.256729, 5.92802191, -1023.79401, 0.991708577, -7.66481989e-09, -0.128507137, 2.18200036e-08, 1, 1.08743102e-07, 0.128507137, -1.10645495e-07, 0.991708577)
end)


CreditsSection:Button("Mad by Evil Dragon#1000 aka me yeah")