local nt = [[
    the name u want here
]]
local lp = game.Players.LocalPlayer
local xd = {
Name = "0",
TextLabel = {
Text = string.rep("\n", 100 - nt:len()) .. nt
}
}
for i, v in pairs(lp.Character:GetChildren()) do
if v.ClassName == "Model" and v:FindFirstChild("f") and v:FindFirstChild("Head") then
v.Head.Transparency = 0
break
end
end
game.Players.LocalPlayer.Backpack.Stank:FireServer("pick", xd)