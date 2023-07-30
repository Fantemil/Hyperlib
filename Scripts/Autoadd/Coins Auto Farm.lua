local lplr = game:GetService("Players").LocalPlayer

while (task.wait(0.1)) do
    for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if not v:IsA("Camera") and not v:IsA("Terrain") and not v:IsA("Folder") then
            if v:IsA("MeshPart") then
                if v.BrickColor == BrickColor.new("Gold") then
                    if lplr.Character.HumanoidRootPart == nil then
                        repeat until lplr.Character.HumanoidRootPart ~= nil
                    else
                        lplr.Character.HumanoidRootPart.CFrame = v.CFrame
                    end
                end
            end
        end
    end
end