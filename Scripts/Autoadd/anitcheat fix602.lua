game:GetService("ReplicatedStorage").Security.RemoteEvent:Destroy()
game:GetService("ReplicatedStorage").Security[""]:Destroy()
game:GetService("ReplicatedStorage").Security:Destroy()
game:GetService("Players").LocalPlayer.PlayerScripts.Client.DeviceChecker:Destroy()
wait(3)
_G.UI_Size = 200 -- config ui size
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()