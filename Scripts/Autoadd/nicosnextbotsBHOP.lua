--[[ Variables ]]
local UIS = game:GetService("UserInputService")
local PS = game:GetService("Players")
local Player = PS.LocalPlayer

function Reconnect()
   --[[ Local variables ]]
   local Connection;
   local Character = PS.LocalPlayer.Character or PS.LocalPlayer.CharacterAdded:Wait()
   local Humanoid = Character:WaitForChild("Humanoid")
   local PlayerGui = Player:WaitForChild("PlayerGui")
   repeat wait() until PlayerGui:WaitForChild("engine"):FindFirstChild("jumpEngine")
   for _,c in pairs(getconnections(UIS.JumpRequest)) do
       c:Disable()
   end
   Connection = UIS.JumpRequest:Connect(function()
       Character:WaitForChild("Humanoid").JumpPower = 40
   end)
   Humanoid.Died:Connect(function()
       Connection:Disconnect()
   end)
end
Reconnect()
Player.CharacterAdded:Connect(function()
   Reconnect()
end)