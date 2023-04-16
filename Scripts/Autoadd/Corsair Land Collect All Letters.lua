local Letters = game:GetService("Workspace")["Mng_word"]
local Plr = game:GetService("Players").LocalPlayer.Character

for _,v in pairs(Letters:GetChildren()) do
    if v:IsA("MeshPart") then
        firetouchinterest(Plr.HumanoidRootPart, v, 0)
    end
end