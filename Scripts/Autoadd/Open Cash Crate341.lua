local LocalPlayer = game.Players.LocalPlayer
local CrateFoler = workspace.CratesCache
local isValidGame = false
if game.PlaceId == 574407221 then
    isValidGame = true
end
if not isValidGame then
    LocalPlayer:Kick("get yo ass out")
end

if not firetouchinterest then
    LocalPlayer:Kick("Your Executor is ass lol")
end

local function OpenRandomCrate()
    local crate = CrateFoler:FindFirstChildWhichIsA("Model")
    if crate then
        firetouchinterest(crate.Primary, LocalPlayer.Character.HumanoidRootPart, 0)
        firetouchinterest(crate.Primary, LocalPlayer.Character.HumanoidRootPart, 1)
    end
end

OpenRandomCrate()