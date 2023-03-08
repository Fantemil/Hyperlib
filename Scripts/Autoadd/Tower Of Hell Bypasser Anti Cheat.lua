game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Loading",
  Text = "Bypassing.."
})

game:GetService("Players").LocalPlayer.PlayerScripts.Name = "Bypassed"
wait()
game:GetService("Players").LocalPlayer.Bypassed.LocalScript.Disabled = true
game:GetService("Players").LocalPlayer.Bypassed.LocalScript2.Disabled = true
wait(1)
game:GetService("Players").LocalPlayer.Bypassed.Name = "PlayerScripts"
wait()

game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Success",
  Text = "Bypassed"
})

game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Made By",
  Text = "Made By Rise Valco#7818",
})