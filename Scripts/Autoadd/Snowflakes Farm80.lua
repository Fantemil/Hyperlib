local link = "https://link-center.net/1012050/roblox-script-snowflakes"

setclipboard(link)

local player = game.Players.LocalPlayer
local message = Instance.new("Message")
message.Text = "Link copied to clipboard!"
message.Parent = player:WaitForChild("PlayerGui")

wait(10)
message:Destroy()