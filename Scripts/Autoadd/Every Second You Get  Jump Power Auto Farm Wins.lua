_G.rebirth = true -- toggle on/off
_G.Active = true -- toggle on/off
_G.autobuypet = true -- toggle on/off
local eggname = "Dark" --you can change this to whatever egg you want to buy
spawn(function()
   while _G.Active do
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12314, 45653.2539, 199, 0, 0, -1, -1, 0, 0, 0, 1, 0)
       wait(3)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1872, 132)
       wait(3)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(381, 8982, -44)
       wait(3)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2052, 6208, 133)
       wait(3)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4050, 8738, 140)
       wait(3)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6050, 13433, 153)
       wait(3)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8052, 19193, 154)
   end
end)
spawn(function()
   while _G.rebirth do
       game:GetService("ReplicatedStorage").RebirthEvent:FireServer()
       wait()
   end
end)
spawn(function()
while wait() do
   if not _G.autobuypet then break end;
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(eggname, "Single")
wait()
  end
end)