for i, v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v, "Mag") then
        if v.Mag ~= math.huge then
            v.Mag = math.huge
        end
    end
end

game:GetService("Players").LocalPlayer.PlayerGui.CameraScript:Destroy()