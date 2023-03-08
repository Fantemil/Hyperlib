--Toggle
getgenv().candyautofarm = true  --Make False this for stop toggle

local Easter = "Terrain3Camera!" or "Terrain2Camera!"


while getgenv().candyautofarm do wait()
for _,v in pairs(game:GetService("Workspace")[Easter]:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end