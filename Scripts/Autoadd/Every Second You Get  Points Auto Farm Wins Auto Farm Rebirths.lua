getgenv().toggle = false
getgenv().rebirth = false

local player = game.Players.LocalPlayer
local touch = game:GetService("Workspace").Wins.Stage8
local rebirthPart = game:GetService("Workspace").Model.RebirthTouch

--UI
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cypherdh/VanisUILIB/main/.gitignore'))()
local Window = library:CreateWindow("Obama", "Care", 10044538000)
local Tab = Window:CreateTab("Scripts")
local Page = Tab:CreateFrame("Click here for free vbucks")

Toggle = Page:CreateToggle("Auto Earn Wins", "Automatically farms wins", function(arg)
   toggle = arg
end)

Toggle = Page:CreateToggle("Auto Rebirth", "Automatically rebirth", function(arg)
   rebirth = arg
end)

Button = Page:CreateButton("Tp to spawn", "", function()
   player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SpawnLocation.CFrame
end)

--Scripts

while task.wait() do
   local root = player.Character:WaitForChild("HumanoidRootPart")
   if toggle then
       root.CFrame = touch.CFrame
       firetouchinterest(root, touch, 0)
   end
   if rebirth then
       if player.leaderstats.Wins.Value >= 50000 then
           root.CFrame = rebirthPart.CFrame
           firetouchinterest(root, rebirthPart, 0)
           task.wait(1)
       end
   end
end