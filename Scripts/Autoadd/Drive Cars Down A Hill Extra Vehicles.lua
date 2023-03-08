--Jitter1337
--Glitch

local plr = game.Players.LocalPlayer;
local RockCrawlerClone = plr.PlayerGui.ShopGui.Frame.ScrollingFrame["Jalopy"]:Clone();
local V2Clone = game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.Frame.ScrollingFrame.Roadster.V2:Clone();

function ExtraVehicles()
    RockCrawlerClone.Parent = plr.PlayerGui.ShopGui.Frame.ScrollingFrame;
    RockCrawlerClone.Name = "RockCrawler";
    RockCrawlerClone.Text = "Rock Crawler";
    V2Clone.Parent = RockCrawlerClone;
end

ExtraVehicles();

task.wait();

plr.PlayerGui.ShopGui.Frame.ScrollingFrame["RockCrawler"].MouseEnter:Connect(function()
    game:GetService("ReplicatedStorage").CarViewmodels["RockCrawler"].Parent = plr.PlayerGui.ShopGui.Frame.ViewportFrame;
end);
plr.PlayerGui.ShopGui.Frame.ScrollingFrame["RockCrawler"].MouseLeave:Connect(function()
    plr.PlayerGui.ShopGui.Frame.ViewportFrame["RockCrawler"].Parent = game:GetService("ReplicatedStorage").CarViewmodels;
end);
plr.PlayerGui.ShopGui.Frame.ScrollingFrame["RockCrawler"].MouseButton1Click:Connect(function()
    local args = {[1]=0,[2]="RockCrawler"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    plr.PlayerGui.ShopGui.Frame.Visible = false;
end);