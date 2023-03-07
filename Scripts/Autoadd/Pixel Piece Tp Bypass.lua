local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "YX Hub - fracture#0001", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
Name = "Teleports",
Icon = "rbxassetid://4483345998",
PremiumOnly = false

})

local Section = Tab:AddSection({
Name = "Instant Island TP (sets spawn)"
})

Tab:AddButton({
Name = "Pixel Piece",
Callback = function()
      local args = {
   [1] = {
       ["Call"] = "Dialog",
       ["NPCIsland"] = "Pixel Piece",
       ["NPCName"] = "Loro",
       ["MessageType"] = "Finish"
   }
}

game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers[game.Players.LocalPlayer.Name].NPCInteract:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end    
})

Tab:AddButton({
Name = "Syrup Island",
Callback = function()
      local args = {
   [1] = {
       ["Call"] = "Dialog",
       ["NPCIsland"] = "Syrup Island",
       ["NPCName"] = "Loro",
       ["MessageType"] = "Finish"
   }
}
   
game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers[game.Players.LocalPlayer.Name].NPCInteract:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end    
})

Tab:AddButton({
Name = "Vaill Island",
Callback = function()
      local args = {
   [1] = {
       ["Call"] = "Dialog",
       ["NPCIsland"] = "Vaill Island",
       ["NPCName"] = "Loro",
       ["MessageType"] = "Finish"
   }
}
   
game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers[game.Players.LocalPlayer.Name].NPCInteract:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end    
})

Tab:AddButton({
Name = "Shark Park",
Callback = function()
      local args = {
   [1] = {
       ["Call"] = "Dialog",
       ["NPCIsland"] = "Shark Park",
       ["NPCName"] = "Loro",
       ["MessageType"] = "Finish"
   }
}
   
game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers[game.Players.LocalPlayer.Name].NPCInteract:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end    
})

Tab:AddButton({
Name = "Shells Town",
Callback = function()
      local args = {
   [1] = {
       ["Call"] = "Dialog",
       ["NPCIsland"] = "Shells Town",
       ["NPCName"] = "Loro",
       ["MessageType"] = "Finish"
   }
}
   
game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers[game.Players.LocalPlayer.Name].NPCInteract:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end    
})

Tab:AddButton({
Name = "Pixel Arena",
Callback = function()
      local args = {
   [1] = {
       ["Call"] = "Dialog",
       ["NPCIsland"] = "Pixel Arena",
       ["NPCName"] = "Loro",
       ["MessageType"] = "Finish"
   }
}
   
game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers[game.Players.LocalPlayer.Name].NPCInteract:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end    
})

Tab:AddButton({
Name = "Orange Town",
Callback = function()
      local args = {
   [1] = {
       ["Call"] = "Dialog",
       ["NPCIsland"] = "Orange Town",
       ["NPCName"] = "Loro",
       ["MessageType"] = "Finish"
   }
}
   
game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers[game.Players.LocalPlayer.Name].NPCInteract:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end    
})

local Tab = Window:MakeTab({
Name = "Discord",
Icon = "rbxassetid://4483345998",
PremiumOnly = false


})

Tab:AddButton({
Name = "Copy for the discord",
Callback = function()
      setclipboard("https://discord.gg/6NP7MrmNMd")
  end    
})

OrionLib:MakeNotification({
Name = "LOADING",
Content = "Thanks for using!",
Image = "rbxassetid://4483345998",
Time = 10
})