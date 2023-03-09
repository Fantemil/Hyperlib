--[[ Settings ]]
local DefaultReachLimit = 33
local IncreasedReachDistance = 100
local PowerTable = {
   ["BombMissile"] = 1200,
   ["Others"] = 600,
   ["Players"] = 1600,
}

--[[ Variables ]]
local PS = game:GetService("Players")
local Player = PS.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local RS = game:GetService("ReplicatedStorage")
local CE = RS:WaitForChild("CharacterEvents")
local BeingHeld = Player:WaitForChild("IsHeld")
local PlayerScripts = Player:WaitForChild("PlayerScripts")

--[[ Remotes ]]
local StruggleEvent = CE:WaitForChild("Struggle")

--[[ Anti-Explosion ]]
workspace.DescendantAdded:Connect(function(v)
   if v:IsA("Explosion") then
       v.BlastPressure = 0
   end
end)

--[[ Anti-grab ]]
local RS = game:GetService("RunService")
BeingHeld.Changed:Connect(function(C)
   if C == true then
       if BeingHeld.Value == true then
           local Event;
           Event = RS.RenderStepped:Connect(function()
               if BeingHeld.Value == true then
                   StruggleEvent:FireServer(Player)
               elseif BeingHeld.Value == false then
                   Event:Disconnect()
               end
           end)
       end
   end
end)

local Counter = 0
function DoubleCounter(Passed)
   if Passed == "Add" then
       Counter = Counter + 1
   elseif Passed == "Check" then
       return Counter
   elseif Passed == "Reset" then
       Counter = 0
   end
end

function Reconnect()
   --[[ Local variables ]]
   local Character = Player.Character or Player.CharacterAdded:Wait()
   local Humanoid = Character:FindFirstChildWhichIsA("Humanoid") or Character:WaitForChild("Humanoid")
   local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
   local GS = Character:WaitForChild("GrabbingScript")

   HumanoidRootPart:WaitForChild("FirePlayerPart"):Remove()

   local Held = Player:WaitForChild("IsHeld")
   local Connections = getconnections(Held.Changed)
   for i,v in pairs (Connections) do
       if v.Function then
           local Script = getfenv(v.Function).script
           if Script == Character:WaitForChild("HumanoidStateTypeByGettingFlung") then
               v:Disable()
           end
       end
   end

   Humanoid.Changed:Connect(function(C)
       if C == "Sit" and Humanoid.Sit == true then
           if Humanoid.SeatPart ~= nil and tostring(Humanoid.SeatPart.Parent) == "CreatureBlobman" then
           elseif Humanoid.SeatPart == nil then
               Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
               Humanoid.Sit = false
           end
       end
   end)

   repeat wait()
   for Num,Func in pairs(debug.getregistry()) do
       if type(Func) == "function" and not is_synapse_function(Func) and islclosure(Func) then
           local Values = debug.getupvalues(Func)
           local Constants = getconstants(Func)

           for a,b in pairs(Values) do
               --[[ Reach ]]
               if type(b) == "number" and b == 20 then
                   debug.setupvalue(Func, a, DefaultReachLimit)
                   DoubleCounter("Add")
               end
           end

           if table.find(Constants, "make") and debug.getinfo(Func).name == "grab" then
               for a,b in pairs (Constants) do
                   --[[ Makes it so even when you die you can still fling others ]]
                   if b == "Health" then
                       setconstant(Func, a, "JumpPower")
                       DoubleCounter("Add")
                   end
               end
           end
           
       end
   end
   until DoubleCounter("Check") == 2
   DoubleCounter("Reset")

end

Player.CharacterAdded:Connect(function()
   Reconnect()
end)
Reconnect()

function ChangeThrow(Number)
   --[[ Variables ]]
   Character = Player.Character or Player.CharacterAdded:Wait()
   local GS = Character:WaitForChild("GrabbingScript")

   for i,v in pairs(getreg()) do
       if type(v) == "function" then
           local Script = getfenv(v).script
           if Script == GS and tostring(debug.getinfo(v).name) == "throw" then
               local Debug = debug.getconstants(v)
               for cn,cv in pairs (Debug) do
                   if cn == 22 then
                       debug.setconstant(v, cn, Number)
                   end
                   if cn == 24 then
                       debug.setconstant(v, cn, Number)
                   end
               end
           end
       end
   end
end

function InstanceCheck(Instance)
   local NotInPlayer = false
   for _,v in pairs (PS:GetPlayers()) do
       if v.Character then
           if v.Character:FindFirstChild(Instance.Name) then
               NotInPlayer = true
               break
           end
       end
   end
   return NotInPlayer
end

function Reach(Number)
   for Num,Func in pairs(getreg()) do
       if type(Func) == "function" and islclosure(Func) and not is_synapse_function(Func) then
           local Constants = getconstants(Func)
           local Values = getupvalues(Func)
           if table.find(Constants, "make") and debug.getinfo(Func).name == "grab" then
               for c,d in pairs (Values) do
                   if c == 17 then
                       setupvalue(Func,c, Number)
                   end
               end
               break
           end
       end
   end
end

local OldNameCall;
OldNameCall = hookmetamethod(game, "__namecall", function(...)
   local NameCallMethod = getnamecallmethod()
   local Args = {...}
   local Self = Args[1]

   if not checkcaller() and NameCallMethod == "FireServer" and tostring(Self.Name) == "Beam" then
       if tostring(Args[2]) == "make" then
           Reach(IncreasedReachDistance)
           local Instance = Args[3]

           if InstanceCheck(Instance) == false then
               if PowerTable[Instance.Parent.Name] then
                   local Power = PowerTable[Instance.Parent.Name]
                   ChangeThrow(Power)
               elseif PowerTable[Instance.Parent.Name] == nil then
                   local OtherPower = PowerTable["Others"]
                   ChangeThrow(OtherPower)
               end
           end

           if InstanceCheck(Instance) == true then
               local PlayerPower = PowerTable["Players"]
               ChangeThrow(PlayerPower)
           end

           return;
       elseif tostring(Args[2]) == "destroy" then
           Reach(DefaultReachLimit)
       end
       return OldNameCall(...)
   end

   return OldNameCall(...)
end)