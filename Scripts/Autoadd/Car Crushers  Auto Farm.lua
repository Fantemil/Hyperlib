local carCollection = workspace:WaitForChild("CarCollection")
local players = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")
local spawnRemote = rs.rF.SpawnVehicle
local client = players.LocalPlayer

local allCrushers = workspace:WaitForChild("All crushers")
local washingMachine = allCrushers:WaitForChild("Washing Machine")

local respawnGui = client.PlayerGui:WaitForChild("VehicleMenu").Menu.Background.Background.RespawnLabel
local gotTeleported = false

getgenv().farm = true

local getCar = function()
local car = carCollection:FindFirstChild(client.Name)

if #car:WaitForChild("Car").Wheels:GetChildren() > 1 then
repeat
task.wait()
until car.PrimaryPart ~= nil
return car
else
return "not found"
end
end

local canRespawn = function()
return respawnGui.Text == "Respawn vehicle [R]"
end

local tpCrusher = function()
local car = getCar()

if car == "not found" then
return
end

car:SetPrimaryPartCFrame(washingMachine.HitBox.CFrame)
gotTeleported = true

fireclickdetector(washingMachine.Enable.QuickButton.ClickDetector, 5)
end

local respawn = function()
spawnRemote:InvokeServer(carCollection:FindFirstChild(client.Name).VehicleName.Value)

repeat
task.wait()
until getCar() ~= "not found"
end

while getgenv().farm and task.wait() do
if canRespawn() then
respawn()
tpCrusher()
end
end