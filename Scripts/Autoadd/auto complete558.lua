local ilovecats = game.Players.LocalPlayer
local imbroke = workspace.Checkpoints
local function meow()
    local thingies = 94 -- idk if this is right
    for i = 1, thingies do
        local jesushimself = imbroke:FindFirstChild(tostring(i))
        if jesushimself then
            local grr = jesushimself.CFrame * CFrame.new(0, 4, 0)
            ilovecats.Character:SetPrimaryPartCFrame(grr)
            task.wait(0.07)
        end
    end
end
meow()