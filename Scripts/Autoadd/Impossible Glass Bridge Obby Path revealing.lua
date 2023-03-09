for i,v in pairs(game:GetService("Workspace").Glass:GetChildren()) do
    if v:GetChildren()[1].Name == "Lava" then
        v:GetChildren()[2].Color = Color3.fromRGB(0,255,0)
        v:GetChildren()[1].Color = Color3.fromRGB(255,0,0)
    else
        v:GetChildren()[1].Color = Color3.fromRGB(0,255,0)
        v:GetChildren()[2].Color = Color3.fromRGB(255,0,0)
    end
end