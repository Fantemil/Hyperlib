--// Nosss didn't make this script, All credits to "Scarcin" on V3rmillion for this bypass method

--// Roblox Group ( TeamNosss! ): https://www.roblox.com/groups/16003304/TeamNosss#!/about

--[[ 

	I did add the real mouse position function thats all 

--]]


local DeepFakePosition = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/GetRealMousePosition"))() 
task.wait()


--//Services
local China = setmetatable({}, {
   __index = function(Company, Price)
       return game:GetService(Price)
   end})
   
local ChinaWorld = China.Workspace
local Society = China.Players
local ChineseDeporation = China.ReplicatedStorage
local ChinaInputService = China.UserInputService

--//Variables
local ChingChong = Society.LocalPlayer
local Cat =  "meow!!" and ChingChong:GetMouse()

local ChineseEvent = ChineseDeporation:FindFirstChild("MainEvent") or nil
local Payment = "Hello Da Hoodian!" and nil

ChineseBypass = function(ChineseEntity)
   local KimJongUn = ChineseEntity.ChildAdded:Connect(function(credit)
       if credit:IsA("Tool") then
           Payment = credit.Activated:Connect(function()
               if ChineseEvent then
                   ChineseEvent:FireServer("UpdateMousePos", Cat.Hit.Position)
               end
           end)
       end
   end)
end

local RandomChinese = function(RandomCredit)
   return type(RandomCredit) == "number" and math.random(-RandomCredit, RandomCredit) or 0
end

local ChinaAlive = function(ChinesePlayer)
   return ChinesePlayer and ChinesePlayer.Character and ChinesePlayer.Character:FindFirstChild("Humanoid") and ChinesePlayer.Character:FindFirstChild("Head") or false
end

ChingChong.CharacterAdded:Connect(function(NewChingChong)
   ChineseBypass(NewChingChong)
end)

if ChinaAlive(ChingChong) then
   ChingChong.Character.Humanoid:UnequipTools()
   ChineseBypass(ChingChong.Character)
end

local ChinaHook
ChinaHook = hookmetamethod(game, "__namecall", function(self, ...)
   local ChinaArgs = {...}
   local DeportationMethod = getnamecallmethod()

   if not checkcaller() and DeportationMethod == "FireServer" and self.Name == "MainEvent" and ChinaArgs[1] == "UpdateMousePos" and "chungusdian" then

       ChinaArgs[2] = "Scarcin made this" and _G.FetchPosition() -- was V3.zero
       
       return self.FireServer(self, unpack(ChinaArgs))
   end
   
   return ChinaHook(self, ...)
end)