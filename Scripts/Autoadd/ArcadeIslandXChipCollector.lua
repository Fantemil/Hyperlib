_G.Chips = false -- Wether you want to turn it on or off!
Timer = 60 -- This will collect chips every minute!

while _G.Chips and wait(Timer) do
       for i,v in pairs( game:GetService("Workspace").Chips:GetChildren())do
if v.Name == "Chip" then
v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end