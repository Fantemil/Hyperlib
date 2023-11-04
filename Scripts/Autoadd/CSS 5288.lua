local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("CSS MENU V1.5.0 (Full) (Part 1)","RJTheme7")
local Tab = Window:NewTab("Unused Zones (Fixed)")
local Section = Tab:NewSection("Load ALL ZONE ON MENU OR ERROR")
Section:NewButton("Virtual Reality Zone Act 1", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Virtual Reality", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 3, 
	[5] = "Virtual Reality"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Virtual Reality Zone Act 2", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Virtual Reality", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Virtual Reality"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Chemical Plant Zone", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Chemical Plant", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Chemical Plant"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Chemical Plant Zone Act 2 (Not working)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Chemical Plant", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Chemical Plant"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Aquatic Ruin Zone", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Aquatic Ruin", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Aquatic Ruin"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Aquatic Ruin Zone Act 2 (Not Working)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Aquatic Ruin", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Aquatic Ruin"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("???? Zone (fixed)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "????", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "????"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("ReplicatedStorage").Objects.Asteron_Bullets.Name = "Asterrn"
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("???? Zone Act 2 (Not Working)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "????", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "????"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("ReplicatedStorage").Objects.Asteron_Bullets.Name = "Asterrn"
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Sandopolis Zone", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Sandopolis", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Sandopolis"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Sandopolis Zone Act 2 (Not Working)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Sandopolis", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Sandopolis"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Metropolis Zone", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Metropolis", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Metropolis"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Metropolis Zone Act 2 (Not Working)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Metropolis", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Metropolis"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Hydrocity Zone", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Hydrocity", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Hydrocity"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Hydrocity Zone Act 2 (Not Working)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Hydrocity", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Hydrocity"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Ice Cap Zone", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Ice Cap", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Ice Cap"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Ice Cap Zone Act 2 (Not Working)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Ice Cap", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Ice Cap"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Old Test Zone Act 1", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Test", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 2, 
	[5] = "Test"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Old Test Zone Act 2", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Test", 
	[2] = 2, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 3, 
	[5] = "Test"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Title Screen Zone Act 1", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Title Screen", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 3, 
	[5] = "Title Screen"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
Section:NewButton("Demo Zone Act 1 (Not Working)", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Demo", 
	[2] = 1, 
	[3] = 
{
	[1] = 628, 
	[2] = 462
}, 
	[4] = 3, 
	[5] = "Demo"
}
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy()
end)
local Tab = Window:NewTab("Build Old Zones (Fixed)")
local Section = Tab:NewSection("Get Metropolis in:")
Section:NewButton("1th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
end)
Section:NewButton("2th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 2
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
end)
Section:NewButton("3th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("4th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 4
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("5th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 5
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("6th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 6
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("7th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 7
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("8th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 8
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("9th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 9
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("10th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 10
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("11th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 11
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("12th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 12
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("13th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 13
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("14th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 14
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("15th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 15
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("16th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 16
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("17th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 17
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("18th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 18
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("19th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 19
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("20th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 20
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
local Section = Tab:NewSection("Get Old Test in:")
Section:NewButton("1th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("2th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 2
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("3th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("4th Your Slot", "Restore Old Test", function()
local A_1 = 1
local A_2 = 4
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("5th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 5
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("6th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 6
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("7th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 7
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("8th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 8
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("9th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 9
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("10th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 10
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("11th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 11
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("12th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 12
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("13th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 13
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("14th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 14
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("15th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 15
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("16th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 16
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("17th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 17
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("18th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 18
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("19th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 19
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
Section:NewButton("20th Your Slot", "Restore Old Test!", function()
local A_1 = 1
local A_2 = 20
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
game:GetService("Players").LocalPlayer.PlayerGui.ManageLevels:Destroy()
Event:FireServer(A_1, A_2)
end)
local A_1 = 
{
	["Cmd"] = "Cleared", 
	["Replay"] = 
{
	[1] = 
{
	[1] = "walking", 
	[2] = 76, 
	[3] = 652
}
}
}
local Event = game:GetService("ReplicatedStorage").Remotes.EndGame
local Tab = Window:NewTab("Beat in One Second")
local Section = Tab:NewSection("Beat Now! (Fixed Glitch 2 Screens)")
Section:NewButton("Beat Zone Now!", "Click This! And Beat Zone!", function()
Event:InvokeServer(A_1)
game:GetService("Players").LocalPlayer.PlayerGui.Game:Destroy()
end)
Section:NewButton("Beat Special Stage Now!", "Click This! And Beat Special Stage!", function()
local A_1 = true
local A_2 = 64
local Event = game:GetService("ReplicatedStorage").Remotes.LeaveStage
Event:FireServer(A_1, A_2)
local A_1 = "Stages3"
local Event = game:GetService("ReplicatedStorage").Remotes.GetPublishedCreations
Event:InvokeServer(A_1)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
game:GetService("Players").LocalPlayer.PlayerGui.S3SpecialStage:Destroy()
end)
Section:NewButton("Crash Game!", "Click This! And Crash Game!", function()
game:GetService("Players").LocalPlayer:Destroy()
end)
Section:NewSlider("Set Act In Ur LvL", "Setting Act In Your Level", 6, 0, function(s)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Settings.Frame.Holder.ActNum.TextBox.Text = s
end)
Section:NewToggle("Auto Save Level", "This function trying spam save level", function(state)
    if state then
        oro = true
      while oro == true do
        local args = {
          [1] = {
            [1] = 0,
            [2] = 9,
            [3] = 1,
            [4] = 39,
            [5] = 130,
            [6] = {
              [1] = {
                [1] = 1,
                [2] = 1,
                [3] = 1,
                [4] = 1,
                [5] = 1,
                [6] = 1
              },
              [2] = {
                [1] = 1,
                [2] = 1,
                [3] = 1,
                [4] = 1,
                [5] = 1,
                [6] = 1
              }
            },
            [7] = {},
            [8] = 64,
            [9] = 256,
            [10] = 768,
            [11] = 256,
            [12] = 3,
            [13] = {
              [1] = 1,
              [2] = 12,
              [3] = 2,
              [4] = 3,
              [5] = 4,
              [6] = 5,
              [7] = 6,
              [8] = 7,
              [9] = 8,
              [10] = 11,
              [11] = 10,
              [12] = 9
            },
            [14] = 952,
            [15] = 1,
            [16] = 0,
            [17] = 5,
            [18] = 0,
            [19] = 160,
            [20] = 224,
            [21] = 0,
            [22] = 2,
            [23] = 0,
            [24] = 0,
            [25] = {
              [1] = 425,
              [2] = 528,
              [3] = 244,
              [4] = 437,
              [5] = 1
            },
            [26] = 0,
            [27] = 0,
            [28] = 0,
            [29] = 0,
            [30] = 0,
            [31] = 255,
            [32] = 255,
            [33] = 255,
            [34] = 255,
            [35] = 255,
            [36] = 255,
            [37] = 255,
            [38] = 255,
            [39] = 255,
            [40] = 1,
            [41] = 5,
            [42] = 2,
            [43] = {
              [1] = 193
            },
            [44] = 0,
            [45] = 1,
            [46] = 1,
            [47] = 1,
            [48] = 1,
            [49] = {},
            [50] = {}
          },
          [2] = "save"
        }
        
        game:GetService("ReplicatedStorage").Remotes.LevelEditorCommand:FireServer(unpack(args))
        wait(0.1)
      end
    else
        oro = false
    end
end)
local Section = Tab:NewSection("Fix Not Opening Zone!!!")
Section:NewButton("FIX!!!", "", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game:Destroy()
end)
local Tab = Window:NewTab("Replace Ring On Objects")
local Section = Tab:NewSection("House Objects")
Section:NewButton("Restore Big Bookshelf", "Click This! And Replace Ring on Bookshelf big!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 224
end)
Section:NewButton("Restore Small Bookshelf", "Click This! And Replace Ring on Small Bookshelf!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 223
end)
Section:NewButton("Restore Chao fruit", "Click This! And Replace Ring on Chao fruit!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 168
end)
Section:NewButton("Restore Picture (Sonic & Tails)", "Click This! And Replace Ring on Picture (Sonic & Tails)!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 169
end)
Section:NewButton("Restore Picture 1", "Click This! And Replace Ring on Picture 1!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 170
end)
Section:NewButton("Restore Small Table", "Click This! And Replace Ring on Small Table!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 165
end)
Section:NewButton("Restore Long Table", "Click This! And Replace Ring on Long Table!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 166
end)
Section:NewButton("Restore Long Couch", "Click This! And Replace Ring on Long Couch!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 163
end)
Section:NewButton("Restore Small Couch", "Click This! And Replace Ring on Small Couch!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 164
end)
Section:NewButton("Restore Cake Slice", "Click This! And Replace Ring on Cake Slice!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 167
end)
local Section = Tab:NewSection("Unused Global Objects")
Section:NewButton("Restore Small Rock from AIZ (break if spindash)", "Click This! And Replace Ring on This Rock!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 143
end)
Section:NewButton("Restore Medium Rock from AIZ", "Click This! And Replace Ring on This Rock!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 144
end)
Section:NewButton("Restore Big Rock from AIZ", "Click This! And Replace Ring on This Rock!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 145
end)
Section:NewButton("Restore Small Rock from AIZ (Break if Jump)", "Click This! And Replace Ring on This Rock!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 146
end)
Section:NewButton("Restore Triple Rotating Bumpers", "Click This! And Replace Ring on This Triple Rotating Bumpers!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 514
end)
Section:NewButton("Restore Solid Wall 4", "Click This! And Replace Ring on This Solid Wall 4!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 373
end)
Section:NewButton("Restore Solid Wall 5", "Click This! And Replace Ring on This Solid Wall 5!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 374
end)
local Section = Tab:NewSection("Objects from Old Test")
Section:NewButton("Restore Block", "Click This! And Replace Ring on This Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 181
end)
Section:NewButton("Restore Breakable Wall", "Click This! And Replace Ring on This Breakable Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 192
end)
Section:NewButton("Restore Rotating Staircase", "Click This! And Replace Ring on This Rotating Staircase!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 232
end)
Section:NewButton("Restore Conveyor", "Click This! And Replace Ring on This Conveyor!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 142
end)
Section:NewButton("Restore CD Bumper", "Click This! And Replace Ring on This CD Bumper!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 33
end)
Section:NewButton("Restore Swinging Platform", "Click This! And Replace Ring on This Swinging Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 123
end)
Section:NewButton("Restore Platform", "Click This! And Replace Ring on This Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 115
end)
Section:NewButton("Restore Bridge", "Click This! And Replace Ring on This Bridge!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 120
end)
local Section = Tab:NewSection("Objects from Test")
Section:NewButton("Restore Block", "Click This! And Replace Ring on This Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 400
end)
Section:NewButton("Restore Breakable Wall", "Click This! And Replace Ring on This Breakable Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 401
end)
Section:NewButton("Restore Collapsing Bridge", "Click This! And Replace Ring on This Collapsing Bridge!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 404
end)
Section:NewButton("Restore Bumper Platform", "Click This! And Replace Ring on This Bumper Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 405
end)
Section:NewButton("Restore Breakable Block", "Click This! And Replace Ring on This Breakable Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 384
end)
Section:NewButton("Restore Flipper", "Click This! And Replace Ring on This Flipper!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 322
end)
Section:NewButton("Restore Glass Bumper", "Click This! And Replace Ring on This Glass Bumper!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 385
end)
Section:NewButton("Restore Fire Wall", "Click This! And Replace Ring on This Fire Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 386
end)
Section:NewButton("Restore Platform", "Click This! And Replace Ring on This Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 394
end)
Section:NewButton("Restore Swinging Platform", "Click This! And Replace Ring on This Swinging Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 391
end)
Section:NewButton("Restore Rotating Staircase", "Click This! And Replace Ring on This Rotating Staircase!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 411
end)
Section:NewButton("Restore Bridge", "Click This! And Replace Ring on This Bridge!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 496
end)
Section:NewButton("Restore Interactable Block", "Click This! And Replace Ring on This Interactable Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 530
end)
Section:NewButton("Restore S2 Bumper", "Click This! And Replace Ring on This S2 Bumper!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 413
end)
Section:NewButton("Restore Bumper Token", "Click This! And Replace Ring on This Bumper Token!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 518
end)
Section:NewButton("Restore Ballon", "Click This! And Replace Ring on This Ballon!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 34
end)
local Section = Tab:NewSection("Objects from Green Hill")
Section:NewButton("Restore Collapsing Ledge", "Click This! And Replace Ring on This Collapsing Ledge!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 379
end)
Section:NewButton("Restore Palmatree Panic Ghost Platform", "Click This! And Replace Ring on This Palmatree Panic Ghost Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 372
end)
Section:NewButton("Restore Bridge", "Click This! And Replace Ring on This Bridge!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 203
end)
Section:NewButton("Restore Bridge Support", "Click This! And Replace Ring on This Bridge Support!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 244
end)
Section:NewButton("Restore Vertical Moving Tall Platform", "Click This! And Replace Ring on This Vertical Moving Tall Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 233
end)
Section:NewButton("Restore Breakable Wall", "Click This! And Replace Ring on This Breakable Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 189
end)
Section:NewButton("Restore Platform", "Click This! And Replace Ring on This Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 202
end)
Section:NewButton("Restore Swinging Platform", "Click This! And Replace Ring on This Swinging Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 293
end)
Section:NewButton("Restore Non-Solid Wall", "Click This! And Replace Ring on This Non-Solid Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 186
end)
Section:NewButton("Restore Solid Wall", "Click This! And Replace Ring on This Solid Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 183
end)
Section:NewButton("Restore Rock", "Click This! And Replace Ring on This Rock!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 182
end)
local Section = Tab:NewSection("Objects from Marble")
Section:NewButton("Restore Block", "Click This! And Replace Ring on This Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 199
end)
Section:NewButton("Restore Falling Block Type A", "Click This! And Replace Ring on This Falling Block Type A!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 211
end)
Section:NewButton("Restore Falling Block Type B", "Click This! And Replace Ring on This Falling Block Type B!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 212
end)
Section:NewButton("Restore Bobbing Block", "Click This! And Replace Ring on This Bobbing Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 213
end)
Section:NewButton("Restore Platform", "Click This! And Replace Ring on This Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 200
end)
Section:NewButton("Restore Swinging Platform", "Click This! And Replace Ring on This Swinging Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 263
end)
Section:NewButton("Restore Moving Pillar", "Click This! And Replace Ring on This Moving Pillar!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 208
end)
Section:NewButton("Restore Breakable Block", "Click This! And Replace Ring on This Breakable Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 230
end)
Section:NewButton("Restore Fire Wall", "Click This! And Replace Ring on This Fire Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 248
end)
Section:NewButton("Restore Fireball Spawner", "Click This! And Replace Ring on This Fireball Spawner!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 257
end)
Section:NewButton("Restore Interactable Block", "Click This! And Replace Ring on This Interactable Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 529
end)
local Section = Tab:NewSection("Objects from Spring Yard")
Section:NewButton("Restore Bumper", "Click This! And Replace Ring on This Bumper!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 256
end)
Section:NewButton("Restore Block", "Click This! And Replace Ring on This Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 245
end)
Section:NewButton("Restore Platform", "Click This! And Replace Ring on This Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 286
end)
Section:NewButton("Restore Moving Square Platform", "Click This! And Replace Ring on This Moving Square Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 246
end)
local Section = Tab:NewSection("Objects from Labyrinth")
Section:NewButton("Restore Block", "Click This! And Replace Ring on This Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 221
end)
Section:NewButton("Restore Sponge Block", "Click This! And Replace Ring on This Sponge Block!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 524
end)
Section:NewButton("Restore Platform", "Click This! And Replace Ring on This Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 525
end)
Section:NewButton("Restore Spear", "Click This! And Replace Ring on This Spear!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 527
end)
local Section = Tab:NewSection("Objects from Star Light")
Section:NewButton("Restore Collapsing Bridge", "Click This! And Replace Ring on This Collapsing Bridge!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 310
end)
Section:NewButton("Restore Rotating Platforms", "Click This! And Replace Ring on This Rotating Platforms!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 311
end)
Section:NewButton("Restore Descending Staircase", "Click This! And Replace Ring on This Descending Staircase!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 312
end)
Section:NewButton("Restore Fire Wall", "Click This! And Replace Ring on This Fire Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 314
end)
Section:NewButton("Restore Swinging Spiked Platform", "Click This! And Replace Ring on This Swinging Spiked Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 320
end)
Section:NewButton("Restore Breakable Wall", "Click This! And Replace Ring on This Breakable Wall!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 321
end)
local Section = Tab:NewSection("Objects from Emerald Hill")
Section:NewButton("Restore Platform", "Click This! And Replace Ring on This Platform!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 217
end)
Section:NewButton("Restore Bridge Support", "Click This! And Replace Ring on This Bridge Support!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 532
end)
Section:NewButton("Restore Bridge", "Click This! And Replace Ring on This Bridge!", function()
Instance.new("NumberValue",game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring)
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.Value.Name = "ObjId"
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 214
end)
local Tab = Window:NewTab("Sounds Scripts")
local Section = Tab:NewSection("Sounds")
Section:NewButton("Play sound back", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].bork.Playing = true
end)
Section:NewButton("Play Warp Sound", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].warp.Playing = true
end)
Section:NewButton("Play sound -- Illegal --", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].buzzer.Playing = true
end)
Section:NewButton("Checkpoint sound play", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].checkpoint.Playing = true
end)
Section:NewButton("Play sound -- Sonic Can Super Sonic --", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].medal.Playing = true
end)
Section:NewButton("Oh, hi! Welcome to my School House!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.baldihi.Playing = true
end)
Section:NewButton("Baldi slap ruler!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.baldislap.Playing = true
end)
Section:NewButton("Baldi jumpscare!", "Click This! And scare all players!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.baldiscare.Playing = true
end)
Section:NewButton("Jump sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.jump.Playing = true
end)
Section:NewButton("Sonic CD Jump sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.jump2.Playing = true
end)
Section:NewButton("Yes sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.ExtraLifeCD.Playing = true
end)
Section:NewButton("SONIC.EXE LAUGH!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.SonicExeLaugh.Playing = true
end)
Section:NewButton("Sonic 1 GAME OVER!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.GameOverS1.Playing = true
end)
Section:NewButton("AIZ Rock Break!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.Break.Playing = true
end)
Section:NewButton("Bumper!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.Bumper.Playing = true
end)
Section:NewButton("Tails Fly", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.fly.Playing = true
end)
Section:NewButton("Tails Fly Off!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.fly.Playing = false
end)
Section:NewButton("Ring Sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.ring.Playing = true
end)
Section:NewButton("SCD Drown!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.scd_drown.Playing = true
end)
Section:NewButton("Died on spike!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.spike_hit.Playing = true
end)
Section:NewButton("Losed ring!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.RingLose.Playing = true
end)
Section:NewButton("Blue Sphere eat!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.Sphere.Playing = true
end)
Section:NewButton("House Zone Moving Face!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.face_move.Playing = true
end)
Section:NewButton("Sonic_EXE Exit!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.die2.Playing = true
end)
Section:NewButton("Glass Bumper Crash!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.crash.Playing = true
end)
Section:NewButton("Level Select Selecting!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.select.Playing = true
end)
Section:NewButton("Dead Sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.oof.Playing = true
end)
Section:NewButton("Eggman Jump!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.jump3.Playing = true
end)
Section:NewButton("Tails Tfly!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.tfly.Playing = true
end)
Section:NewButton("Tails Tfly Off!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.tfly.Playing = false
end)
Section:NewButton("Point Sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.point.Playing = true
end)
Section:NewButton("Warp Sound 2!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.warp.Playing = true
end)
Section:NewButton("Spring Sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.spring.Playing = true
end)
Section:NewButton("Break Sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.break2.Playing = true
end)
Section:NewButton("Electric Shield Sound!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.lshield.Playing = true
end)
Section:NewButton("Get Electric Shield!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.lshieldget.Playing = true
end)
Section:NewButton("Flame Shield!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.fshield.Playing = true
end)
Section:NewButton("Get Flame Shield!", "Click This! And Play Sound!", function()
game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.fshieldget.Playing = true
end)
Section:NewToggle("MAKE A MESS WITH THE SOUNDS", "ToggleInfo", function(state)
    if state then
        a = 0
        print("Toggle On")
        while a == 0 do
            game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].bork.Playing = true
            game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].warp.Playing = true
            game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].buzzer.Playing = true
            game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].checkpoint.Playing = true
            game:GetService("ReplicatedStorage").LevelSelect.Backdrop.Screen["Level Select Script"].medal.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.baldihi.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.baldislap.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.baldiscare.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.jump.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.jump2.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.ExtraLifeCD.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.SonicExeLaugh.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.GameOverS1.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.Break.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.Bumper.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.fly.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.fly.Playing = false
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.ring.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.scd_drown.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.spike_hit.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.RingLose.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.Sphere.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.face_move.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.die2.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.crash.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.select.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.oof.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.jump3.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.tfly.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.tfly.Playing = false
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.point.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.warp.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.spring.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.break2.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.lshield.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.lshieldget.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.fshield.Playing = true
            game:GetService("ReplicatedStorage").Game.Backdrop.Main.Engine.fshieldget.Playing = true
            wait(2)
        end
    else
        a = 1
        print("Toggle Off")
    end
end)
local Tab = Window:NewTab("ChrSkns/ObjSkns Script")
local Section = Tab:NewSection("CharaSkins")
Section:NewButton("Sonic 1 to Sonic 1 Rose (Read in three dot)", "IF U SEE TEXT SONIC_S1_ROSE DO NOT PLAY OR GAME CRASH", function()
game:GetService("ReplicatedStorage").Objects["Sonic_S1"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Sonic_S1_Rose"].Name = "Sonic_S1"
end)
Section:NewButton("Sonic CD to Sonic CD Rose (Read in three dot)", "IF U SEE TEXT SONIC_SCD_ROSE DO NOT PLAY OR GAME CRASH", function()
game:GetService("ReplicatedStorage").Objects["Sonic_SCD"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Sonic_SCD_Rose"].Name = "Sonic_SCD"
end)
Section:NewButton("Sonic 2 to Sonic 2 Ashura", "Players DONT SEE UR SKIN!!!", function()
game:GetService("ReplicatedStorage").Objects["Sonic_S2"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Sonic_S2_Ashura"].Name = "Sonic_S2"
end)
Section:NewButton("Sonic 3 to Sonic 3 Red (Read in three dot)", "IF U SEE TEXT SONIC_S3_RED DO NOT PLAY OR GAME CRASH", function()
game:GetService("ReplicatedStorage").Objects["Sonic_S3"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Sonic_S3_Red"].Name = "Sonic_S3"
end)
Section:NewButton("Knuckles to Blue Knuckles (Read in three dot)", "WARNING: IF U SEE TEXT KNUCKLES_S3_BLUE DO NOT PLAY OR GAME CRASH", function()
game:GetService("ReplicatedStorage").Objects["Knuckles_S3"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Knuckles_S3_Blue"].Name = "Knuckles_S3"
end)
Section:NewButton("Sonic CD to Sonic EXE (Restored EXE's Animation)", "IF U SEE TEXT SONIC_EXE DO NOT PLAY OR GAME CRASH", function()
game:GetService("ReplicatedStorage").Objects["Sonic_SCD"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Sonic_EXE"].Name = "Sonic_SCD"
game:GetService("ReplicatedStorage").Animations["Sonic_SCD"]:Destroy()
game:GetService("ReplicatedStorage").Animations["Sonic_EXE"].Name = "Sonic_SCD"
end)
Section:NewButton("Metal Sonic to Orange Mushroom", "Do this", function()
game:GetService("ReplicatedStorage").Objects["Metal_Sonic"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Mushroom_Orange"].Name = "Metal_Sonic"
game:GetService("ReplicatedStorage").Animations["Metal_Sonic"]:Destroy()
game:GetService("ReplicatedStorage").Animations["Mushroom_Orange"].Name = "Metal_Sonic"
end)
Section:NewButton("Shadow to Tiny Sonic", "Do this", function()
game:GetService("ReplicatedStorage").Objects["Shadow_S3"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Sonic_Tiny"].Name = "Shadow_S3"
game:GetService("ReplicatedStorage").Animations["Shadow_S3"]:Destroy()
game:GetService("ReplicatedStorage").Animations["Sonic_Tiny"].Name = "Shadow_S3"
end)
Section:NewButton("Dr.Robotnik to Baldi", "Do this", function()
game:GetService("ReplicatedStorage").Objects["Dr_Robotnik"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Baldi"].Name = "Dr_Robotnik"
game:GetService("ReplicatedStorage").Animations["Dr_Robotnik"]:Destroy()
game:GetService("ReplicatedStorage").Animations["Baldi"].Name = "Dr_Robotnik"
end)
local Section = Tab:NewSection("Textures")
Section:NewButton("Basic Textures (In V9 Textures)", "Replace Textures!", function()
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S3.Value = 8352336106
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S2.Value = 8352336106
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S1.Value = 8352336106
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_SCD.Value = 8352336106
end)
Section:NewButton("Sonic 1 Textures", "Replace Textures!", function()
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S3.Value = 13804826000
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S2.Value = 13804826000
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S1.Value = 13804826000
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_SCD.Value = 13804826000
end)
Section:NewButton("Sonic 2 Textures", "Replace Textures!", function()
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S3.Value = 13804828820
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S2.Value = 13804828820
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S1.Value = 13804828820
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_SCD.Value = 13804828820
end)
Section:NewButton("Sonic 3 Textures", "Replace Textures!", function()
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S3.Value = 13804830596
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S2.Value = 13804830596
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S1.Value = 13804830596
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_SCD.Value = 13804830596
end)
Section:NewButton("Sonic CD Textures", "Replace Textures!", function()
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S3.Value = 13804832490
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S2.Value = 13804832490
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_S1.Value = 13804832490
game:GetService("ReplicatedStorage").Spritesheets.Objects_General_SCD.Value = 13804832490
end)
local Tab = Window:NewTab("Delete Objects!")
local Section = Tab:NewSection("Objects")
Section:NewButton("Delete All Objects", "Do this", function()
game:GetService("ReplicatedStorage").Objects:Destroy()
end)
Section:NewButton("Delete Test Block Pushable", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Block_Pushable"]:Destroy()
end)
Section:NewButton("Delete Test Collapsing Bridge", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Collapsing_Bridge"]:Destroy()
end)
Section:NewButton("Delete Test Bridge 8 Logs", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Bridge_08"]:Destroy()
end)
Section:NewButton("Delete Test Bridge 12 Logs", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Bridge_12"]:Destroy()
end)
Section:NewButton("Delete Test Platform Collapse", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Platform_Collapse"]:Destroy()
end)
Section:NewButton("Delete Test Staircase", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Staircase"]:Destroy()
end)
Section:NewButton("Delete Test Staircase 4", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Staircase_Rotating_1234"]:Destroy()
end)
Section:NewButton("Delete Test Staircase 2", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Staircase_Rotating_1004"]:Destroy()
end)
Section:NewButton("Delete Test Platform Bumper Up-Down 256px", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Platform_Bumper_R256"]:Destroy()
end)
Section:NewButton("Delete Test Platform Bumper Up-Down 128px", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Platform_Bumper_D128"]:Destroy()
end)
Section:NewButton("Delete Test Platform Bumper Right-Left 128px", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Platform_Bumper_R128"]:Destroy()
end)
Section:NewButton("Delete Test Breakable Wall Middle", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Breakable_Wall_Middle"]:Destroy()
end)
Section:NewButton("Delete Test Platform", "Do this", function()
game:GetService("ReplicatedStorage").Objects["TZ__Platform"]:Destroy()
end)
local Tab = Window:NewTab("Unused Music (Intro)")
local Section = Tab:NewSection("READ IN THREE DOT")
Section:NewButton("READ HERE IN THREE DOT", "This put music in Song ID", function()
end)
local Section = Tab:NewSection("Undertale Music")
Section:NewButton("Asgore", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 360710833
end)
Section:NewButton("Finale", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 321055859
end)
Section:NewButton("Gaster's Theme", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 582435097
end)
Section:NewButton("Ghost Fight", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 473070704
end)
Section:NewButton("Hopes and Dreams", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 382688081
end)
local Section = Tab:NewSection("Dr.Robotnik's Mean Bean Machine")
Section:NewButton("Multiplayer Versus", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 242610564
end)
local Section = Tab:NewSection("Sonic The Hedgehog 1")
Section:NewButton("Invincibility", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7456592788
end)
local Section = Tab:NewSection("Sonic The Hedgehog 2")
Section:NewButton("Hidden Palace Zone", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 429388470
end)
Section:NewButton("Invincibility", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7456627572
end)
local Section = Tab:NewSection("Sonic & Knuckles")
Section:NewButton("Invincibility", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7456394306
end)
local Section = Tab:NewSection("Fabian Del Priore Rapture")
Section:NewButton("A Dash From Freedom", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 2413255224
end)
local Section = Tab:NewSection("Rapina Bros")
Section:NewButton("Reach To The Top", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 2543292816
end)
local Section = Tab:NewSection("Xinon")
Section:NewButton("Heart Warming Story", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 291899899
end)
local Section = Tab:NewSection("Kitsune 2")
Section:NewButton("Goodnight (Ducktales)", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 230440878
end)
Section:NewButton("Rainbow Tylenol", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 318790284
end)
local Section = Tab:NewSection("Knuckle Joe")
Section:NewButton("The Time We Had", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 291050847
end)
local Tab = Window:NewTab("Unused Music (Loop)")
local Section = Tab:NewSection("READ IN THREE DOT")
Section:NewButton("READ HERE IN THREE DOT", "This put music in Song ID", function()
end)
local Section = Tab:NewSection("House Zone")
Section:NewButton("House Music", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 1551374958
end)
Section:NewButton("House Music 2", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 150110636
end)
Section:NewButton("House Music 3", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 1551374073
end)
Section:NewButton("House Music 4", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 1551374625
end)
Section:NewButton("House Music 5", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 1553436267
end)
local Section = Tab:NewSection("Undertale Music")
Section:NewButton("Spear Of Justice", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 429384757
end)
Section:NewButton("Asgore", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 360710888
end)
Section:NewButton("Finale", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 321055906
end)
Section:NewButton("Gaster's Theme", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 582435167
end)
Section:NewButton("Ghost Fight", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 473070704
end)
Section:NewButton("Hopes and Dreams", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 382688202
end)
Section:NewButton("Run!!!", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 461923735
end)
Section:NewButton("Dog Song", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 429383704
end)
local Section = Tab:NewSection("Dr.Robotnik's Mean Bean Machine")
Section:NewButton("Multiplayer Versus", "SUS!?", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 242610832
end)
Section:NewButton("Exercise Mode", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 284747270
end)
Section:NewButton("Stages 1-4", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 284750073
end)
local Section = Tab:NewSection("CSS Music")
Section:NewButton("Title Screen", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 313139233
end)
Section:NewButton("Build Theme", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 3524195336
end)
Section:NewButton("Main Menu", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 4623689274
end)
local Section = Tab:NewSection("Sonic The Hedgehog 1")
Section:NewButton("Title Screen", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 347479590
end)
Section:NewButton("Act Clear", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 314059232
end)
Section:NewButton("Invincibility", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7456593376
end)
local Section = Tab:NewSection("Sonic The Hedgehog 2")
Section:NewButton("Invincibility", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7456628353
end)
Section:NewButton("Final Boss", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 379893384
end)
local Section = Tab:NewSection("Sonic 3 & Knuckles")
Section:NewButton("Drown", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 314059552
end)
Section:NewButton("Emerald", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 304801042
end)
Section:NewButton("Act Cleared", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 295636697
end)
Section:NewButton("Invincibility", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7456630275
end)
local Section = Tab:NewSection("Sonic & Knuckles")
Section:NewButton("Invincibility", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7456394738
end)
local Section = Tab:NewSection("Sonic The Hedgehog CD")
Section:NewButton("Game Over (US)", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 302428675
end)
Section:NewButton("Speed Up", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7354973962
end)
Section:NewButton("Super Sneakers", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7354988616
end)
Section:NewButton("Zone Clear", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7423170639
end)
Section:NewButton("Stage Clear", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7423204753
end)
Section:NewButton("Invincible", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7471698482
end)
Section:NewButton("Invincibility", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 7471720264
end)
local Section = Tab:NewSection("Fabian Del Priore Rapture")
Section:NewButton("A Dash For Freedom", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 2413255944
end)
local Section = Tab:NewSection("Rapina Bros")
Section:NewButton("Reach To The Top", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 2544859859
end)
local Section = Tab:NewSection("Xinon")
Section:NewButton("Heart Warming Story", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 291899990
end)
local Section = Tab:NewSection("Kitsune 2")
Section:NewButton("Goodnight (Ducktales)", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 230440993
end)
Section:NewButton("Rainbow Tylenol", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 318790343
end)
local Section = Tab:NewSection("Knuckle Joe")
Section:NewButton("The Times We Had", "Restore Old/Cut Music!", function()
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.Windows.Music.Frame.Custom.Text = 291053059
end)
local Tab = Window:NewTab("Bonus & Info")
local Section = Tab:NewSection("DarkDex V3")
Section:NewButton("Open DarkDex V3", "", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)
local Section = Tab:NewSection("Simple Spy")
Section:NewButton("Open SimpleSpy", "", function()
if _G.SimpleSpyExecuted and type(_G.SimpleSpyShutdown) == "function" then
	print(pcall(_G.SimpleSpyShutdown))
end

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Highlight =
	loadstring(
		game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/highlight.lua")
	)()

---- GENERATED (kinda sorta mostly) BY GUI to LUA ----

-- Instances:

local SimpleSpy2 = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local LeftPanel = Instance.new("Frame")
local LogList = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local RemoteTemplate = Instance.new("Frame")
local ColorBar = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local Button = Instance.new("TextButton")
local RightPanel = Instance.new("Frame")
local CodeBox = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local FunctionTemplate = Instance.new("Frame")
local ColorBar_2 = Instance.new("Frame")
local Text_2 = Instance.new("TextLabel")
local Button_2 = Instance.new("TextButton")
local TopBar = Instance.new("Frame")
local Simple = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local MaximizeButton = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local MinimizeButton = Instance.new("TextButton")
local ImageLabel_3 = Instance.new("ImageLabel")
local ToolTip = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

--Properties:

SimpleSpy2.Name = "SimpleSpy2"
SimpleSpy2.ResetOnSpawn = false

Background.Name = "Background"
Background.Parent = SimpleSpy2
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.BackgroundTransparency = 1
Background.Position = UDim2.new(0, 500, 0, 200)
Background.Size = UDim2.new(0, 450, 0, 268)

LeftPanel.Name = "LeftPanel"
LeftPanel.Parent = Background
LeftPanel.BackgroundColor3 = Color3.fromRGB(53, 52, 55)
LeftPanel.BorderSizePixel = 0
LeftPanel.Position = UDim2.new(0, 0, 0, 19)
LeftPanel.Size = UDim2.new(0, 131, 0, 249)

LogList.Name = "LogList"
LogList.Parent = LeftPanel
LogList.Active = true
LogList.BackgroundColor3 = Color3.new(1, 1, 1)
LogList.BackgroundTransparency = 1
LogList.BorderSizePixel = 0
LogList.Position = UDim2.new(0, 0, 0, 9)
LogList.Size = UDim2.new(0, 131, 0, 232)
LogList.CanvasSize = UDim2.new(0, 0, 0, 0)
LogList.ScrollBarThickness = 4

UIListLayout.Parent = LogList
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

RemoteTemplate.Name = "RemoteTemplate"
RemoteTemplate.Parent = LogList
RemoteTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteTemplate.BackgroundTransparency = 1
RemoteTemplate.Size = UDim2.new(0, 117, 0, 27)

ColorBar.Name = "ColorBar"
ColorBar.Parent = RemoteTemplate
ColorBar.BackgroundColor3 = Color3.fromRGB(255, 242, 0)
ColorBar.BorderSizePixel = 0
ColorBar.Position = UDim2.new(0, 0, 0, 1)
ColorBar.Size = UDim2.new(0, 7, 0, 18)
ColorBar.ZIndex = 2

Text.Name = "Text"
Text.Parent = RemoteTemplate
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0, 12, 0, 1)
Text.Size = UDim2.new(0, 105, 0, 18)
Text.ZIndex = 2
Text.Font = Enum.Font.SourceSans
Text.Text = "TEXT"
Text.TextColor3 = Color3.new(1, 1, 1)
Text.TextSize = 14
Text.TextXAlignment = Enum.TextXAlignment.Left
Text.TextWrapped = true

Button.Name = "Button"
Button.Parent = RemoteTemplate
Button.BackgroundColor3 = Color3.new(0, 0, 0)
Button.BackgroundTransparency = 0.75
Button.BorderColor3 = Color3.new(1, 1, 1)
Button.Position = UDim2.new(0, 0, 0, 1)
Button.Size = UDim2.new(0, 117, 0, 18)
Button.AutoButtonColor = false
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.new(0, 0, 0)
Button.TextSize = 14

RightPanel.Name = "RightPanel"
RightPanel.Parent = Background
RightPanel.BackgroundColor3 = Color3.fromRGB(37, 36, 38)
RightPanel.BorderSizePixel = 0
RightPanel.Position = UDim2.new(0, 131, 0, 19)
RightPanel.Size = UDim2.new(0, 319, 0, 249)

CodeBox.Name = "CodeBox"
CodeBox.Parent = RightPanel
CodeBox.BackgroundColor3 = Color3.new(0.0823529, 0.0745098, 0.0784314)
CodeBox.BorderSizePixel = 0
CodeBox.Size = UDim2.new(0, 319, 0, 119)

ScrollingFrame.Parent = RightPanel
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0, 0, 0.5, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 0.5, -9)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 4

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(0, 94, 0, 27)

FunctionTemplate.Name = "FunctionTemplate"
FunctionTemplate.Parent = ScrollingFrame
FunctionTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
FunctionTemplate.BackgroundTransparency = 1
FunctionTemplate.Size = UDim2.new(0, 117, 0, 23)

ColorBar_2.Name = "ColorBar"
ColorBar_2.Parent = FunctionTemplate
ColorBar_2.BackgroundColor3 = Color3.new(1, 1, 1)
ColorBar_2.BorderSizePixel = 0
ColorBar_2.Position = UDim2.new(0, 7, 0, 10)
ColorBar_2.Size = UDim2.new(0, 7, 0, 18)
ColorBar_2.ZIndex = 3

Text_2.Name = "Text"
Text_2.Parent = FunctionTemplate
Text_2.BackgroundColor3 = Color3.new(1, 1, 1)
Text_2.BackgroundTransparency = 1
Text_2.Position = UDim2.new(0, 19, 0, 10)
Text_2.Size = UDim2.new(0, 69, 0, 18)
Text_2.ZIndex = 2
Text_2.Font = Enum.Font.SourceSans
Text_2.Text = "TEXT"
Text_2.TextColor3 = Color3.new(1, 1, 1)
Text_2.TextSize = 14
Text_2.TextStrokeColor3 = Color3.new(0.145098, 0.141176, 0.14902)
Text_2.TextXAlignment = Enum.TextXAlignment.Left
Text_2.TextWrapped = true

Button_2.Name = "Button"
Button_2.Parent = FunctionTemplate
Button_2.BackgroundColor3 = Color3.new(0, 0, 0)
Button_2.BackgroundTransparency = 0.69999998807907
Button_2.BorderColor3 = Color3.new(1, 1, 1)
Button_2.Position = UDim2.new(0, 7, 0, 10)
Button_2.Size = UDim2.new(0, 80, 0, 18)
Button_2.AutoButtonColor = false
Button_2.Font = Enum.Font.SourceSans
Button_2.Text = ""
Button_2.TextColor3 = Color3.new(0, 0, 0)
Button_2.TextSize = 14

TopBar.Name = "TopBar"
TopBar.Parent = Background
TopBar.BackgroundColor3 = Color3.fromRGB(37, 35, 38)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 450, 0, 19)

Simple.Name = "Simple"
Simple.Parent = TopBar
Simple.BackgroundColor3 = Color3.new(1, 1, 1)
Simple.AutoButtonColor = false
Simple.BackgroundTransparency = 1
Simple.Position = UDim2.new(0, 5, 0, 0)
Simple.Size = UDim2.new(0, 57, 0, 18)
Simple.Font = Enum.Font.SourceSansBold
Simple.Text = "SimpleSpy"
Simple.TextColor3 = Color3.new(1, 1, 1)
Simple.TextSize = 14
Simple.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopBar
CloseButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -19, 0, 0)
CloseButton.Size = UDim2.new(0, 19, 0, 19)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = ""
CloseButton.TextColor3 = Color3.new(0, 0, 0)
CloseButton.TextSize = 14

ImageLabel.Parent = CloseButton
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, 5, 0, 5)
ImageLabel.Size = UDim2.new(0, 9, 0, 9)
ImageLabel.Image = "http://www.roblox.com/asset/?id=5597086202"

MaximizeButton.Name = "MaximizeButton"
MaximizeButton.Parent = TopBar
MaximizeButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
MaximizeButton.BorderSizePixel = 0
MaximizeButton.Position = UDim2.new(1, -38, 0, 0)
MaximizeButton.Size = UDim2.new(0, 19, 0, 19)
MaximizeButton.Font = Enum.Font.SourceSans
MaximizeButton.Text = ""
MaximizeButton.TextColor3 = Color3.new(0, 0, 0)
MaximizeButton.TextSize = 14

ImageLabel_2.Parent = MaximizeButton
ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.Position = UDim2.new(0, 5, 0, 5)
ImageLabel_2.Size = UDim2.new(0, 9, 0, 9)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=5597108117"

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TopBar
MinimizeButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(1, -57, 0, 0)
MinimizeButton.Size = UDim2.new(0, 19, 0, 19)
MinimizeButton.Font = Enum.Font.SourceSans
MinimizeButton.Text = ""
MinimizeButton.TextColor3 = Color3.new(0, 0, 0)
MinimizeButton.TextSize = 14

ImageLabel_3.Parent = MinimizeButton
ImageLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_3.BackgroundTransparency = 1
ImageLabel_3.Position = UDim2.new(0, 5, 0, 5)
ImageLabel_3.Size = UDim2.new(0, 9, 0, 9)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=5597105827"

ToolTip.Name = "ToolTip"
ToolTip.Parent = SimpleSpy2
ToolTip.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ToolTip.BackgroundTransparency = 0.1
ToolTip.BorderColor3 = Color3.new(1, 1, 1)
ToolTip.Size = UDim2.new(0, 200, 0, 50)
ToolTip.ZIndex = 3
ToolTip.Visible = false

TextLabel.Parent = ToolTip
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 2, 0, 2)
TextLabel.Size = UDim2.new(0, 196, 0, 46)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "This is some slightly longer text."
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

-------------------------------------------------------------------------------
-- init
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local ContentProvider = game:GetService("ContentProvider")
local TextService = game:GetService("TextService")
local Mouse

local selectedColor = Color3.new(0.321569, 0.333333, 1)
local deselectedColor = Color3.new(0.8, 0.8, 0.8)
--- So things are descending
local layoutOrderNum = 999999999
--- Whether or not the gui is closing
local mainClosing = false
--- Whether or not the gui is closed (defaults to false)
local closed = false
--- Whether or not the sidebar is closing
local sideClosing = false
--- Whether or not the sidebar is closed (defaults to true but opens automatically on remote selection)
local sideClosed = false
--- Whether or not the code box is maximized (defaults to false)
local maximized = false
--- The event logs to be read from
local logs = {}
--- The event currently selected.Log (defaults to nil)
local selected = nil
--- The blacklist (can be a string name or the Remote Instance)
local blacklist = {}
--- The block list (can be a string name or the Remote Instance)
local blocklist = {}
--- Whether or not to add getNil function
local getNil = false
--- Array of remotes (and original functions) connected to
local connectedRemotes = {}
--- True = hookfunction, false = namecall
local toggle = false
local gm
local original
--- used to prevent recursives
local prevTables = {}
--- holds logs (for deletion)
local remoteLogs = {}
--- used for hookfunction
local remoteEvent = Instance.new("RemoteEvent")
--- used for hookfunction
local remoteFunction = Instance.new("RemoteFunction")
local originalEvent = remoteEvent.FireServer
local originalFunction = remoteFunction.InvokeServer
--- the maximum amount of remotes allowed in logs
_G.SIMPLESPYCONFIG_MaxRemotes = 500
--- how many spaces to indent
local indent = 4
--- used for task scheduler
local scheduled = {}
--- RBXScriptConnect of the task scheduler
local schedulerconnect
local SimpleSpy = {}
local topstr = ""
local bottomstr = ""
local remotesFadeIn
local rightFadeIn
local codebox
local p
local getnilrequired = false

-- autoblock variables
local autoblock = false
local history = {}
local excluding = {}

-- function info variables
local funcEnabled = true

-- remote hooking/connecting api variables
local remoteSignals = {}
local remoteHooks = {}

-- original mouse icon
local oldIcon

-- if mouse inside gui
local mouseInGui = false

-- handy array of RBXScriptConnections to disconnect on shutdown
local connections = {}

-- whether or not SimpleSpy uses 'getcallingscript()' to get the script (default is false because detection)
local useGetCallingScript = false

--- used to enable/disable SimpleSpy's keyToString for remotes
local keyToString = false

-- determines whether return values are recorded
local recordReturnValues = false

-- functions

--- Converts arguments to a string and generates code that calls the specified method with them, recommended to be used in conjunction with ValueToString (method must be a string, e.g. `game:GetService("ReplicatedStorage").Remote.remote:FireServer`)
--- @param method string
--- @param args any[]
--- @return string
function SimpleSpy:ArgsToString(method, args)
	assert(typeof(method) == "string", "string expected, got " .. typeof(method))
	assert(typeof(args) == "table", "table expected, got " .. typeof(args))
	return v2v({ args = args }) .. "\n\n" .. method .. "(unpack(args))"
end

--- Converts a value to variables with the specified index as the variable name (if nil/invalid then the name will be assigned automatically)
--- @param t any[]
--- @return string
function SimpleSpy:TableToVars(t)
	assert(typeof(t) == "table", "table expected, got " .. typeof(t))
	return v2v(t)
end

--- Converts a value to a variable with the specified `variablename` (if nil/invalid then the name will be assigned automatically)
--- @param value any
--- @return string
function SimpleSpy:ValueToVar(value, variablename)
	assert(variablename == nil or typeof(variablename) == "string", "string expected, got " .. typeof(variablename))
	if not variablename then
		variablename = 1
	end
	return v2v({ [variablename] = value })
end

--- Converts any value to a string, cannot preserve function contents
--- @param value any
--- @return string
function SimpleSpy:ValueToString(value)
	return v2s(value)
end

--- Generates the simplespy function info
--- @param func function
--- @return string
function SimpleSpy:GetFunctionInfo(func)
	assert(typeof(func) == "function", "Instance expected, got " .. typeof(func))
	warn("Function info currently unavailable due to crashing in Synapse X")
	return v2v({ functionInfo = {
		info = debug.getinfo(func),
		constants = debug.getconstants(func),
	} })
end

--- Gets the ScriptSignal for a specified remote being fired
--- @param remote Instance
function SimpleSpy:GetRemoteFiredSignal(remote)
	assert(typeof(remote) == "Instance", "Instance expected, got " .. typeof(remote))
	if not remoteSignals[remote] then
		remoteSignals[remote] = newSignal()
	end
	return remoteSignals[remote]
end

--- Allows for direct hooking of remotes **THIS CAN BE VERY DANGEROUS**
--- @param remote Instance
--- @param f function
function SimpleSpy:HookRemote(remote, f)
	assert(typeof(remote) == "Instance", "Instance expected, got " .. typeof(remote))
	assert(typeof(f) == "function", "function expected, got " .. typeof(f))
	remoteHooks[remote] = f
end

--- Blocks the specified remote instance/string
--- @param remote any
function SimpleSpy:BlockRemote(remote)
	assert(
		typeof(remote) == "Instance" or typeof(remote) == "string",
		"Instance | string expected, got " .. typeof(remote)
	)
	blocklist[remote] = true
end

--- Excludes the specified remote from logs (instance/string)
--- @param remote any
function SimpleSpy:ExcludeRemote(remote)
	assert(
		typeof(remote) == "Instance" or typeof(remote) == "string",
		"Instance | string expected, got " .. typeof(remote)
	)
	blacklist[remote] = true
end

--- Creates a new ScriptSignal that can be connected to and fired
--- @return table
function newSignal()
	local connected = {}
	return {
		Connect = function(self, f)
			assert(connected, "Signal is closed")
			connected[tostring(f)] = f
			return {
				Connected = true,
				Disconnect = function(self)
					if not connected then
						warn("Signal is already closed")
					end
					self.Connected = false
					connected[tostring(f)] = nil
				end,
			}
		end,
		Wait = function(self)
			local thread = coroutine.running()
			local connection
			connection = self:Connect(function()
				connection:Disconnect()
				if coroutine.status(thread) == "suspended" then
					coroutine.resume(thread)
				end
			end)
			coroutine.yield()
		end,
		Fire = function(self, ...)
			for _, f in pairs(connected) do
				coroutine.wrap(f)(...)
			end
		end,
	}
end

--- Prevents remote spam from causing lag (clears logs after `_G.SIMPLESPYCONFIG_MaxRemotes` or 500 remotes)
function clean()
	local max = _G.SIMPLESPYCONFIG_MaxRemotes
	if not typeof(max) == "number" and math.floor(max) ~= max then
		max = 500
	end
	if #remoteLogs > max then
		for i = 100, #remoteLogs do
			local v = remoteLogs[i]
			if typeof(v[1]) == "RBXScriptConnection" then
				v[1]:Disconnect()
			end
			if typeof(v[2]) == "Instance" then
				v[2]:Destroy()
			end
		end
		local newLogs = {}
		for i = 1, 100 do
			table.insert(newLogs, remoteLogs[i])
		end
		remoteLogs = newLogs
	end
end

--- Scales the ToolTip to fit containing text
function scaleToolTip()
	local size = TextService:GetTextSize(
		TextLabel.Text,
		TextLabel.TextSize,
		TextLabel.Font,
		Vector2.new(196, math.huge)
	)
	TextLabel.Size = UDim2.new(0, size.X, 0, size.Y)
	ToolTip.Size = UDim2.new(0, size.X + 4, 0, size.Y + 4)
end

--- Executed when the toggle button (the SimpleSpy logo) is hovered over
function onToggleButtonHover()
	if not toggle then
		TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(252, 51, 51) }):Play()
	else
		TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(68, 206, 91) }):Play()
	end
end

--- Executed when the toggle button is unhovered over
function onToggleButtonUnhover()
	TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
end

--- Executed when the X button is hovered over
function onXButtonHover()
	TweenService:Create(CloseButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(255, 60, 60) }):Play()
end

--- Executed when the X button is unhovered over
function onXButtonUnhover()
	TweenService:Create(CloseButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(37, 36, 38) }):Play()
end

--- Toggles the remote spy method (when button clicked)
function onToggleButtonClick()
	if toggle then
		TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(252, 51, 51) }):Play()
	else
		TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(68, 206, 91) }):Play()
	end
	toggleSpyMethod()
end

--- Reconnects bringBackOnResize if the current viewport changes and also connects it initially
function connectResize()
	local lastCam = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(bringBackOnResize)
	workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		lastCam:Disconnect()
		if workspace.CurrentCamera then
			lastCam = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(bringBackOnResize)
		end
	end)
end

--- Brings gui back if it gets lost offscreen (connected to the camera viewport changing)
function bringBackOnResize()
	validateSize()
	if sideClosed then
		minimizeSize()
	else
		maximizeSize()
	end
	local currentX = Background.AbsolutePosition.X
	local currentY = Background.AbsolutePosition.Y
	local viewportSize = workspace.CurrentCamera.ViewportSize
	if (currentX < 0) or (currentX > (viewportSize.X - (sideClosed and 131 or Background.AbsoluteSize.X))) then
		if currentX < 0 then
			currentX = 0
		else
			currentX = viewportSize.X - (sideClosed and 131 or Background.AbsoluteSize.X)
		end
	end
	if (currentY < 0) or (currentY > (viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36)) then
		if currentY < 0 then
			currentY = 0
		else
			currentY = viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36
		end
	end
	TweenService.Create(
		TweenService,
		Background,
		TweenInfo.new(0.1),
		{ Position = UDim2.new(0, currentX, 0, currentY) }
	):Play()
end

--- Drags gui (so long as mouse is held down)
--- @param input InputObject
function onBarInput(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local lastPos = UserInputService.GetMouseLocation(UserInputService)
		local mainPos = Background.AbsolutePosition
		local offset = mainPos - lastPos
		local currentPos = offset + lastPos
		RunService.BindToRenderStep(RunService, "drag", 1, function()
			local newPos = UserInputService.GetMouseLocation(UserInputService)
			if newPos ~= lastPos then
				local currentX = (offset + newPos).X
				local currentY = (offset + newPos).Y
				local viewportSize = workspace.CurrentCamera.ViewportSize
				if
					(currentX < 0 and currentX < currentPos.X)
					or (
						currentX > (viewportSize.X - (sideClosed and 131 or TopBar.AbsoluteSize.X))
						and currentX > currentPos.X
					)
				then
					if currentX < 0 then
						currentX = 0
					else
						currentX = viewportSize.X - (sideClosed and 131 or TopBar.AbsoluteSize.X)
					end
				end
				if
					(currentY < 0 and currentY < currentPos.Y)
					or (
						currentY > (viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36)
						and currentY > currentPos.Y
					)
				then
					if currentY < 0 then
						currentY = 0
					else
						currentY = viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36
					end
				end
				currentPos = Vector2.new(currentX, currentY)
				lastPos = newPos
				TweenService.Create(
					TweenService,
					Background,
					TweenInfo.new(0.1),
					{ Position = UDim2.new(0, currentPos.X, 0, currentPos.Y) }
				):Play()
			end
			-- if input.UserInputState ~= Enum.UserInputState.Begin then
			--     RunService.UnbindFromRenderStep(RunService, "drag")
			-- end
		end)
		table.insert(
			connections,
			UserInputService.InputEnded:Connect(function(inputE)
				if input == inputE then
					RunService:UnbindFromRenderStep("drag")
				end
			end)
		)
	end
end

--- Fades out the table of elements (and makes them invisible), returns a function to make them visible again
function fadeOut(elements)
	local data = {}
	for _, v in pairs(elements) do
		if typeof(v) == "Instance" and v:IsA("GuiObject") and v.Visible then
			coroutine.wrap(function()
				data[v] = {
					BackgroundTransparency = v.BackgroundTransparency,
				}
				TweenService:Create(v, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
				if v:IsA("TextBox") or v:IsA("TextButton") or v:IsA("TextLabel") then
					data[v].TextTransparency = v.TextTransparency
					TweenService:Create(v, TweenInfo.new(0.5), { TextTransparency = 1 }):Play()
				elseif v:IsA("ImageButton") or v:IsA("ImageLabel") then
					data[v].ImageTransparency = v.ImageTransparency
					TweenService:Create(v, TweenInfo.new(0.5), { ImageTransparency = 1 }):Play()
				end
				wait(0.5)
				v.Visible = false
				for i, x in pairs(data[v]) do
					v[i] = x
				end
				data[v] = true
			end)()
		end
	end
	return function()
		for i, _ in pairs(data) do
			coroutine.wrap(function()
				local properties = {
					BackgroundTransparency = i.BackgroundTransparency,
				}
				i.BackgroundTransparency = 1
				TweenService
					:Create(i, TweenInfo.new(0.5), { BackgroundTransparency = properties.BackgroundTransparency })
					:Play()
				if i:IsA("TextBox") or i:IsA("TextButton") or i:IsA("TextLabel") then
					properties.TextTransparency = i.TextTransparency
					i.TextTransparency = 1
					TweenService
						:Create(i, TweenInfo.new(0.5), { TextTransparency = properties.TextTransparency })
						:Play()
				elseif i:IsA("ImageButton") or i:IsA("ImageLabel") then
					properties.ImageTransparency = i.ImageTransparency
					i.ImageTransparency = 1
					TweenService
						:Create(i, TweenInfo.new(0.5), { ImageTransparency = properties.ImageTransparency })
						:Play()
				end
				i.Visible = true
			end)()
		end
	end
end

--- Expands and minimizes the gui (closed is the toggle boolean)
function toggleMinimize(override)
	if mainClosing and not override or maximized then
		return
	end
	mainClosing = true
	closed = not closed
	if closed then
		if not sideClosed then
			toggleSideTray(true)
		end
		LeftPanel.Visible = true
		TweenService:Create(LeftPanel, TweenInfo.new(0.5), { Size = UDim2.new(0, 131, 0, 0) }):Play()
		wait(0.5)
		remotesFadeIn = fadeOut(LeftPanel:GetDescendants())
		wait(0.5)
	else
		TweenService:Create(LeftPanel, TweenInfo.new(0.5), { Size = UDim2.new(0, 131, 0, 249) }):Play()
		wait(0.5)
		if remotesFadeIn then
			remotesFadeIn()
			remotesFadeIn = nil
		end
		bringBackOnResize()
	end
	mainClosing = false
end

--- Expands and minimizes the sidebar (sideClosed is the toggle boolean)
function toggleSideTray(override)
	if sideClosing and not override or maximized then
		return
	end
	sideClosing = true
	sideClosed = not sideClosed
	if sideClosed then
		rightFadeIn = fadeOut(RightPanel:GetDescendants())
		wait(0.5)
		minimizeSize(0.5)
		wait(0.5)
		RightPanel.Visible = false
	else
		if closed then
			toggleMinimize(true)
		end
		RightPanel.Visible = true
		maximizeSize(0.5)
		wait(0.5)
		if rightFadeIn then
			rightFadeIn()
		end
		bringBackOnResize()
	end
	sideClosing = false
end

--- Expands code box to fit screen for more convenient viewing
function toggleMaximize()
	if not sideClosed and not maximized then
		maximized = true
		local disable = Instance.new("TextButton")
		local prevSize = UDim2.new(0, CodeBox.AbsoluteSize.X, 0, CodeBox.AbsoluteSize.Y)
		local prevPos = UDim2.new(0, CodeBox.AbsolutePosition.X, 0, CodeBox.AbsolutePosition.Y)
		disable.Size = UDim2.new(1, 0, 1, 0)
		disable.BackgroundColor3 = Color3.new()
		disable.BorderSizePixel = 0
		disable.Text = 0
		disable.ZIndex = 3
		disable.BackgroundTransparency = 1
		disable.AutoButtonColor = false
		CodeBox.ZIndex = 4
		CodeBox.Position = prevPos
		CodeBox.Size = prevSize
		TweenService
			:Create(
				CodeBox,
				TweenInfo.new(0.5),
				{ Size = UDim2.new(0.5, 0, 0.5, 0), Position = UDim2.new(0.25, 0, 0.25, 0) }
			)
			:Play()
		TweenService:Create(disable, TweenInfo.new(0.5), { BackgroundTransparency = 0.5 }):Play()
		disable.MouseButton1Click:Connect(function()
			if
				UserInputService:GetMouseLocation().Y + 36 >= CodeBox.AbsolutePosition.Y
				and UserInputService:GetMouseLocation().Y + 36 <= CodeBox.AbsolutePosition.Y + CodeBox.AbsoluteSize.Y
				and UserInputService:GetMouseLocation().X >= CodeBox.AbsolutePosition.X
				and UserInputService:GetMouseLocation().X <= CodeBox.AbsolutePosition.X + CodeBox.AbsoluteSize.X
			then
				return
			end
			TweenService:Create(CodeBox, TweenInfo.new(0.5), { Size = prevSize, Position = prevPos }):Play()
			TweenService:Create(disable, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
			maximized = false
			wait(0.5)
			disable:Destroy()
			CodeBox.Size = UDim2.new(1, 0, 0.5, 0)
			CodeBox.Position = UDim2.new(0, 0, 0, 0)
			CodeBox.ZIndex = 0
		end)
	end
end

--- Checks if cursor is within resize range
--- @param p Vector2
function isInResizeRange(p)
	local relativeP = p - Background.AbsolutePosition
	local range = 5
	if
		relativeP.X >= TopBar.AbsoluteSize.X - range
		and relativeP.Y >= Background.AbsoluteSize.Y - range
		and relativeP.X <= TopBar.AbsoluteSize.X
		and relativeP.Y <= Background.AbsoluteSize.Y
	then
		return true, "B"
	elseif relativeP.X >= TopBar.AbsoluteSize.X - range and relativeP.X <= Background.AbsoluteSize.X then
		return true, "X"
	elseif relativeP.Y >= Background.AbsoluteSize.Y - range and relativeP.Y <= Background.AbsoluteSize.Y then
		return true, "Y"
	end
	return false
end

--- Checks if cursor is within dragging range
--- @param p Vector2
function isInDragRange(p)
	local relativeP = p - Background.AbsolutePosition
	if
		relativeP.X <= TopBar.AbsoluteSize.X - CloseButton.AbsoluteSize.X * 3
		and relativeP.X >= 0
		and relativeP.Y <= TopBar.AbsoluteSize.Y
		and relativeP.Y >= 0
	then
		return true
	end
	return false
end

--- Called when mouse enters SimpleSpy
function mouseEntered()
	local existingCursor = SimpleSpy2:FindFirstChild("Cursor")
	while existingCursor do
		existingCursor:Destroy()
		existingCursor = SimpleSpy2:FindFirstChild("Cursor")
	end
	local customCursor = Instance.new("ImageLabel")
	customCursor.Name = "Cursor"
	customCursor.Size = UDim2.fromOffset(200, 200)
	customCursor.ZIndex = 1e5
	customCursor.BackgroundTransparency = 1
	customCursor.Image = ""
	customCursor.Parent = SimpleSpy2
	UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	RunService:BindToRenderStep("SIMPLESPY_CURSOR", 1, function()
		if mouseInGui and _G.SimpleSpyExecuted then
			local mouseLocation = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
			customCursor.Position = UDim2.fromOffset(
				mouseLocation.X - customCursor.AbsoluteSize.X / 2,
				mouseLocation.Y - customCursor.AbsoluteSize.Y / 2
			)
			local inRange, type = isInResizeRange(mouseLocation)
			if inRange and not sideClosed and not closed then
				customCursor.Image = type == "B" and "rbxassetid://6065821980"
					or type == "X" and "rbxassetid://6065821086"
					or type == "Y" and "rbxassetid://6065821596"
			elseif inRange and not closed and type == "Y" or type == "B" then
				customCursor.Image = "rbxassetid://6065821596"
			elseif customCursor.Image ~= "rbxassetid://6065775281" then
				customCursor.Image = "rbxassetid://6065775281"
			end
		else
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
			customCursor:Destroy()
			RunService:UnbindFromRenderStep("SIMPLESPY_CURSOR")
		end
	end)
end

--- Called when mouse moves
function mouseMoved()
	local mousePos = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
	if
		not closed
		and mousePos.X >= TopBar.AbsolutePosition.X
		and mousePos.X <= TopBar.AbsolutePosition.X + TopBar.AbsoluteSize.X
		and mousePos.Y >= Background.AbsolutePosition.Y
		and mousePos.Y <= Background.AbsolutePosition.Y + Background.AbsoluteSize.Y
	then
		if not mouseInGui then
			mouseInGui = true
			mouseEntered()
		end
	else
		mouseInGui = false
	end
end

--- Adjusts the ui elements to the 'Maximized' size
function maximizeSize(speed)
	if not speed then
		speed = 0.05
	end
	TweenService
		:Create(
			LeftPanel,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
		)
		:Play()
	TweenService
		:Create(RightPanel, TweenInfo.new(speed), {
			Size = UDim2.fromOffset(
				Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X,
				Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y
			),
		})
		:Play()
	TweenService
		:Create(
			TopBar,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(Background.AbsoluteSize.X, TopBar.AbsoluteSize.Y) }
		)
		:Play()
	TweenService
		:Create(ScrollingFrame, TweenInfo.new(speed), {
			Size = UDim2.fromOffset(Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X, 110),
			Position = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y),
		})
		:Play()
	TweenService
		:Create(CodeBox, TweenInfo.new(speed), {
			Size = UDim2.fromOffset(
				Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X,
				Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y
			),
		})
		:Play()
	TweenService
		:Create(
			LogList,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LogList.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y - 18) }
		)
		:Play()
end

--- Adjusts the ui elements to close the side
function minimizeSize(speed)
	if not speed then
		speed = 0.05
	end
	TweenService
		:Create(
			LeftPanel,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
		)
		:Play()
	TweenService
		:Create(
			RightPanel,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(0, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
		)
		:Play()
	TweenService
		:Create(
			TopBar,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, TopBar.AbsoluteSize.Y) }
		)
		:Play()
	TweenService
		:Create(ScrollingFrame, TweenInfo.new(speed), {
			Size = UDim2.fromOffset(0, 119),
			Position = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y),
		})
		:Play()
	TweenService
		:Create(
			CodeBox,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y) }
		)
		:Play()
	TweenService
		:Create(
			LogList,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LogList.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y - 18) }
		)
		:Play()
end

--- Ensures size is within screensize limitations
function validateSize()
	local x, y = Background.AbsoluteSize.X, Background.AbsoluteSize.Y
	local screenSize = workspace.CurrentCamera.ViewportSize
	if x + Background.AbsolutePosition.X > screenSize.X then
		if screenSize.X - Background.AbsolutePosition.X >= 450 then
			x = screenSize.X - Background.AbsolutePosition.X
		else
			x = 450
		end
	elseif y + Background.AbsolutePosition.Y > screenSize.Y then
		if screenSize.X - Background.AbsolutePosition.Y >= 268 then
			y = screenSize.Y - Background.AbsolutePosition.Y
		else
			y = 268
		end
	end
	Background.Size = UDim2.fromOffset(x, y)
end

--- Called on user input while mouse in 'Background' frame
--- @param input InputObject
function backgroundUserInput(input)
	local mousePos = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
	local inResizeRange, type = isInResizeRange(mousePos)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and inResizeRange then
		local lastPos = UserInputService:GetMouseLocation()
		local offset = Background.AbsoluteSize - lastPos
		local currentPos = lastPos + offset
		RunService:BindToRenderStep("SIMPLESPY_RESIZE", 1, function()
			local newPos = UserInputService:GetMouseLocation()
			if newPos ~= lastPos then
				local currentX = (newPos + offset).X
				local currentY = (newPos + offset).Y
				if currentX < 450 then
					currentX = 450
				end
				if currentY < 268 then
					currentY = 268
				end
				currentPos = Vector2.new(currentX, currentY)
				Background.Size = UDim2.fromOffset(
					(not sideClosed and not closed and (type == "X" or type == "B")) and currentPos.X
						or Background.AbsoluteSize.X,
					(--[[(not sideClosed or currentPos.X <= LeftPanel.AbsolutePosition.X + LeftPanel.AbsoluteSize.X) and]]not closed and (type == "Y" or type == "B"))
							and currentPos.Y
						or Background.AbsoluteSize.Y
				)
				validateSize()
				if sideClosed then
					minimizeSize()
				else
					maximizeSize()
				end
				lastPos = newPos
			end
		end)
		table.insert(
			connections,
			UserInputService.InputEnded:Connect(function(inputE)
				if input == inputE then
					RunService:UnbindFromRenderStep("SIMPLESPY_RESIZE")
				end
			end)
		)
	elseif isInDragRange(mousePos) then
		onBarInput(input)
	end
end

--- Gets the player an instance is descended from
function getPlayerFromInstance(instance)
	for _, v in pairs(Players:GetPlayers()) do
		if v.Character and (instance:IsDescendantOf(v.Character) or instance == v.Character) then
			return v
		end
	end
end

--- Runs on MouseButton1Click of an event frame
function eventSelect(frame)
	if selected and selected.Log and selected.Log.Button then
		TweenService
			:Create(selected.Log.Button, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(0, 0, 0) })
			:Play()
		selected = nil
	end
	for _, v in pairs(logs) do
		if frame == v.Log then
			selected = v
		end
	end
	if selected and selected.Log then
		TweenService
			:Create(frame.Button, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(92, 126, 229) })
			:Play()
		codebox:setRaw(selected.GenScript)
	end
	if sideClosed then
		toggleSideTray()
	end
end

--- Updates the canvas size to fit the current amount of function buttons
function updateFunctionCanvas()
	ScrollingFrame.CanvasSize = UDim2.fromOffset(UIGridLayout.AbsoluteContentSize.X, UIGridLayout.AbsoluteContentSize.Y)
end

--- Updates the canvas size to fit the amount of current remotes
function updateRemoteCanvas()
	LogList.CanvasSize = UDim2.fromOffset(UIListLayout.AbsoluteContentSize.X, UIListLayout.AbsoluteContentSize.Y)
end

--- Allows for toggling of the tooltip and easy setting of le description
--- @param enable boolean
--- @param text string
function makeToolTip(enable, text)
	if enable then
		if ToolTip.Visible then
			ToolTip.Visible = false
			RunService:UnbindFromRenderStep("ToolTip")
		end
		local first = true
		RunService:BindToRenderStep("ToolTip", 1, function()
			local topLeft = Vector2.new(Mouse.X + 20, Mouse.Y + 20)
			local bottomRight = topLeft + ToolTip.AbsoluteSize
			if topLeft.X < 0 then
				topLeft = Vector2.new(0, topLeft.Y)
			elseif bottomRight.X > workspace.CurrentCamera.ViewportSize.X then
				topLeft = Vector2.new(workspace.CurrentCamera.ViewportSize.X - ToolTip.AbsoluteSize.X, topLeft.Y)
			end
			if topLeft.Y < 0 then
				topLeft = Vector2.new(topLeft.X, 0)
			elseif bottomRight.Y > workspace.CurrentCamera.ViewportSize.Y - 35 then
				topLeft = Vector2.new(topLeft.X, workspace.CurrentCamera.ViewportSize.Y - ToolTip.AbsoluteSize.Y - 35)
			end
			if topLeft.X <= Mouse.X and topLeft.Y <= Mouse.Y then
				topLeft = Vector2.new(Mouse.X - ToolTip.AbsoluteSize.X - 2, Mouse.Y - ToolTip.AbsoluteSize.Y - 2)
			end
			if first then
				ToolTip.Position = UDim2.fromOffset(topLeft.X, topLeft.Y)
				first = false
			else
				ToolTip:TweenPosition(UDim2.fromOffset(topLeft.X, topLeft.Y), "Out", "Linear", 0.1)
			end
		end)
		TextLabel.Text = text
		ToolTip.Visible = true
	else
		if ToolTip.Visible then
			ToolTip.Visible = false
			RunService:UnbindFromRenderStep("ToolTip")
		end
	end
end

--- Creates new function button (below codebox)
--- @param name string
---@param description function
---@param onClick function
function newButton(name, description, onClick)
	local button = FunctionTemplate:Clone()
	button.Text.Text = name
	button.Button.MouseEnter:Connect(function()
		makeToolTip(true, description())
	end)
	button.Button.MouseLeave:Connect(function()
		makeToolTip(false)
	end)
	button.AncestryChanged:Connect(function()
		makeToolTip(false)
	end)
	button.Button.MouseButton1Click:Connect(function(...)
		onClick(button, ...)
	end)
	button.Parent = ScrollingFrame
	updateFunctionCanvas()
end

--- Adds new Remote to logs
--- @param name string The name of the remote being logged
--- @param type string The type of the remote being logged (either 'function' or 'event')
--- @param args any
--- @param remote any
--- @param function_info string
--- @param blocked any
function newRemote(type, name, args, remote, function_info, blocked, src, returnValue)
	local remoteFrame = RemoteTemplate:Clone()
	remoteFrame.Text.Text = string.sub(name, 1, 50)
	remoteFrame.ColorBar.BackgroundColor3 = type == "event" and Color3.new(255, 242, 0) or Color3.fromRGB(99, 86, 245)
	local id = Instance.new("IntValue")
	id.Name = "ID"
	id.Value = #logs + 1
	id.Parent = remoteFrame
	local weakRemoteTable = setmetatable({ remote = remote }, { __mode = "v" })
	local log = {
		Name = name,
		Function = function_info,
		Remote = weakRemoteTable,
		Log = remoteFrame,
		Blocked = blocked,
		Source = src,
		GenScript = "-- Generating, please wait... (click to reload)\n-- (If this message persists, the remote args are likely extremely long)",
		ReturnValue = returnValue,
	}
	logs[#logs + 1] = log
	schedule(function()
		log.GenScript = genScript(remote, args)
		if blocked then
			logs[#logs].GenScript = "-- THIS REMOTE WAS PREVENTED FROM FIRING THE SERVER BY SIMPLESPY\n\n"
				.. logs[#logs].GenScript
		end
	end)
	local connect = remoteFrame.Button.MouseButton1Click:Connect(function()
		eventSelect(remoteFrame)
	end)
	if layoutOrderNum < 1 then
		layoutOrderNum = 999999999
	end
	remoteFrame.LayoutOrder = layoutOrderNum
	layoutOrderNum = layoutOrderNum - 1
	remoteFrame.Parent = LogList
	table.insert(remoteLogs, 1, { connect, remoteFrame })
	clean()
	updateRemoteCanvas()
end

--- Generates a script from the provided arguments (first has to be remote path)
function genScript(remote, args)
	prevTables = {}
	local gen = ""
	if #args > 0 then
		if not pcall(function()
			gen = v2v({ args = args }) .. "\n"
		end) then
			gen = gen
				.. "-- TableToString failure! Reverting to legacy functionality (results may vary)\nlocal args = {"
			if
				not pcall(function()
					for i, v in pairs(args) do
						if type(i) ~= "Instance" and type(i) ~= "userdata" then
							gen = gen .. "\n    [object] = "
						elseif type(i) == "string" then
							gen = gen .. '\n    ["' .. i .. '"] = '
						elseif type(i) == "userdata" and typeof(i) ~= "Instance" then
							gen = gen .. "\n    [" .. string.format("nil --[[%s]]", typeof(v)) .. ")] = "
						elseif type(i) == "userdata" then
							gen = gen .. "\n    [game." .. i:GetFullName() .. ")] = "
						end
						if type(v) ~= "Instance" and type(v) ~= "userdata" then
							gen = gen .. "object"
						elseif type(v) == "string" then
							gen = gen .. '"' .. v .. '"'
						elseif type(v) == "userdata" and typeof(v) ~= "Instance" then
							gen = gen .. string.format("nil --[[%s]]", typeof(v))
						elseif type(v) == "userdata" then
							gen = gen .. "game." .. v:GetFullName()
						end
					end
					gen = gen .. "\n}\n\n"
				end)
			then
				gen = gen .. "}\n-- Legacy tableToString failure! Unable to decompile."
			end
		end
		if not remote:IsDescendantOf(game) and not getnilrequired then
			gen = "function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end\n\n"
				.. gen
		end
		if remote:IsA("RemoteEvent") then
			gen = gen .. v2s(remote) .. ":FireServer(unpack(args))"
		elseif remote:IsA("RemoteFunction") then
			gen = gen .. v2s(remote) .. ":InvokeServer(unpack(args))"
		end
	else
		if remote:IsA("RemoteEvent") then
			gen = gen .. v2s(remote) .. ":FireServer()"
		elseif remote:IsA("RemoteFunction") then
			gen = gen .. v2s(remote) .. ":InvokeServer()"
		end
	end
	gen = "-- Script generated by SimpleSpy - credits to exx#9394\n\n" .. gen
	prevTables = {}
	return gen
end

--- value-to-string: value, string (out), level (indentation), parent table, var name, is from tovar
function v2s(v, l, p, n, vtv, i, pt, path, tables, tI)
	if not tI then
		tI = { 0 }
	else
		tI[1] += 1
	end
	if typeof(v) == "number" then
		if v == math.huge then
			return "math.huge"
		elseif tostring(v):match("nan") then
			return "0/0 --[[NaN]]"
		end
		return tostring(v)
	elseif typeof(v) == "boolean" then
		return tostring(v)
	elseif typeof(v) == "string" then
		return formatstr(v, l)
	elseif typeof(v) == "function" then
		return f2s(v)
	elseif typeof(v) == "table" then
		return t2s(v, l, p, n, vtv, i, pt, path, tables, tI)
	elseif typeof(v) == "Instance" then
		return i2p(v)
	elseif typeof(v) == "userdata" then
		return "newproxy(true)"
	elseif type(v) == "userdata" then
		return u2s(v)
	elseif type(v) == "vector" then
		return string.format("Vector3.new(%s, %s, %s)", v2s(v.X), v2s(v.Y), v2s(v.Z))
	else
		return "nil --[[" .. typeof(v) .. "]]"
	end
end

--- value-to-variable
--- @param t any
function v2v(t)
	topstr = ""
	bottomstr = ""
	getnilrequired = false
	local ret = ""
	local count = 1
	for i, v in pairs(t) do
		if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
			ret = ret .. "local " .. i .. " = " .. v2s(v, nil, nil, i, true) .. "\n"
		elseif tostring(i):match("^[%a_]+[%w_]*$") then
			ret = ret
				.. "local "
				.. tostring(i):lower()
				.. "_"
				.. tostring(count)
				.. " = "
				.. v2s(v, nil, nil, tostring(i):lower() .. "_" .. tostring(count), true)
				.. "\n"
		else
			ret = ret
				.. "local "
				.. type(v)
				.. "_"
				.. tostring(count)
				.. " = "
				.. v2s(v, nil, nil, type(v) .. "_" .. tostring(count), true)
				.. "\n"
		end
		count = count + 1
	end
	if getnilrequired then
		topstr = "function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end\n"
			.. topstr
	end
	if #topstr > 0 then
		ret = topstr .. "\n" .. ret
	end
	if #bottomstr > 0 then
		ret = ret .. bottomstr
	end
	return ret
end

--- table-to-string
--- @param t table
--- @param l number
--- @param p table
--- @param n string
--- @param vtv boolean
--- @param i any
--- @param pt table
--- @param path string
--- @param tables table
--- @param tI table
function t2s(t, l, p, n, vtv, i, pt, path, tables, tI)
	local globalIndex = table.find(getgenv(), t) -- checks if table is a global
	if type(globalIndex) == "string" then
		return globalIndex
	end
	if not tI then
		tI = { 0 }
	end
	if not path then -- sets path to empty string (so it doesn't have to manually provided every time)
		path = ""
	end
	if not l then -- sets the level to 0 (for indentation) and tables for logging tables it already serialized
		l = 0
		tables = {}
	end
	if not p then -- p is the previous table but doesn't really matter if it's the first
		p = t
	end
	for _, v in pairs(tables) do -- checks if the current table has been serialized before
		if n and rawequal(v, t) then
			bottomstr = bottomstr
				.. "\n"
				.. tostring(n)
				.. tostring(path)
				.. " = "
				.. tostring(n)
				.. tostring(({ v2p(v, p) })[2])
			return "{} --[[DUPLICATE]]"
		end
	end
	table.insert(tables, t) -- logs table to past tables
	local s = "{" -- start of serialization
	local size = 0
	l = l + indent -- set indentation level
	for k, v in pairs(t) do -- iterates over table
		size = size + 1 -- changes size for max limit
		if size > (_G.SimpleSpyMaxTableSize or 1000) then
			s = s
				.. "\n"
				.. string.rep(" ", l)
				.. "-- MAXIMUM TABLE SIZE REACHED, CHANGE '_G.SimpleSpyMaxTableSize' TO ADJUST MAXIMUM SIZE "
			break
		end
		if rawequal(k, t) then -- checks if the table being iterated over is being used as an index within itself (yay, lua)
			bottomstr = bottomstr
				.. "\n"
				.. tostring(n)
				.. tostring(path)
				.. "["
				.. tostring(n)
				.. tostring(path)
				.. "]"
				.. " = "
				.. (
					rawequal(v, k) and tostring(n) .. tostring(path)
					or v2s(v, l, p, n, vtv, k, t, path .. "[" .. tostring(n) .. tostring(path) .. "]", tables)
				)
			size -= 1
			continue
		end
		local currentPath = "" -- initializes the path of 'v' within 't'
		if type(k) == "string" and k:match("^[%a_]+[%w_]*$") then -- cleanly handles table path generation (for the first half)
			currentPath = "." .. k
		else
			currentPath = "[" .. k2s(k, l, p, n, vtv, k, t, path .. currentPath, tables, tI) .. "]"
		end
		if size % 100 == 0 then
			scheduleWait()
		end
		-- actually serializes the member of the table
		s = s
			.. "\n"
			.. string.rep(" ", l)
			.. "["
			.. k2s(k, l, p, n, vtv, k, t, path .. currentPath, tables, tI)
			.. "] = "
			.. v2s(v, l, p, n, vtv, k, t, path .. currentPath, tables, tI)
			.. ","
	end
	if #s > 1 then -- removes the last comma because it looks nicer (no way to tell if it's done 'till it's done so...)
		s = s:sub(1, #s - 1)
	end
	if size > 0 then -- cleanly indents the last curly bracket
		s = s .. "\n" .. string.rep(" ", l - indent)
	end
	return s .. "}"
end

--- key-to-string
function k2s(v, ...)
	if keyToString then
		if typeof(v) == "userdata" and getrawmetatable(v) then
			return string.format(
				'"<void> (%s)" --[[Potentially hidden data (tostring in SimpleSpy:HookRemote/GetRemoteFiredSignal at your own risk)]]',
				safetostring(v)
			)
		elseif typeof(v) == "userdata" then
			return string.format('"<void> (%s)"', safetostring(v))
		elseif type(v) == "userdata" and typeof(v) ~= "Instance" then
			return string.format('"<%s> (%s)"', typeof(v), tostring(v))
		elseif type(v) == "function" then
			return string.format('"<Function> (%s)"', tostring(v))
		end
	end
	return v2s(v, ...)
end

--- function-to-string
function f2s(f)
	for k, x in pairs(getgenv()) do
		local isgucci, gpath
		if rawequal(x, f) then
			isgucci, gpath = true, ""
		elseif type(x) == "table" then
			isgucci, gpath = v2p(f, x)
		end
		if isgucci and type(k) ~= "function" then
			if type(k) == "string" and k:match("^[%a_]+[%w_]*$") then
				return k .. gpath
			else
				return "getgenv()[" .. v2s(k) .. "]" .. gpath
			end
		end
	end
	if funcEnabled and debug.getinfo(f).name:match("^[%a_]+[%w_]*$") then
		return "function()end --[[" .. debug.getinfo(f).name .. "]]"
	end
	return "function()end --[[" .. tostring(f) .. "]]"
end

--- instance-to-path
--- @param i userdata
function i2p(i)
	local player = getplayer(i)
	local parent = i
	local out = ""
	if parent == nil then
		return "nil"
	elseif player then
		while true do
			if parent and parent == player.Character then
				if player == Players.LocalPlayer then
					return 'game:GetService("Players").LocalPlayer.Character' .. out
				else
					return i2p(player) .. ".Character" .. out
				end
			else
				if parent.Name:match("[%a_]+[%w+]*") ~= parent.Name then
					out = ":FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
				else
					out = "." .. parent.Name .. out
				end
			end
			parent = parent.Parent
		end
	elseif parent ~= game then
		while true do
			if parent and parent.Parent == game then
				local service = game:FindService(parent.ClassName)
				if service then
					if parent.ClassName == "Workspace" then
						return "workspace" .. out
					else
						return 'game:GetService("' .. service.ClassName .. '")' .. out
					end
				else
					if parent.Name:match("[%a_]+[%w_]*") then
						return "game." .. parent.Name .. out
					else
						return "game:FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
					end
				end
			elseif parent.Parent == nil then
				getnilrequired = true
				return "getNil(" .. formatstr(parent.Name) .. ', "' .. parent.ClassName .. '")' .. out
			elseif parent == Players.LocalPlayer then
				out = ".LocalPlayer" .. out
			else
				if parent.Name:match("[%a_]+[%w_]*") ~= parent.Name then
					out = ":FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
				else
					out = "." .. parent.Name .. out
				end
			end
			parent = parent.Parent
		end
	else
		return "game"
	end
end

--- userdata-to-string: userdata
--- @param u userdata
function u2s(u)
	if typeof(u) == "TweenInfo" then
		-- TweenInfo
		return "TweenInfo.new("
			.. tostring(u.Time)
			.. ", Enum.EasingStyle."
			.. tostring(u.EasingStyle)
			.. ", Enum.EasingDirection."
			.. tostring(u.EasingDirection)
			.. ", "
			.. tostring(u.RepeatCount)
			.. ", "
			.. tostring(u.Reverses)
			.. ", "
			.. tostring(u.DelayTime)
			.. ")"
	elseif typeof(u) == "Ray" then
		-- Ray
		return "Ray.new(" .. u2s(u.Origin) .. ", " .. u2s(u.Direction) .. ")"
	elseif typeof(u) == "NumberSequence" then
		-- NumberSequence
		local ret = "NumberSequence.new("
		for i, v in pairs(u.KeyPoints) do
			ret = ret .. tostring(v)
			if i < #u.Keypoints then
				ret = ret .. ", "
			end
		end
		return ret .. ")"
	elseif typeof(u) == "DockWidgetPluginGuiInfo" then
		-- DockWidgetPluginGuiInfo
		return "DockWidgetPluginGuiInfo.new(Enum.InitialDockState" .. tostring(u) .. ")"
	elseif typeof(u) == "ColorSequence" then
		-- ColorSequence
		local ret = "ColorSequence.new("
		for i, v in pairs(u.KeyPoints) do
			ret = ret .. "Color3.new(" .. tostring(v) .. ")"
			if i < #u.Keypoints then
				ret = ret .. ", "
			end
		end
		return ret .. ")"
	elseif typeof(u) == "BrickColor" then
		-- BrickColor
		return "BrickColor.new(" .. tostring(u.Number) .. ")"
	elseif typeof(u) == "NumberRange" then
		-- NumberRange
		return "NumberRange.new(" .. tostring(u.Min) .. ", " .. tostring(u.Max) .. ")"
	elseif typeof(u) == "Region3" then
		-- Region3
		local center = u.CFrame.Position
		local size = u.CFrame.Size
		local vector1 = center - size / 2
		local vector2 = center + size / 2
		return "Region3.new(" .. u2s(vector1) .. ", " .. u2s(vector2) .. ")"
	elseif typeof(u) == "Faces" then
		-- Faces
		local faces = {}
		if u.Top then
			table.insert(faces, "Enum.NormalId.Top")
		end
		if u.Bottom then
			table.insert(faces, "Enum.NormalId.Bottom")
		end
		if u.Left then
			table.insert(faces, "Enum.NormalId.Left")
		end
		if u.Right then
			table.insert(faces, "Enum.NormalId.Right")
		end
		if u.Back then
			table.insert(faces, "Enum.NormalId.Back")
		end
		if u.Front then
			table.insert(faces, "Enum.NormalId.Front")
		end
		return "Faces.new(" .. table.concat(faces, ", ") .. ")"
	elseif typeof(u) == "EnumItem" then
		return tostring(u)
	elseif typeof(u) == "Enums" then
		return "Enum"
	elseif typeof(u) == "Enum" then
		return "Enum." .. tostring(u)
	elseif typeof(u) == "RBXScriptSignal" then
		return "nil --[[RBXScriptSignal]]"
	elseif typeof(u) == "Vector3" then
		return string.format("Vector3.new(%s, %s, %s)", v2s(u.X), v2s(u.Y), v2s(u.Z))
	elseif typeof(u) == "CFrame" then
		local xAngle, yAngle, zAngle = u:ToEulerAnglesXYZ()
		return string.format(
			"CFrame.new(%s, %s, %s) * CFrame.Angles(%s, %s, %s)",
			v2s(u.X),
			v2s(u.Y),
			v2s(u.Z),
			v2s(xAngle),
			v2s(yAngle),
			v2s(zAngle)
		)
	elseif typeof(u) == "DockWidgetPluginGuiInfo" then
		return string.format(
			"DockWidgetPluginGuiInfo(%s, %s, %s, %s, %s, %s, %s)",
			"Enum.InitialDockState.Right",
			v2s(u.InitialEnabled),
			v2s(u.InitialEnabledShouldOverrideRestore),
			v2s(u.FloatingXSize),
			v2s(u.FloatingYSize),
			v2s(u.MinWidth),
			v2s(u.MinHeight)
		)
	elseif typeof(u) == "PathWaypoint" then
		return string.format("PathWaypoint.new(%s, %s)", v2s(u.Position), v2s(u.Action))
	elseif typeof(u) == "UDim" then
		return string.format("UDim.new(%s, %s)", v2s(u.Scale), v2s(u.Offset))
	elseif typeof(u) == "UDim2" then
		return string.format(
			"UDim2.new(%s, %s, %s, %s)",
			v2s(u.X.Scale),
			v2s(u.X.Offset),
			v2s(u.Y.Scale),
			v2s(u.Y.Offset)
		)
	elseif typeof(u) == "Rect" then
		return string.format("Rect.new(%s, %s)", v2s(u.Min), v2s(u.Max))
	else
		return string.format("nil --[[%s]]", typeof(u))
	end
end

--- Gets the player an instance is descended from
function getplayer(instance)
	for _, v in pairs(Players:GetPlayers()) do
		if v.Character and (instance:IsDescendantOf(v.Character) or instance == v.Character) then
			return v
		end
	end
end

--- value-to-path (in table)
function v2p(x, t, path, prev)
	if not path then
		path = ""
	end
	if not prev then
		prev = {}
	end
	if rawequal(x, t) then
		return true, ""
	end
	for i, v in pairs(t) do
		if rawequal(v, x) then
			if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
				return true, (path .. "." .. i)
			else
				return true, (path .. "[" .. v2s(i) .. "]")
			end
		end
		if type(v) == "table" then
			local duplicate = false
			for _, y in pairs(prev) do
				if rawequal(y, v) then
					duplicate = true
				end
			end
			if not duplicate then
				table.insert(prev, t)
				local found
				found, p = v2p(x, v, path, prev)
				if found then
					if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
						return true, "." .. i .. p
					else
						return true, "[" .. v2s(i) .. "]" .. p
					end
				end
			end
		end
	end
	return false, ""
end

--- format s: string, byte encrypt (for weird symbols)
function formatstr(s, indentation)
	if not indentation then
		indentation = 0
	end
	local handled, reachedMax = handlespecials(s, indentation)
	return '"'
		.. handled
		.. '"'
		.. (
			reachedMax
				and " --[[ MAXIMUM STRING SIZE REACHED, CHANGE '_G.SimpleSpyMaxStringSize' TO ADJUST MAXIMUM SIZE ]]"
			or ""
		)
end

--- Adds \'s to the text as a replacement to whitespace chars and other things because string.format can't yayeet
function handlespecials(value, indentation)
	local buildStr = {}
	local i = 1
	local char = string.sub(value, i, i)
	local indentStr
	while char ~= "" do
		if char == '"' then
			buildStr[i] = '\\"'
		elseif char == "\\" then
			buildStr[i] = "\\\\"
		elseif char == "\n" then
			buildStr[i] = "\\n"
		elseif char == "\t" then
			buildStr[i] = "\\t"
		elseif string.byte(char) > 126 or string.byte(char) < 32 then
			buildStr[i] = string.format("\\%d", string.byte(char))
		else
			buildStr[i] = char
		end
		i = i + 1
		char = string.sub(value, i, i)
		if i % 200 == 0 then
			indentStr = indentStr or string.rep(" ", indentation + indent)
			table.move({ '"\n', indentStr, '... "' }, 1, 3, i, buildStr)
			i += 3
		end
	end
	return table.concat(buildStr)
end

-- safe (ish) tostring
function safetostring(v: any)
	if typeof(v) == "userdata" or type(v) == "table" then
		local mt = getrawmetatable(v)
		local badtostring = mt and rawget(mt, "__tostring")
		if mt and badtostring then
			rawset(mt, "__tostring", nil)
			local out = tostring(v)
			rawset(mt, "__tostring", badtostring)
			return out
		end
	end
	return tostring(v)
end

--- finds script from 'src' from getinfo, returns nil if not found
--- @param src string
function getScriptFromSrc(src)
	local realPath
	local runningTest
	--- @type number
	local s, e
	local match = false
	if src:sub(1, 1) == "=" then
		realPath = game
		s = 2
	else
		runningTest = src:sub(2, e and e - 1 or -1)
		for _, v in pairs(getnilinstances()) do
			if v.Name == runningTest then
				realPath = v
				break
			end
		end
		s = #runningTest + 1
	end
	if realPath then
		e = src:sub(s, -1):find("%.")
		local i = 0
		repeat
			i += 1
			if not e then
				runningTest = src:sub(s, -1)
				local test = realPath.FindFirstChild(realPath, runningTest)
				if test then
					realPath = test
				end
				match = true
			else
				runningTest = src:sub(s, e)
				local test = realPath.FindFirstChild(realPath, runningTest)
				local yeOld = e
				if test then
					realPath = test
					s = e + 2
					e = src:sub(e + 2, -1):find("%.")
					e = e and e + yeOld or e
				else
					e = src:sub(e + 2, -1):find("%.")
					e = e and e + yeOld or e
				end
			end
		until match or i >= 50
	end
	return realPath
end

--- schedules the provided function (and calls it with any args after)
function schedule(f, ...)
	table.insert(scheduled, { f, ... })
end

--- yields the current thread until the scheduler gives the ok
function scheduleWait()
	local thread = coroutine.running()
	schedule(function()
		coroutine.resume(thread)
	end)
	coroutine.yield()
end

--- the big (well tbh small now) boi task scheduler himself, handles p much anything as quicc as possible
function taskscheduler()
	if not toggle then
		scheduled = {}
		return
	end
	if #scheduled > 1000 then
		table.remove(scheduled, #scheduled)
	end
	if #scheduled > 0 then
		local currentf = scheduled[1]
		table.remove(scheduled, 1)
		if type(currentf) == "table" and type(currentf[1]) == "function" then
			pcall(unpack(currentf))
		end
	end
end

--- Handles remote logs
function remoteHandler(hookfunction, methodName, remote, args, funcInfo, calling, returnValue)
	local validInstance, validClass = pcall(function()
		return remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction")
	end)
	if validInstance and validClass then
		local func = funcInfo.func
		if not calling then
			_, calling = pcall(getScriptFromSrc, funcInfo.source)
		end
		coroutine.wrap(function()
			if remoteSignals[remote] then
				remoteSignals[remote]:Fire(args)
			end
		end)()
		if autoblock then
			if excluding[remote] then
				return
			end
			if not history[remote] then
				history[remote] = { badOccurances = 0, lastCall = tick() }
			end
			if tick() - history[remote].lastCall < 1 then
				history[remote].badOccurances += 1
				return
			else
				history[remote].badOccurances = 0
			end
			if history[remote].badOccurances > 3 then
				excluding[remote] = true
				return
			end
			history[remote].lastCall = tick()
		end
		local functionInfoStr
		local src
		if func and islclosure(func) then
			local functionInfo = {}
			functionInfo.info = funcInfo
			pcall(function()
				functionInfo.constants = debug.getconstants(func)
			end)
			pcall(function()
				functionInfoStr = v2v({ functionInfo = functionInfo })
			end)
			pcall(function()
				if type(calling) == "userdata" then
					src = calling
				end
			end)
		end
		if methodName:lower() == "fireserver" then
			newRemote(
				"event",
				remote.Name,
				args,
				remote,
				functionInfoStr,
				(blocklist[remote] or blocklist[remote.Name]),
				src
			)
		elseif methodName:lower() == "invokeserver" then
			newRemote(
				"function",
				remote.Name,
				args,
				remote,
				functionInfoStr,
				(blocklist[remote] or blocklist[remote.Name]),
				src,
				returnValue
			)
		end
	end
end

--- Used for hookfunction
function hookRemote(remoteType, remote, ...)
	if typeof(remote) == "Instance" then
		local args = { ... }
		local validInstance, remoteName = pcall(function()
			return remote.Name
		end)
		if validInstance and not (blacklist[remote] or blacklist[remoteName]) then
			local funcInfo = {}
			local calling
			if funcEnabled then
				funcInfo = debug.getinfo(4) or funcInfo
				calling = useGetCallingScript and getcallingscript() or nil
			end
			if recordReturnValues and remoteType == "RemoteFunction" then
				local thread = coroutine.running()
				local args = { ... }
				task.defer(function()
					local returnValue
					if remoteHooks[remote] then
						args = { remoteHooks[remote](unpack(args)) }
						returnValue = originalFunction(remote, unpack(args))
					else
						returnValue = originalFunction(remote, unpack(args))
					end
					schedule(
						remoteHandler,
						true,
						remoteType == "RemoteEvent" and "fireserver" or "invokeserver",
						remote,
						args,
						funcInfo,
						calling,
						returnValue
					)
					if blocklist[remote] or blocklist[remoteName] then
						coroutine.resume(thread)
					else
						coroutine.resume(thread, unpack(returnValue))
					end
				end)
			else
				schedule(
					remoteHandler,
					true,
					remoteType == "RemoteEvent" and "fireserver" or "invokeserver",
					remote,
					args,
					funcInfo,
					calling
				)
				if blocklist[remote] or blocklist[remoteName] then
					return
				end
			end
		end
	end
	if recordReturnValues and remoteType == "RemoteFunction" then
		return coroutine.yield()
	elseif remoteType == "RemoteEvent" then
		if remoteHooks[remote] then
			return originalEvent(remote, remoteHooks[remote](...))
		end
		return originalEvent(remote, ...)
	else
		if remoteHooks[remote] then
			return originalFunction(remote, remoteHooks[remote](...))
		end
		return originalFunction(remote, ...)
	end
end

local newnamecall = newcclosure(function(remote, ...)
	if typeof(remote) == "Instance" then
		local args = { ... }
		local methodName = getnamecallmethod()
		local validInstance, remoteName = pcall(function()
			return remote.Name
		end)
		if
			validInstance
			and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
			and not (blacklist[remote] or blacklist[remoteName])
		then
			local funcInfo = {}
			local calling
			if funcEnabled then
				funcInfo = debug.getinfo(3) or funcInfo
				calling = useGetCallingScript and getcallingscript() or nil
			end
			if recordReturnValues and (methodName == "InvokeServer" or methodName == "invokeServer") then
				local namecallThread = coroutine.running()
				local args = { ... }
				task.defer(function()
					local returnValue
					setnamecallmethod(methodName)
					if remoteHooks[remote] then
						args = { remoteHooks[remote](unpack(args)) }
						returnValue = { original(remote, unpack(args)) }
					else
						returnValue = { original(remote, unpack(args)) }
					end
					coroutine.resume(namecallThread, unpack(returnValue))
					coroutine.wrap(function()
						schedule(remoteHandler, false, methodName, remote, args, funcInfo, calling, returnValue)
					end)()
				end)
			else
				coroutine.wrap(function()
					schedule(remoteHandler, false, methodName, remote, args, funcInfo, calling)
				end)()
			end
		end
		if recordReturnValues and (methodName == "InvokeServer" or methodName == "invokeServer") then
			return coroutine.yield()
		elseif
			validInstance
			and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
			and (blocklist[remote] or blocklist[remoteName])
		then
			return nil
		elseif
			(not recordReturnValues or methodName ~= "InvokeServer" or methodName ~= "invokeServer")
			and validInstance
			and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
			and remoteHooks[remote]
		then
			return original(remote, remoteHooks[remote](...))
		else
			return original(remote, ...)
		end
	end
	return original(remote, ...)
end, original)

local newFireServer = newcclosure(function(...)
	return hookRemote("RemoteEvent", ...)
end, originalEvent)

local newInvokeServer = newcclosure(function(...)
	return hookRemote("RemoteFunction", ...)
end, originalFunction)

--- Toggles on and off the remote spy
function toggleSpy()
	if not toggle then
		if hookmetamethod then
			local oldNamecall = hookmetamethod(game, "__namecall", newnamecall)
			original = original or function(...)
				return oldNamecall(...)
			end
			_G.OriginalNamecall = original
		else
			gm = gm or getrawmetatable(game)
			original = original or function(...)
				return gm.__namecall(...)
			end
			setreadonly(gm, false)
			if not original then
				warn("SimpleSpy: namecall method not found!")
				onToggleButtonClick()
				return
			end
			gm.__namecall = newnamecall
			setreadonly(gm, true)
		end
		originalEvent = hookfunction(remoteEvent.FireServer, newFireServer)
		originalFunction = hookfunction(remoteFunction.InvokeServer, newInvokeServer)
	else
		if hookmetamethod then
			if original then
				hookmetamethod(game, "__namecall", original)
			end
		else
			gm = gm or getrawmetatable(game)
			setreadonly(gm, false)
			gm.__namecall = original
			setreadonly(gm, true)
		end
		hookfunction(remoteEvent.FireServer, originalEvent)
		hookfunction(remoteFunction.InvokeServer, originalFunction)
	end
end

--- Toggles between the two remotespy methods (hookfunction currently = disabled)
function toggleSpyMethod()
	toggleSpy()
	toggle = not toggle
end

--- Shuts down the remote spy
function shutdown()
	if schedulerconnect then
		schedulerconnect:Disconnect()
	end
	for _, connection in pairs(connections) do
		coroutine.wrap(function()
			connection:Disconnect()
		end)()
	end
	SimpleSpy2:Destroy()
	hookfunction(remoteEvent.FireServer, originalEvent)
	hookfunction(remoteFunction.InvokeServer, originalFunction)
	if hookmetamethod then
		if original then
			hookmetamethod(game, "__namecall", original)
		end
	else
		gm = gm or getrawmetatable(game)
		setreadonly(gm, false)
		gm.__namecall = original
		setreadonly(gm, true)
	end
	_G.SimpleSpyExecuted = false
end

-- main
if not _G.SimpleSpyExecuted then
	local succeeded, err = pcall(function()
		if not RunService:IsClient() then
			error("SimpleSpy cannot run on the server!")
		end
		if
			not hookfunction
			or not getrawmetatable
			or getrawmetatable and not getrawmetatable(game).__namecall
			or not setreadonly
		then
			local missing = {}
			if not hookfunction then
				table.insert(missing, "hookfunction")
			end
			if not getrawmetatable then
				table.insert(missing, "getrawmetatable")
			end
			if getrawmetatable and not getrawmetatable(game).__namecall then
				table.insert(missing, "getrawmetatable(game).__namecall")
			end
			if not setreadonly then
				table.insert(missing, "setreadonly")
			end
			shutdown()
			error(
				"This environment does not support method hooks!\n(Your exploit is not capable of running SimpleSpy)\nMissing: "
					.. table.concat(missing, ", ")
			)
		end
		_G.SimpleSpyShutdown = shutdown
		ContentProvider:PreloadAsync({
			"rbxassetid://6065821980",
			"rbxassetid://6065774948",
			"rbxassetid://6065821086",
			"rbxassetid://6065821596",
			ImageLabel,
			ImageLabel_2,
			ImageLabel_3,
		})
		-- if gethui then funcEnabled = false end
		onToggleButtonClick()
		RemoteTemplate.Parent = nil
		FunctionTemplate.Parent = nil
		codebox = Highlight.new(CodeBox)
		codebox:setRaw("")
		getgenv().SimpleSpy = SimpleSpy
		getgenv().getNil = function(name, class)
			for _, v in pairs(getnilinstances()) do
				if v.ClassName == class and v.Name == name then
					return v
				end
			end
		end
		TextLabel:GetPropertyChangedSignal("Text"):Connect(scaleToolTip)
		-- TopBar.InputBegan:Connect(onBarInput)
		MinimizeButton.MouseButton1Click:Connect(toggleMinimize)
		MaximizeButton.MouseButton1Click:Connect(toggleSideTray)
		Simple.MouseButton1Click:Connect(onToggleButtonClick)
		CloseButton.MouseEnter:Connect(onXButtonHover)
		CloseButton.MouseLeave:Connect(onXButtonUnhover)
		Simple.MouseEnter:Connect(onToggleButtonHover)
		Simple.MouseLeave:Connect(onToggleButtonUnhover)
		CloseButton.MouseButton1Click:Connect(shutdown)
		table.insert(connections, UserInputService.InputBegan:Connect(backgroundUserInput))
		connectResize()
		SimpleSpy2.Enabled = true
		coroutine.wrap(function()
			wait(1)
			onToggleButtonUnhover()
		end)()
		schedulerconnect = RunService.Heartbeat:Connect(taskscheduler)
		if syn and syn.protect_gui then
			pcall(syn.protect_gui, SimpleSpy2)
		end
		bringBackOnResize()
		SimpleSpy2.Parent = --[[gethui and gethui() or]]
			CoreGui
		_G.SimpleSpyExecuted = true
		if not Players.LocalPlayer then
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		end
		Mouse = Players.LocalPlayer:GetMouse()
		oldIcon = Mouse.Icon
		table.insert(connections, Mouse.Move:Connect(mouseMoved))
	end)
	if not succeeded then
		warn(
			"A fatal error has occured, SimpleSpy was unable to launch properly.\nPlease DM this error message to @exx#9394:\n\n"
				.. tostring(err)
		)
		SimpleSpy2:Destroy()
		hookfunction(remoteEvent.FireServer, originalEvent)
		hookfunction(remoteFunction.InvokeServer, originalFunction)
		if hookmetamethod then
			if original then
				hookmetamethod(game, "__namecall", original)
			end
		else
			setreadonly(gm, false)
			gm.__namecall = original
			setreadonly(gm, true)
		end
		return
	end
else
	SimpleSpy2:Destroy()
	return
end

----- ADD ONS ----- (easily add or remove additonal functionality to the RemoteSpy!)
--[[
    Some helpful things:
        - add your function in here, and create buttons for them through the 'newButton' function
        - the first argument provided is the TextButton the player clicks to run the function
        - generated scripts are generated when the namecall is initially fired and saved in remoteFrame objects
        - blacklisted remotes will be ignored directly in namecall (less lag)
        - the properties of a 'remoteFrame' object:
            {
                Name: (string) The name of the Remote
                GenScript: (string) The generated script that appears in the codebox (generated when namecall fired)
                Source: (Instance (LocalScript)) The script that fired/invoked the remote
                Remote: (Instance (RemoteEvent) | Instance (RemoteFunction)) The remote that was fired/invoked
                Log: (Instance (TextButton)) The button being used for the remote (same as 'selected.Log')
            }
        - globals list: (contact @exx#9394 for more information or if you have suggestions for more to be added)
            - closed: (boolean) whether or not the GUI is currently minimized
            - logs: (table[remoteFrame]) full of remoteFrame objects (properties listed above)
            - selected: (remoteFrame) the currently selected remoteFrame (properties listed above)
            - blacklist: (string[] | Instance[] (RemoteEvent) | Instance[] (RemoteFunction)) an array of blacklisted names and remotes
            - codebox: (Instance (TextBox)) the textbox that holds all the code- cleared often
]]
-- Copies the contents of the codebox
newButton("Copy Code", function()
	return "Click to copy code"
end, function()
	setclipboard(codebox:getString())
	TextLabel.Text = "Copied successfully!"
end)

--- Copies the source script (that fired the remote)
newButton("Copy Remote", function()
	return "Click to copy the path of the remote"
end, function()
	if selected then
		setclipboard(v2s(selected.Remote.remote))
		TextLabel.Text = "Copied!"
	end
end)

-- Executes the contents of the codebox through loadstring
newButton("Run Code", function()
	return "Click to execute code"
end, function()
	local orText = "Click to execute code"
	TextLabel.Text = "Executing..."
	local succeeded = pcall(function()
		return loadstring(codebox:getString())()
	end)
	if succeeded then
		TextLabel.Text = "Executed successfully!"
	else
		TextLabel.Text = "Execution error!"
	end
end)

--- Gets the calling script (not super reliable but w/e)
newButton("Get Script", function()
	return "Click to copy calling script to clipboard\nWARNING: Not super reliable, nil == could not find"
end, function()
	if selected then
		setclipboard(SimpleSpy:ValueToString(selected.Source))
		TextLabel.Text = "Done!"
	end
end)

--- Decompiles the script that fired the remote and puts it in the code box
newButton("Function Info", function()
	return "Click to view calling function information"
end, function()
	if selected then
		if selected.Function then
			codebox:setRaw(
				"-- Calling function info\n-- Generated by the SimpleSpy serializer\n\n" .. tostring(selected.Function)
			)
		end
		TextLabel.Text = "Done! Function info generated by the SimpleSpy Serializer."
	end
end)

--- Clears the Remote logs
newButton("Clr Logs", function()
	return "Click to clear logs"
end, function()
	TextLabel.Text = "Clearing..."
	logs = {}
	for _, v in pairs(LogList:GetChildren()) do
		if not v:IsA("UIListLayout") then
			v:Destroy()
		end
	end
	codebox:setRaw("")
	selected = nil
	TextLabel.Text = "Logs cleared!"
end)

--- Excludes the selected.Log Remote from the RemoteSpy
newButton("Exclude (i)", function()
	return "Click to exclude this Remote.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
end, function()
	if selected then
		blacklist[selected.Remote.remote] = true
		TextLabel.Text = "Excluded!"
	end
end)

--- Excludes all Remotes that share the same name as the selected.Log remote from the RemoteSpy
newButton("Exclude (n)", function()
	return "Click to exclude all remotes with this name.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
end, function()
	if selected then
		blacklist[selected.Name] = true
		TextLabel.Text = "Excluded!"
	end
end)

--- clears blacklist
newButton("Clr Blacklist", function()
	return "Click to clear the blacklist.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
end, function()
	blacklist = {}
	TextLabel.Text = "Blacklist cleared!"
end)

--- Prevents the selected.Log Remote from firing the server (still logged)
newButton("Block (i)", function()
	return "Click to stop this remote from firing.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
end, function()
	if selected then
		if selected.Remote.remote then
			blocklist[selected.Remote.remote] = true
			TextLabel.Text = "Excluded!"
		else
			TextLabel.Text = "Error! Instance may no longer exist, try using Block (n)."
		end
	end
end)

--- Prevents all remotes from firing that share the same name as the selected.Log remote from the RemoteSpy (still logged)
newButton("Block (n)", function()
	return "Click to stop remotes with this name from firing.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
end, function()
	if selected then
		blocklist[selected.Name] = true
		TextLabel.Text = "Excluded!"
	end
end)

--- clears blacklist
newButton("Clr Blocklist", function()
	return "Click to stop blocking remotes.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
end, function()
	blocklist = {}
	TextLabel.Text = "Blocklist cleared!"
end)

--- Attempts to decompile the source script
newButton("Decompile", function()
	return "Attempts to decompile source script\nWARNING: Not super reliable, nil == could not find"
end, function()
	if selected then
		if selected.Source then
			codebox:setRaw(decompile(selected.Source))
			TextLabel.Text = "Done!"
		else
			TextLabel.Text = "Source not found!"
		end
	end
end)

newButton("Disable Info", function()
	return string.format(
		"[%s] Toggle function info (because it can cause lag in some games)",
		funcEnabled and "ENABLED" or "DISABLED"
	)
end, function()
	funcEnabled = not funcEnabled
	TextLabel.Text = string.format(
		"[%s] Toggle function info (because it can cause lag in some games)",
		funcEnabled and "ENABLED" or "DISABLED"
	)
end)

newButton("Autoblock", function()
	return string.format(
		"[%s] [BETA] Intelligently detects and excludes spammy remote calls from logs",
		autoblock and "ENABLED" or "DISABLED"
	)
end, function()
	autoblock = not autoblock
	TextLabel.Text = string.format(
		"[%s] [BETA] Intelligently detects and excludes spammy remote calls from logs",
		autoblock and "ENABLED" or "DISABLED"
	)
	history = {}
	excluding = {}
end)

newButton("CallingScript", function()
	return string.format(
		"[%s] [UNSAFE] Uses 'getcallingscript' to get calling script for Decompile and GetScript. Much more reliable, but opens up SimpleSpy to detection and/or instability.",
		useGetCallingScript and "ENABLED" or "DISABLED"
	)
end, function()
	useGetCallingScript = not useGetCallingScript
	TextLabel.Text = string.format(
		"[%s] [UNSAFE] Uses 'getcallingscript' to get calling script for Decompile and GetScript. Much more reliable, but opens up SimpleSpy to detection and/or instability.",
		useGetCallingScript and "ENABLED" or "DISABLED"
	)
end)

newButton("KeyToString", function()
	return string.format(
		"[%s] [BETA] Uses an experimental new function to replicate Roblox's behavior when a non-primitive type is used as a key in a table. Still in development and may not properly reflect tostringed (empty) userdata.",
		keyToString and "ENABLED" or "DISABLED"
	)
end, function()
	keyToString = not keyToString
	TextLabel.Text = string.format(
		"[%s] [BETA] Uses an experimental new function to replicate Roblox's behavior when a non-primitive type is used as a key in a table. Still in development and may not properly reflect tostringed (empty) userdata.",
		keyToString and "ENABLED" or "DISABLED"
	)
end)

newButton("ToggleReturnValues", function()
	return string.format(
		"[%s] [EXPERIMENTAL] Enables recording of return values for 'GetReturnValue'\n\nUse this method at your own risk, as it could be detectable.",
		recordReturnValues and "ENABLED" or "DISABLED"
	)
end, function()
	recordReturnValues = not recordReturnValues
	TextLabel.Text = string.format(
		"[%s] [EXPERIMENTAL] Enables recording of return values for 'GetReturnValue'\n\nUse this method at your own risk, as it could be detectable.",
		recordReturnValues and "ENABLED" or "DISABLED"
	)
end)

newButton("GetReturnValue", function()
	return "[Experimental] If 'ReturnValues' is enabled, this will show the recorded return value for the RemoteFunction (if available)."
end, function()
	if selected then
		codebox:setRaw(SimpleSpy:ValueToVar(selected.ReturnValue, "returnValue"))
	end
end)
end)
local Section = Tab:NewSection("Remote Spy")
Section:NewButton("Open Remote Spy", "", function()
loadstring(game:HttpGet("https://pastebin.com/raw/bCghX33W", true))()
end)
local Section = Tab:NewSection("Info")
Section:NewButton("Script Make Gamer_Tester And Coco_Man", "Or temakuzurin and superkirill20111", function()
end)
Section:NewButton("Upgrade functions by Gamer_Tester", "Or temakuzurin and superkirill20111", function()
end)
Section:NewButton("My Channel:Coco_Man312", "", function()
end)
Section:NewButton("Gamer_Tester Channel:GameTester_4012", "", function()
end)