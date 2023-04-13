local replicatedStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local plr = players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()


if not getgenv().BypassedAntiCheat then
   getgenv().BypassedAntiCheat = true
   do
       
       local oldIndex -- spoofing shit
       oldIndex = hookmetamethod(game, "__index", newcclosure(function(self, property)
           if not checkcaller() then
               --print(self, property)
               if
                  rawequal(oldIndex(self, "ClassName"), "Humanoid") -- i wont return on a non Humanoid
                  and rawequal(oldIndex(self, "Parent"), plr.Character) -- Parent
               then
                   if rawequal(property, "WalkSpeed") then
                       return 13
                   elseif rawequal(property, "JumpPower") then
                       return 30
                   elseif rawequal(property, "JumpHeight") then
                       return 3.612
                   elseif rawequal(property, "PlatformStand") then -- in case
                       return false
                   end
               end
           end
           return oldIndex(self, property)
       end))
       
       
       local hookNamecall
       hookNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
        if not checkcaller() then
               local func = getnamecallmethod()
               local stuffs = {...}
               local the1 = stuffs[1]
               local the2 = stuffs[2]
               if oldIndex(plr, "Character") then
                   if
                       rawequal(func, "SetPrimaryPartCFrame")
                       and rawequal(typeof({...}), "table")
                       and not rawequal(the1, nil)
                       and not rawequal(the2, nil)
                       and rawequal(typeof(the1), "Instance")
                       and rawequal(typeof(the2), "CFrame")
                       and rawequal(the1, oldIndex(plr, "Character"))
                       and rawequal(the1.Name, oldIndex(plr, "Name"))
                   then
                       return CFrame.new(0,0,0) -- anti rollback
                   end
               
        end
               if
                   rawequal(func, "FindPartOnRayWithWhitelist")
                   and tostring(getcallingscript()) == "GunHandlerLocal"
               then
                   --warn(...)
                   return wait(9e9) -- disable the anticheat for his main part
               end


           end
           return hookNamecall(...)
       end))
       local oldInst
       oldInst = hookfunction(getrenv().Instance.new, newcclosure(function(...)
           local args = {...}
           
           local callscript = getcallingscript()
           
           if
               (not checkcaller()) and callscript:IsDescendantOf(LP) -- wtf is LP??? -- that part was from a friend :p
               and callscript.Name ~= "RbxCharacterSounds" and callscript.Name ~= "ChatMain"
           then
               return nil -- the game create a shit tons of part to make ur game lag/crash (idk why)
           end
           
           return oldInst(...)
       end))

       local toBypass = {
           getconnections(game:GetService("ScriptContext").Error), -- Script Error
           getconnections(replicatedStorage["_CS.Events"].ToolEvent.OnClientEvent), -- disable future event
           getconnections(workspace:GetPropertyChangedSignal("Gravity")), -- Gravity
           getconnections(char.DescendantAdded), -- PRIMARY

       }
       local function BypassConnections()
           for _, v in pairs(toBypass) do
               for _,v in pairs(v) do
                   v:Disable()
               end
           end
       end
       plr.CharacterAdded:Connect(BypassConnections)
       BypassConnections() -- load it
       
   end
end