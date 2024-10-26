fireclickdetector(game.Workspace.Lobby.Phase.ClickDetector)
wait(0.5)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")
local teleportPart = workspace:WaitForChild("Lobby"):WaitForChild("Teleport1")

if head and teleportPart then
    firetouchinterest(head, teleportPart, 0) -- ÐÐ°ÑÐ°Ð»Ð¾ ÐºÐ°ÑÐ°Ð½Ð¸Ñ
    wait(0.1) -- ÐÐµÐ±Ð¾Ð»ÑÑÐ°Ñ Ð·Ð°Ð´ÐµÑÐ¶ÐºÐ° Ð´Ð»Ñ Ð¸Ð¼Ð¸ÑÐ°ÑÐ¸Ð¸ ÐºÐ°ÑÐ°Ð½Ð¸Ñ
    firetouchinterest(head, teleportPart, 1) -- ÐÐ°Ð²ÐµÑÑÐµÐ½Ð¸Ðµ ÐºÐ°ÑÐ°Ð½Ð¸Ñ
else
    warn("Head Ð¸Ð»Ð¸ Teleport1 Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ!")
end
wait(0.2)
local sound = Instance.new("Sound") -- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð½Ð¾Ð²Ð¾Ð³Ð¾ Ð¾Ð±ÑÐµÐºÑÐ° Sound
sound.SoundId = "rbxassetid://12515967206" -- Ð£ÑÑÐ°Ð½Ð¾Ð²ÐºÐ° ID Ð²Ð°ÑÐµÐ¹ Ð¼ÑÐ·ÑÐºÐ¸
sound.Parent = game.Workspace -- ÐÐ¾Ð¼ÐµÑÐµÐ½Ð¸Ðµ Ð·Ð²ÑÐºÐ° Ð² Workspace (Ð¸Ð»Ð¸ Ð² Ð´ÑÑÐ³Ð¾Ð¹ Ð¿Ð¾Ð´ÑÐ¾Ð´ÑÑÐ¸Ð¹ Ð¾Ð±ÑÐµÐºÑ)
sound:Play() -- ÐÐ¾ÑÐ¿ÑÐ¾Ð¸Ð·Ð²ÐµÐ´ÐµÐ½Ð¸Ðµ Ð·Ð²ÑÐºÐ°
while true do
game:GetService("ReplicatedStorage").Scythe:FireServer("ScytheWeapon")
wait(0.4)
end