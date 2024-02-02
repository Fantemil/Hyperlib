isfolder = isfolder or error("Filesystem error!")
writefile = writefile or error "Filesystem error!"
local rp = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local c = rp.Parent
local bp = game:GetService("Players").LocalPlayer.Backpack
local p = bp.Parent
local humanoid = c.Humanoid

if not isfolder("CraftHub") then
    local set = {AlertOnErrors = true, Animations = false, WalkSpeed = 35}
    local content = game:GetService("HttpService"):JSONEncode(set)
    makefolder("CraftHub")
    writefile("CraftHub/Settings.json", content)
end
task.wait(.15)
local settings =
    game:GetService("HttpService"):JSONDecode(
    readfile("CraftHub/Settings.json")
)
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local Window =
    OrionLib:MakeWindow(
    {
        Name = "CraftHub",
        HidePremium = false,
        SaveConfig = false,
        ConfigFolder = "OrionTest",
        IntroText = "CraftHub || Eternal CraftWars Script"
    }
)
function notify(message, title, time)
    OrionLib:MakeNotification(
        {
            Name = tostring(title),
            Content = tostring(message),
            Image = "rbxassetid://4483345998",
            Time = tonumber(time)
        }
    )
end
function kill(enemy)
    if enemy:FindFirstChild("EnemyMain") then
    humanoid:UnequipTools()
    
    for i, v in bp:GetChildren() do
        if v.Name:lower():find("sword") and v:FindFirstChild("RemoteFunction") then
            v.Parent = c
            sword = v
        end
    end
    rp.CFrame = enemy:FindFirstChildWhichIsA("Part").CFrame + Vector3.new(0, 25, 0)
    local args = {
        [1] = "hit",
        [2] = {
            [1] = enemy.Humanoid,
            [2] = enemy.Humanoid.Health
        }
    }

   if sword then sword.RemoteFunction:InvokeServer(unpack(args))
   end
  end
end
local MainTab =
    Window:MakeTab(
    {
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
MainTab:AddParagraph('Note!', 'Make sure to have the item "Sword" in your backpack and any pickaxe.')
MainTab:AddToggle({
    Name = 'Auto mine ores',
    Default = false,
    Callback = function(va)
    val = va workspace.SpawnedOres.ChildAdded:Connect(function(v)
     task.delay(.35, function()
        for i, v in c:GetChildren() do
                if v.Name:lower():find("pickaxe") then
                    pickaxe = v
                end
            end
            if not pickaxe then
                for i, v in bp:GetChildren() do
                    if v.Name:lower():find("pickaxe") then
                        pickaxe = v
                        pickaxe.Parent = c
                    end
                end
            end
            task.wait(.25)
            rp.CFrame = v:FindFirstChildWhichIsA("Part").CFrame
                task.spawn(
                    function()
                        local args = {
                            [1] = "hit",
                            [2] = {
                                [1] = v.Ore,
                                [2] = v.Ore.Health
                            }
                        }

                       if pickaxe then pickaxe.RemoteFunction:InvokeServer(unpack(args))
                       end
                      end)
      end)
     end)
    end
})
MainTab:AddToggle({
    Name = 'Auto kill mobs',
    Default = false,
    Callback = function(value)
     lel = value
     workspace.ChildAdded:Connect(function(v)
     if lel then
      task.delay(.5, function()
       kill(v)
       end)
      end
     end)
    end
})
MainTab:AddButton(
    {
        Name = "Mine all ores",
        Callback = function()
            for i, v in c:GetChildren() do
                if v.Name:lower():find("pickaxe") then
                    pickaxe = v
                end
            end
            if not pickaxe then
                for i, v in bp:GetChildren() do
                    if v.Name:lower():find("pickaxe") then
                        pickaxe = v
                        pickaxe.Parent = c
                    end
                end
            end
            task.wait(.25)
            for i, v in workspace.SpawnedOres:GetChildren() do
                rp.CFrame = v:FindFirstChildWhichIsA("Part").CFrame
                task.spawn(
                    function()
                        local args = {
                            [1] = "hit",
                            [2] = {
                                [1] = v.Ore,
                                [2] = v.Ore.Health
                            }
                        }

                       if pickaxe then pickaxe.RemoteFunction:InvokeServer(unpack(args))
                       end
                        task.wait()
                    end
                )
            end
        end
    }
)
MainTab:AddButton(
    {
        Name = "Kill all mobs",
        Callback = function()
            for i, v in workspace:GetChildren() do
                if v:FindFirstChild("EnemyMain") then
                    kill(v)
                end
            end
        end
    }
)
p.CharacterAdded:Connect(function(char)
task.delay(.25, function()
humanoid = char:WaitForChild("Humanoid")
rp = char.HumanoidRootPart
humanoid.WalkSpeed = settings.WalkSpeed
bp = p.Backpack
c = char
end)
end)


