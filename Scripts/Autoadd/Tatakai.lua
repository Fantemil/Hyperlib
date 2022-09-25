for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

 if v.ClassName == "Accessory" or v.Name == "Shirt" or v.Name == "Pants" then
     v:Destroy()
 end
end

getgenv().farmer = true
while wait() do
 if getgenv().farmer == true then

local Player =   game.Players:FindFirstChildOfClass("Player")
local BackPack  =  game.Players.LocalPlayer.Backpack
local roadwork = game.Players.LocalPlayer.Backpack:FindFirstChild("Roadwork")
local humanoid =  Player.Character:FindFirstChildOfClass("Humanoid")


game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50 -- Change the number to the speed you want


game.Players.LocalPlayer.Character.Humanoid:MoveTo(game:GetService("Workspace").Items.Roadwork["Roadwork $300"].Head.Position)

wait(5)

fireclickdetector(game:GetService("Workspace").Items.Roadwork.ClickDetector)
wait(.8)
humanoid:EquipTool (roadwork)

local virtualUser = game:GetService('VirtualUser')
virtualUser:CaptureController()
wait()
virtualUser:Button1Down(Vector2.new(0.0135417, -0.4), CFrame.new(-13249.8, 647.602, 456.152, 0.00685011, -0.983467, -0.176905, -0.0380817))
wait()
virtualUser:Button1Down(Vector2.new(-0.0135416, -0.233333), CFrame.new(-13249.8, 647.602, 456.152, 0.00685011, -0.983467, -0.176905, -0.0380817))

wait(.5)

local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local destination = game:GetService("Workspace").Roadwork["1"].Position

humanoid:MoveTo(destination)

wait(4)

local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local destination = game:GetService("Workspace").Roadwork["2"].Position

humanoid:MoveTo(destination)

wait(4)

local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local destination = game:GetService("Workspace").Roadwork["3"].Position

humanoid:MoveTo(destination)

wait(4)

local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local destination = game:GetService("Workspace").Roadwork["4"].Position

humanoid:MoveTo(destination)

wait(4)
local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local destination = game:GetService("Workspace").Roadwork["5"].Position

humanoid:MoveTo(destination)

wait(4)

local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local destination = game:GetService("Workspace").Roadwork["6"].Position

humanoid:MoveTo(destination)

wait(4)
local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local destination = game:GetService("Workspace").Roadwork["7"].Position

humanoid:MoveTo(destination)

wait(4)

local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local destination = game:GetService("Workspace").Roadwork["8"].Position

humanoid:MoveTo(destination)

wait(3)
end
end