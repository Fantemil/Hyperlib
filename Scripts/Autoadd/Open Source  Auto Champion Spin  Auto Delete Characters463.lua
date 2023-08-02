--Anime War Tycoon | Auto Champion Spin + Auto Delete Unwated Characters.
--Script by: Urbanstorm#2189
--Discord Server: https://discord.gg/qDbjzbrGh9

--Before activation, go to into the green circle that you spin champions at.
--When done, I'd just rejoin or you can be cool and set all the values from "true" to "false" :)
task.spawn(function()
getgenv().AutoDelChar = true -- Characters to be deleted, you can add to the list below if updates happen.

local CharList = {
    "Sasuke",
    "Narubo",
    "RockLi",
    "Sakura"
}

while AutoDelChar do task.wait()
    pcall(function()
        for Selected,Char in pairs(CharList) do
            game:GetService("ReplicatedStorage").Events.ChampionOption:FireServer("Delete",Char)
        end
    end)
end
end)

task.spawn(function()
getgenv().Urban = true -- Auto buy
WT = 5 -- You can lower but I don't suggest doing so..
while Urban do task.wait(WT)
    pcall(function()
        game:GetService("ReplicatedStorage").Events.BuyChampionSpin:FireServer(3)
    end)
end
end)

task.spawn(function()
    getgenv().AClick = true -- Auto Clicker
    local VirtualUser=game:service("VirtualUser")
    while AClick do task.wait()
        pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(0,0))
        end)
    end
end)