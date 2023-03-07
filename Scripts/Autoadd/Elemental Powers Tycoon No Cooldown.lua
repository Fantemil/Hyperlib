-- Amph#5896

local player = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")
local toolList = {}
_G.goGO = true

local function collideWith(button) -- Acts as another firetouchinterest
    local oldSize = button.Size
    local oldT = button.Transparency
    local oldCast = button.CastShadow
    local oldCollide = button.CanCollide

    button.CastShadow = false
    button.CanCollide = false
    button.Transparency = 1
    task.wait()
    button.Size = Vector3.new(10000, 10000, 10000)
    task.wait()
    button.Size = oldSize
    button.CastShadow = oldCast
    button.CanCollide = oldCollide
    button.Transparency = oldT
end

UIS.InputBegan:Connect(function(k)
 if k.KeyCode == Enum.KeyCode.Q then
  for i, v in pairs(player.Backpack:GetChildren()) do
   if not string.find(v.Name, "Sword") or not string.find(v.Name, "Blade") or not string.find(v.Name, "Saber") or not string.find(v.Name, "Saber") then
    local name = v.Name
    v.Parent = player.Character task.wait()
   
    local args = {[1] = game:GetService("ReplicatedStorage").Magic:FindFirstChild(v.Name, true).Parent.Name, [2] = v.Name, [3] = {["Camera"] = workspace.CurrentCamera.CFrame, ["Mouse"] = player:GetMouse().Hit.Position}}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DoMagic"):FireServer(unpack(args)) task.wait(0.1)
    
    player.Character[name].Parent = player.Backpack
   end
  end
 end
end)

while _G.goGO do task.wait(1)
 for i, v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do 
  for i, v1 in pairs(v:GetChildren()) do
   if string.find(v1.Name, "Ability") then
    collideWith(v1.Button)
   end
  end
 end
end