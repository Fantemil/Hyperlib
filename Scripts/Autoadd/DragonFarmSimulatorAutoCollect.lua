_G.Enabled = true

local plr = game.Players.LocalPlayer
local collect = game:GetService("ReplicatedStorage").Remotes.CollectEgg
local tycoon; for i,v in pairs(workspace.Tycoons:GetChildren()) do
   local farmSignText = v.OwnerSign.farmName.SurfaceGui.Frame.TextLabel.Text
   if farmSignText:lower():find(plr.Name:lower()) then
       tycoon = v
   end
end

if not tycoon then
   game.StarterGui:SetCore("SendNotification", {
       Title = "Error",
       Text = "Claim a tycoon first! Execute again once you have one.",
       Duration = 3
   })
   return
end

while _G.Enabled do
   for i,v in pairs(tycoon.Eggs:GetChildren()) do
       collect:FireServer(v)
   end
   task.wait()
end