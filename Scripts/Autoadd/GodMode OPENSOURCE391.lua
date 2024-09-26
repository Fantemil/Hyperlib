--Tower of hell (godmode script) MADE BY MEDOOGY01 (ISTHATTATICOOL)
--SCRIPT IS OPEN SOURCE
if TDI_LOADED then warn('already loaded') return end
getgenv().TDI_LOADED = true
for i,v in game.Players.LocalPlayer.Character:GetChildren() do
if v.ClassName == 'Part' then
local fb = v:FindFirstChild('TouchInterest')
if fb then
fb:Destroy()
end
end
end
warn('godmode is ready. if u reset, dont re-execute, it will reload automaticly')
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
if notautofarm then return end
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
for i,v in char:GetChildren() do
if v.ClassName == 'Part' then
local fb = v:FindFirstChild('TouchInterest')
if fb then
fb:Destroy()
end
end
end
warn('godmode is auto reloaded')
end)