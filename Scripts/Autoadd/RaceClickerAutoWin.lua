while true do
   wait(0.5)
spawn(function()
local args = {
   [1] = "/w MostGoatedGamer booga",
   [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

for i,v in pairs(game:GetService("Workspace").Environment:GetDescendants()) do
if v:IsA("TouchTransmitter") then

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)

end
end
end)
end