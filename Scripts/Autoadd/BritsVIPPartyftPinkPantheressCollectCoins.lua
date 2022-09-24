_G.Toggle = true -- Toggle true/false in between getting better vehicles...

-- // Descendants Variables
local GetLP = game:GetService("Players").LocalPlayer
local GetWP = game:GetService("Workspace")
local GetRS = game:GetService("ReplicatedStorage")

-- // Functioning
function collectCoins()
if not GetLP.Character:FindFirstChild("Farsley Twelve") then
GetLP.Character.HumanoidRootPart.CFrame = CFrame.new(-193, 25, 168)
GetRS.Packages._Index:FindFirstChild("sleitnick_knit@1.0.9").knit.Services.VehicleService.__comm__.RE.GiveVehicle:FireServer()
end
GetLP.Character:WaitForChild("Farsley Twelve")
for i,v in pairs(GetWP:GetChildren()) do
if v.Name == "Coin" and v:IsA("MeshPart") and v.Transparency == 0 and _G.Toggle then
print"Yeah"
getgenv().Farming = true
GetLP.Character:WaitForChild("HumanoidRootPart").CFrame = v.CFrame
task.wait()
end
end
print"Yeah1"
getgenv().Farming = false
end

-- // Start Farm
collectCoins()

-- // Connecting collectCoins on CharacterAdded
GetLP.CharacterAdded:Connect(function(char)
char:WaitForChild("HumanoidRootPart")
collectCoins()
end)

-- // Right after the farming stops, Continue it again.
game.RunService.RenderStepped:Connect(function()
if not getgenv().Farming then
collectCoins()
end
end)