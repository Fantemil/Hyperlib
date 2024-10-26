-- Using without Crediting the owner is so gay

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Survive MALEVOLENT SUKUNA ðð - Free - ð«¥", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

local badgesID = {
    4260248045801521,
    1226335215503282,
    424935280773534,
    158126084670560,
    1583487997260681,
    1612130676157779,
    89658724023610,
    4110332196255779,
}

tab.newButton("Obtain Badges", "Obtain All Badges", function()
    for _, badgeID in ipairs(badgesID) do
        game:GetService("ReplicatedStorage").AwardBadge:FireServer(badgeID)
        wait(0.01)
    end
end)

tab.newButton("Become Gojo","Click To Become", function()
game:GetService("ReplicatedStorage").FriendGotGojo:FireServer()
end)