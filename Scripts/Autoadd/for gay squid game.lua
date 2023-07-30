--i hate these cash grab games ffs

local test = game:GetService("Workspace")["Glass Bridge"].GlassPane
local red = Color3.new(151, 0, 0)
local function wrongcolor()
        for i,v in pairs(test:GetDescendants()) do
        if v:IsA("Folder") then
            for _,g in pairs(v:GetDescendants()) do
                if g.ClassName == "Part" then
                    for _, kill in pairs(g:GetDescendants()) do
                        if kill.ClassName == "TouchTransmitter" and kill.Name == "TouchInterest" then
                            g.Color = red
                        end
                    end
                end
            end
        end
    end
end

game:GetService("RunService").Heartbeat:Connect(function()
    wrongcolor()
end)