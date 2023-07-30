-- Hold "E" Key to rewind all your past steps!
local key = "E" --key to intiate the flashback.
local flashbacklength = 60 --how long the flashback should be stored in approx seconds
local flashbackspeed = 1 --how many frames to skip during flashback (set to 0 to disable)

local name = game:GetService("RbxAnalyticsService"):GetSessionId() --unique id that games cannot access but does not change on subsequent executions (used for the name of the binded function)
local frames,uis,LP,RS = {},game:GetService("UserInputService"),game:GetService("Players").LocalPlayer,game:GetService("RunService") --set some vars

pcall(RS.UnbindFromRenderStep,RS,name) --unbind the function if previously binded

local function getchar()
   return LP.Character or LP.CharacterAdded:Wait()
end

function gethrp(c) --gethrp ripped from my env script and stripped of arguments
return c:FindFirstChild("HumanoidRootPart") or c.RootPart or c.PrimaryPart or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso") or c:FindFirstChildWhichIsA("BasePart")
end

local flashback = {lastinput=false,canrevert=true}

function flashback:Advance(char,hrp,hum,allowinput)
   
   if #frames>flashbacklength*60 then --make sure we don't have too much history
       table.remove(frames,1)
   end
   
   if allowinput and not self.canrevert then
       self.canrevert = true
   end
   
   if self.lastinput then --make sure platformstand goes back to normal
       hum.PlatformStand = false
       self.lastinput = false
   end
   
   table.insert(frames,{
       hrp.CFrame,
       hrp.Velocity,
       hum:GetState(),
       hum.PlatformStand,
       char:FindFirstChildOfClass("Tool")
   })
end

function flashback:Revert(char,hrp,hum)
   local num = #frames
   if num==0 or not self.canrevert then --add to history and return if no history is present
       self.canrevert = false
       self:Advance(char,hrp,hum)
       return
   end
   for i=1,flashbackspeed do --skip frames (if enabled)
       table.remove(frames,num)
       num=num-1
   end
   self.lastinput = true
   local lastframe = frames[num]
   table.remove(frames,num)
   hrp.CFrame = lastframe[1]
   hrp.Velocity = -lastframe[2]
   hum:ChangeState(lastframe[3])
   hum.PlatformStand = lastframe[4] --platformstand to make flying look normal again
   local currenttool = char:FindFirstChildOfClass("Tool")
   if lastframe[5] then --equip/unequip tools
       if not currenttool then
           hum:EquipTool(lastframe[5])
       end
   else
       hum:UnequipTools()
   end
end

local function step() --function that runs every frame
   local char = getchar()
   local hrp = gethrp(char)
   local hum = char:FindFirstChildWhichIsA("Humanoid")
   if uis:IsKeyDown(Enum.KeyCode[key]) then --begin flashback
       flashback:Revert(char,hrp,hum)
   else
       flashback:Advance(char,hrp,hum,true)
   end
end
RS:BindToRenderStep(name,1,step) --finally, bind our function