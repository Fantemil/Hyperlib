local remote = select(
    2,
    pcall(function()
        return game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    end)
)

if typeof(remote) == "Instance" then
    local txt = [[kill ni{{aieixzvzx:ggers}} ra{{aieixzvzx:pe}} and kill ni{{aieixzvzx:ggers}} ng
    roundhouse kick ni{{aieixzvzx:ggers}} into the concrete ng
    slam dunk ni{{aieixzvzx:gger}} babies into the trash can ng
    behead filthy bl{{aieixzvzx:acks}} ng
    defecate into ni{{aieixzvzx:ggers}} food ng
    launch ni{{aieixzvzx:ggers}} into the sun ng
    stirfry ni{{aieixzvzx:ggers}} on a walk ng
    toss ni{{aieixzvzx:ggers}} into active volanoes ng
    urinate into a ni{{aieixzvzx:ggers}} gas tank ng
    throw ni{{aieixzvzx:ggers}} into a wood chipper ng
    twist ni{{aieixzvzx:ggers}} heads off ng
    report ni{{aieixzvzx:ggers}} to the IRS ng
    karate chop ni{{aieixzvzx:ggers}} in half ng
    curb stomp pre{{aieixzvzx:gnant}} bl{{aieixzvzx:ack}} ni{{aieixzvzx:ggers}} ng]]
    local msgs = txt:split("\n")
    for i, v in pairs(msgs) do
        if type(v) == "string" then
            if typeof(remote) ~= "Instance" then
                break
            end
            remote:FireServer(v:gsub("\n", ""):gsub("\t", ""), "All")
            task.wait(2.3)
        end
    end
end