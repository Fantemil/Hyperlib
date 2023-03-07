local shipwrightName = "Elgfrothi" -- Change name to the town's shipwright name here


local args = {[1] = "Sell", [2] = workspace.NPCs[shipwrightName][shipwrightName]}


for i = 1, 9999 do 
    game:GetService("ReplicatedStorage").RS.Remotes.Misc.Carry:FireServer(unpack(args))
end