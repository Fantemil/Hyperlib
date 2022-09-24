_G.Color = Color3.fromRGB(66, 135, 245)
_G.Color2 = Color3.fromRGB(66, 135, 245)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slightten/ui-libs/main/funni"))()
local window = library:CreateWindow("Die Hub Thief Simulator", Enum.KeyCode.RightControl)
local plr = game.Players.LocalPlayer
local tab1 = window:CreateTab("Main")
local tab2 = window:CreateTab("Misc")
local sect2 = tab2:CreateSector("Misc", 'left')
sect2:AddLabel("V3rm borntodie1")

local sect1 = tab1:CreateSector("AutoFarm", 'left')

sect1:AddToggle("Auto Rob NPCs", false, function(d)
   dd = d
   while dd do task.wait()
       for i,v in pairs(workspace:GetChildren()) do
           if string.match(v.Name,"Base") and v.HumanoidRootPart then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
               fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
           end
       end
   end
   end)

   sect1:AddToggle("Auto Sell",false,function(a)
       aa = a
     while aa do task.wait()
     for _,v in pairs(game:GetService("Workspace").Sells.World1.Sell:GetDescendants()) do
             if v:IsA("TouchTransmitter") then
             firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
             wait()
             firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
             wait()
                end
              end
     end
     end)

     sect1:AddToggle("ATM Farm",false,function(c)
       cc = c
       while cc do task.wait()
               coroutine.wrap(function()
   for i,v in pairs(game:GetService("Workspace").Map.ATMs:GetDescendants()) do
       if v.Name == "Healthbar" then
   game:GetService("ReplicatedStorage").FrameworkReplicated.DataStreams:FindFirstChild("GameTaskCompleted_Functionv.07"):InvokeServer(v.Parent)
   end
   end
   end)()
   end
   end)

   
   sect1:AddButton("Auto Claim Quests", function()

           for i,v in pairs(workspace:GetChildren()) do
               if string.match(v.Name,"Base") and v.HumanoidRootPart then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Jobs.World1.Jobs.CFrame
                   fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
               end
           end
       end)

       local sect2 = tab1:CreateSector("Misc", 'right')
       sect2:AddSlider("Walkspeed", 16, 16, 200, false, function(warthog)
           plr.Character.Humanoid.WalkSpeed = warthog
           end)
       