local Workspace = workspace
local EventMobs = Workspace:FindFirstChild("EventMobs")

local function TeleportToRandomObject()
  local models = EventMobs:GetChildren()

  local randomModel = models[math.random(1, #models)]

  local objects = randomModel:GetChildren()

  local randomObject = objects[math.random(1, #objects)]

  local player = game.Players.LocalPlayer
  player.Character:SetPrimaryPartCFrame(randomObject.CFrame)
end

local teleportCoroutine = coroutine.create(TeleportToRandomObject)

while true do
  wait(1)

  coroutine.resume(teleportCoroutine)

  teleportCoroutine = coroutine.create(TeleportToRandomObject)
end