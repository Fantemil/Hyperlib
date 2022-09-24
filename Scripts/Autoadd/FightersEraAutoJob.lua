repeat wait() until game:IsLoaded()
repeat wait() until workspace:FindFirstChild("QuestBoards")
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and workspace:FindFirstChild("milkyd") and workspace:FindFirstChild("PizzaDetector")
local plr = game.Players.LocalPlayer
local x = {}
for i = 1,10 do
   task.wait()
   for i,v in pairs(workspace.QuestBoards.QuestBoard:GetChildren()) do
       if v.Name == "Paper" then
           if v.SurfaceGui.Desc.Text == "Deliver pizza to a party" then
               plr.Character.HumanoidRootPart.CFrame = v.CFrame
               wait(0.1)
               fireclickdetector(v.ClickDetector)
               wait(0.3)
               firetouchinterest(plr.Character.HumanoidRootPart,workspace.PizzaDetector,0)
               firetouchinterest(plr.Character.HumanoidRootPart,workspace.PizzaDetector,1)
               task.wait()
           elseif v.SurfaceGui.Desc.Text == "Pickup Groceries and deliver them to the store" then
               plr.Character.HumanoidRootPart.CFrame = v.CFrame
               wait(0.1)
               fireclickdetector(v.ClickDetector)
               wait(0.3)
               firetouchinterest(plr.Character.HumanoidRootPart,workspace.milkf,0)
               firetouchinterest(plr.Character.HumanoidRootPart,workspace.milkf,1)
               task.wait()
               firetouchinterest(plr.Character.HumanoidRootPart,workspace.milkyd,0)
               firetouchinterest(plr.Character.HumanoidRootPart,workspace.milkyd,1)
               task.wait()
           end
       end
   end
end

for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
x[#x + 1] = v.id
end
end
if #x > 0 then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
end