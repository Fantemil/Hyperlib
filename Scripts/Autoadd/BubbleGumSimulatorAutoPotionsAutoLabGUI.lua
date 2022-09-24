local LP = game:GetService("Players").LocalPlayer

local function closeFrames(b)
 local s = {"Codes", "Index", "Boosts", "Prizes"};
 for i = 1, #s do LP.PlayerGui.ScreenGui.StatsFrame[s[i]].Visible = b end
 LP.PlayerGui.ScreenGui.StatsFrame.Coins.More.Visible = b
 LP.PlayerGui.ScreenGui.StatsFrame.Gems.More.Visible = b
 LP.PlayerGui.ScreenGui.MainButtons.Visible = b
 LP.PlayerGui.ScreenGui.Settings.Visible = b
end

if not LP:FindFirstChild("leaderstats") then repeat wait(1) until LP:FindFirstChild("leaderstats") end
closeFrames(false); wait(3); LP.Character:FindFirstChild("HumanoidRootPart").Anchored = true
    
-- teleports the user to the lab and repeatedly teleports the user to the NPC until the b_F is loaded
if (not LP.PlayerGui.ScreenGui:FindFirstChild("BrewingFrame")) then
 game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("Teleport", "LabSpawn"); closeFrames(false); wait(0.5)
 LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1740.89038, 2705.99048, 11044.1572, -0.984202802, -4.41739587e-08, -0.177044764, -3.80400742e-08, 1, -3.80401666e-08, 0.177044764, -3.07044417e-08, -0.984202802)
 wait(2)
end

closeFrames(false); wait(0.5)
if LP.PlayerGui.ScreenGui:FindFirstChild("BrewingFrame").Brewing.Brew3.Gamepass.Visible then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DoComplement/BGS/main/UI_Upd/Two.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DoComplement/BGS/main/UI_Upd/Three.lua"))()
end 