local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Win = ReplicatedStorage:FindFirstChild("Win")

if Win then
    local lplr = game.Players.LocalPlayer
    local current = 30 - lplr.leaderstats.Level.Value
    for i = current, 32 do
        Win:FireServer(i)
        wait(0.75)
    end
else
    warn("Win object not found in ReplicatedStorage.")
end

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "More scripts!",
	Text = "t.me/arceusxscripts",
    Duraction = 10
})