 local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Enxquity/bad-script-yes/main/shit%20library'))()

local newUI = library.createNewUI("Xenon", true)
local newTab = library.NewTab(newUI, "Main", true)

if syn then
   game.StarterGui:SetCore("SendNotification", {
      Title = "Loading;";
      Text = "Exploit: Synapse X",
      Duration = 3
   })
end

local breakFarm = false

newTab:NewToggle("Autofarm", false, function()
   breakFarm = false
   while not breakFarm do
       if breakFarm then break end
   
       local args = {
       [1] = "Downhill Battle",
       [2] = "Sprint",
       [3] = true,
       [4] = {
           ["Trigger"] = workspace:FindFirstChild("Proximity Triggers"):FindFirstChild("Downhill Battle").Focus,
           ["MaxRacers"] = 8
       },
       [5] = workspace:FindFirstChild("Proximity Triggers"):FindFirstChild("Downhill Battle").Focus
       }
   
       game:GetService("ReplicatedStorage").RemoteFunctions.RaceEvents.Entry:InvokeServer(unpack(args))
       
       local args = {
           [1] = "Downhill Battle",
           [2] = "Sprint",
           [3] = workspace:FindFirstChild("Proximity Triggers"):FindFirstChild("Downhill Battle").Focus,
           [4] = {
               ["Trigger"] = workspace:FindFirstChild("Proximity Triggers"):FindFirstChild("Downhill Battle").Focus,
               ["MaxRacers"] = 8
           },
           [5] = true
       }
       
       game:GetService("ReplicatedStorage").RemoteFunctions.RaceEvents.VoteToStart:InvokeServer(unpack(args))
       
       repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("ProgressGui")
       repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("ProgressGui").ScreenText.StartSound.Playing
       
       local function getCar(folder)
           for i,v in pairs(folder:GetChildren()) do
               return v.Name
           end
       end
       
       local folder = workspace.VehiclesFolder[game.Players.LocalPlayer.Name]
       folder[getCar(folder)]:SetPrimaryPartCFrame(workspace.Points["278"].CFrame)
       
       delay(2, function()
           game.Players.LocalPlayer.PlayerGui:FindFirstChild("ProgressGui"):Destroy()
       end)
       
       wait(3)
   end
end, function()
   breakFarm = true
end)

newTab:SetPrimaryTab()