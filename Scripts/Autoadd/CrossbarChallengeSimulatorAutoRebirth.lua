_G.autoRebirth = true; -- change to false to stop

local A_1 = "RedeemQuest"
local A_2 = "100CrossBarsMilestone"
local A_3 = 50000000000000
local A_4 = "PurchaseRebirth"


while _G.autoRebirth == true do
if _G.autoRebirth ~= true then break end;
game:GetService("ReplicatedStorage").Action:FireServer(A_1, A_2, A_3)
wait()
game:GetService("ReplicatedStorage").Action:FireServer(A_4)
end