local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = lib:Window("Navy Simulator")
local serv = win:Server("Navy Simulator", "shit ass game")

local cTab = serv:Channel("Character")
local autoTab = serv:Channel("AutoFarm")

local flySpeed = 3
local flying = false
local ws = 16
local js = 50

local autofarm = false

cTab:Slider("Walkspeed", 0,150,1, function(t)
   ws = t
end)

cTab:Slider("Jump Power", 0,150,1, function(t)
   jp = t
end)

cTab:Label("FLY CONTROLS : R-Up, F-Down, WASD")

cTab:Bind("Fly", Enum.KeyCode.B, function()
   flying = not flying
   if flying then
       game.Workspace.Gravity = 0
   else
       game.Workspace.Gravity = 196.19999694824
   end
end)

cTab:Slider("Fly Speed", 0,10,0.1, function(t)
  flySpeed = t
end)

autoTab:Toggle("AutoFarm", false, function(t)
   autofarm = t
   if autofarm then
       game.Workspace.Gravity = 0
   else
       game.Workspace.Gravity = 196.19999694824
   end
end)

coroutine.resume(coroutine.create(function()
   while wait(0.1) do
       while autofarm do
           wait(0.1)
           pcall(function()
               local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(12,Enum.EasingStyle.Linear), {CFrame = CFrame.new(-524.751,49,133.146)}):Play()
               wait(12.5)
               fireclickdetector(game:GetService("Workspace").Islands.Bank.EssentialWorkers.GoldBars.Bar.Clicker)
               wait(2)
               fireclickdetector(game:GetService("Workspace").Islands.Bank.EssentialWorkers.GoldBars.Bar.Clicker)
               wait(2)
               fireclickdetector(game:GetService("Workspace").Islands.Bank.EssentialWorkers.GoldBars.Bar.Clicker)
               wait(0.25)
               fireclickdetector(game:GetService("Workspace").Islands.Bank.EssentialWorkers.GoldBars.Bar.Clicker)
               wait(0.25)
               fireclickdetector(game:GetService("Workspace").Islands.Bank.EssentialWorkers.GoldBars.Bar.Clicker)
               wait(0.75)
               local tween1 = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(12,Enum.EasingStyle.Linear), {CFrame = CFrame.new(270.048, 47.608, -5492.269)}):Play()
               wait(14.5)
           end)
       end
   end
end))

coroutine.resume(coroutine.create(function()
   while wait(0.01) do
       while flying do
           pcall(function()
               local charV = game.Players.LocalPlayer.Character
               charV.HumanoidRootPart.Velocity = Vector3.new(0,0,0)

               if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-flySpeed)
               end;
               if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-flySpeed,0,0)
               end;
               if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,flySpeed)
               end;
               if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(flySpeed,0,0)
               end;
               if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.R) then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,flySpeed/1.5,0)
               end;
               if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.F) then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-flySpeed/1.5,0)
               end;
           end)
           task.wait()
       end
   end
end))

while true do
   wait(0.1)
   pcall(function()
       local humanoid = game.Players.LocalPlayer.Character.Humanoid
       humanoid.WalkSpeed = ws
       humanoid.JumpPower = jp
   end)
end