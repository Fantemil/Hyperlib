_G.isRunningFarm = true;

local vim = game:GetService("VirtualInputManager");
local plr = game:GetService("Players").LocalPlayer;
local gameRegion = game:GetService("Workspace").Regions;

local function click() -- Unsure if different resolutions affect this, good luck!
   vim:SendMouseButtonEvent(0, 0, 0, true, game, 0);
   vim:SendMouseButtonEvent(0, 0, 0, false, game, 0);
end;

local function startFarm(reg)
   pcall(function() -- Couldn't be bothered to find out why the game was randomly causing the script to throw an error for no reason.
       for i,v in pairs(gameRegion[reg].Entities:GetChildren()) do
           if v.Name ~= plr and v.Humanoid.Health > 0 then
               plr.Character.HumanoidRootPart.CFrame = CFrame.new(v.PrimaryPart.CFrame.Position);
               click();
           end;
       end;
   end);
end;


local function startCollect()
    for i, v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
        if v:FindFirstChild("ProximityPrompt") then
            fireproximityprompt(v.ProximityPrompt);
        end;
    end;
end;


if plr.Character.Hitbox:FindFirstChild("HitboxTop") then
   for i,v in pairs(plr.Character.Hitbox:GetChildren()) do
       v:Remove(); --This is all it takes for god mode, you can also delete the folder instead of a for loop.
   end;
end;

while _G.isRunningFarm do
   task.wait(1);--Changing this will modify the teleport speed
   startCollect();
   if plr.Character.State.region.Value == "KnightsDungeonRegion" then
       startFarm("KnightsDungeon");
   else
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(356, 29, -136);
       repeat
           task.wait(1);
           --print'debug';
           startCollect();
           if string.match(game:GetService("Workspace").Dungeons.DungeonEntrances.KnightsDungeon.CountdownUiHolder.CountdownHolder.ActionLabel.Text, "COOLDOWN") then
               startFarm("Lava");
           end;
       until game:GetService("Workspace").Dungeons.DungeonEntrances.KnightsDungeon.CountdownUiHolder.CountdownHolder.ActionLabel.Text == "WAITING FOR PLAYERS ..." or plr.Character.State.region.Value == "KnightsDungeonRegion" or _G.isRunningFarm == false;
   end;
end;