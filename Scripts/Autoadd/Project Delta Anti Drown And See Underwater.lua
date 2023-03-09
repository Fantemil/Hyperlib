-- init
if not game:IsLoaded() then
   game.Loaded:Wait();
end

-- variables
local replicatedStorage, runService, lighting = game:GetService("ReplicatedStorage"), game:GetService("RunService"), game:GetService("Lighting");

local waterBlur = lighting:WaitForChild("WaterBlur");
local drowningRemote = replicatedStorage:WaitForChild("Remotes"):WaitForChild("Drowning");

-- main
local namecall_hook; do
   namecall_hook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
       local namecallMethod, arguments = (getnamecallmethod or get_namecall_method)(), {...};
       
       if (namecallMethod == "FireServer" or namecallMethod == "fireServer") and self == drowningRemote and arguments[1] and typeof(arguments[1]) == "number" then
           return
       end
       
       return namecall_hook(self, ...);
   end));
end

coroutine.resume(coroutine.create(function()
   runService.RenderStepped:Connect(function()
       waterBlur.Enabled = false -- lazy way of doing this
   end);
end));

if printconsole then
   printconsole("anti-drown loaded")
end