getgenv().killAllKey = getgenv().killAllKey or Enum.KeyCode.V

-- init
if not game:IsLoaded() then 
    game.Loaded:Wait();
end

local service = setmetatable({}, {
    __index = function(self, index)
        return game.GetService(game, index);
    end
});

-- variables
local players, runService, userInputService, replicatedStorage = service.Players, service.RunService, service.UserInputService, service.ReplicatedStorage

local inputBegan = userInputService.InputBegan 
local postSimulation = runService.PostSimulation

local client = players.LocalPlayer 
local characterAdded = client.CharacterAdded 

local character = client.Character or characterAdded:Wait();
local rootPart = character and character:FindFirstChild("HumanoidRootPart");

local tool;
local remote;

local killAllToggled = false

-- functions
local function kill(player)
 if player.Team == client.Team then return end 

 local playerCharacter = player.Character 
 if not playerCharacter then return end 

 if playerCharacter:FindFirstChild("ForceField") then return end 

 local playerHumanoid = playerCharacter:FindFirstChildOfClass("Humanoid");
 if not playerHumanoid or playerHumanoid.Health == 0 then return end

 local playerRootPart = playerCharacter:FindFirstChild("HumanoidRootPart");
 if not playerRootPart then return end
  
 local arguments = tool.Name == "Knife" and {playerRootPart, "Throw"} or tool.Name == "Gun" and {playerRootPart, playerRootPart.Position, rootPart.Position}
 remote:FireServer(unpack(arguments));
end

local function onChildAdded(child)
 if child and child:IsA("Tool") and (child.Name == "Gun" or child.Name == "Knife") then
  tool = child  
  remote = tool:WaitForChild("Damage");
 end
end

-- connections 
character.ChildAdded:Connect(onChildAdded);

inputBegan:Connect(function(key)
 if userInputService:GetFocusedTextBox() then return end 

 if key.KeyCode == killAllKey then 
  killAllToggled = not killAllToggled
 end
end);

characterAdded:Connect(function(Character) 
 character = Character
 character:WaitForChild("Humanoid");

 rootPart = character:WaitForChild("HumanoidRootPart");
 character.ChildAdded:Connect(onChildAdded);
end);

postSimulation:Connect(function(deltaTime) 
 if killAllToggled and tool and remote then 
  for i = 1, #players:GetPlayers() do
   local player = players:GetPlayers()[i];
   if player == client then continue end 

   kill(player);
  end
 end
end);