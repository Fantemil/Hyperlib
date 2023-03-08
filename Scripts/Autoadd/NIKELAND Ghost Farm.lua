local plr = game:GetService("Players").LocalPlayer

for _,v in pairs(game:GetService("Workspace").ScavengerHunt:GetChildren()) do
    if v:FindFirstChild("Objects") then
        for x,a in pairs(v:FindFirstChild("Objects"):GetChildren()) do
        if a:FindFirstChild("Root") then
        firetouchinterest(plr.Character.HumanoidRootPart, a.Root, 0)    
       end
    end 
    end
end