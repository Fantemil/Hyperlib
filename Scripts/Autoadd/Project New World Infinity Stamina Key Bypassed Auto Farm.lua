hook = hookfunction(game.HttpGet, newcclosure(function(self, ...)
   if string.find((...):lower(), "key") then
    return "return 'grimcity'"
    end
   return hook(self, ...) 
end))

game.CoreGui.ChildAdded:Connect(function(v)
   if v.Name == "NexusKeySystem" then
      v:WaitForChild("Draggable Frame")["Key System"].Text = "dsc.gg/grimcity"
      v:WaitForChild("Draggable Frame").ImageLabel:Destroy()
      v:WaitForChild("Draggable Frame")["Get discord link"].Text = 'Key = "grimcity"'
      elseif v.Name == "NSLoader" then
        v:WaitForChild("MainFrame").Hub.Text = "Grimcity On Top"
    end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Demmx/ProjectNexus/main/Loader.lua"))()