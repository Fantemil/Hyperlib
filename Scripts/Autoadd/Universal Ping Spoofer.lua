local PerformanceStats = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats");
local PingLabel;
for I, Child in next, PerformanceStats:GetChildren() do
    if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
        PingLabel = Child.StatsMiniTextPanelClass.ValueLabel;
        break;
    end;
end;

local text = "spoof"; 
PingLabel:GetPropertyChangedSignal("Text"):Connect(function()
    PingLabel.Text = "99 ms"; -- change this
end);
PingLabel.Text = "99 ms"; -- change this