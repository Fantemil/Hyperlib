local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local win = DiscordLib:Window("Developer: MakerScript | Discord: modle#8800")
local serv = win:Server("Free Items Event!", "")
local School = serv:Channel("Roblox High School 2 [free items]")

School:Button("Step 1: Teleport Game [If you are in the game then step2 click]", function()
    local T = game:GetService("TeleportService")
    T:Teleport(2098516465)
end)

School:Button("Step 2: Script [enter the white door next to you]" , function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6041.89062, -3463.00317, -2407.52515, 0.194168791, 4.55482763e-10, 0.980968118, -1.35596079e-09, 1, -1.95926345e-10, -0.980968118, -1.29211153e-09, 0.194168791)
end)