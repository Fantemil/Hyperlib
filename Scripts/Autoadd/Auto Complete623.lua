-- // https://www.roblox.com/games/16288616721/Skateboard-Obby-NEW
getgenv().farm = not farm local checkpoints, num = game:GetService("Workspace").Map.Checkpoints, 0 -- t.me/arceusxscripts
local function autocomplete() for _,v in pairs(checkpoints:GetChildren()) do if v.Parent.Name == "Checkpoints" then num += 1 end end for i = 1, num do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Checkpoint"):FireServer(i, i) end end -- t.me/arceusxscripts
while true do if not farm then break end autocomplete() game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Reset"):FireServer(true) wait(2.4) end -- t.me/arceusxscripts