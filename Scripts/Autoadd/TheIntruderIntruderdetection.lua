local player = game.Players.LocalPlayer
local playerui = player.PlayerGui
print("Loaded!")

task.spawn(function()
while task.wait(1.9) do
if playerui.Outside.Frame.Close.Visible == true then
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "The intruder is at the fuse box\n(KINDA SAFE)";
    Text = " ";
    Duration = 2;
});
elseif playerui.FrontDoor.Frame.Close.Visible == true then
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "The intruder is at the frontdoor\n(SAFE)";
    Text = " ";
    Duration = 2;
});
elseif playerui.Street.Frame.Close.Visible == true then
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "The intruder is at the street\n(SAFE)";
    Text = " ";
    Duration = 2;
});
elseif playerui.Hallway.Frame.Close.Visible == true then
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "The intruder is close \nCLOSE THE LIGHTS AND HIDE\n(DANGER)";
    Text = " ";
    Duration = 2;
})
elseif playerui.Vent.Frame.Close.Visible == true then
        game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "The intruder is at the vents\nCLOSE THE LIGHTS AND HIDE\n(DANGER)";
    Text = " ";
    Duration = 2;
});
end;
end;
end);