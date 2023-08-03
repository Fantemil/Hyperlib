for i,v in pairs(game:GetService("Workspace"):FindFirstChild("1",true).Parent:GetChildren()) do
    if v:GetChildren()[1]:FindFirstChild("TouchInterest") ~= "Safe" then
        v:GetChildren()[1].Color = Color3.fromRGB(0,255,0)
        v:GetChildren()[2].Color = Color3.fromRGB(255,0,0)
    else
        v:GetChildren()[2].Color = Color3.fromRGB(0,255,0)
        v:GetChildren()[1].Color = Color3.fromRGB(255,0,0)
    end
    v:GetChildren()[1].Transparency = 0
    v:GetChildren()[2].Transparency = 0
end