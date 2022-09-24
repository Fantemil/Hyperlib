local punch = "UniverselordPunch" --Ur Classes Punch ( Universelord = UniverselordPunch, Onicyborg = OnicyborgPunch, Zombieguy = NonePunch(Without weapon equipped), Molecular... = NonePunch(Without weapon equipped))
local quest = "55" --Quest for GiantSnowman (Gamepass is needed to use the remote)(If needed find the other ones with dex)
local mob = "GiantSnowman" --The mob you want to kill(You need the fitting quest for good exp)


local Key = "X"
getgenv().toggle = true
--Function
function tpto(placeCFrame)
  local plyr = game.Players.LocalPlayer
  if plyr.Character then
      plyr.Character.HumanoidRootPart.CFrame = placeCFrame
  end
end

function getquest()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2744.1157226562, 2029.9776611328, -2112.8952636719)
   wait(0.5)
   game:GetService('VirtualInputManager'):SendKeyEvent(true,Key,false,uwu)
end


--Script
repeat wait() until game:IsLoaded() and game:GetService("Players")
wait(5)

spawn(function()
  while wait(0.1) do
      if not toggle then break end
      if not game:GetService("Workspace").NPCS:FindFirstChild("GiantSnowman") then
          local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/6802248248/servers/Public?sortOrder=Asc&limit=100"))
          for i,v in pairs(Servers.data) do
              if v.playing ~= v.maxPlayers then
                  wait(1)
                  game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
                  wait(2.5)
                  game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
              end
          end
      end
  end
end)

getquest()
wait(5)

spawn(function()
  while wait(.2) do
      if not toggle then break end
      for i,v in pairs(game:GetService("Workspace").NPCS.GiantSnowman:GetChildren()) do
          if v.Name == "Head" then
              tpto(v.CFrame)
              wait(0.1)
              game:GetService("ReplicatedStorage").SKILL_EVENT:FireServer(punch)
          end
      end
  end
end)