-- services.
local game = game;
local getService = game.GetService;

local workspace = getService(game, 'Workspace');
local players = getService(game, 'Players');

-- client&indexing.
local client = players.LocalPlayer;
local clientGuis = client.PlayerGui;

local destroy = game.Destroy;
local isA = game.IsA;
local findFirstChild = game.FindFirstChild;

-- remove annoying buying effects.
local itemGainedScript = findFirstChild(clientGuis.ItemGained, 'LocalScript', true); -- Recursive because im lazy (ãâ½ã)
if itemGainedScript then
   destroy(itemGainedScript);
end;

clientGuis.DescendantAdded:Connect(function(c) -- Not going to bother with indexing a signal <(ï¿£ ï¹ ï¿£)>
   if c.Name == 'NoChestAnimation' or (isA(c, 'LocalScript') and c.Parent.Name == 'DisplayGainedItem') then
       task.defer(destroy, c);
   end;
end);


-- funny while true do!
local buy = workspace.ItemBoughtFromShop;
local invoke_server = buy.InvokeServer;

while true do
   pcall(invoke_server, buy, 'Winter Chest', 6); -- Due the game actually erroring.
   task.wait();
end;