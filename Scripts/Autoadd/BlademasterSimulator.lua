 _G.Toggle = false

game.Players.LocalPlayer.PlayerGui.Initializer.Modules.StatHandler.Coins.Visible = false

game:GetService("RunService").RenderStepped:Connect(function()
if _G.Toggle == false then
game:GetService("ReplicatedStorage").Remotes.WeaponSwing:FireServer()
game:GetService("ReplicatedStorage").Remotes.GuiEvent:FireServer("Sell")
local RandomN = math.random(1,3)
if RandomN == 3 then
game:GetService("ReplicatedStorage").Remotes.BuyRemote:InvokeServer("Weapon Crate","WeaponShop1","2")
end
end
end)