 local players = game:GetService("Players");
local runservice = game:GetService("RunService");

local localplayer = players.LocalPlayer;


local meleeevent = game.ReplicatedStorage.meleeEvent;
local signal = loadstring(game:HttpGet("https://raw.githubusercontent.com/Quenty/NevermoreEngine/version2/Modules/Shared/Events/Signal.lua"))();
local attacking = signal.new();
local queue = {cancontinue = false};


attacking:Connect(function(plr, char)
    local killed = false;
    local killedcon; killedcon = plr.CharacterRemoving:Connect(function()
        killed = true;
        queue.cancontinue = true;
        killedcon:Disconnect();
        killedcon = nil;
    end);
    local step; step = runservice.Heartbeat:Connect(function()
        if killed then
            step:Disconnect();
            step = nil;
        end
        if char:FindFirstChild("Head") and localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
            localplayer.Character.HumanoidRootPart.CFrame = char.Head.CFrame + Vector3.new(0, localplayer.Character.Humanoid.HipHeight, 0);
            meleeevent:FireServer(plr);
        end
    end);
end);

for i,v in pairs(players:GetPlayers()) do
    if v ~= localplayer then
        if v.Character and localplayer.Character and v.Character:FindFirstChild("Head") and localplayer.Character:FindFirstChild("HumanoidRootPart") then
            attacking:Fire(v, v.Character);
            repeat
                runservice.Heartbeat:Wait();
            until queue.cancontinue;
            queue.cancontinue = false;
        end
    end
end