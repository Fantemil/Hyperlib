getgenv().settings = {
    ['killall'] = true,
    ['farmmoney'] = false,
}
function getKey()
    for i , v in pairs(getgc(true)) do
        if type(v) == 'function' and debug.getinfo(v).name == 'Fire' and getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("WeaponScript") then 
            return debug.getupvalue(v,15)
        end
    end
end
local key = getKey()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
wait(2)
key = getKey()
end)
while getgenv().settings.killall or getgenv().settings.farmmoney do 
wait()
if getgenv().settings.killall then 
if not key then 
key = getKey()
wait(1)
else 
    for i , v in pairs(game:GetService("Workspace").Baddies:GetChildren()) do 
        if v:FindFirstChild("Humanoid") and v.Humanoid:FindFirstChild("Damage") then
            v.Humanoid.Damage:FireServer({
                ['BodyPart'] = v.HeadBox,
                ['Force'] = 0,
                ['GibPower'] = 0,
                ['Damage'] =  math.huge
            },key)
        end
    end
end
    end
if getgenv().settings.farmmoney then 
if not key then 
key = getKey()
wait(1)
else 
    for i , v in pairs(game:GetService("Workspace").Baddies:GetChildren()) do 
        if v:FindFirstChild("Humanoid") and v.Humanoid:FindFirstChild("Damage") then
        for i = 1 ,2 do
            v.Humanoid.Damage:FireServer({
                ['BodyPart'] = v.HeadBox,
                ['Force'] = 0,
                ['GibPower'] = 0,
                ['Damage'] =  0
            },key)
        end
        end
    end
    end
end
end