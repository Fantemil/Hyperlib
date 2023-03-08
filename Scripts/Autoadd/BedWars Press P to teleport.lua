local Key = "P"--//Put your key here

local Connection
local PositionSaved

game:GetService("UserInputService").InputBegan:Connect(function(Data,a)
 if Data.KeyCode == Enum.KeyCode[tostring(Key)] and not a then
  game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15)
  PositionSaved = game:GetService("Players").LocalPlayer:GetMouse().Hit.Position+Vector3.new(0,2,0)
  Connection = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(Char)
   repeat game:GetService("RunService").RenderStepped:Wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
   for i =1,10 do
    game:GetService("RunService").Stepped:Wait()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(PositionSaved)
   end
   Connection:Disconnect()
  end)
 end
end)