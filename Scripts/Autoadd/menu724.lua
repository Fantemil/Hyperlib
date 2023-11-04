local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CSS Script", "BloodTheme")
local Tab = Window:NewTab("Main menu")
local Section = Tab:NewSection("idk")
Section:NewLabel("Created By Lomeiom1")
Section:NewButton("Virtual Reality Zone", "ButtonInfo", function()
local A_1 = 
{
	[1] = "Virtual Reality", 
	[2] = 1, 
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
local Tab = Window:NewTab("Skins Script")
local Section = Tab:NewSection("Characters")
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
Section:NewButton("Sonic CD to Sonic EXE (Restored EXE's Animation)", "IF U SEE TEXT SONIC_EXE DO NOT PLAY OR GAME CRASH", function