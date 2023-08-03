_G.auto = true -- set to true or false

-- code
local p = game:GetService("Workspace")["Level purple"].Teleporter
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

while _G.auto == true do
    wait(2)
    for _,v in pairs(p:GetChildren()) do
        if v:IsA("TouchTransmitter") then
            firetouchinterest(plr, v.Parent, 0)
            wait()
            firetouchinterest(plr, v.Parent, 1)
        end
    end
end