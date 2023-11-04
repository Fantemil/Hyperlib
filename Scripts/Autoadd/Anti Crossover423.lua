-- Made by mxkxkks

while true do
    wait()
    local gc = getgc(true)
    for _, func in ipairs(gc) do
        if type(func) == "function" and islclosure(func) then
            local upvalues = debug.getupvalues(func)
            if upvalues and upvalues.game and type(upvalues.game) == "table" and upvalues.game.Players and upvalues.game.Players.LocalPlayer then
                local setAttribute = upvalues.game.Players.LocalPlayer.SetAttribute
                if setAttribute and type(setAttribute) == "function" then
                    setAttribute(upvalues.game.Players.LocalPlayer, "CrossedOver", false)
                end
            end
        end
    end
end