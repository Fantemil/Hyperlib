local Text = "I love grimcity"

getgenv().Auto = true
while task.wait() do
    if getgenv().Auto  then
    for _,v in pairs(game:GetService("Players"):GetChildren()) do
    pcall(function()
    if v.Character:FindFirstChildWhichIsA("Tool") and getgenv().Auto then
        v.Character:FindFirstChildWhichIsA("Tool").UpdateSign:FireServer(Text)
    end
     end)
   end
else
    break
    end
end
