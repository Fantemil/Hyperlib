local message = "text here"

while true do
task.wait(0.1)
for i, v in pairs(game.Players:GetPlayers()) do
if v.Character ~= nil and v.Character:FindFirstChild("Sign") then
        v.Character.Sign.UpdateSign:FireServer(message)
    end
end
end