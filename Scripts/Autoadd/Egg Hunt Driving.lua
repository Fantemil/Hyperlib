local plr=game:GetService("Players").LocalPlayer

for i,eggs in pairs(workspace.Eggs:GetChildren()) do
    plr.Character.PrimaryPart:PivotTo(eggs.CFrame+Vector3.new(0,4,0))
    task.wait(4)
end