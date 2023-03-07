_G.KillAura = true

while wait(0.075) do
if _G.KillAura == true then
game:GetService("ReplicatedStorage").EventStorage.Attack:InvokeServer()
end
end