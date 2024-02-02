local link = "https://direct-link.net/1012050/roblox-cardealship-script"

setclipboard(link)

local player = game.Players.LocalPlayer
local message = Instance.new("Message")
message.Text = "Link copied to clipboard!"
message.Parent = player:WaitForChild("PlayerGui")

wait(10)
message:Destroy()