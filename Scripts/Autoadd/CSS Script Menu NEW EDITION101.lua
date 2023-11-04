local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("CSS MENU V0.7.5","RJTheme4")
local Tab = Window:NewTab("Script in Level Select")
local Section = Tab:NewSection("All Unused Zones :)")
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
local A_2 = 21
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
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
local A_2 = 21
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
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
local A_2 = 21
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
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
local A_2 = 21
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
game:GetService("ReplicatedStorage").Objects.Asteron_Bullets.Name = "Asterrn"
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
local A_2 = 21
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
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
local A_2 = 21
local Event = game:GetService("ReplicatedStorage").Remotes.LoadGame
Event:FireServer(A_1, A_2)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.GetMasterData
Event:InvokeServer()
end)
local Section = Tab:NewSection("Get Metropolis in:")
Section:NewButton("1th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("2th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 2
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("3th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("4th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 4
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("5th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 5
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("6th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 6
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("7th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 7
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("8th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 8
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("9th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 9
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("10th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 10
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("11th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 11
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("12th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 12
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("13th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 13
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("14th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 14
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("15th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 15
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("16th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 16
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("17th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 17
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("18th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 18
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("19th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 19
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("20th Your Slot", "Restore Metropolis!", function()
local A_1 = 6
local A_2 = 20
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
local Section = Tab:NewSection("Get Old Test in:")
Section:NewButton("1th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("2th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 2
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("3th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("4th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 4
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("5th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 5
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("6th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 6
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("7th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 7
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("8th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 8
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("9th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 9
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("10th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 10
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("11th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 11
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("12th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 12
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("13th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 13
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("14th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 14
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("15th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 15
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("16th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 16
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("17th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 17
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("18th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 18
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("19th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 19
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
Event:FireServer(A_1, A_2)
end)
Section:NewButton("20th Your Slot", "Restore Metropolis!", function()
local A_1 = 1
local A_2 = 20
local Event = game:GetService("ReplicatedStorage").Remotes.CreateNewLevel
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
local Section = Tab:NewSection("Another Functions")
Section:NewButton("Beat Zone Very Fast (No Time)", "Click This! And Beat Zone!", function()
Event:InvokeServer(A_1)
end)
Section:NewButton("Beat Special Stage Very Fast!", "Click This! And Beat Special Stage!", function()
local A_1 = true
local A_2 = 64
local Event = game:GetService("ReplicatedStorage").Remotes.LeaveStage
Event:FireServer(A_1, A_2)
local A_1 = "Stages3"
local Event = game:GetService("ReplicatedStorage").Remotes.GetPublishedCreations
Event:InvokeServer(A_1)
local Event = game:GetService("ReplicatedStorage").Remotes.GetPlayerSettings
Event:InvokeServer()
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
local Tab = Window:NewTab("ReplaceRingOnObjects")
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
game:GetService("Players").LocalPlayer.PlayerGui.LevelCreator.Backdrop.Screen.ObjectsList.Ring.Ring.ObjId.Value = 145
end)
local Section = Tab:NewSection("Unused Objects from Old Test")
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
Section:NewButton("Sonic CD to Sonic EXE (Read in three dot)", "IF U SEE TEXT SONIC_EXE DO NOT PLAY OR GAME CRASH", function()
game:GetService("ReplicatedStorage").Objects["Sonic_SCD"]:Destroy()
game:GetService("ReplicatedStorage").Objects["Sonic_EXE"].Name = "Sonic_SCD"
end)