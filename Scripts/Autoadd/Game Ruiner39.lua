getgenv().click = true -- false to stop

local part = workspace.Stand.Button:WaitForChild("Part")
local plr = game.Players.LocalPlayer.Character

while true do
    if not click then break end
    fireclickdetector(part.ClickDetector)
    wait()
end
-- // Bac0nH1ckOff