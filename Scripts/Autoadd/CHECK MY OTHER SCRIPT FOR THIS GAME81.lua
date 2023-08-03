local plr = game:GetService("Players").LocalPlayer

while task.wait() do
   for _,v in pairs(game:GetService("Players"):GetChildren()) do
    if v ~= plr then
pcall(function()
    local args = {
    [1] = v.Character.HumanoidRootPart.Position
}
game:GetService("ReplicatedStorage").Events.BigBlast:FireServer(unpack(args))
    end)
end
end 
end