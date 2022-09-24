local replicatedStorage = game:GetService("ReplicatedStorage");

local localPlayer = game:GetService("Players").LocalPlayer;
local playerMainLocalScript = localPlayer:WaitForChild("PlayerScripts"):WaitForChild("Game");

local routesModule = require(replicatedStorage:WaitForChild("Source"):WaitForChild("Client"):WaitForChild("Helpers"):WaitForChild("Routes"));

local highlightC3Icon = Color3.fromRGB(255, 255, 80);


local function getNameOfDestination()
   return routesModule.getNextSystemName();
end;

local function retrieveStarWarpFunction()
   for _,v in pairs(getgc(true)) do
       if type(v) == "function" and islclosure(v) and not is_synapse_function(v) and getfenv(v).script == game.ReplicatedStorage.Source.Client.QuickWarp then
           local constants = debug.getconstants(v);

           if table.find(constants, "Star") and table.find(constants, "Type") and table.find(constants, "Object") and table.find(constants, "getCurrentZone") then
               for _, upval in pairs(debug.getupvalues(v)) do
                   if type(upval) == "function" and table.find(debug.getconstants(upval), "leaveSystem") then
                       return upval;
                   end;
               end;
           end;
       end;
   end;
end;


local destinationName = getNameOfDestination();
assert(destinationName, "No destination found, aborting...");

local theFunction = retrieveStarWarpFunction();
assert(theFunction, "Could not find the function???");

assert(replicatedStorage.System.Neighbors:FindFirstChild(destinationName), "Destination not detected???");

syn.queue_on_teleport(game:HttpGet("https://pastebin.com/raw/GMNXUX3i", true));
syn.secure_call(theFunction, playerMainLocalScript, replicatedStorage.System.Neighbors[destinationName].Value);