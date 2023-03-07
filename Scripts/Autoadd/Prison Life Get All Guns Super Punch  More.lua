local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cypherdh/VanisUILIB/main/.gitignore'))()

local Window = library:CreateWindow("Prison Life DESTROYER by dsdm", "1.0", 10044538000)

local Tab = Window:CreateTab("Prison Life")

local Page = Tab:CreateFrame("Page 1")



Button = Page:CreateButton("Get all Guns", "Gets all Guns", function()
 local args = {
  [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
 }

 workspace.Remote.ItemHandler:InvokeServer(unpack(args))

 local args = {
  [1] = workspace.Prison_ITEMS.giver:FindFirstChild("M9").ITEMPICKUP
 }

 workspace.Remote.ItemHandler:InvokeServer(unpack(args))

 local args = {
  [1] = workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP
 }

 workspace.Remote.ItemHandler:InvokeServer(unpack(args))

 local args = {
  [1] = workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP
 }

 workspace.Remote.ItemHandler:InvokeServer(unpack(args))

 local args = {
  [1] = workspace.Prison_ITEMS.single:FindFirstChild("Key card").ITEMPICKUP
 }

 workspace.Remote.ItemHandler:InvokeServer(unpack(args))

 local args = {
  [1] = workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP
 }

 workspace.Remote.ItemHandler:InvokeServer(unpack(args))


end)

Button = Page:CreateButton("Mod Gun", "you must be holding the gun", function()
 local m = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
 m.Damage = 100
 m.MaxAmmo = math.huge
 m.CurrentAmmo = math.huge
 m.AutoFire = true
 m.FireRate = 0
end)

Button = Page:CreateButton("Neutral team", "Description" ,function()
 Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

Button = Page:CreateButton("ONE PUNCH MAN MODE", "makes your fists instakill", function()
 mainRemotes = game.ReplicatedStorage
 meleeRemote = mainRemotes['meleeEvent']
 mouse = game.Players.LocalPlayer:GetMouse()
 punching = false
 cooldown = false

 function punch()
  cooldown = true
  local part = Instance.new("Part", game.Players.LocalPlayer.Character)
  part.Transparency = 1
  part.Size = Vector3.new(5, 2, 3)
  part.CanCollide = false
  local w1 = Instance.new("Weld", part)
  w1.Part0 = game.Players.LocalPlayer.Character.Torso
  w1.Part1 = part
  w1.C1 = CFrame.new(0,0,2)
  part.Touched:connect(function(hit)
   if game.Players:FindFirstChild(hit.Parent.Name) then
    local plr = game.Players:FindFirstChild(hit.Parent.Name)
    if plr.Name ~= game.Players.LocalPlayer.Name then
     part:Destroy()

     for i = 1,100 do
      meleeRemote:FireServer(plr)
     end
    end
   end
  end)

  wait(1)
  cooldown = false
  part:Destroy()
 end


 mouse.KeyDown:connect(function(key)
  if cooldown == false then
   if key:lower() == "f" then

    punch()

   end
  end
 end)
end)

Button = Page:CreateButton("arrest all", "arrests every criminal", function()
 wait(0.1)
 Player = game.Players.LocalPlayer
 Pcf = Player.Character.HumanoidRootPart.CFrame
 for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
  if v.Name ~= Player.Name then
   local i = 10
   repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
   until i == 0
  end
 end
end)

Button = Page:CreateButton("Infinite Yield", "Description", function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)