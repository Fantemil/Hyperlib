local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Super Box Siege Defense", "Ocean")

local qTab = Window:NewTab("Player")
local qSection = qTab:NewSection("Player")

qSection:NewButton("Respawn", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13.842928886413574, 2914.384521484375, -1470.99853515625)
end)

qSection:NewButton("Part For Respawn", "ButtonInfo", function()
local SafeSpot = Instance.new("Part", workspace)

SafeSpot.Position = Vector3.new(-13.323701858520508, 2886.38525390625, -1468.0823974609375)

SafeSpot.Name = "Spot"

SafeSpot.Size = Vector3.new(100,50,100)

SafeSpot.Anchored = true

SafeSpot.Transparency = .7

Time = 0
end)