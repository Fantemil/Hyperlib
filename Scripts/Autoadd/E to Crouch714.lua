game.StarterGui:SetCore("SendNotification", {
Title = "e to crouch realyl????";
Text = "bruh E to crouch no way bruh ";
 })
local keyPressed = Enum.KeyCode.E
local animationId = "287325678" 

local userInputService = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://"..animationId
local animationTrack = humanoid:LoadAnimation(animation)

userInputService.InputBegan:Connect(function(input,isTyping)
 if isTyping then return end
 if input.KeyCode == keyPressed then
  if not animationTrack.IsPlaying then
   animationTrack:Play()
  else
   animationTrack:Stop()
  end
 end
end)