-- // Blade Ball [ BAC ] Bypass
game:GetService("ReplicatedStorage").Security.RemoteEvent:Destroy()
game:GetService("ReplicatedStorage").Security[""]:Destroy()
game:GetService("ReplicatedStorage").Security:Destroy()
game:GetService("Players").LocalPlayer.PlayerScripts.Client.DeviceChecker:Destroy()

loadstring(game:HttpGet("https://raw.githubusercontent.com/DevTravDYT/BladeBall/main/Visual/ByDevTrav/FreeVersion/.lua",true))()

--if ur mobile use this script
game:GetService("Players").LocalPlayer.PlayerGui.TopbarPlus.TopbarContainer:GetChildren()[6].Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.TopbarPlus.TopbarContainer:GetChildren()[7].Visible = false