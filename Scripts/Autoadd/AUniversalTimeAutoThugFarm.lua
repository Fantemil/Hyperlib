getgenv().Toggle = true
--// Variables \\

local Player = game.Players.LocalPlayer

local Character = Player.Character

local RootPart = Character.HumanoidRootPart

local Workspace = game:GetService("Workspace")

--// Script \\

while getgenv().Toggle  do wait()

for i,v in pairs(Workspace.Living:GetDescendants()) do 

if v.Name == "Thug" and v:IsA("Model")  then
   
while v.Humanoid.Health ~= 0  and getgenv().Toggle do wait()
    v.HumanoidRootPart.CanCollide = false
RootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,-5,0) * CFrame.Angles(math.rad(90),0,0)
local ohString1 = "LMB"

game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(ohString1)
            end
        end
    end
end