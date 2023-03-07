--Credit to mxkxkks (Script maker)

local gamememe = getrawmetatable(game)
local Closure,Caller = hide_me or newcclosure,checkcaller or is_protosmasher_caller or Cer.isCerus
local writeable = setreadonly(gamememe,false) or make_writeable(gamememe)
local name,index,nindex = gamememe.__namecall,gamememe.__index,gamememe.__newindex

gamememe.__newindex = Closure(function(self,Property,b)
if not Caller() then
       if self:IsA'Humanoid' then
           game:GetService'StarterGui':SetCore('ResetButtonCallback',true)
           if Property == "WalkSpeed" then
               return
           end
           if Property == "Health" or Property == "JumpPower" or Property == "HipHeight"  then
return
end
end
if Property == "CFrame" and self.Name == "HumanoidRootPart" or self.Name == "Torso" then
      return
    end
end
return nindex(self,Property,b)
end)

gamememe.__namecall= Closure(function(self,...)
   if not Caller() then
       local Arguments = {...}
      if getnamecallmethod() == "Destroy" and tostring(self) == "BodyGyro" or getnamecallmethod() == "Destroy" and tostring(self) == "BodyVelocity" then
           return invalidfunctiongang(self,...)
       end
       if getnamecallmethod() == "BreakJoints" and tostring(self) == game:GetService'Players'.LocalPlayer.Character.Name then
           return invalidfunctiongang(self,...)
       end
       if getnamecallmethod() == "FireServer" then
           if self.Name == "lIII" or tostring(self.Parent) == "ReplicatedStorage" then
               return wait(9e9)
           end
           if Arguments[1] == "hey" then
               return wait(9e9)
           end
       end
   end
   return name(self,...)
end)