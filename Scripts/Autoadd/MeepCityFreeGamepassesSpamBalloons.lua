local function ontp(s)
    if syn and syn.queue_on_teleport then
        syn.queue_on_teleport(s)
    elseif queue_on_teleport then
        queue_on_teleport(s)
    end
end

game.ReplicatedStorage:WaitForChild("Constants")

loadstring(game:HttpGet('https://raw.githubusercontent.com/synolope/meepcracked/main/script.lua'))()
ontp("if not game:IsLoaded() then game.Loaded:Wait() end wait(3) if not game.Players.LocalPlayer.Character then game.Players.LocalPlayer.CharacterAdded:Wait() end loadstring(game:HttpGet('https://raw.githubusercontent.com/synolope/meepcracked/main/loader.lua'))()")