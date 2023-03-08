getgenv().Number = 100 -- change how much want to repeat
getgenv().Rapid = true
local OldNameCall = nil
OldNameCall =
   hookmetamethod(
   game,
   "__namecall",
   function(A, ...)
       local Args = {...}
       if tostring(A) == "DamageEvent" and getnamecallmethod() == "FireServer" then
           for i = 1, getgenv().Number do
               if getgenv().Rapid then
                   OldNameCall(A, ...)
               end
           end
       end
       return OldNameCall(A, ...)
   end
)