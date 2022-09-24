if game.PlaceId == 6998582502 then
    task.wait(2)
task.spawn(function()
    if not game:IsLoaded() then
    game.Loaded:Wait()
end
    task.wait(1)

    local args = {
    [1] = "Rune Arc Kingdom",
    [2] = "Chaos",
    [3] = 20,
    [4] = false,
    [5] = true}
    game:GetService("ReplicatedStorage").RemoteEvents.PartyRemotes.CreateParty:FireServer(unpack(args))
    local args2 = {[1] = "Start"}
    game:GetService("ReplicatedStorage").RemoteEvents.PartyRemotes.MiscPartyRemote:FireServer(unpack(args2))
end)
end

if game.PlaceId == 8327241010 then

task.spawn(function()
        task.wait(5)

if not game:IsLoaded() then
    game.Loaded:Wait()
end
    task.wait(5)
    game:GetService("ReplicatedStorage").DungeonEvents.DungeonNetwork:InvokeServer("Start")
end)
task.wait(5.1) -- i would make this a repeat wait until loop so it can account for lag and etc or just wait until the invoke server remote
local localPlayer, remote = game:GetService("Players").LocalPlayer, game:GetService("ReplicatedStorage").ClientServerNetwork.MagicNetwork
local mobs = workspace:WaitForChild("Game", 1):WaitForChild("Mobs", 1) -- could make this just game.workspace.Mobs
local damageTick = function()
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local mob = mobs:FindFirstChildOfClass("Model")
    if mob then
        local rootPart, targetPart = character.PrimaryPart, mob:FindFirstChildWhichIsA("BasePart")
        if (rootPart and targetPart) then
            rootPart.CFrame = targetPart.CFrame * CFrame.new(0, 3, 6)
            remote:FireServer("Swing", targetPart.Position)
        end
    end
end
task.spawn(function()
    while true do -- should be fine with InvokeServer bc it yelids, if you crash make this task.wait()
        damageTick()
        game:GetService("ReplicatedStorage").ClientServerNetwork.MagicFunction:InvokeServer("Q","Spell")
        game:GetService("ReplicatedStorage").ClientServerNetwork.MagicFunction:InvokeServer("E","Spell")
end
end)
end