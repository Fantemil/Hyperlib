local Config = {

 WindowName = "Football Universe",

 Color = Color3.fromRGB(243,4,4),

 Keybind = Enum.KeyCode.RightShift -- Doesn't work



}







if not getrawmetatable or not hookmetamethod then
 game.Players.LocalPlayer:Kick("Your exploit is not supported. use Krnl (best free exploit) or Synapse X (best paid exploit) for it to work.") 
end





for _,v in pairs(getgc()) do
 if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.ClientModel.AntiSpeedHackV3 then
  if debug.getinfo(v).name == "KickPlayerForHacking" then
   hookfunction(v, function(...)
   end)
  end
 end
end

game:GetService("Players").LocalPlayer.PlayerGui.ClientModel.AntiSpeedHackV3:Destroy()



local old;
local random = Random.new()


old = hookmetamethod(game,"__index",function(self,key)
 if key == "WalkSpeed" then
  return 16
 elseif key == "JumpPower" then
  return 50
 elseif tostring(self) == "Football" and (key == "CFrame" or key == "Position") then
  return Vector3.new(random:NextNumber(1,150),random:NextNumber(1,150),random:NextNumber(1,150))
 end
 return old(self, key)
end









local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()

local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Main")


local section1 = Tab1:CreateSection("Catching")

local section2 = Tab1:CreateSection("Player")


local Toggle3 = section1:CreateToggle("Football Mags", nil, function(value)
 tog = value
 local uis = game:GetService("UserInputService")
 uis.InputBegan:Connect(function(key,gp)
  if key.UserInputType == Enum.UserInputType.MouseButton1 and gp == false then
   for _,k in pairs(game:GetService("Workspace"):GetChildren()) do
    if k.Name == "Football" and k.ClassName == "Part" and tog == true then
     for i = 1,35 do wait()
      if tog == true then
       k.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.Head.Position)
       k.CanCollide = false
      end
     end
    end
   end
  end
 end)
end)



section1:CreateToggle("Big Football Hitbox (Might not work)",nil,function(value)
 tog2 = value
 while tog2 do wait()
  for _,k in pairs(game:GetService("Workspace"):GetChildren()) do
   if k:FindFirstChild("Football") and k.ClassName == "Part" then
    k.Size = Vector3.new(10,10,10)
   end
  end
 end
end)


section2:CreateToggle("Toggle WalkSpeed",nil,function(value)
 walktog = value
end)

section2:CreateTextBox("WalkSpeed","Only numbers",true,function(text)
 while walktog do wait()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = text
 end
end)

section2:CreateToggle("Toggle JumpPower",nil,function(value)
 jumptog = value
end)


section2:CreateTextBox("JumpPower","Only numbers",true,function(text)
 while jumptog do wait()
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = text
 end
end)

section2:CreateToggle("Infinite Jump",nil,function(value)
 tog = value
 game:GetService("UserInputService").JumpRequest:connect(function()
  if tog == true then
   game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
  end
 end)
end)

section2:CreateButton("Reset WalkSpeed",function()
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

section2:CreateButton("Reset JumpPower",function()
 game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)