getgenv().GodMode = true -- if u gonna change this reset after u change
getgenv().AntiPrettyMuchEverything = true -- stun, ragdoll, m1 & m2 cooldown, etc

if getgenv().Loaded ~= nil then
   return
end

local plr = game.Players.LocalPlayer
local function yes()
   repeat wait() until plr.Character
   plr.Character:WaitForChild("Humanoid")
   plr.Character.Humanoid:WaitForChild("Effects")
   if getgenv().GodMode and plr.Character and plr.Character:FindFirstChild("Holder") and plr.Character.Holder:FindFirstChild("Health") then
       plr.Character.Holder.Health:Destroy()
   end
   if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid:FindFirstChild("Effects") then
       plr.Character.Humanoid.Effects.ChildAdded:Connect(function(v)
           task.wait()
           if getgenv().AntiPrettyMuchEverything and table.find({"Stunned","Ragdolled","WeaponAttacking","NoRun","NoDash","NoBlock","OverrideJumpPower","CounterWindow","SkillCD"},v.Name) then
               v:Destroy()
           end
       end)
   end
end
yes()
plr.CharacterAdded:Connect(yes)
getgenv().Loaded = true