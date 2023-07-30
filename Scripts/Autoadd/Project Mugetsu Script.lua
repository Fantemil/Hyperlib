local ITEM_CODES = {
    "35KLIKES",
    "SORRYFORSHUTDOWN",
    "RELEASE",
    "EXPLOITFIXES",
    "SHUTDOWNSPINS",
    "SORRYFORPINGS",
    "10MVISITS",
    "50KLIKES",
    "SHUTDOWNABILITYREROLL",
    "40KLIKES"
}

function redeemItems()
    for _, itemName in pairs(ITEM_CODES) do
        game:GetService("ReplicatedStorage").Code:InvokeServer(itemName)
    end
end

redeemItems()
wait(2)

repeat
    task.wait()
until game:IsLoaded()

local clans = {"Urahara", "Kurosaki"}
getgenv().AutoClan = true

while getgenv().AutoClan do
    wait(0.3)

    local playerInstance = game:GetService("ReplicatedStorage").Player_Datas:FindFirstChild(game.Players.LocalPlayer.Name)
    if playerInstance then
        local slot = playerInstance.Slot_1
        if slot then
            local clan = slot.Clan.Value
            for _, v in pairs(clans) do
                if clan == v then
                    print("Got what you wanted!")
                    print("Got " .. clan .. "!")
                    getgenv().AutoClan = false
                    return
                end
            end
        end
    end

    local args = {1}
    game:GetService("ReplicatedStorage").Spin:InvokeServer(unpack(args))
    wait(5)
end
