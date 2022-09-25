 _G.AutoCollect = true
_G.Overlay = false

if _G.Overlay then
   game:GetService("Players").LocalPlayer.PlayerGui.Interface.Money.Money.Background.MoneyFrame.MoneyImage.Visible = true
else
   game:GetService("Players").LocalPlayer.PlayerGui.Interface.Money.Money.Background.MoneyFrame.MoneyImage.Visible = false
end

local args = {
   [1] = "RequestCollectCash"
}

while wait(1) do
   if _G.AutoCollect then
       game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
   end
end