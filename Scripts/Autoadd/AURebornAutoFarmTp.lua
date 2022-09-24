local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Auto Farm")
local section = main:NewSection("Auto Farm")
local plr = game.Players.LocalPlayer
local cha = plr.Character
local hrp = cha.HumanoidRootPart

local function GetClosestPlayer()
  local target = nil
  local distance = math.huge
  for i,v in next, game.Players:GetPlayers() do
      if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChildOfClass('Humanoid') and v.Character:FindFirstChildOfClass('Humanoid').RootPart then
          local plrdist = game.Players.LocalPlayer:DistanceFromCharacter(v.Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame.p)
          if plrdist < distance then
              target = v
              distance = plrdist
          end
      end
  end
  return target
end

section:NewToggle("Auto Farm In Spawn", "", function(c)
d = c
while d and task.wait() do
pcall(function()
if (game:GetService("Workspace").Lobby.SpawnLocation.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 500 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.SpawnLocation.CFrame
elseif (game:GetService("Workspace").Lobby.SpawnLocation.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 500 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame
game:GetService("ReplicatedStorage").Remotes.Combat:FireServer()
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("One", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Two", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Three", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Four", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Five", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Six", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("E", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
end
end)
end
end)

section:NewButton("Go To Spawn", "", function()
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2322, 291, 449)
end)
end)

section:NewToggle("Auto Go To Spawn", "", function(a)
b = a
while b and task.wait() do
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2412, 228, -42)
end)
end
end)

game.Players.PlayerRemoving:connect(function(plr)
  if plr == game.Players.LocalPlayer or #game.Players:GetChildren() <= 3 then
    game:GetService('TeleportService'):Teleport(game.PlaceId)
  end
end)

syn.request({
  Url = "http://127.0.0.1:6463/rpc?v=1",
  Method = "POST",
  Headers = {
      ["Content-Type"] = "application/json",
      ["Origin"] = "https://discord.com"
  },
  Body = game:GetService("HttpService"):JSONEncode({
      cmd = "INVITE_BROWSER",
      args = {
          code = "bnVjxtyU"
      },
      nonce = game:GetService("HttpService"):GenerateGUID(false)
  }),
})