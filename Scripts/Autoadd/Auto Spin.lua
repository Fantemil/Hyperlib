repeat task.wait() until game:isLoaded()

clans = {"Uryu","Otherclan} -- add more clans like "Uryu","otherclan"

getgenv().Autoclan = true

while getgenv().Autoclan do
    wait(.3)
    
    for _, v in pairs(clans) do
        local playerInstance = game:GetService("ReplicatedStorage").Player_Datas:FindFirstChild(game.Players.LocalPlayer.Name)
        if playerInstance then
            local slot = playerInstance.Slot_1
            if slot then
                local clan = slot.Clan.Value
                if clan == v then
                    print("Got what u wanted!")
                    print("Got "..clan.. "!")
                    return
                end
            end
        end
        local args = {
            [1] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Spin"):InvokeServer(unpack(args))
        wait(5)
    end
end
