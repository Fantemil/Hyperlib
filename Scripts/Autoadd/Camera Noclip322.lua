if not game:IsLoaded() then
    game.Loaded:wait()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PopperClient = LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper

for i, v in next, getgc() do
    if getfenv(v).script == PopperClient and typeof(v) == "function" then
        for i2, v2 in next, debug.getconstants(v) do
            if tonumber(v2) == 0.25 then
                debug.setconstant(v, i2, 0)
            elseif tonumber(v2) == 0 then
                debug.setconstant(v, i2, 0.25)
            end
        end
    end
end