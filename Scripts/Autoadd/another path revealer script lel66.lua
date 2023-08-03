for i,v in pairs(game:GetService("Workspace").TilePlatform.tiles:GetChildren()) do
    if v:FindFirstChild("TouchInterest") == nil and v.Transparency ~= 1 then
        v.Color = Color3.fromRGB(0,255,0)
    else
        v.Color = Color3.fromRGB(255,0,0)
    end
end