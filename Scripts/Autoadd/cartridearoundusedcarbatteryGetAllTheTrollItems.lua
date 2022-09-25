local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("cart ride around used car battery")

local serv = win:Server("Preview", "")

local btns = serv:Channel("Buttons")

btns:Button("Teleport to troll items", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-620, 157, 698)
DiscordLib:Notification("Notification", "Teleported to troll items!", "Okay!")
end)

btns:Seperator()

btns:Button("Teleport to winner island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-613, 162, 676)
DiscordLib:Notification("Notification", "Teleported to winner island!", "Okay!")
end)

serv:Channel("by Aspectz#0001")