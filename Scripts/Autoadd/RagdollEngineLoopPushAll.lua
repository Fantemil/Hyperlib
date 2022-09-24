repeat task.wait() until game ~= nil and game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character;

getgenv().On = true;

local Whitelist = { -- // put user ids of alts or friends here
 
};

local function Service(Service)
   return game:GetService(Service) or game[Service];
end;

local function Find(Table, Index)
   for  _, __ in next, Table do
       if (_ == Index) or (__ == Index) then return true end;
   end;
   
   return false;
end;

local Tool;

local Players = Service('Players');
local Player = Players.LocalPlayer;

local Backpack = Player:WaitForChild('Backpack');

for Index, Value in next, getconnections(Player.Idled) do
   Value:Disable();
end;
   
local function EquipTool(Tool)
   if (Player.Character ~= nil) and (Player.Character:FindFirstChildOfClass('Humanoid')) and (Backpack:FindFirstChild(Tool)) then
       Player.Character:FindFirstChildOfClass('Humanoid'):EquipTool(Backpack:FindFirstChild(Tool));
   end;
   
   return Player.Character:FindFirstChild(Tool);
end;

while getgenv().On do

   task.wait();
   
   for Index, Value in next, Players:GetPlayers() do
       if (Value == Player) then continue end;
       if (not getgenv().On) then break end;
       if (not Player.Character) or (not Player.Character:FindFirstChild('HumanoidRootPart')) then  continue end;
       if (not Value.Character) or (not Value.Character:FindFirstChild('HumanoidRootPart')) then continue end;
       if (not Player.Character:FindFirstChild('Push')) then EquipTool('Push') end;
       if (Find(Whitelist, Value.UserId)) then continue end;
       
       if (Player.Character) and (Player.Character:FindFirstChild('Humanoid')) then Player.Character:FindFirstChild('Humanoid'):ChangeState('GettingUp'); end;
       local Tool = Player.Character:FindFirstChild('Push');
       
       Player.Character:FindFirstChild('HumanoidRootPart').CFrame = Value.Character:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0, 0, 2);
       task.wait(0.1);
       if (Player.Character) and (Player.Character:FindFirstChild('Humanoid')) then Player.Character:FindFirstChild('Humanoid'):ChangeState('GettingUp'); end;
       Tool:Activate();
   end;
end;