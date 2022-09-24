   
--Globals
getgenv().toggle = true
getgenv().Key = "E"
getgenv().count = 0
local plyr = game.Players.LocalPlayer

--Functions Stuff
function tpto(part)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(part)

end

--Programm
repeat wait() until game:IsLoaded() and game:GetService("Players")

while wait() do
   if not toggle then break end
   if not game:GetService("Workspace").GIFTS:FindFirstChild("GIFT_EVENT") then
       wait(1)
       local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/6802248248/servers/Public?sortOrder=Asc&limit=100"))
       for i,v in pairs(Servers.data) do
           if v.playing ~= v.maxPlayers then
               game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
               wait(5)
               game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
           end
       end
   end
   wait(3)
   for i,v in pairs(game:GetService("Workspace").GIFTS:GetDescendants()) do
       if v.Name == "Lasso" then
           wait()
           tpto(v.Position)
           wait()
           game:GetService('VirtualInputManager'):SendKeyEvent(true,getgenv().Key,false,uwu)
           wait(1)
           getgenv().count = getgenv().count + 1
           print(getgenv().count)
       end
   end
end  