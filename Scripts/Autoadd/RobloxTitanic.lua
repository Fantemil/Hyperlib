_G.poi = not _G.poi

for i=1,100 do
    spawn(function()
        while _G.poi do
                wait()
            local tbl_main =
            {
            "thi&!44",
            false,
            false,
            false
            }
            game:GetService("ReplicatedStorage").RemoteEvents.Gui.AddPoint:FireServer(unpack(tbl_main))
        end
    end)
end