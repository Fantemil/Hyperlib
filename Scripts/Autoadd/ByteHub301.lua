for i, v in game:GetService("CoreGui"):GetChildren() do
    if v.Name == 'Discord' then v:Destroy() end
    if v:FindFirstChild('MurdLabel') then v:Destroy() end
   end
   local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord"))()
   
   local ImageLabel = Instance.new("ImageLabel", Instance.new("ScreenGui", gethui()))
   ImageLabel.Image = ''
   ImageLabel.BackgroundTransparency = 1
   ImageLabel.Position = UDim2.new(.5, 0, .1, 0)
   ImageLabel.AnchorPoint = Vector2.new(.5, .1)
   ImageLabel.Size = UDim2.new(.1, 0, .2, 0)
   ImageLabel.Name = 'MurdLabel'
   ImageLabel.Parent.ResetOnSpawn = false
   
   local Part = Instance.new("Part", workspace)
   Part.Name = "Running Part"
   Part.Position = Vector3.new(0, 1000, 0)
   Part.Anchored = true
   Part.CanCollide = true
   Part.Size = Vector3.new(5, 1, 5)
   
   local Plr = game:GetService("Players").LocalPlayer
   
local vim = game:GetService('VirtualInputManager');
   
   function GetMurderer()
    for i, v in game:GetService("Players"):GetChildren() do
     if v.Backpack:FindFirstChild"Knife" or v.Character and v.Character:FindFirstChild("Knife") then return v.Character end
    end
    return nil
   end
   
   local win = DiscordLib:Window("Murder Mystery 2")
   
   local serv = win:Server("ByteHub","http://www.roblox.com/asset/?id=6031075938")
   function Notify(Title, Text, ButtonText)
     DiscordLib:Notification(Title, Text, ButtonText)
   end
   function Seperate(Tab) Tab:Seperator() end
   function Channel(Name) return serv:Channel(tostring(Name)) end
   function Label(Tab, Text) returnTab:Label(tostring(Text)) end
   function TextBox(Tab, Text, Placeholder, Callback) return Tab:Textbox(tostring(Text), tostring(Placeholder), true, Callback) end
   function DropDown(Tab, Text, Options, Callback) return Tab:Dropdown(tostring(Text), tostring(Options), Callback) end
   function Toggle(Tab, Text, Default, Callback) return Tab:Toggle(tostring(Text), Default, Callback) end
   function Button(Tab, Text, Callback) return Tab:Button(tostring(Text), Callback) end
   local Main = Channel("Main")
   local Main2 = Channel("Game")
   local SayMessageRequest = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
   local G = Channel("UI")
   Button(Main, "Murderer & Sherrif Finder", function()
    local a = game:GetService("Players"):GetChildren()
    table.remove(a, 1)
    for i, v in a do
     if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
     if CMS then SayMessageRequest:FireServer(v.DisplayName.." is sherrif.", "normalchat") else Notify("Sherrif Found!", v.DisplayName.." is sherrif", "Okay") end 
     elseif v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
     if not CMS then
      Notify("Murderer Found!" , v.DisplayName.." is murderer.", "Okay")
     else
     SayMessageRequest:FireServer(v.DisplayName.." is murderer.", "normalchat") end
     end
   end
   end)
   Button(Main, "Kill All (Murderer Only)", function()
    for i, v in game:GetService("Players"):GetChildren() do
     if Plr.Backpack:FindFirstChild("Knife") then Plr.Backpack.Knife.Parent = Plr.Character end
      Plr.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
      local args = {
       [1] = "Slash"
   }
   
      Plr.Character.Knife:WaitForChild("Stab"):FireServer(unpack(args))
      task.wait(.25)
     end
   end)
   Button(Main, "Teleport To Lobby", function()
     Plr.Character.HumanoidRootPart.CFrame = workspace.Lobby.Spawns.Spawn.CFrame
   end)
   Button(G, "Center UI", function()
    game:GetService("CoreGui"):WaitForChild("Discord").MainFrame.Position = UDim2.new(.5, 0, .5, 0)
    game:GetService("CoreGui"):WaitForChild("Discord").MainFrame.AnchorPoint = Vector2.new(.5,0.5)
   end)
   Button(Main, "Grab Gun", function()
    pcall(function()
     Plr.Character.HumanoidRootPart.CFrame = workspace.GunDrop.CFrame
    end)
   end)
   Button(Main, "Teleport to murderer", function()
    Plr.Character.HumanoidRootPart.CFrame = GetMurderer() ~= nil and GetMurderer().HumanoidRootPart.CFrame or Plr.Character.HumanoidRootPart.CFrame
   end)
   Button(Main2, "Rejoin", function()
    game:GetService('TeleportService'):Teleport(game.PlaceId, Plr)
   end)
   Button(Main2, "Serverhop", function()
    local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
   
    module:Teleport(game.PlaceId)
   end)
   Button(Main2, 'Remove lights', function()
    workspace.Normal.Map.Parts.Light:ClearAllChildren()
   end)
   Toggle(Main, "Auto Escape Murderer", false, function(state)
    AE = state
   end)
   Toggle(Main, "Auto Shoot Murderer", false, function(state)
    ASM = state
   end)
   Toggle(Main, "Auto Take Gun", false, function(state)
   ATG = state
   end)
   Toggle(Main, "Chat Murderer and Sherrif Finder's results", false, function(state)
    CMS = state
   end)
   workspace.ChildAdded:Connect(function(child)
    if child.Name == "GunDrop" and ATG and GetMurderer() ~= Plr.Character then
      print("Gun dropped!")
      while child and task.wait() do
       if (GetMurderer().Head.Position-child.Position).magnitude < 10 then
        repeat task.wait() until (GetMurderer().Head.Position-child.Position).magnitude > 10
       end
       Grabbing = true
       Plr.Character.HumanoidRootPart.CFrame = child.CFrame + Vector3.new(0, .5, 0)
      end
      Grabbing = false
     end
   end)
   function GetMurd()
    return game:GetService("Players"):GetPlayerFromCharacter(GetMurderer())
   end
   function MurdererLoop()
    if ASM and Plr.Character and GetMurderer() and Plr.Character:FindFirstChild("Gun") or Plr.Backpack:FindFirstChild("Gun") then
     if Plr.Backpack:FindFirstChild("Gun") then Plr.Backpack.Gun.Parent = Plr.Character end
     local Murd = GetMurderer()
     Plr.Character.HumanoidRootPart.CFrame = Murd.HumanoidRootPart.CFrame - Murd.Head.CFrame.LookVector*10
     Plr.Character.Gun.KnifeServer.ShootGun:InvokeServer(1, Murd.HumanoidRootPart.Position, "AH")
    end
    task.wait(.5)
   end
   function SecondLoop()
    if GetMurderer() == Plr.Character or GetMurderer() == nil or not AE then ImageLabel.Image = '' return end
    ImageLabel.Image = game:GetService('Players'):GetUserThumbnailAsync(GetMurd().UserId, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size150x150)
    if (GetMurderer().HumanoidRootPart.Position-Plr.Character.HumanoidRootPart.Position).magnitude < 15 and not tpedtoPos and not Grabbing then
     tpedtoPos = Plr.Character.HumanoidRootPart.CFrame
     Plr.Character.HumanoidRootPart.CFrame = Part.CFrame + Vector3.new(0, 3, 0)
    elseif tpedtoPos and (GetMurderer().HumanoidRootPart.Position-Vector3.new(tpedtoPos.X, tpedtoPos.Y, tpedtoPos.Z)).magnitude > 10 and not Grabbing then 
     Plr.Character.HumanoidRootPart.CFrame = tpedtoPos
     tpedtoPos = nil
    end
   end
   Main2 = Channel("Freezers & Runners")
   Button(Main2, "Unfreeze All", function()
    for i, v in game:GetService("Players"):GetChildren() do
     if v ~= Plr and not v.Backpack:FindFirstChild("Knife") or v.Character and not v.Character:FindFirstChild("Knife") then
      Plr.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
      task.wait(.75)
     end
    end
   end)
   Button(Main2, "Freeze All", function()
    for i, v in game:GetService("Players"):GetChildren() do
     if v ~= Plr and not v.Backpack:FindFirstChild("Knife") or v.Character and not v.Character:FindFirstChild("Knife") then
     if Plr.Backpack:FindFirstChild("Knife") then Plr.Backpack.Knife.Parent = Plr.Character end
      Plr.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
      local args = {
       [1] = "Slash"
   }
   
      Plr.Character.Knife:WaitForChild("Stab"):FireServer(unpack(args))
      task.wait(.25)
     end
    end
   end)
   game:GetService("RunService").Heartbeat:Connect(MurdererLoop)
   game:GetService("RunService").Heartbeat:Connect(SecondLoop)
   game:GetService("CoreGui"):WaitForChild("Discord").DisplayOrder = -1