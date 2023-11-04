local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerMouse = LocalPlayer:GetMouse()
local shiftLockEnabled = false
local lockOffset = Vector2.new(5, 0)
local cursorImage = "rbxasset://textures/MouseLockedCursor.png"
local originalMouseIcon
local originalCameraOffset
local characterAddedConn, characterRemovingConn

local function disconnectAllConnections()
   if characterAddedConn then
       characterAddedConn:Disconnect()
       characterAddedConn = nil
   end
   if characterRemovingConn then
       characterRemovingConn:Disconnect()
       characterRemovingConn = nil
   end
end

local function toggleShiftLock()
   shiftLockEnabled = not shiftLockEnabled
   if shiftLockEnabled then
       UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
       originalMouseIcon = PlayerMouse.Icon
       PlayerMouse.Icon = cursorImage
   else
       UserInputService.MouseBehavior = Enum.MouseBehavior.Default
       PlayerMouse.Icon = originalMouseIcon
   end
end

local function updateCameraOffset()
   if shiftLockEnabled then
       local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
       if humanoid then
           humanoid.CameraOffset = Vector3.new(1.5, 0, 0) --- Edit X, Y, Z to how far you want the shiftlock to be from your screen.
       end
   else
       local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
       if humanoid then
           humanoid.CameraOffset = Vector3.new(0, 0, 0)
       end
   end
end

local function onCharacterRemoving()
   disconnectAllConnections()
end

local function onCharacterAdded()
   disconnectAllConnections()
   characterRemovingConn = LocalPlayer.CharacterRemoving:Connect(onCharacterRemoving)
end

local function onInputBegan(input, isProcessed)
   if not isProcessed and input.KeyCode == Enum.KeyCode.LeftShift then --- Edit "LeftShift" to any other Keybind for the shiftlock.
       toggleShiftLock()
   end
end

local function onRenderStepped()
   updateCameraOffset()
   if shiftLockEnabled then
       local player = LocalPlayer
       if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
           player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position) * CFrame.Angles(0, math.atan2(-Camera.CFrame.lookVector.X, -Camera.CFrame.lookVector.Z), 0)
       end

       local centerScreen = Vector2.new(PlayerMouse.X, PlayerMouse.Y)
       local newMousePosition = centerScreen + lockOffset
       local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
       if humanoid and humanoid:IsDescendantOf(game.Workspace) then
           humanoid.CameraOffset = Vector3.new(1.5, 0, 0)
       end
   end
end

local function onInputChanged(input)
   if shiftLockEnabled then
       if input.UserInputType == Enum.UserInputType.MouseMovement then
           local centerScreen = Vector2.new(PlayerMouse.X, PlayerMouse.Y)
           local newMousePosition = centerScreen + lockOffset
       end
   end
end

characterAddedConn = LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
UserInputService.InputBegan:Connect(onInputBegan)
RunService.Heartbeat:Connect(updateCameraOffset)
RunService.RenderStepped:Connect(onRenderStepped)
UserInputService.InputChanged:Connect(onInputChanged)