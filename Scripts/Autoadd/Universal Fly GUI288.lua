--enjoy!
repeat task.wait()
	task.spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Breadido/upiversal/main/Universal%20Fly%20GUI.lua"))()
	end)
until game:IsLoaded()
	