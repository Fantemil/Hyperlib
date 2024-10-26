local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroEnabled = false ,Name = "Jankya GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "Jankya GUI"})
local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
	Name = "misc"
Misc:AddButton({
	Name = "buy /e rain!",
	Callback = function()
      		local args = {
    [1] = 66,
    [2] = "Animations",
    [3] = "Exclusive"
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
  	end    
  
})
Misc:AddButton({
	Name = "buy candy crown!",
	Callback = function()
      		local args = {
    [1] = 66,
    [2] = "Knife Skins",
    [3] = "Winter Gift"
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
  	end    
})
Misc:AddButton({
	Name = "Buy Royal Red Chair!",
	Callback = function()
      		local args = {
    [1] = 66,
    [2] = "Chair Skins",
    [3] = "Winter"
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
  	end    
})

Misc:AddButton({
	Name = "Buy antler case!",
	Callback = function()
      		print("button pressed")
  	end    
})
local args = {
    [1] = 66,
    [2] = "Knife Skins",
    [3] = "Winter"
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))

local Tab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "get 50k/3 mins!",
	Callback = function()
      		repeat wait() until game:IsLoaded() wait()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

if game.PlaceId == 648362523 then
    repeat wait() until game:IsLoaded()
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Autofarm",
            Text = "Sit back, relax and become pro!"
        }
    )
    Clone = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:Clone()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:Destroy()
    Clone.Parent = game:GetService("Players").LocalPlayer.Character
    game.Players.LocalPlayer.settings["Display Gun"].Value = true
    game.Players.LocalPlayer.CharacterAdded:Connect(
        function()
            if getgenv().AutoFarm then
                pcall(function()
                game.Players.LocalPlayer.settings["Display Gun"].Value = true
                wait(4)
                Clone = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:Clone()
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:Destroy()
                Clone.Parent = game:GetService("Players").LocalPlayer.Character
                end)
            end
        end
    )

    while getgenv().AutoFarm do
        pcall(function()
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(16, "public")
        end)
        wait()
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name == game.Players.LocalPlayer.Name then
            else
                pcall(function()
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
                end)
            end
        end
    end
else
    game:GetService("TeleportService"):Teleport(648362523, LocalPlayer)
end

  	end    
})
Tab:AddButton({
	Name = "OP Auto farm!",
	Callback = function()
if game.PlaceId == 834827615 then
wait(0.5)
spawn(function()
   while wait () do
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
end end)
spawn(function()
   while wait (0.1) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.spawnlocations.SpawnLocation.CFrame
end end)
spawn(function()
   while wait () do
  for i,v in pairs(game.Players:GetPlayers()) do
      if v.Name == game.Players.LocalPlayer.Name then
          else
          game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
      end end end end)
spawn(function()
   while wait () do
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(16, "public")
end end)
else
   game:GetService("TeleportService"):Teleport(834827615, LocalPlayer)
   end


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

  	end    
})
local Tab = Window:MakeTab({
	Name = "TradeUnban",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Trade Unban!",
	Callback = function()
      		while true do
    wait()
local args = {
    [1] = 42,
    [2] = true
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end
  	end    
})
Tab:AddButton({
	Name = "instructions To be unbanned!",
	Callback = function()
      		wait(0)
game.StarterGui:SetCore("SendNotification", {
Title = "READ CAREFULLY!"; 
Text = "Alright so firstly after you press unban, you want to wait 30 seconds, then join on the account that is banned, then trade it!";
Duration = 45; 
 })
  	end    
})