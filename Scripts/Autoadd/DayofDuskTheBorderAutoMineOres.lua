local Player = game.Players.LocalPlayer
local Toggle = true
local Near = false

game.UserInputService.InputBegan:Connect(function(input, gp)
   if input.KeyCode == Enum.KeyCode.P and not gp then
       Toggle = not Toggle
   end
end)

Player.Character:BreakJoints()
task.wait(.12)
repeat task.wait() until Player.Character and Player.Character.Parent and Player.Character.PrimaryPart

local function CharacterCheck(Plr)
   local Plr = Plr or Player
   if not Plr.Character or not Plr.Character.Parent or not Plr.Character.PrimaryPart or not Plr.Character:FindFirstChild("HumanoidRootPart") then
       return false
   end
   return true
end

local function Teleport(Position)
   if not CharacterCheck() then return end
   local HumanoidRootPart = Player.Character.HumanoidRootPart
   Player.Character:SetPrimaryPartCFrame(HumanoidRootPart.CFrame * CFrame.new(0, 700, 0))
   task.wait(.2)
   Player.Character:SetPrimaryPartCFrame(CFrame.new(Position.X, 700, Position.Z))
   task.wait(.2)
   Player.Character:SetPrimaryPartCFrame(CFrame.new(Position.X, Position.Y + 10, Position.Z))
end

local function BuyPickaxe()
   if not CharacterCheck() then return end
   for i,v in next, workspace:GetChildren() do
       if v:IsA("Part") and v:FindFirstChild("SurfaceGui") and v.SurfaceGui:FindFirstChild("TextBox") and v.SurfaceGui.TextBox.Text == "BUY Pickaxe FOR 35 SCRAPS?" then
           Teleport(CFrame.new(-158.34303283691406, 17.718673706054688, -799.856201171875))
           task.wait(.5)
           fireclickdetector(v.ClickDetector)
           break
       end
   end
end

if CharacterCheck() and not Player.Backpack:FindFirstChild("Pickaxe") and not Player.Character:FindFirstChild("Pickaxe") then
   BuyPickaxe()
end

while true do
   if Toggle then
       if CharacterCheck() and not Player.Backpack:FindFirstChild("Pickaxe") and not Player.Character:FindFirstChild("Pickaxe") then
           if not Toggle then
               task.wait()
               continue
           end
           BuyPickaxe()
           repeat task.wait() until Player.Backpack:FindFirstChild("Pickaxe") or Player.Character:FindFirstChild("Pickaxe")
       end
       
       for i,v in next, workspace.OreSystems:GetChildren() do
           if v.Name == "Regular_Stone" and v:FindFirstChild("Stone") and #v.Stone:GetChildren() > 3 and v.Stone.Health.Value > 0 and CharacterCheck() then
               if not Toggle then break end
               if not Player.Character:FindFirstChild("Pickaxe") and Player.Backpack:FindFirstChild("Pickaxe") then
                   Player.Backpack.Pickaxe.Parent = Player.Character
               elseif not Player.Backpack:FindFirstChild("Pickaxe") and not Player.Character:FindFirstChild("Pickaxe") then
                   break
               end
               
               Teleport(v.Stone.CFrame)
               task.wait(1)
               
               while true do
                   if not CharacterCheck() or Player:DistanceFromCharacter(v.Stone.Position) > 10 or Near or not Toggle then Near = false break end
                   if not Player.Backpack:FindFirstChild("Pickaxe") and not Player.Character:FindFirstChild("Pickaxe") or v.Stone.Health.Value == 0 then
                       break
                   end
                   
                   fireproximityprompt(v.Stone.ProximityPrompt)
                   
                   for i,v in next, game.Players:GetChildren() do
                       if v ~= Player and CharacterCheck(v) and CharacterCheck() then
                           if Player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) <= 125 then
                               Near = true
                               break
                           end
                       end
                   end
                   task.wait(.4)
               end
           end
       end
   end
   task.wait()
end