for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetChildren()) do
    if v:GetChildren()[1].CanCollide == false then
        v:GetChildren()[1].Color = Color3.fromRGB(255,0,0)
        v:GetChildren()[2].Color = Color3.fromRGB(0,255,0)
    elseif v:GetChildren()[2].CanCollide == false then
        v:GetChildren()[1].Color = Color3.fromRGB(0,255,0)
        v:GetChildren()[2].Color = Color3.fromRGB(255,0,0)
    end
end