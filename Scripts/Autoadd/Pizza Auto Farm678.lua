--Made By: Shag420

local plr = game.Players.LocalPlayer
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
        prompt.HoldDuration = -1
end)
while task.wait() do
repeat
plr.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Jobs["Pizza Delivery"].Pizzas.Pizza1.CFrame
fireproximityprompt(game.Workspace.Map.Jobs["Pizza Delivery"].Pizzas.Pizza1.ProximityPrompt,1)
task.wait()
until plr.Character:FindFirstChild("Pizza")
repeat
for i,v in next, game.Workspace.Map.Jobs["Pizza Delivery"].PizzaCharacters:GetChildren() do
if string.find(game.Players.LocalPlayer.PlayerGui.PizzaDeliveryFrame.TextLabel.Text, v.Name) then
plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
end
end
task.wait() 
until plr.Character:FindFirstChild("Pizza") == nil
end