-- coded by stiizzycat

local playername = "Benji_UwO" --- playername


local args = {
   [1] = workspace:FindFirstChild(playername).Torso.Position
}

game:GetService("Players").LocalPlayer.Character.Tomato.Remote:FireServer(unpack(args))