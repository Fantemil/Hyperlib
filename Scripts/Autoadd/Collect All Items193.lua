local link = "https://link-center.net/1012050/roblox-hogwarts-academy"


setclipboard(link)


local player = game.Players.LocalPlayer
local message = Instance.new("Message")
message.Text = "Script Link copied to clipboard!"
message.Parent = player:WaitForChild("PlayerGui")


wait(5)
message:Destroy()
