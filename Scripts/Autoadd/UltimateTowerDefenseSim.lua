getgenv().Map = "City" -- City, Subzero, Jungle, Military, Japan, Castle, Space, Asgard, Atlantis, Dark Dimension, Marineford, Trost District, Planet Namek, Kamii University
getgenv().Difficulty = "Easy" -- Easy, Normal, Hard, Insane
getgenv().AutoPlace = true
getgenv().Troops = 3 -- If this is 3 then it'll place the troops in your first 3 slots.
getgenv().UpgradeLevel = 2 -- Troops will be upgraded to this level before placing another one.
getgenv().FrontPreference,BackPreference = 0,0 -- Determines how close to the front and back of the map troops are placed. FrontPreference should be >= 0, BackPreference should be <= 0. The acceptable range for both variables changes depending on the map, use single integer increments and only change this setting if you understand what it does.

local RS = game:GetService("ReplicatedStorage")
local PS = game:GetService("Players")
repeat wait() until PS.LocalPlayer repeat wait() until PS.LocalPlayer.Character repeat wait() until PS.LocalPlayer.Character.HumanoidRootPart
local HRP = PS.LocalPlayer.Character.HumanoidRootPart

if game.PlaceId == 5902977746 and not workspace:FindFirstChild("Map") then
   local RE = RS.Modules.GlobalInit.RemoteEvents
   for _,v in pairs(workspace.Lobby.ClassicPartyTeleporters:GetDescendants()) do
       if v:IsA("TextLabel") and v.Name == "Status" and v.Text == "0 Players" then
           HRP.CFrame = v.Parent.Parent.CFrame
           wait(3/2)
           RE.PlayerSelectedMap:FireServer(Map)
           wait(3/2)
           RE.PlayerQuickstartTeleport:FireServer()
           wait(3/2)
       end
   end
elseif game.PlaceId == 5902977746 and workspace:FindFirstChild("Map") then
   local RE = RS.Modules.GlobalInit.RemoteEvents
   local NE = RS.GenericModules.Service.Network
   NE:WaitForChild("PlayerVoteForDifficulty")
   NE.PlayerVoteForDifficulty:FireServer(Difficulty)
   RE:WaitForChild("PlayerReadyForNextWave")
   if AutoPlace then
       getgenv().Points = BackPreference-1
       for _,v in pairs(workspace.Map.Checkpoints:GetChildren()) do
           Points = Points+1
       end
       local function placetroop()
           R1 = tostring(math.random(FrontPreference+2,Points))
           R2 = math.random(-10,10)
           X,Y,Z = workspace.Map.Checkpoints[R1].CFrame:components()
           NE.PlayerPlaceTower:FireServer(math.random(1,Troops), Vector3.new(X+R2,Y,Z+R2), 0)
       end
       placetroop()
       while wait() do
           getgenv().Num = workspace.EntityModels.Towers:GetChildren()
           if #Num ~= 0 then
               for k,d in pairs(workspace.EntityModels.Towers:GetDescendants()) do
                   if d:IsA("ImageLabel") and d.Name == tostring(UpgradeLevel) then
                       if not d.Visible then
                           NE.PlayerUpgradeTower:FireServer(d.Parent.Parent.Parent.Parent.Name)
                       elseif d.Visible then
                           d.Parent.Parent.Parent.Parent.Parent = workspace.EntityModels.Enemies
                       end
                   end
               end
           else
               placetroop()
           end
       end
   end
end