local TweenService = game:GetService("TweenService")

function tweento(part, pos, speed, reverse, thing)
    local veloset = true
    local Speed = speed
    function GetTime(Distance, Speed)
        local Time = Distance / Speed
        return Time
    end
    if not reverse then reverse = false end

    local NewPoint = pos
    local Distance = (part.Position - pos.Position).magnitude
    local Time = GetTime(Distance, Speed)
            
    local TweenInfo = TweenInfo.new(Time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, reverse, 0)
    local t = TweenService:Create(part, TweenInfo, {CFrame = pos})
    t:Play()
    coroutine.wrap(function()
        repeat
            part.Velocity = Vector3.new(0,0,0)
            task.wait()
        until veloset == false
    end)()
    thing = true
    if thing == true then
        t.Completed:Wait()
        veloset = false
    end
end

while true do wait()
    for i,v in pairs(workspace.Interactions.Nodes.Harvest.Solstice.ActiveNodes:GetDescendants()) do
        if v.Name == "Solstice2022" and v:FindFirstChild("SolsticeEggBox") then
            iv = v
        end
        if iv and iv:FindFirstChild("SolsticeEggBox") then
            tweento(game.Players.LocalPlayer.Character.HumanoidRootPart, iv.SolsticeEggBox.CFrame * CFrame.new(0,2,0), 200, false, true)
            iv.StateRemote:InvokeServer(true)
            wait(0.5)
            for i = 0,4 do
                iv.BoostRemote:InvokeServer(true, "Solstice" .. i)
                wait(0.15)
            end
            wait(0.8)
        end
    end
end
