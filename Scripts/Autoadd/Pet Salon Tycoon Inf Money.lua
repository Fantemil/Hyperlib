while true do
local args = {
   [1] = game:GetService("ReplicatedStorage").Items.Furnitures:FindFirstChild("Styling Stations"):FindFirstChild("Expert Styling Station")
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ShopService.SellItem:InvokeServer(unpack(args))
end