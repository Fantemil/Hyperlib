

--[[ USE A AUTO CLICKER OR SOMETHINGS ]]--

local player = game.Players.LocalPlayer

local Last = nil
local Auto = false
local Target = nil
local NPCTAR = "Peasant"
local UnTake = "0 / 100"


local Screen = Instance.new("ScreenGui")
Screen.Parent = player.PlayerGui
Screen.ResetOnSpawn = false


local One = Instance.new("TextButton", Screen)
One.Size = UDim2.new(0, 100, 0, 30)
One.Position = UDim2.new(0, 250, 0, 80)
One.Active = true
One.Draggable = true
One.Text = "Auto farm (NPC "..NPCTAR..")"
One.TextScaled = true
One.BackgroundTransparency = 0
One.BackgroundColor3 = Color3.new(1, 0, 0)
One.TextColor3 = Color3.new(1, 1, 1)
One.MouseButton1Click:Connect(function()
    
    if Auto == false then
        Auto = true
        One.BackgroundColor3 = Color3.new(0, 1, 0)
    else
        Auto = false
        One.BackgroundColor3 = Color3.new(1, 0, 0)
    end
    
end)

local Border = Instance.new("UICorner", One)


local IKS = true


local function FindTarget()
    if IKS == true then
        for _, BB in game.Workspace.NPCS:GetChildren() do
            if BB.name == NPCTAR then
                Target = BB
                break
                
            end
            
        end
        
      
        
    end
end



player.Character.Humanoid.Changed:Connect(function()
    if player.Character.Humanoid.Health == 0 then
        Auto = false
        wait()
        Auto = true
    end
    
end)




while wait() do
    
    if Auto == true then
        
        FindTarget()
        IKS = false
        
        for i, BB in player.Backpack:GetChildren() do
            if BB:IsA("Tool") then
                player.Character.Humanoid:EquipTool(BB)
                
            end
            
        end
        
        if Target == nil then
            
        else
                
            if Target.Head.MobGUI.GUI.HealthGUI.HealthNum.Text == UnTake then
                IKS = true
                Target:Destroy()
                Target = nil
                FindTarget()
                    
            end
            
            player.Character:WaitForChild("HumanoidRootPart").CFrame = Target:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
        
        end
        
        
        
        
      
    end
    
end
