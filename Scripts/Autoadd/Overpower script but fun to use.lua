local mt = getrawmetatable(game);
local old = mt.__namecall
local readonly = setreadonly or make_writeable

local MarketplaceService = game:GetService("MarketplaceService");

readonly(mt, false);

mt.__namecall = function(self, ...)
  local args = {...}
  local method = table.remove(args)

  if (self == MarketplaceService and method:find("UserOwnsGamePassAsync")) then
      return true
  end

  return old(self, ...)
end



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,255,255)
Library:Notification({
	Text = "Wait a second before the script loads ",
	Duration = 5
}) 


wait (2.6)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(0,255,255)
Library:Notification({
	Text = "The script is ready Press Q toggle",
	Duration = 5
}) 

local isEnabled = false

-- Define a function to toggle the variable
local function toggleEnabled()
    isEnabled = not isEnabled
    if isEnabled then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(0,255,0)
Library:Notification({
	Text = "Script is turned on",
	Duration = 5
}) 
    else
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)
Library:Notification({
	Text = "Script is turned off",
	Duration = 5
}) 
    end
end


game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.Q then
        toggleEnabled()
    end
end)


while wait() do
    if isEnabled then
        local player = game:GetService("Players").LocalPlayer


for _, tool in pairs(player.Backpack:GetChildren()) do
    if tool.Name == "ChaIk" then
        tool.Parent = player.Character
    end
end

for _, tool in pairs(player.Character:GetChildren()) do
    if tool.Name == "ChaIk" then
        tool.Parent = player.Character
    end
end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local ohVector32 = character.HumanoidRootPart.Position

-- we find the closest player  XD
local closestPlayer, closestDistance
for _, p in pairs(game.Players:GetPlayers()) do
    if p ~= player and p.Character then
        local distance = (ohVector32 - p.Character.HumanoidRootPart.Position).Magnitude
        if not closestDistance or distance < closestDistance then
            closestDistance = distance
            closestPlayer = p
        end
    end
end

if closestPlayer then
    local ohVector33 = closestPlayer.Character.HumanoidRootPart.Position
    local ohInstance1 = workspace.ChalkBoard.ChalkBoard
    local ohColor34 = Color3.new(0.00288371, 0.108488, 0.0640158)

    
    workspace[player.Name].ChaIk.Draw:FireServer(ohInstance1, ohVector32, ohVector33, ohColor34)
end



    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end
