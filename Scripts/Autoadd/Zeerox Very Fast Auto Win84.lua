--settings (make first two values values bigger if script often bugs for you)
local delay1 = 1
local delay2 = 0.1
local onlywhileround = true
--main
local plr = game:service'Players'.LocalPlayer
while task.wait() do
    pcall(function()
        if plr.PlayerGui.UI_Main.UI.TopMenu.RaceTimer.TextLabel.Text == '' and onlywhileround then
            repeat task.wait() until plr.PlayerGui.UI_Main.UI.TopMenu.RaceTimer.TextLabel.Text ~= ''
            task.wait(1)
        end
        for i,v in pairs(workspace.Environment:GetDescendants()) do
            if v:FindFirstChildWhichIsA'TouchTransmitter' then
                firetouchinterest(v, plr.Character.HumanoidRootPart, 0)
                task.wait((v.Parent.Name == 'Stage1K' and delay1) or delay2)
            end
        end
    end)
end