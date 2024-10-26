local game = game;
local player = game:GetService("Players").LocalPlayer;
local ability = player.Data.Ability.Value;
local knit_services = game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services;
local CheckDialogue = knit_services.DialogueService.RF.CheckDialogue;
local PickedUpSword = knit_services.AdventureService.RF.PickedUpSword;
local ascend = knit_services.LevelService.RF.AscendAbility;


local invokeserver = PickedUpSword.InvokeServer;
local spawn = task.spawn;

if (getgenv().farm) then
      getgenv().farm:Disconnect();
end;
getgenv().farm = game:GetService('RunService').Heartbeat:Connect(function()
    spawn(function()
            invokeserver(CheckDialogue, "Zoros_Swords_Adventure");
            invokeserver(PickedUpSword);
            invokeserver(ascend,ability);
    end);
end);
