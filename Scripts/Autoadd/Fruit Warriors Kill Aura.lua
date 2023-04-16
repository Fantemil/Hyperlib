getgenv().kr = true
while getgenv().kr == true do
task.wait()
local A_1 = "Combat"-- Katana/Combat etc
local A_2 = 4
local Event = game:GetService("ReplicatedStorage").Remotes.Mouse1Combat:FireServer(A_1, A_2)
for _,v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
if v.Name == "Caveman (Level 75)" then-- Name of mob LOL!
local A_1 = "Combat"
local A_2 = v
local Event = game:GetService("ReplicatedStorage").Remotes.M1sDamage:FireServer(A_1, A_2)
end
end
end