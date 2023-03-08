getgenv().Auto = true
local Admins = {
    2207291,
    2025110,
    59943819,
    151848836

}
while Auto do
for i,v in pairs(game.Players:GetChildren()) do
if table.find(Admins,v.UserId) then game:GetService("Players").LocalPlayer:kick("Admin+ Joined The Experience.")
end
end
task.wait()
end 