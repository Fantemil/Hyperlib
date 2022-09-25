local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Ninja Blade - Candy Party", 5013109572)


local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}


local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Auto Farm")


section1:addToggle("Start Farm", nil, function(state)
  getgenv().autofarm = state
end)

coroutine.wrap(function()
  while wait() do
      if getgenv().autofarm == true then
          pcall(function()
              for i,v in pairs(game.Workspace.Monsters:GetChildren()) do
                      if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                          repeat
                              wait()
                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                          until v.Humanoid.Health <= 0 or getgenv().autofarm == false
                  end
              end
          end)
      end
  end
end)()

section1:addToggle("Auto Attack", nil, function(state)
   getgenv().atk = state

while wait() do
       if getgenv().atk == true then
           local args = {
               [1] = "PlayerCharacterUseSkill",
               [2] = 1
           }
           
           game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
       end
   end
end)

game:GetService("RunService").RenderStepped:Connect(function()
  if autofarm == true then
      game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
  end
end)

section1:addKeybind("Hide GUI", N, function(keycall)
  if keycall then
      venyx:toggle()
  end
end)