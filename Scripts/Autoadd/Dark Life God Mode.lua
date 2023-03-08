local function char()
    return game.Players.LocalPlayer.Character
end

local function init()
    local hrp = char().HumanoidRootPart
    local weld = hrp:FindFirstChildOfClass("Weld")
    local weld2 = char().Head:FindFirstChild("Weld")
    if weld then
        weld:Destroy()
    end
    if weld2 then
        weld2:Destroy()
    end
    rconsoleprint("@@GREEN@@")
    rconsoleprint("\nToggled God")
end

init()

rconsoleprint("@@RED@@")
rconsoleprint("\n")

game.Players.LocalPlayer.CharacterAdded:connect(function()
    wait(.5)
    init()
end)