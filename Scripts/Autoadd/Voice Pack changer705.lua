--this is lazily made
--use american voicepack to apply the changes
-- most useless?
local voicepack = "Murderous Child" --xonae, Carnival Carnie, Jolly Narrator, Hackula, Murderous Child, Santa, Bandites, Petrify, Flamingo, Eprika, John, Movie Man, Homeless, YouTuber, Warcrimes

local p = game.Players.LocalPlayer
local announcer = p.PlayerGui.Announcer

local Voice = announcer[voicepack]:GetChildren()
local copyvoice = {}

for _, voice in pairs(Voice) do
    table.insert(copyvoice, voice:Clone())
end

local americawwFolder = announcer.American

for _, child in pairs(americawwFolder:GetChildren()) do
    child:Destroy()
end

for _, voice in pairs(copyvoice) do
    voice.Parent = americawwFolder
end
