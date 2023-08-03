local plr = game.Players.LocalPlayer
local hrp = plr.Character.HumanoidRootPart
if rconsoleprint then
rconsolename("Made by https://scriptblox.com/u/Exxen")

rconsoleprint("@@GREEN@@")
rconsoleprint("Welcome "..plr.Name)

rconsoleprint("@@RED@@")
local suc,err = pcall(function()
local votingTable = {
    ["Best Content Update"] = "Loomian Legacy - Beach Update",
    ["People's Choice"] = "Pet Sim X",
    ["Best Use of Avatar Fashion"] = "World // Zero",
    ["Video Star of the Year"] = "ItsFunneh"
}
rconsoleprint("\nVoting")
game:GetService("ReplicatedStorage").Events.RemoteEvents.Vote:FireServer(votingTable,workspace.VotingScreen)
rconsoleprint("\nCompleted Voting")

wait(.5)

hrp.CFrame = CFrame.new(-2.12641931, 23.413641, -105.800774, 0.993632317, -4.98515192e-07, -0.1126711, 6.05473574e-08, 1, -3.89055731e-06, 0.1126711, 3.85896146e-06, 0.993632317)
rconsoleprint("\nCompleted Photobooth")

wait(.5)

local block = workspace.CubePieces.Block3
local circlet = game:GetService("Workspace").Scavenger.Circlet

rconsoleprint("\nStarting Circlet")

hrp.CFrame = block.CFrame
firetouchinterest(hrp,block,0)
wait(.1)
firetouchinterest(hrp,block,1)

wait(.5)

hrp.CFrame = circlet.CFrame
firetouchinterest(hrp,circlet,0)
wait(.1)
firetouchinterest(hrp,circlet,1)

rconsoleprint("\nFinished Circlet")

wait(1)

rconsoleprint("\nStarting Tophat")
for i,v in pairs(game:GetService("Workspace").CubePieces:GetChildren()) do
    hrp.CFrame = v.CFrame
    wait(.5)
    rconsolename("Made by https://scriptblox.com/u/Exxen")
end
rconsoleprint("\nCompleted Tophat")
wait(1)
rconsoleclear()
rconsoleprint("Leave and rejoin for the final item.")
end)
if not suc then rconsoleerr(err) end
else
print("Made by https://scriptblox.com/u/Exxen")

print("Welcome",plr.Name)
local suc,err = pcall(function()
local votingTable = {
    ["Best Content Update"] = "Loomian Legacy - Beach Update",
    ["People's Choice"] = "Pet Sim X",
    ["Best Use of Avatar Fashion"] = "World // Zero",
    ["Video Star of the Year"] = "ItsFunneh"
}
print("Voting")
game:GetService("ReplicatedStorage").Events.RemoteEvents.Vote:FireServer(votingTable,workspace.VotingScreen)
print("Completed Voting")

wait(.5)

hrp.CFrame = CFrame.new(-2.12641931, 23.413641, -105.800774, 0.993632317, -4.98515192e-07, -0.1126711, 6.05473574e-08, 1, -3.89055731e-06, 0.1126711, 3.85896146e-06, 0.993632317)
print("Completed Photobooth")

wait(.5)

local block = workspace.CubePieces.Block3
local circlet = game:GetService("Workspace").Scavenger.Circlet

print("Starting Circlet")

hrp.CFrame = block.CFrame
firetouchinterest(hrp,block,0)
wait(.1)
firetouchinterest(hrp,block,1)

wait(.5)

hrp.CFrame = circlet.CFrame
firetouchinterest(hrp,circlet,0)
wait(.1)
firetouchinterest(hrp,circlet,1)

print("Finished Circlet")

wait(1)

print("Starting Tophat")
for i,v in pairs(game:GetService("Workspace").CubePieces:GetChildren()) do
    hrp.CFrame = v.CFrame
    wait(.5)
    print("Made by https://scriptblox.com/u/Exxen")
end
print("Completed Tophat")
print(1)
print("Leave and rejoin for the final item.")
end)
if not suc then warn(err) end
end