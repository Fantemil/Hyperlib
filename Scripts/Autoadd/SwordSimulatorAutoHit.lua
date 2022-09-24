local plr = game.Players.LocalPlayer
local hit = game.ReplicatedStorage.Remotes.Gameplay.FireHit

local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")

local toggled = false
local db = false

game.StarterGui:SetCore("SendNotification", {
   Title = "Notification",
   Text = "Kill All Disabled, F to toggle",
   Duration = 3
})

uis.InputBegan:Connect(function(key, gpe)
   if not gpe and key.KeyCode == Enum.KeyCode.F then
       plr.PlayerGui.CoinEffects.Enabled = false
       
       if not toggled then
           toggled = true
           
           game.StarterGui:SetCore("SendNotification", {
               Title = "Notification",
               Text = "Kill All Enabled",
               Duration = 2
           })
       elseif toggled then
           toggled = false
           
           game.StarterGui:SetCore("SendNotification", {
               Title = "Notification",
               Text = "Kill All Disabled",
               Duration = 2
           })
       end
   end
end)

rs.Stepped:Connect(function()
   if toggled then
       for i,v in pairs(workspace.Mobs:GetDescendants()) do
           if not db and v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
               db = true
               hit:FireServer(v, v.HumanoidRootPart.Position)
               task.wait()
               db = false
           end
       end
   end
end)