local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)

ESP:AddObjectListener(workspace.Asteroids, {
   Type = "Model",
   CustomName = "Uranium",
   Color = Color3.fromRGB(0,255,0),
       Validator = function(obj)
       return obj:FindFirstChild("NoRespawn")
   end,
   IsEnabled = "Uranium"
})
ESP.Uranium = true