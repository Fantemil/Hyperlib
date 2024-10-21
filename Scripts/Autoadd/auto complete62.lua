local a = game.Players.LocalPlayer
local b = workspace.Checkpoints
local function c()
    local d = 1
    while true do
        local e = b:FindFirstChild(tostring(d))
        if e then
            local f = e.CFrame * CFrame.new(0, 4, 0) 
            a.Character:SetPrimaryPartCFrame(f)
            task.wait(0.1)
            d = d + 1
        else
            repeat
                task.wait(0.1)
                e = b:FindFirstChild(tostring(d))
            until e
            local g = e.CFrame * CFrame.new(0, 5, 0)
            a.Character:SetPrimaryPartCFrame(g)
            task.wait(0.1)
            d = d + 1
        end
    end
end
c()