-- join discord.gg/proxihub for more scripts... please... i need members
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(-3171.80615, 8.30275154, 24.0737953, 0, 0, -1, 0, 1, 0, 1, 0, 0))
_G.Win = true

while _G.Win == true do
local args = { 
    [1] = true
}
game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Event"):WaitForChild("Game"):WaitForChild("[C-S]PlayerPKEnd"):FireServer(unpack(args))
wait()
end