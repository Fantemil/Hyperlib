game.Players.LocalPlayer.Character["ClientCharacter_Handler"]:Destroy()

--Teleports to Random Press 'F'
local UIS=game:GetService'UserInputService'
getgenv().KeyBind="F"--Has to be letters

UIS.InputBegan:Connect(function(Key)
     if Key.KeyCode==Enum.KeyCode[getgenv().KeyBind] and not UIS:GetFocusedTextBox() then
          
local randomPlayer = game.Players:GetPlayers()
[math.random(1,#game.Players:GetPlayers())]

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(randomPlayer.Character.Head.Position.X, randomPlayer.Character.Head.Position.Y, randomPlayer.Character.Head.Position.Z))
     end
end)