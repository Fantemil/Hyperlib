-- Gui to Lua
-- Version: 3.2

-- Instances:

local ShiftlockStarterGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

--Properties:

ShiftlockStarterGui.Name = "Shiftlock (StarterGui)"
ShiftlockStarterGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ShiftlockStarterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ShiftlockStarterGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.921914339, 0, 0.552375436, 0)
ImageButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ImageButton.Image = "http://www.roblox.com/asset/?id=182223762"

-- Scripts:

local function TLQOYN_fake_script() -- ImageButton.ShiftGUI 
 local script = Instance.new('LocalScript', ImageButton)

 local MobileCameraFramework = {}
 local players = game:GetService("Players")
 local runservice = game:GetService("RunService")
 local CAS = game:GetService("ContextActionService")
 local player = players.LocalPlayer
 local character = player.Character or player.CharacterAdded:Wait()
 local root = character:WaitForChild("HumanoidRootPart")
 local humanoid = character.Humanoid
 local camera = workspace.CurrentCamera
 local button = script.Parent
 
 --Visiblity
 uis = game:GetService("UserInputService")
 ismobile = uis.TouchEnabled
 button.Visible = ismobile
 
 local states = {
  OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
  ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
 }
 local MAX_LENGTH = 900000
 local active = false
 local ENABLED_OFFSET = CFrame.new(1.7, 0, 0)
 local DISABLED_OFFSET = CFrame.new(-1.7, 0, 0)
 local function UpdateImage(STATE)
  button.Image = states[STATE]
 end
 local function UpdateAutoRotate(BOOL)
  humanoid.AutoRotate = BOOL
 end
 local function GetUpdatedCameraCFrame(ROOT, CAMERA)
  return CFrame.new(root.Position, Vector3.new(CAMERA.CFrame.LookVector.X * MAX_LENGTH, root.Position.Y, CAMERA.CFrame.LookVector.Z * MAX_LENGTH))
 end
 local function EnableShiftlock()
  UpdateAutoRotate(false)
  UpdateImage("ON")
  root.CFrame = GetUpdatedCameraCFrame(root, camera)
  camera.CFrame = camera.CFrame * ENABLED_OFFSET
 end
 local function DisableShiftlock()
  UpdateAutoRotate(true)
  UpdateImage("OFF")
  camera.CFrame = camera.CFrame * DISABLED_OFFSET
  pcall(function()
   active:Disconnect()
   active = nil
  end)
 end
 UpdateImage("OFF")
 active = false
 function ShiftLock()
  if not active then
   active = runservice.RenderStepped:Connect(function()
    EnableShiftlock()
   end)
  else
   DisableShiftlock()
  end
 end
 local ShiftLockButton = CAS:BindAction("ShiftLOCK", ShiftLock, false, "On")
 CAS:SetPosition("ShiftLOCK", UDim2.new(0.8, 0, 0.8, 0))
 button.MouseButton1Click:Connect(function()
  if not active then
   active = runservice.RenderStepped:Connect(function()
    EnableShiftlock()
   end)
  else
   DisableShiftlock()
  end
 end)
 return MobileCameraFramework
 
end
coroutine.wrap(TLQOYN_fake_script)()
local function OMQRQRC_fake_script() -- ShiftlockStarterGui.LocalScript 
 local script = Instance.new('LocalScript', ShiftlockStarterGui)

 local Players = game:GetService("Players")
 local UserInputService = game:GetService("UserInputService")
 local Settings = UserSettings()
 local GameSettings = Settings.GameSettings
 local ShiftLockController = {}
 while not Players.LocalPlayer do
  wait()
 end
 local LocalPlayer = Players.LocalPlayer
 local Mouse = LocalPlayer:GetMouse()
 local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
 local ScreenGui, ShiftLockIcon, InputCn
 local IsShiftLockMode = true
 local IsShiftLocked = true
 local IsActionBound = false
 local IsInFirstPerson = false
 ShiftLockController.OnShiftLockToggled = Instance.new("BindableEvent")
 local function isShiftLockMode()
  return LocalPlayer.DevEnableMouseLock and GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
 end
 if not UserInputService.TouchEnabled then
  IsShiftLockMode = isShiftLockMode()
 end
 local function onShiftLockToggled()
  IsShiftLocked = not IsShiftLocked
  ShiftLockController.OnShiftLockToggled:Fire()
 end
 local initialize = function()
  print("enabled")
 end
 function ShiftLockController:IsShiftLocked()
  return IsShiftLockMode and IsShiftLocked
 end
 function ShiftLockController:SetIsInFirstPerson(isInFirstPerson)
  IsInFirstPerson = isInFirstPerson
 end
 local function mouseLockSwitchFunc(actionName, inputState, inputObject)
  if IsShiftLockMode then
   onShiftLockToggled()
  end
 end
 local function disableShiftLock()
  if ScreenGui then
   ScreenGui.Parent = nil
  end
  IsShiftLockMode = false
  Mouse.Icon = ""
  if InputCn then
   InputCn:disconnect()
   InputCn = nil
  end
  IsActionBound = false
  ShiftLockController.OnShiftLockToggled:Fire()
 end
 local onShiftInputBegan = function(inputObject, isProcessed)
  if isProcessed then
   return
  end
  if inputObject.UserInputType ~= Enum.UserInputType.Keyboard or inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift then
  end
 end
 local function enableShiftLock()
  IsShiftLockMode = isShiftLockMode()
  if IsShiftLockMode then
   if ScreenGui then
    ScreenGui.Parent = PlayerGui
   end
   if IsShiftLocked then
    ShiftLockController.OnShiftLockToggled:Fire()
   end
   if not IsActionBound then
    InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
    IsActionBound = true
   end
  end
 end
 GameSettings.Changed:connect(function(property)
  if property == "ControlMode" then
   if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
    enableShiftLock()
   else
    disableShiftLock()
   end
  elseif property == "ComputerMovementMode" then
   if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
    disableShiftLock()
   else
    enableShiftLock()
   end
  end
 end)
 LocalPlayer.Changed:connect(function(property)
  if property == "DevEnableMouseLock" then
   if LocalPlayer.DevEnableMouseLock then
    enableShiftLock()
   else
    disableShiftLock()
   end
  elseif property == "DevComputerMovementMode" then
   if LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
    disableShiftLock()
   else
    enableShiftLock()
   end
  end
 end)
 LocalPlayer.CharacterAdded:connect(function(character)
  if not UserInputService.TouchEnabled then
   initialize()
  end
 end)
 if not UserInputService.TouchEnabled then
  initialize()
  if isShiftLockMode() then
   InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
   IsActionBound = true
  end
 end
 enableShiftLock()
 return ShiftLockController
 
end
coroutine.wrap(OMQRQRC_fake_script)()