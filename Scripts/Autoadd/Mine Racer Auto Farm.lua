wait(3)

_G.on = true while _G.on do wait()
local string_1 = "Mine";
local Target = game:GetService("ReplicatedStorage").Remotes.mineEvent;
Target:FireServer(string_1);

local string_1 = "Join";
local Target = game:GetService("ReplicatedStorage").Remotes.joinEvent;
Target:FireServer(string_1);

local string_1 = "Cooldown";
local Target = game:GetService("ReplicatedStorage").Remotes.upgradeEvent;
Target:FireServer(string_1);

local string_1 = "Dig";
local Target = game:GetService("ReplicatedStorage").Remotes.upgradeEvent;
Target:FireServer(string_1);
end