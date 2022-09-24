-- Made by African Man#3025
_G.AutoTap = false;
_G.UnlimtedGems = false;
_G.UnlimtedFloppa = false;

spawn(function()
while _G.AutoTap == true do
   workspace.Events.AddClick:FireServer()
   wait()
end
end)

spawn(function()
while _G.UnlimtedGems == true do
   local ohInstance1 = game:GetService("ReplicatedStorage").Code_Folder
local ohString2 = "FLOPPA"

game:GetService("Players").LocalPlayer.PlayerGui.Main.MainFrame.CodesFrame.RedeemButton["Redeem Button_Script"].Gems:FireServer(ohInstance1, ohString2)
wait()
end
end)

spawn(function()
while _G.UnlimtedFloppa == true do
local ohInstance1 = game:GetService("ReplicatedStorage").Code_Folder
local ohString2 = "FLOPPA"

game:GetService("Players").LocalPlayer.PlayerGui.Main.MainFrame.CodesFrame.RedeemButton["Redeem Button_Script"].FreePet:FireServer(ohInstance1, ohString2)
wait()
end
end)