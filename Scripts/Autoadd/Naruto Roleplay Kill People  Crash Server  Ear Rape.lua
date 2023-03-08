Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
Window = Library.CreateLib("Naruto Roleplay Fucker", "Serpent")

-- MAIN
Main = Window:NewTab("Main")
MainSection = Main:NewSection("Fun")
MainSection2 = Main:NewSection("Destructive")


MainSection:NewButton("Void Ball (Kills)", "Spawns a Void Ball that kills players upon contact.", function()
 local A_1 = 1
 local Event = game:GetService("ReplicatedStorage").void
 Event:FireServer(A_1)
end)


MainSection:NewButton("Black Mist", "Summon a Black Mist around your character.", function()
 local A_1 = 2
 local Event = game:GetService("ReplicatedStorage").void
 Event:FireServer(A_1)
end)


MainSection:NewButton("Sperm", "cum all over the fucking place idfk", function()
 local A_1 = 1
 local Event = game:GetService("ReplicatedStorage").rocke
 Event:FireServer(A_1)
end)


MainSection2:NewToggle("Black Mist Spam", "Spams the Black Mist around your character.", function(state)
 if state then
  _G.MistSpam = true
  while _G.MistSpam == true do
   wait()
   local A_1 = 2
   local Event = game:GetService("ReplicatedStorage").void
   Event:FireServer(A_1)
  end
 else
  _G.MistSpam = false
 end
end)


MainSection2:NewToggle("Sperm Spam", "cum all over the fucking place idfk", function(state)
 if state then
  _G.SusSpam = true
  while _G.SusSpam == true do
   wait()
   local A_1 = 1
   local Event = game:GetService("ReplicatedStorage").rocke
   Event:FireServer(A_1)
  end
 else
  _G.SusSpam = false
 end
end)


MainSection2:NewToggle("Mud Wall Spam", "Spams a Mud Wall in front of your character.", function(state)
 if state then
  _G.MudSpam = true
  while _G.MudSpam == true do
   wait()
   local A_1 = 2
   local Event = game:GetService("ReplicatedStorage").wall
   Event:FireServer(A_1)
   end
 else
  _G.MudSpam = false
 end
end)


MainSection2:NewToggle("Lightning Earrape", "Summons lightning to earrape nearby players.", function(state)
 if state then
  _G.Earrape = true 
  while _G.Earrape == true do
   wait()
   local A_1 = 1
   local Event = game:GetService("ReplicatedStorage").meme
   Event:FireServer(A_1)
   end
 else
  _G.Earrape = false
 end
end)


MainSection2:NewButton("Crash Server", "Summons frogs to crash the server.", function()
 while task.wait() do
  for i = 1,10 do
   local A_1 = 2
   local Event = game:GetService("ReplicatedStorage").meme
   Event:FireServer(A_1)
  end
 end 
end)


-- CREDITS
Credit = Window:NewTab("Credits")
CreditSection = Credit:NewSection("Made by nu7#3943")
CreditSection:NewLabel("Kavo UI Library by xHeptc")