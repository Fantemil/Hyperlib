local LocalPlayer = game.Players.LocalPlayer
local oldNameCall
oldNameCall = hookmetamethod(game,"__namecall",function(self,...)
 local args = {...}
 local method = getnamecallmethod()
 if not checkcaller() and getcallingscript().Name == "LocalClean" then -- localclean is retarded tbh
   return {}
 end
 if method == "FireServer" and self.Name == "RequestPlayerKick" then
   return "fortnite sussy balls :pensive:"
 end
 return oldNameCall(self,...)
end)
while game:GetService("RunService").RenderStepped:Wait() do
 if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("CharacterControl") then
   LocalPlayer.Character:FindFirstChild("CharacterControl").Disabled = true
 end
end