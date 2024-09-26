-- Spoofing your ping (just visual)
local PerfStats = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats");
local PingLabel;
for I, Child in next, PerfStats:GetChildren() do
    if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
        PingLabel = Child.StatsMiniTextPanelClass.ValueLabel;
        break;
    end;
end;

local text = "0 ms";
PingLabel:GetPropertyChangedSignal("Text"):Connect(function()
    PingLabel.Text = text;
end);
PingLabel.Text = text;