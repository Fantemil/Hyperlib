local tab, numbers = {}, {}-- tables to put the guis and numbers


-- //get guis
workspace.Props.Zone9.DescendantAdded:Connect(function(v) -- get those that just got added into the game
    wait(0.2)
    if v:IsA"SurfaceGui" and v.Name == "SurfaceGui" and v:FindFirstChildOfClass"ImageLabel" then
        table.insert(tab, v) -- puts the gui into the tab table
    end
end)
for i, v in next, workspace.Props.Zone9:GetDescendants() do -- get those that are already in the game
    if v:IsA"SurfaceGui" and v.Name == "SurfaceGui" and v:FindFirstChildOfClass"ImageLabel" then
        table.insert(tab, v) -- puts the gui into the tab table
    end
end

--//get numbers
local num = 0
while num <= 1e3 do
    num = num + 20
    table.insert(numbers, num)--puts the number into the numbers table
end



while wait() do
    for i, v in next, tab do--loops through the tab table
        if v:IsDescendantOf(workspace) and not v:FindFirstChild"Overlay" then--check if gui is in workspace
            spawn(function()--so its fast
                game:GetService"ReplicatedStorage".SpecWork.Shared.Network.Paint:FireServer{
                    [1] = {
                        ["Points"] = {
                            [1] = { ["Y"] = numbers[math.random(1, #numbers)], ["X"] = numbers[math.random(1, #numbers)] }
                        },
                        ["Gui"] = v
                    }
                }--fire the paint remote
                game:GetService"ReplicatedStorage".SpecWork.Shared.Network.RefillPaint:FireServer(math.huge)--infinite paint
            end)
        else table.remove(tab, i) end--remove gui if not in workspace
        if string.find(tostring(i), "50$") or string.find(tostring(i), "00$") then wait() end--wait so it will not lag
    end
end