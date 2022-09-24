local Keybind = Enum.KeyCode.H
local CanSkipRoom_50 = true
local CanAutoUnlockDoors = true
local CanPullTheLevers = true
local cooldown = true
local cooldownwait = 0.5

do
 local UIS = game:GetService("UserInputService")
 local CF = CFrame.new
 local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

 UIS.InputBegan:Connect(function(input, typing)
     if typing then return end
     if input.KeyCode == Keybind then
   if not cooldown then return end
         pcall(function()
    cooldown = false
             local key = false
    local lever = false
             local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
             for _,object in ipairs(CurrentDoor.Parent:GetDescendants()) do
                 if object.Name == "KeyObtain" then
                     key = object
                 end
             end
    for _,object in ipairs(CurrentDoor.Parent:GetDescendants()) do
                 if object.Name == "LeverForGate" then
                     lever = object
                 end
             end
             if LatestRoom.Value == 50 and CanSkipRoom_50 == true then
                 CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom.Value + 1)]:WaitForChild("Door")
                 game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
             else
                 if key and CanAutoUnlockDoors == true then
                     game.Players.LocalPlayer.Character:PivotTo(CF(key.Hitbox.Position))
                     task.wait(.3)
                     fireproximityprompt(key.ModulePrompt)
                     task.wait(.3)
                     game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
      task.wait(.3)
                     fireproximityprompt(CurrentDoor.Lock.UnlockPrompt)
                 end
     if lever and CanPullTheLevers == true then
      game.Players.LocalPlayer.Character:PivotTo(CF(lever.Main.Position))
      task.wait(.3)
      fireproximityprompt(lever.ActivateEventPrompt)
      task.wait(.3)
      game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
     end
                 game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
             end
             task.wait(.45)
             CurrentDoor.ClientOpen:FireServer()
    task.wait(cooldownwait)
    cooldown = true
         end)
     end
 end)
end