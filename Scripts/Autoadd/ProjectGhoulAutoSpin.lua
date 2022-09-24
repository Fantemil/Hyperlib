getgenv().kagune = false


local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Misc")

local b = w:CreateFolder("Spin")

local c = w:CreateFolder("Credits")




c:Button("Create by Jaff",function()
   print("Made this in 5 min")
end)

b:Toggle("Auto spin ",function(bool)
   getgenv().kagune = bool
   print('Auto spin is: ', bool)
   if bool then
       doFarm();
       end
end)



c:DestroyGui()
function doFarm()
   spawn(function()
while getgenv().kagune do
game:GetService("ReplicatedStorage").Events.RemoteFunction:InvokeServer("Spin")
wait(2) -- you can change the time but this is just to be safe
if game:GetService("Players").LocalPlayer.data.extra.naturalhh.Value == true then
getgenv().kagune = false
wait()
game.Players.LocalPlayer:Kick("Lucky ass you got it I'm jealous")
end
end
end)
end