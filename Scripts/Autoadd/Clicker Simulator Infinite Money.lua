local plr = game:GetService("Players").LocalPlayer
local clientEvents = game:GetService("ReplicatedStorage").Bindable.Client

local boosts = plr.Boosts
boosts.DoubleClicks.isActive.Value = true
boosts.AutoClick.isActive.Value = true


clientEvents.slowAutoClickerToggle:Fire(true);
clientEvents.autoClickerToggle:Fire(true);

while true do
    task.wait()
    getrenv()._G.zoneMultiplier = (9e99) * 1000000
end