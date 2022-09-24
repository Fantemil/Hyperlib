local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local serviceFolder = ReplicatedStorage:WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TycoonService")

local sellEvent = serviceFolder:WaitForChild("RE"):WaitForChild("SellRats")
local purchaseEvent = serviceFolder:WaitForChild("RE"):WaitForChild("PurchaseButton")
local collectEvent = serviceFolder:WaitForChild("RE"):WaitForChild("CollectRat")
local getTycoon = serviceFolder:WaitForChild("RF"):WaitForChild("getTycoon")

local tycoon = getTycoon:InvokeServer()
local ratFolder = tycoon:WaitForChild("Rats")
local buttonFolder = tycoon:WaitForChild("Buttons")
local obbyButton = workspace:WaitForChild("Obby"):WaitForChild("Button"):WaitForChild("Hitbox")

local isOn = true

player.CharacterAdded:Connect(function(newCharacter)
 character = newCharacter
 rootPart = character:WaitForChild("HumanoidRootPart")
end)

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
 if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.E then
  isOn = not isOn
 end
end)

local buttonTable = {}

for _, button in ipairs(buttonFolder:GetChildren()) do
 if button:GetAttribute("Price") and not button:GetAttribute("Gamepass") then
  buttonTable[button] = button:GetAttribute("Price")
 end
end

buttonFolder.ChildAdded:Connect(function(child)
 if child:GetAttribute("Price") and not child:GetAttribute("Gamepass") then
  buttonTable[child] = child:GetAttribute("Price")
 end
end)

local function washRat(rat)
 collectEvent:FireServer(tonumber(rat.Name))
 sellEvent:FireServer()
end

local function touchObby()
 if firetouchinterest then
  firetouchinterest(rootPart, obbyButton, 0)
  firetouchinterest(rootPart, obbyButton, 1)
 else
  rootPart.CFrame = obbyButton.CFrame
 end
end

for _, rat in ipairs(ratFolder:GetChildren()) do
 washRat(rat)
end

ratFolder.ChildAdded:Connect(function(child)
 if isOn then
  washRat(child)
 end
end)

if getconnections then
 for _, connection in pairs(getconnections(Players.LocalPlayer.Idled)) do
  if connection.Disable then
   connection.Disable(connection)
  elseif connection.Disconnect then
   connection.Disconnect(connection)
  end
 end
else
 Players.LocalPlayer.Idled:Connect(function()
  local VirtualUser = game:GetService("VirtualUser")
  VirtualUser:CaptureController()
  VirtualUser:ClickButton2(Vector2.new())
 end)
end

while true do
 if isOn then
  for button, price in pairs(buttonTable) do
   if button:GetAttribute("Enabled") and price <= player:GetAttribute("Cash") then
    purchaseEvent:FireServer(button.Name)
    task.wait(0.5)
   end
  end
  if not player:GetAttribute("ObbyCooldown") then
   touchObby()
  end
 end

 task.wait()
end