local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local LocalPlayer = game:GetService("Players").LocalPlayer

local doa = true

game:GetService("RunService").Stepped:Connect(function()
   if UserInputService:IsKeyDown(Enum.KeyCode.G) then
       if doa then
           doa = false
           local plr = game.Players.LocalPlayer
           local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
           for i,v in pairs(game:GetService("Workspace").Map["sandoids spawn"]:GetChildren()) do
               if v.Name == "ClassBox" and v:FindFirstChild("Infantry") then
                   fireclickdetector(v["Infantry"].ClickDetector)
               end
           end
           local args = {
               [1] = CFrame.new(Vector3.new(position.x, position.y, position.z))
           }
           wait(0.7)
           if plr.Backpack:FindFirstChild("AmmoBox") then
               plr.Backpack.AmmoBox.Parent = plr.Character
               plr.Character.AmmoBox.Remote:FireServer(unpack(args))
           end
           doa = true
       end
   elseif UserInputService:IsKeyDown(Enum.KeyCode.H) then
       if doa then
           wait(2)
           doa = false
           local plr = game.Players.LocalPlayer
           local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
           for i,v in pairs(game:GetService("Workspace").Map["sandoids spawn"]:GetChildren()) do
               if v.Name == "ClassBox" and v:FindFirstChild("Anti Tank") then
                   fireclickdetector(v["Anti Tank"].ClickDetector)
               end
           end
           doa = true
       end
   elseif UserInputService:IsKeyDown(Enum.KeyCode.T) then
       if doa then
           doa = false
           wait(2)
           for i,v in pairs(game.Workspace.Map:GetDescendants()) do
               if v.Name == "HitEngine" then
                   local args = {
                       [1] = 1,
                       [2] = 200
                   }
                   v:FireServer(unpack(args))
               end
           end
           doa = true
       end
   elseif UserInputService:IsKeyDown(Enum.KeyCode.B) then
       if doa then
           doa = false
           wait(1)
           for i,v in pairs(game.Workspace.Map:GetDescendants()) do
               if v.Name == "ClickDetector" and string.find(v.Parent.Name, "Seat") and v.Parent:FindFirstChild("Seat") then
                   fireclickdetector(v)
               end
           end
           doa = true
       end
   end
end)