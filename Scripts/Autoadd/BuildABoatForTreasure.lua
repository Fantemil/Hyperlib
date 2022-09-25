 spawn(function()
local guiinf = game:GetService("Players").LocalPlayer.PlayerGui.BuildGui.InventoryFrame.ScrollingFrame.BlocksFrame
_G.Blocks = false
while game:GetService("RunService").RenderStepped:wait() do
   if _G.Blocks then return end
       for i,v in pairs(guiinf:GetDescendants()) do
               if v.Name == "AmountText" then
               v.Text = math.huge
           end
       end
   end
end)