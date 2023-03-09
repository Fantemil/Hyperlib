local start_stage = 1 --stage you want to start
local end_stage = 525 --stage you want to end
local wait_time = 0.1 --longer wait time will reduce missing chance
local todo = game:GetService("Workspace").Stages:GetChildren()
local Plr = game:GetService("Players").LocalPlayer

function tp(plr, endpos)
    plr.character.HumanoidRootPart.CFrame = CFrame.new(endpos)
end

for j = start_stage, end_stage, 1 do
for i,v in pairs(todo) do
        if todo[i].name == tostring(j) then
            local todo_2 = todo[i]:GetChildren()
            for t,v in pairs(todo_2) do
                if todo_2[t].name == "Spawn" then
                    local Pos = todo_2[t].Position
                    tp(Plr, Pos)
                    wait(wait_time)
                    break
                end
            end
        end
    end
end