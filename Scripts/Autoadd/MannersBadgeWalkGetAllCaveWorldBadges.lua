local time_wait = 0.00001 --wait time each badge
local Plr = game:GetService("Players").LocalPlayer
local todo = game:GetService("Workspace"):GetChildren()
for i,v in pairs(todo) do
    local todo_2 = todo[i]:GetChildren()
    for j,v in pairs(todo_2) do
        if todo_2[j].name == "TouchInterest" then
            firetouchinterest(Plr.character.Head, todo_2[j].parent, 0)
            task.wait(0.00000001)
            firetouchinterest(Plr.character.Head, todo_2[j].parent, 1)
        end
    end
end