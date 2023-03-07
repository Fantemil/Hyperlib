_G.AutoFarm = true

-- // Variables
local Jogador = game:GetService("Players").LocalPlayer
local Drop = game:GetService("Workspace").Ignored.Drop
local Cashiers = game:GetService("Workspace").Cashiers
local opens = Cashiers:GetDescendants()
local num_opens = #opens

-- // Functions
function Farmando()
   while _G.AutoFarm do
       for _,f in pairs(Jogador:FindFirstChildOfClass("Backpack"):GetChildren()) do
           if f:IsA("Tool") or f:IsA("HopperBin") then
               if f.Name == "Combat" then
                   f.Parent = Jogador.Character
               end
           end
       end
       wait()
   end
end

function FarmandoLoop()
   while _G.AutoFarm do
       for _,obj in pairs(Drop:GetDescendants()) do
           if obj:IsA("ClickDetector") then
               local pos1 = obj.Parent.Position
               local pos2 = Jogador.Character.HumanoidRootPart.Position
               local distance = (pos1 - pos2).Magnitude
               if distance <= 20 then
                   fireclickdetector(obj)
               end
           end
       end
       mouse1click()
       wait()
   end
end

function OpensLoop()
   while _G.AutoFarm do
       for i = 1, num_opens do
           if opens[i].Name == "Open" then
               Jogador.Character.HumanoidRootPart.CFrame = opens[i].CFrame
               wait(12)
           end
       end
   i = 1
   wait(10)
   end
end

-- // Main
coroutine.wrap(Farmando)()
coroutine.wrap(FarmandoLoop)()
coroutine.wrap(OpensLoop)()