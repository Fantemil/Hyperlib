--zvz

--Var
local players = game:service('Players')
local player = players.LocalPlayer
local character = player.character
local hrp = character:WaitForChild('HumanoidRootPart')
local workspace = game:service('Workspace')


--func

local function Bypass()
   local args = {
   [1] = "Player",
   [2] = "SpawnCharacter"
   };
   game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer(unpack(args))
end
local function Tp(plr)
   for i,v in pairs(players:GetPlayers()) do
       if string.sub(v.Name,1,#plr):lower() == plr:lower() then
        hrp.CFrame = v.Character.Torso.CFrame
       end  
   end
end
local DEMOFNALL = Instance.new("ScreenGui")
local plr = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")

--Properties:

DEMOFNALL.Name = "DEMOFNALL"
DEMOFNALL.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
DEMOFNALL.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

plr.Name = "plr"
plr.Parent = DEMOFNALL
plr.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
plr.Position = UDim2.new(0.0143084135, 0, 0.919871807, 0)
plr.Size = UDim2.new(0, 200, 0, 36)
plr.Font = Enum.Font.Ubuntu
plr.Text = ""
plr.TextColor3 = Color3.fromRGB(255, 255, 255)
plr.TextSize = 14.000
plr.TextWrapped = true

UICorner.Parent = plr

   plr.FocusLost:Connect(function(enter)
       if enter then
       Bypass()
       wait(1)
       Tp(plr.Text)
       end
   wait(4)
   end)