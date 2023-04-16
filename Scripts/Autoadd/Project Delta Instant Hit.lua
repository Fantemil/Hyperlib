local __namecall; __namecall = hookmetamethod(game, "__namecall", function(Self, ...)
   local Method = getnamecallmethod();
   local Args = {...};
   --
   if Method == "GetAttribute" then
       if Args[1] == "MuzzleVelocity" then
           return 9e9;
       end;
   end;
   if Method == "FireServer" then
       if tostring(Self) == "ProjectileInflict" then
           do -- Modifications
               local Distance = (Args[3].Position - workspace:FindFirstChildOfClass("Camera").CFrame.p).magnitude;
               local StepAmount = Distance / 17;
               if Distance / 3 > 15 then
                   for i = 1, math.floor(StepAmount) do
                       if not Args[2][i] then
                           Args[2][i] = {
                               ["step"] = (math.random() / 10);
                           };
                       end;
                   end;
               end;
           end;
       end;
   return __namecall(Self, unpack(Args));
end);