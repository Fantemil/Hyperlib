-- Don't mind the messy code, threw it together and never cleaned it up
wait(2)
if not game:IsLoaded() then
 game.Loaded:Wait()
end

local TeleportService = game:GetService("TeleportService")
game.Players.PlayerRemoving:Connect(function(xd)
 if xd == game.Players.LocalPlayer then
     TeleportService:Teleport(5911084042)
 end
end)

local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
warn("anti-afk")
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

if game.PlaceId == 7073312062 then
 wait(15)

 local player = game.Players.LocalPlayer
 local ppart = player.Character.HumanoidRootPart
 local safe = ppart.CFrame * CFrame.new(0,20,0)
 ppart.CFrame = safe

 for _,b in pairs(game:GetService("Workspace").Buttons:GetChildren()) do
     local Closest = nil
     for i,v in pairs(game:GetService("Workspace").Protection:GetChildren()) do
         if Closest == nil then
             Closest = v
         else
             if (b.CFrame.Position - v.Position).magnitude < (Closest.Position - b.CFrame.Position).magnitude then
                 Closest = v
             end
         end
     end
     ppart.CFrame = safe
     repeat wait() until Closest.Transparency ~= 0.5
     Closest.CanCollide = false
     ppart.CFrame = Closest.CFrame
     wait(0.3)
     local pos = CFrame.new(game:GetService("Workspace").Camera.CFrame.Position, b.CFrame.Position)
     game:GetService("Workspace").Camera.CFrame = pos
     wait(0.2)
     fireproximityprompt(b.ProximityPrompt,1)
     repeat wait() until Closest.Transparency == 0.5
 end

 repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Cutscene.Visible == true
 wait(2)
 local TeleportService = game:GetService("TeleportService")
 TeleportService:Teleport(5911084042) -- skip cutscene
elseif game.PlaceId == 5911084042 then
 wait(5)

 local function firebutton(obj)
     local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
     for i,v in pairs(events) do
         for i,v in pairs(getconnections(obj[v])) do
             v:Fire()
         end
     end
 end

 local guis = game:GetService("Players").LocalPlayer.PlayerGui
 firebutton(guis.Other.NewMenu.Topbar.Buttons.Play)
 wait(0.2)
 firebutton(guis.Other.NewMenu.Content.Play.Buttons.Create)
 wait(0.2)
 firebutton(guis.Other.NewMenu.Content.Play.Create.Buttons.ServerType.Private)
 firebutton(guis.Other.NewMenu.Content.Play.Create.Buttons.Level["0"])
 firebutton(guis.Other.NewMenu.Content.Play.Create.Buttons.Universal.No)
 wait(0.5)
 firebutton(guis.Other.NewMenu.Content.Play.Create.Create)
 guis.Other.NewMenu.Content.Play.Create.Visible = false
 guis.Other.NewMenu.Content.Play.Lobby.Visible = true
 firebutton(guis.Other.NewMenu.Content.Play.Lobby.Buttons.Ready)
 firebutton(guis.Other.NewMenu.Content.Play.Lobby.Buttons.Setup)
 firebutton(guis.Other.NewMenu.Content.Play.Lobby.Maps.Maps.Arcade)
 firebutton(guis.Other.NewMenu.Content.Play.Lobby.Maps.Difficulty.Easy)
 wait(1)
 firebutton(guis.Other.NewMenu.Content.Play.Lobby.Buttons.Start)
elseif game.PlaceId == 5921569465 then
 wait(5)

 -- fix and better way of waiting for variables and less detection
 local House = workspace:WaitForChild("House")
 local EE = House:WaitForChild("EE")
 local AlleyDoor = EE:WaitForChild("AlleyDoor")
 local AProximityPrompt = AlleyDoor:WaitForChild("ProximityPrompt")
 local StartProximityPrompt = workspace:WaitForChild("Van"):WaitForChild("Close"):WaitForChild("ProximityPrompt")

 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1095.25, 32.99, -30.15) -- start round position
 wait(1)
 fireproximityprompt(StartProximityPrompt,1)
 wait(1)

 AProximityPrompt.Enabled = true
 wait(0.5)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = AlleyDoor.CFrame * CFrame.new(2,1,0)
 wait(0.5)
 local pos = CFrame.new(game:GetService("Workspace").Camera.CFrame.Position, AlleyDoor.CFrame.Position)
 --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0)
 game:GetService("Workspace").Camera.CFrame = pos --game:GetService("Workspace").Camera.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
 wait(1)
 fireproximityprompt(AProximityPrompt,1)
end