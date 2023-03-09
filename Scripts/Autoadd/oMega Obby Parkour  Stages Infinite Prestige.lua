local auto_farm = true
if auto_farm then
_G.toogle = true
local Plr = game:GetService("Players").LocalPlayer
function tp(plr, endpos)
    plr.character.HumanoidRootPart.CFrame = CFrame.new(endpos)
end
local Pos = Vector3.new(996, 106, 1012)
    while _G.toogle do
        tp(Plr, Pos)
        wait(0.01)
    end
else
if not auto_farm then
_G.toogle = false
    game_()
end
end