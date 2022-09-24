local root = game:GetService("Players").LocalPlayer.Character.PrimaryPart;
local network = getsenv(game:GetService("ReplicatedStorage").Modules.Core.Network);
local events = getupvalue(rawget(network, "GetEventHandler"), 1);
local bmx_checkpoints = workspace.BikeSystem.Checkpoints;
local bmx_finish = bmx_checkpoints[#bmx_checkpoints:GetChildren()];
local bmx_characters = workspace.BikeSystem.Characters;
local golden_shoe_id = "rbxassetid://9494850451";

--[[
-- renames remotes to their proper name, uncomment if you want to use hydroxide i guess.
for name, data in pairs(events) do
   local remote = data.Remote;
   
   if remote then
       remote.Name = name;
   end
end
]]

local function gather_shoes()
   for _, shoe in ipairs(workspace:GetDescendants()) do
       if shoe:IsA("MeshPart") and shoe.MeshId == golden_shoe_id then
           firetouchinterest(root, shoe, 0);
           firetouchinterest(root, shoe, 1);
           task.wait(1);
       end
   end
end

local function obliterate_breakdance_and_get_free_elo_slash_exp_basically_what_happens_is_you_win()
    events["updateMinigameStateOnServer"].Remote:FireServer(4);
    events["HidePlayerForOthers"].Remote:FireServer();
    task.wait(2);
    events["breakdanceEnd"].Remote:FireServer(69420e12 + tick()); -- beat that poopfartination guy
    events["updateMinigameStateOnServer"].Remote:FireServer(1);
    events["UnhidePlayerForOthers"].Remote:FireServer();
end

local function win_bmx()
   events["BMX_REQUEST_QUICK_START"].Remote:FireServer();
   events["RequestSync"].Remote:FireServer();
   local root = bmx_characters.ChildAdded:Wait():WaitForChild(root.Parent.Name);
   
   task.wait(7);
   local wait_time = 1.5 / #bmx_checkpoints:GetChildren();
   for i = 1, 3 do
       for i2 = 1, #bmx_checkpoints:GetChildren() do
           local checkpoint = bmx_checkpoints[i2];
           print(checkpoint);
           firetouchinterest(root, checkpoint, 0);
           firetouchinterest(root, checkpoint, 1);
           task.wait(wait_time);
       end
   end
   
   for i = 1, 12 do
       task.wait(1/15);
       firetouchinterest(root, bmx_finish, 0);
       firetouchinterest(root, bmx_finish, 1);
   end
   
   for _ = 1, 3 do -- didnt test without, dont care.
       events["updateMinigameStateOnServer"].Remote:FireServer(1);
   end
end

local function win_parkour()
   events["PARKOUR_QUICK_START"].Remote:FireServer();
   events["updateMinigameStateOnServer"].Remote:FireServer(2);
   task.wait(0.75);
   events["updateMinigameStateOnServer"].Remote:FireServer(1);
   events["ExitCourse"].Remote:FireServer();
end

obliterate_breakdance_and_get_free_elo_slash_exp_basically_what_happens_is_you_win();
win_parkour();
gather_shoes();
--win_bmx();