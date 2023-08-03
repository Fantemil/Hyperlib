-- discord.gg/piqu
local key = Enum.KeyCode.G
local words = {
  "word 1",
  "word 2",
  "word 3",
}

game:GetService("UserInputService").InputBegan:Connect(function(input)
  if input.KeyCode == key then
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(words[math.random(1, table.getn(words))], "All")
  end
end)