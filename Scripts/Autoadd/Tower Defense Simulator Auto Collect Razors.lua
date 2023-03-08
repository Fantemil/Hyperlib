if game.PlaceId ~= 5591597781 then return end
getgenv().DefaultCam = 1
repeat wait() until game:IsLoaded()
local RazorTable = {}
for i,v in next,workspace:GetChildren() do
    if v:IsA("MeshPart") and v.Name == "PhilipsRazor" and not table.find(RazorTable,v) then
        table.insert(RazorTable,v)
    end
end
Workspace.ChildAdded:Connect(function(Instance)
    wait(.5)
    if Instance:IsA("MeshPart") and Instance.Name == "PhilipsRazor" and not table.find(RazorTable,Instance) then
        table.insert(RazorTable,Instance)
    end
end)
task.spawn(function()
    while true do
        wait()
        for i = 1,#RazorTable do
            if RazorTable[i] and RazorTable[i].CFrame.Y < 200 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RazorTable[i].CFrame
            elseif not RazorTable[i] then
                table.remove(RazorTable,i)
            end
        end
    end
end)