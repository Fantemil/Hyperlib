--// Services \\--
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

--// Variables \\--
local Player = Players.LocalPlayer
local RemoteFunction = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Events"):WaitForChild("RemoteFunction")
local RemoteEvent = ReplicatedStorage.Assets.Events:WaitForChild("RemoteEvent")
local Obby_Finish = Workspace:WaitForChild("ObbyFinish")

--// Get Plot \\--
local Plot = nil
for _, A_1 in next, Workspace:WaitForChild("Plots"):GetChildren() do
    if A_1:GetAttribute("owner") == Player.Name then
        Plot = A_1
        break
    end
end
if Plot == nil then
    warn(":(")
    return
end

--// Auto-Click & Obby Finish \\--
task.spawn(function()
    while task.wait() do
        RemoteEvent:FireServer("click")
        local Primary = Player.Character and Player.Character.PrimaryPart
        if Primary then
            firetouchinterest(Primary, Obby_Finish, 0)
            firetouchinterest(Primary, Obby_Finish, 1)
        end
    end
end)

--// Auto-Merge\\--
local Spaces = Plot:WaitForChild("Spaces")
while task.wait() do
    for _, A_1 in next, Spaces:GetChildren() do
        local Tower_1 = A_1:FindFirstChildOfClass("Model")
        if Tower_1 then
            local Level = Tower_1:GetAttribute("tower")
            for _, A_2 in next, Spaces:GetChildren() do
                local Tower_2 = A_2:FindFirstChildOfClass("Model")
                if Tower_2 and Tower_2 ~= Tower_1 and Tower_2:GetAttribute("tower") == Level then
                    RemoteFunction:InvokeServer("combine tower", Tower_1, Tower_2)
                    break
                end
            end
        end
    end
end