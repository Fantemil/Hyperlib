local players = game:GetService("Players")
local plr = players.LocalPlayer
local Tycoon

plr.Idled:connect(function() game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) end)

for i,v in pairs(workspace.Tycoons:GetChildren()) do 
    if string.find(v.Claim.Sign.Label.Text, plr.Name) then 
        Tycoon = v      
    end
end

local SG = Instance.new("ScreenGui", game.CoreGui)
local Button = Instance.new("TextButton", SG)
Button.Font = Enum.Font.GothamBold
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Button.BorderSizePixel = 0 
Button.Size = UDim2.new(0, 210, 0, 48)
Button.AnchorPoint = Vector2.new(0.02, 0.5)
Button.Position = UDim2.new(0.02, 0, 0.5, 0)
Button.TextSize = 22
Button.Text = "Enable"
local Label = Instance.new("TextLabel", SG)
Label.Font = Enum.Font.GothamBold
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Label.BorderSizePixel = 0 
Label.Size = UDim2.new(0, 210, 0, 40)
Label.AnchorPoint = Vector2.new(0.02, 0.455)
Label.TextSize = 14
Label.Position = UDim2.new(0.02, 0, 0.455, 0)
Label.TextWrapped = true
Label.Text = "Ice Factory Tycoon Autofarm | made by czopek#7877"

Button.Activated:Connect(function()
    if Button.Text == "Enable" then 
        Button.Text = "Disable"
    else 
        Button.Text = "Enable"
    end
end)

function Touch(Part)
    firetouchinterest(plr.Character.HumanoidRootPart, Part, 0)
    firetouchinterest(plr.Character.HumanoidRootPart, Part, 1)
end

local s,e = pcall(function()
    while true and task.wait() do 
        if Button.Text == "Disable" then 
            
            fireproximityprompt(Tycoon.PackageButton.ProximityPrompt)
            
            Touch(workspace.Obbies.HardObby.Reward)
            Touch(workspace.Obbies.EasyObby.Reward)
            
            for i,v in pairs(Tycoon.Purchases.IceCream:GetChildren()) do 
                Touch(v)
            end
            
            
            if (plr.Character.HumanoidRootPart.Position - Tycoon.PackageButton.Position).Magnitude > 14 then 
               plr.Character.HumanoidRootPart.CFrame = CFrame.new(Tycoon.PackageButton.Position) + Vector3.new(0, 1, 0) 
            end
                
            for i,v in next, Tycoon.Ice:GetChildren() do 
                if v:IsA("MeshPart") and not v:FindFirstChild("Sticks") and v.Name ~= "Package" then 
                     v.CFrame = Tycoon.Production.CFrame
                     
                elseif v:IsA("MeshPart") and v:FindFirstChild("Sticks") and v.Name ~= "Package" then 
                     v.CFrame = Tycoon.Packager.CFrame
                     
                elseif v:IsA("MeshPart") and not v:FindFirstChild("Sticks") and v.Name == "Package" then 
                     v.CFrame = Tycoon.Cash.CFrame
                     
                end
                task.wait()
            end
        end
    end
end)

if e then warn(e) end 