local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Arceus-X-UI-Library/main/source.lua"))()
lib:SetTitle("Trepidation | Agreed69")

local cash = 1000000000000

lib:AddButton("Infinite Money", function()
   game:GetService("ReplicatedStorage").DailyRewardGrantEvent:FireServer("Coins", cash, 1)
end)

lib:AddComboBox("Money", {"1T", "1QA", "1QI", "math.huge"}, function(selection)
    if selection == "1T" then
        cash = 1000000000000
    elseif selection == "1QA" then
        cash = 1000000000000000
    elseif selection == "1QI" then
        cash = 1000000000000000000
    elseif selection == "math.huge" then
        cash = math.huge
    end
end)

lib:AddToggle("Auto Level Up", function(state)
    _G.levelup = state
    while _G.levelup do
        game:GetService("ReplicatedStorage").LevelUpEvent:FireServer()
        wait()
    end
end)