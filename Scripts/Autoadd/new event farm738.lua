loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/halloween%20taxi", true))()
_G.pumpkins = true
while _G.pumpkins do
   wait()
   pcall(function()
  if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
for ok,ya in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
                if ya.Name == "Player" and ya.Value == game.Players.LocalPlayer  then
for i,v in pairs(game:GetService("Workspace").Pumpkins:GetDescendants()) do
   if v.Name == "TouchInterest" then
   firetouchinterest(ya.Parent.Parent.PrimaryPart,v.Parent,0)
task.wait()
       firetouchinterest(ya.Parent.Parent.PrimaryPart,v.Parent,1)
   end
end
end
end
elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
      game:GetService("ReplicatedStorage").Vehicles.GetNearestSpot:InvokeServer(game:GetService("Players").LocalPlayer.variables.carId.Value)
      wait(0.5)
  game:GetService("ReplicatedStorage").Vehicles.EnterVehicleEvent:InvokeServer()
  wait(0.5)
end
end)
end

_G.autospin = false
_G.speed = 500 -- this is how fast it should go--
if _G.autospin == true then
for i=1,_G.speed do
    print(i)
spawn(function()
while _G.autospin do
game:GetService("ReplicatedStorage").SpinWheel:InvokeServer()
wait(1)
end
end)
end
end