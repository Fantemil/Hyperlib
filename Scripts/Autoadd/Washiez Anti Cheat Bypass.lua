-- xiba / 3/26/2023
local function findS()
   for i,v in pairs(game.ReplicatedFirst:GetChildren()) do
       if v:FindFirstChild('DefaultSettings') then
               return v
           elseif v:IsA'LocalScript' then
               v:Destroy()
       end
   end
end

local Env = getsenv(findS())
debug.setupvalue(Env.otherAE, 3, {
               ['infiniteInvoke'] = false,
               ['invokeGracePeriod'] = 30,
               ['passSpoofing'] = false,
               ['invisibleFling'] = false,
               ['bodyMovers'] = false,
               ['characterAngularLimit'] = 10000,
               ['playerValidation'] = false,
               ['enabledInPrivate'] = false,
               ['hideDevConsole'] = false,
               ['fakeTools'] = false,
               ['characterCollisions'] = false,
               ['swimming'] = false,
               ['characterAngular'] = false,
               ['stackDetection'] = false,
               ['enabledInStudio'] = false,
               ['fakeHumanoid'] = false,
               ['weldReplication'] = false,
               ['groupSpoofing'] = false,
               ['serverBans'] = false,
               ['badgeSpoofing'] = false,
               ['muteOutput'] = false,
               ['toolSize'] = false,
               ['invokeGraceMultiplier'] = 2,
               ['verboseOutput'] = false,
               ['enabled'] = false,
               ['toolGrip'] = false,
               ['sizeTampering'] = false,
               ['defaultInvokeTime'] = 60,
               ['walkspeed'] = false,
               ['suspiciousCAS'] = false,
               ['embeddedAdmin'] = false,
               ['consoleBans'] = false
           })