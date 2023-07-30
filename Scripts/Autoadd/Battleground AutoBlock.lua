--[[ Made by ThroughTheFireAndFlames#9925

        Heroes Battleground [AutoBlock]

--]]--------------------------------------

getgenv().Distance = 15
getgenv().WaitUntilUnblock = 0.35

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/HeroesBattlegrounds/main/AutoBlock"))();

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
wait(1) -- extra time load
loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/HeroesBattlegrounds/main/AutoBlock"))();
end)