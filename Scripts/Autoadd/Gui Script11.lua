local player = game.Players.LocalPlayer
local level = player.leaderstats.Level.Value
local loops = 41 - level -- change the first number to the level amount if updated

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local w = library:Window("WCG | Agreed69")

w:Button("Finish Game", function()
   for i = 1, loops do
      game:GetService("ReplicatedStorage").NextLevel:FireServer()
   end 
end)

w:Toggle("Chat Spam", false, function(bool)
    if bool then
        _G.loop = true
        while _G.loop do
            game:GetService("ReplicatedStorage").Completed:FireServer("00:00:00:00")
            wait()
        end
    else
        _G.loop = false
    end
end)