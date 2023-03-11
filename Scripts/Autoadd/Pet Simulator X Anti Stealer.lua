local library = loadstring(game:HttpGetAsync("https://pastebin.com/raw/ascnG7wt"))()
library.loaded()

wait(5)
local Framework = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
local session = string.format("PSX %s session log.txt", DateTime.now():FormatLocalTime("DD MMMM HH;mm", "en-us"))