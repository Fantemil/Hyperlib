--script not made by me
function sandbox(var,func)
 local env = getfenv(func)
 local newenv = setmetatable({},{
  __index = function(self,k)
   if k=="script" then
    return var
   else
    return env[k]
   end
  end,
 })
 setfenv(func,newenv)
 return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
LocalScript0 = Instance.new("LocalScript")
LocalScript0.Name = "E To Sit"
LocalScript0.Parent = mas
table.insert(cors,sandbox(LocalScript0,function()
--- By: markosiin123 YT: MarkoTube ---

repeat wait() until game.Players.LocalPlayer
local player = script.Parent.Parent
local mouse = player:GetMouse()

mouse.KeyDown:connect(function(key)
 if key == "e" then
    player.Character.Humanoid.Sit=true
 end
end)


end))
for i,v in pairs(mas:GetChildren()) do
 v.Parent = game:GetService("Players").LocalPlayer.Backpack
 pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
 spawn(function()
  pcall(v)
 end)
end