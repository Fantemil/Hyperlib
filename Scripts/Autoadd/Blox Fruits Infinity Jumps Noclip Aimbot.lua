loadstring(game:HttpGet("https://raw.githubusercontent.com/RiseValco/keybypasses/main/kelrepl.lua"))()

game.CoreGui.ChildAdded:Connect(function(v)
   if string.find(v.Name:lower(), "keysystem") then
      v:WaitForChild("Draggable Frame")["Key System"].Text = "dsc.gg/grimcity"
      v:WaitForChild("Draggable Frame").ImageLabel:Destroy()
      v:WaitForChild("Draggable Frame")["Get key link"].Text = 'Key = "grimcity"'

    end
end)

loadstring(game:HttpGet(("https://raw.githubusercontent.com/kyoichi35/Kyoichi-Hub/main/Kyoichi%20hub")))()