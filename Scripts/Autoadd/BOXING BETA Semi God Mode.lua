local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("bloxing") -- Creates the window
local c = w:CreateFolder("by booga guy") -- Creates the folder(U will put here your buttons,etc)
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=634504313"
hi.Volume = 10
hi.Looped = false
hi.archivable = false
hi.Parent = game.Workspace

c:Button("Gas Station Weed",function()
game.Players.LocalPlayer.Character.HumanoidRootPart:Destroy()
game.Players.LocalPlayer.Character.Head.Anchored = true
hi:Play()
wait(0.1)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
c:Button("Drug Test",function()
game.Players.LocalPlayer.Character:BreakJoints()
  end)