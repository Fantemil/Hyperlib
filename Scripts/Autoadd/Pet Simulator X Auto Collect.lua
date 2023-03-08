local orbs = game:GetService("Workspace")["__THINGS"].Orbs
local lootbags = game:GetService("Workspace")["__THINGS"].Lootbags
_G.start = true;
while wait() and _G.start == true do
    for _,orb in pairs(orbs:GetChildren()) do
        orb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
        wait();
    end    
    for _,orb in pairs(lootbags:GetChildren()) do
        orb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
        wait();
    end
end