spawn(function()
 for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do 
  if v.Name == "Shadow" then 
   if v.Parent.Name == "MainFrameHolder" then 
    v.Parent.Parent:Destroy()
   end 
  end 
 end 
end)

if syn then 

else
 loadstring(game:HttpGet('https://raw.githubusercontent.com/2dgeneralspam1/lua-releases/main/iris-compat.lua'))()
end

Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/lua-releases/main/uis/boxlib.lua"))()

local Window = Lib:New({
 Name = "No Jumping Difficulty Chart Obby",
 FolderToSave = "garfieldwarez"
})


local Main = Window:Tab("Main")

local Character = Main:Section("Character")

Character:Toggle("Enable Jumping",false,"Toggle",function(t)
 shared.jumping = t 
end)


local Levels = Main:Section("Levels")

Levels:Button("Advance Level",function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Stages[game.Players.LocalPlayer.leaderstats.Stage.Value + 1].CFrame
end)

Levels:Toggle("Auto Advance Levels",false,"Toggle",function(t)
 shared.autoadvance = t 
end)

Levels:Slider("Advance Delay", 0,10,2,0.1,"Slider", function(t)
 shared.delay = t 
end)

spawn(function()
 while wait() do 
  pcall(function()
   if shared.jumping == true then 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 
   end
  end)
 end
end)

spawn(function()
 while wait() do 
  pcall(function()
   if shared.autoadvance == true then 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Stages[game.Players.LocalPlayer.leaderstats.Stage.Value + 1].CFrame
   end
  end)
  wait(shared.delay)
 end
end)