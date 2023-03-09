if game.PlaceId == 9492038800 then
local Library = loadstring(Game:HttpGet("https://gist.githubusercontent.com/NotKNow21Br/2233d7974031b4bdceeacd4c54a3bf91/raw/eeba9b460462ca3e27c99e42b944ccdbf77ad284/NKHUB%2520FREE%2520UILIB.lua"))()

local NKHUBTAB = Library:NewWindow("discord.gg/hJbaaJDXss")

local NKHUBSECTION = NKHUBTAB:NewSection("idk")

NKHUBSECTION:CreateButton("1Â°: Create AFKBase", function()
local baseplate = Instance.new("Part")
baseplate.Parent = workspace
baseplate.Size = Vector3.new(20,2,20)
baseplate.Anchored = true
baseplate.Name = "baseplate23232"
baseplate.Position = 409, 17, 117 + Vector3.new(0,-7,0)
print("OK NEWBA")
end)

NKHUBSECTION:CreateToggle("Auto Farm", function(value)
_G.Value = value
while _G.Value do
   wait(0.5)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.754880933433014e-10, 3.9999992847442627, 7.654307410120964e-09)
end
end)

else
   game.Players.LocalPlayer:Kick("Wrong Game Idiot...")
end