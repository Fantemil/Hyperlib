game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)

local function GiveMeYourBigJuicyDick(removeClientSideLag)
   for i, IDoN0t in ipairs(workspace:GetDescendants()) do
       if IDoN0t:IsA("BasePart") then
           game:GetService("ReplicatedStorage").SoundsManagement.Events.PlaySoundEffect:FireServer("RidingVehicles", IDoN0t)

           if removeClientSideLag == true and IDoN0t:FindFirstChild("RidingVehicles") then
               IDoN0t.RidingVehicles:Destroy()
           end
       end
   end
end


-- For ppl who don't know lua
local removeClientSideLag = true
GiveMeYourBigJuicyDick(removeClientSideLag)