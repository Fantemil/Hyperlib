local Key = "E"
local Toggle = false

wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "By Spiritual#7383";
Text = "Press E to turn on/off.";
Duration = 5;
})

game:GetService("UserInputService").InputBegan:Connect(function(keyobject, variable)
   if keyobject.KeyCode == Enum.KeyCode[Key] and not variable then
       Toggle = not Toggle
   end
end)


game:GetService('RunService').Stepped:connect(function()
   if Toggle then
game:GetService("ReplicatedStorage").GiveCoins:FireServer()


   end
end)