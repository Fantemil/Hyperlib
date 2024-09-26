-- Last update: 3.8.2024 6pm
if makefolder and writefile and isfile and loadstring then
  loadstring(game:HttpGet("https://wastebin-1-j0561772.deta.app/raw/yzeggawo"))()
else
  -- rbxassetid icon from https://github.com/frappedevs/lucideblox/blob/master/src/modules/util/icons.json
  game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Incompatible Executor",
	Text = "Your lua executor doesn't support the required functions for this project.",
	Icon = "rbxassetid://7733666258"
  })
end