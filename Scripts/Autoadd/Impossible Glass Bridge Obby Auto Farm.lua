_G.Condition = true -- true turns it on, false turns it off
while _G.Condition == true do
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Glass Bridge"].Finish["Money Pig"].Money.CFrame
wait(1)
end