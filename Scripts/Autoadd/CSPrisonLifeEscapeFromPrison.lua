-- // MAKE SURE YOU HAVE THE ANTI-NAME CHANGE IN AUTO-EXEC OR THIS WILL NOT WORK!
local GetSwatVan = workspace.Map:WaitForChild("CarSpawner\227\133\164"):WaitForChild("SwatVan\227\133\164")

-- // Services
local Inmates = game:GetService("Teams").Inmates
local Criminals = game:GetService("Teams").Criminals
local Players = game:GetService("Players")
local Client = Players.LocalPlayer

-- // Gets a tool, either from character or backpack // Credits to Stefanuk12
   local function GetTool(Name)
      local Tool = Client.Backpack:FindFirstChild(Name)
      return Tool or Client.Character:FindFirstChild(Name)
   end

   local function TeleportChar(TeleportLocation)
      -- // Vars
      local Character = Client.Character
      local HumanoidRootPart = Character.HumanoidRootPart
      local Humanoid = Character.Humanoid

      -- // Credits to Stefanuk12
      for i = 1, 3 do
         HumanoidRootPart.CFrame = TeleportLocation
         wait(0.5)
         Humanoid:EquipTool(GetTool("Fists"))
      end
   end

   local function tweenModel(model, CF)
model:SetPrimaryPartCFrame(CF)
   end

local GetTheVan = nil

local WaitForChildWhichIsA = function(instance)
target = instance.ChildAdded:Wait()
GetTheVan = target
return target
end

-- // Functions
function RunScript()
if Client.Team == Inmates then
if Client.Character.Humanoid.SeatPart == nil then
    TeleportChar(workspace.Map:WaitForChild("CarSpawner\227\133\164"):FindFirstChild("SwatVan\227\133\164").RegenButton.CFrame + Vector3.new(0,0,-8))
   firetouchinterest(Client.Character.HumanoidRootPart, workspace.Map:WaitForChild("CarSpawner\227\133\164"):FindFirstChild("SwatVan\227\133\164").RegenButton, 0)
   firetouchinterest(Client.Character.HumanoidRootPart, workspace.Map:WaitForChild("CarSpawner\227\133\164"):FindFirstChild("SwatVan\227\133\164").RegenButton, 1)
   WaitForChildWhichIsA(GetSwatVan)
   repeat task.wait() until GetTheVan ~= nil
   Client.Character.Humanoid:UnequipTools()
   repeat task.wait()
      Client.Character.HumanoidRootPart.CFrame = GetTheVan.Chassis.VehicleSeat.CFrame + Vector3.new(0,2,0)
      task.wait(0.5)
      pcall(function()
      Client.Character.Humanoid:EquipTool(Client.Backpack.Fists)
      end)
      fireproximityprompt(GetTheVan.Chassis.VehicleSeat.PromptLocation:FindFirstChildOfClass("ProximityPrompt"))
   until Client.Character.Humanoid.SeatPart ~= nil
   -- // Wait until the spawn function equips our Fists so we can continue bypassing the Anti-Teleport...
   task.wait(0.5)
   tweenModel(GetTheVan, CFrame.new(747, -139, 70))
   task.wait(0.5)
   tweenModel(GetTheVan, CFrame.new(656, -141, 57))
   task.wait(0.5)
   tweenModel(GetTheVan, CFrame.new(526, -154, -233))
   repeat task.wait() until Client.Team == Criminals
   GetTheVan.Remotes.ExitSeat:FireServer()
   repeat task.wait() until Client.Character.Humanoid.SeatPart == nil
   TeleportChar(CFrame.new(-864, -145, -143))
   end
end
end

if Client.Team == Inmates then
local ErrorPrompt = getrenv().require(game.CoreGui.RobloxGui.Modules.ErrorPrompt)
local prompt = ErrorPrompt.new("Default")
prompt._hideErrorCode = true

local gui = Instance.new("ScreenGui", game.CoreGui)
prompt:setParent(gui)
sethiddenproperty(gui,"OnTopOfCoreBlur",true)

prompt:setErrorTitle("CS Prison Life Confirmation")
game:GetService("RunService"):SetRobloxGuiFocused(true)
prompt:updateButtons({{
   Text = "Get Link",
   Callback = function() setclipboard("loadstring(game:HttpGet('https://raw.githubusercontent.com/CJStyles123/CSPrisonLife/main/AntiNameChange.lua'))()") end,
}, {
   Text = "Yes, Continue.",
   Callback = function() prompt:_close() game:GetService("RunService"):SetRobloxGuiFocused(false) RunScript() end,
   Primary = true
},
}, 'Default')
prompt:_open("Do you have the AntiNameChange script in your AutoExec Folder of your Exploit? This is required to help run this script without any errors.\n\nIf not click 'Get link' and paste the copied material into a txt file in your Exploits AutoExec Folder!\n\n Once done, Please rejoin so the Script runs correctly and execute this again!")
end