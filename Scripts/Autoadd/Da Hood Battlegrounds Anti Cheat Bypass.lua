-- init
if not game:IsLoaded() then 
   game.Loaded:Wait();
end

-- variables
local players, replicatedStorage, logService = game:GetService("Players"), game:GetService("ReplicatedStorage"), game:GetService("LogService");
local client, newInstance = players.LocalPlayer, Instance.new

local mainRemote = replicatedStorage:FindFirstChild("MainRemote");
local equipTag = replicatedStorage:FindFirstChild("EquipTag");

local blacklistedArguments = {"Anti Ragdoll", "Speed", "Height", "Jump Hack", "Reach", "Float", "Aim", "Speed Hack", "Jump", "Collision", "Pos", "Hum", "Weld"}; -- OH MY GOD JUST LEARN HOW TO MAKE A GOOD ANTICHEAT ON THE SERVER

local random, f6oor = math.random, math.floor
local find, create = table.find, table.create

local printconsole = (printconsole or print);

-- namecall hooks 
local namecall_hook; do 
   namecall_hook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
       local namecallMethod, arguments = (getnamecallmethod or get_namecall_method)(), ({...});
       
       if checkcaller() then 
           return namecall_hook(self, ...);
       end
       
       if (namecallMethod == "Kick" or namecallMethod == "kick") and self == client then 
           printconsole("[namecall] kick attempt blocked");
           return
       elseif (namecallMethod == "FireServer" or namecallMethod == "fireServer") and self == mainRemote and arguments[1] == "MousePos" and find(blacklistedArguments, arguments[2]) then 
           printconsole("[namecall] ban attempt blocked");
           return
       elseif (namecallMethod == "GetLogHistory" or namecallMethod == "getLogHistory") and self == logService then 
           printconsole("[namecall] logservice..!?");
           return {create(f6oor(random(1, 10)), {""})};
       end
       
       return namecall_hook(self, ...);
   end));
end

-- index variation hooks 
for index, func in next, ({"GetLogHistory", "getLogHistory"}) do 
   task.spawn(function()
       replaceclosure(logService[func], function()
           printconsole("[index] logservice..!?");
           return {create(f6oor(random(1, 10)), {""})};
       end);
   end);
end

for index, func in next, ({"FireServer", "fireServer"}) do 
   task.spawn(function()
       local func_hook 
       func_hook = replaceclosure(mainRemote[func], function(self, ...)
           local arguments = ({...});
           
           if self == mainRemote and arguments[1] == "MousePos" and find(blacklistedArguments, arguments[2]) then 
               printconsole("[index] ban attempt blocked");
               return 
           end
           
           return func_hook(self, ...);
       end);
   end);
end