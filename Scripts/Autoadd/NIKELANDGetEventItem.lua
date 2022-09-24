getgenv().enabled = true

print("ahmet kaya on top")

game:GetService("RunService").RenderStepped:Connect(function()
if getgenv().enabled then
task.wait(1.5)
local Simple = {
[1] = 99.99
}
game:GetService("ReplicatedStorage").NikeGame_ThrowBasketball:FireServer(unpack(Simple))
task.wait(1)
end
end)