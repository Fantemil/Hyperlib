warn("Anti afk running")
 game:GetService("Players").LocalPlayer.Idled:connect(function()
 warn("Anti afk ran")
 game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):ClickButton2(Vector2.new())
 end)
 local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/ui%20libs2", true))()
 local example = library:CreateWindow({
   text = "Midnight"
 })
 example:AddBox("Enter Vehicle Speed", function(object, focus)
     if focus then
         getfenv().speed = tonumber(object.Text)
     end
 end)
 example:AddToggle("Auto Farm", function(state)
 getfenv().auto = true
 getfenv().first = false
 spawn(function()
     while getfenv().auto do
     for i,v in pairs(workspace:GetChildren()) do
         if v.ClassName == "Model" and v:FindFirstChild("Container") or v.Name == "PortCraneOversized" then
             v:Destroy()
         end
     end
     wait(1)
 end
 end)
 while getfenv().auto do
 local hum = game.Players.LocalPlayer.Character.Humanoid
 local car = hum.SeatPart.Parent
  car.PrimaryPart=car.Body:FindFirstChild("#Weight")
 if getfenv().first ~= true then
     if workspace.Workspace:FindFirstChild("Buildings") then
     workspace.Workspace.Buildings:Destroy()
     end
 car:PivotTo(CFrame.new(Vector3.new(-7594.541015625, -3.513848304748535, 5130.95263671875),Vector3.new(-6205.29833984375, -3.5030133724212646, 8219.853515625)))
 wait(5)
 
 end
 car.PrimaryPart.Velocity = Vector3.new(0,0,0)
 getfenv().first = true
  local location = Vector3.new(-6205.29833984375, -3.5030133724212646, 8219.853515625)
  repeat task.wait()
     mathlock = getfenv().speed or 500
     car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
     car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
 until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getfenv().auto == false
 car.PrimaryPart.Velocity = Vector3.new(0,0,0)
 local location = Vector3.new(-7594.541015625, -3.513848304748535, 5130.95263671875)
 repeat task.wait()
     mathlock = getfenv().speed or 500
     car.PrimaryPart.Velocity =car.PrimaryPart.CFrame.LookVector*mathlock
     car:PivotTo(CFrame.new(car.PrimaryPart.Position,location))
 until game.Players.LocalPlayer:DistanceFromCharacter(location)< 50 or getfenv().auto == false
 car.PrimaryPart.Velocity = Vector3.new(0,0,0)
 end
 end)