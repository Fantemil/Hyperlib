local uis = game:GetService("UserInputService")


uis.InputBegan:Connect(function(key, gpe)
   if not gpe and key.KeyCode == Enum.KeyCode.Q then
       local pwr = game.Players.LocalPlayer.PlayerGui.Power.PowerFrame
       
       repeat task.wait() until pwr.Percent.Text:find("100")
       keyrelease(0x51)
       repeat task.wait() until not pwr.Visible
       pwr.Percent.Text = "0%"
   end
end)