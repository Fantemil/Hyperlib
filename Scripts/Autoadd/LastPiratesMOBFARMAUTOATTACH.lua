local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/astraln/SentinelUILIB/main/UI.lua', true))()

local win = Library:Window('Last Pirates')

local ss = win:Tab("MAIN")
local sss = win :Tab("MISC")

local Mobs_Table = {}
for i,v in pairs(game:GetService("Workspace")["Mon in game"].npc:GetChildren()) do
    if v:IsA("Model") and not table.find(Mobs_Table,v.Name) then
        table.insert(Mobs_Table,v.Name)
    end
end

    local tool_table = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(tool_table,v.Name)
        end
end
SelectedWeapon = nil

    ss:Dropdown("Select Tool",tool_table,function(SelectedOption)
        SelectedWeapon = SelectedOption
    end)

    ss:Toggle("AutoEquip",false,function(t)
                  Equip = t
              while Equip do wait()
                  pcall(function()
                  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
              if v.Name == SelectedWeapon then
  game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
              end
                  end
                 
                  end)
              end

    end)

ss:Dropdown("Mobs To Farm",Mobs_Table,function(t)
npc = t 
end)

ss:Toggle("Autofarm Mobs",false,function(t)

    pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
        if Enabled then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end)
end)

Enabled = t
while Enabled do wait()
    pcall(function()
for i,v in pairs(game:GetService("Workspace")["Mon in game"].npc:GetChildren()) do
if v.Name == npc and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
  repeat
      wait()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0,Distance,0),v.HumanoidRootPart.Position)
until v.Humanoid.Health <= 0 or Enabled == false
end
end
end)
end
end)



Distance = 5

ss:Toggle("Auto Attack",false,function(t)
    attack =t
    while attack do wait()
        pcall(function()
local virtualUser = game:GetService('VirtualUser')
virtualUser:CaptureController()
wait()
virtualUser:Button1Down(Vector2.new(), CFrame.new())
wait()
virtualUser:Button1Down(Vector2.new(), CFrame.new())
end)
end
end)

sss:Button("COPY DISCORD LINK",function(t)
setclipboard("https://discord.gg/wynPh2mvs3")
end)

sss:Button("SCRIPT MADE BY VEP")
sss:Button("UI MADE BY ASTRAL")