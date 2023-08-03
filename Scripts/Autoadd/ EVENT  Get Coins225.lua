_G.autoCoins = true;
 while _G.autoCoins == true do
local args = {
    [1] = "Bread",
    [2] = 17237895
}
game:GetService("ReplicatedStorage").IBS_Recovery:FireServer(unpack(args))
wait()
 end