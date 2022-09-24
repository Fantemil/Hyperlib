--Game is really boring 

for i,v in next, game.CoreGui:GetChildren() do
    if v.Name == "ScreenGui" and v.ImageButton then
        v:Destroy()
    end
    end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/Ui-Libraries/main/uwuware", true))()

local Window = Library:CreateWindow"Stand Upright Rebooted"


local function getitem()
    local dist, thing = math.huge
    for _,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
        if v:IsA "Tool" and v.Parent.Name == "Items" then
            local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.GripPos).magnitude
            if mag < dist then 
                dist = mag 
                thing = v 
            end
        end
    end
    return thing
end


Window:AddToggle({text = "Grab Items", flag = "toggle", state = false, callback = function(a)
    aa = a
    while aa do task.wait()
        pcall(function()

    local Time = 0.5
    local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = getitem().Handle.CFrame})
                                                    
                                                    
    tween:Play()
    tween.Completed:Wait(E)
    end)
end
    end})

    Window:AddButton({text = "Use Charged Arrow", flag = "button", callback = function()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Charged Arrow"))
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Charged Arrow").Use:FireServer()

        end})


    Window:AddButton({text = "Use Stand Arrow", flag = "button", callback = function()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Stand Arrow"))
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stand Arrow").Use:FireServer()

        end})

        Window:AddButton({text = "Use Rokakaka", flag = "button", callback = function()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Rokakaka"))
            game:GetService("Players").LocalPlayer.Character.Rokakaka.Use:FireServer()
    
            end})


    Window:AddFolder"Credits"

Window:AddLabel({text = "Made by Isacc#1555"})

    Library:Init()