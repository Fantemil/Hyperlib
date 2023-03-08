--Jitter1337
--DrWaffles

local plr = game.Players.LocalPlayer;
local TruckFullClone = plr.PlayerGui.ShopGui.Frame.ScrollingFrame["Jalopy"]:Clone();
function ExtraVehicles()
    plr.PlayerGui.ShopGui.Frame.ScrollingFrame['Scout_Car'].Visible = true;
    TruckFullClone.Parent = plr.PlayerGui.ShopGui.Frame.ScrollingFrame;
    TruckFullClone.Name = "Truck Full";
    TruckFullClone.Text = "Truck Full";
end
ExtraVehicles();
task.wait();
plr.PlayerGui.ShopGui.Frame.ScrollingFrame["Truck Full"].MouseEnter:Connect(function()
    game:GetService("ReplicatedStorage").CarViewmodels["Truck Full"].Parent = plr.PlayerGui.ShopGui.Frame.ViewportFrame;
end);
plr.PlayerGui.ShopGui.Frame.ScrollingFrame["Truck Full"].MouseLeave:Connect(function()
    plr.PlayerGui.ShopGui.Frame.ViewportFrame["Truck Full"].Parent = game:GetService("ReplicatedStorage").CarViewmodels;
end);
plr.PlayerGui.ShopGui.Frame.ScrollingFrame["Truck Full"].MouseButton1Click:Connect(function()
    local args = {[1]=0,[2]="Truck Full"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    plr.PlayerGui.ShopGui.Frame.Visible = false;
end);