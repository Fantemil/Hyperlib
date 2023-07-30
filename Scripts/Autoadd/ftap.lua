local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = 1000
 
w.ChildAdded:Connect(function(model)
    if model.Name == "GrabParts" then
        local part_to_impulse = model["GrabPart"]["WeldConstraint"].Part1
 
        if part_to_impulse then
            print("Part found!")
 
            local inputObj
            local velocityObj = Instance.new("BodyVelocity", part_to_impulse)
            
            model:GetPropertyChangedSignal("Parent"):Connect(function()
                if not model.Parent then
                    if userinputs:GetLastInputType() == Enum.UserInputType.MouseButton2 then
                        print("Launched!")
                        velocityObj.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        velocityObj.Velocity = workspace.CurrentCamera.CFrame.lookVector * strength
                        d:AddItem(velocityObj, 1)
                    elseif userinputs:GetLastInputType() == Enum.UserInputType.MouseButton1 then
                        velocityObj:Destroy()
                        print("Cancel Launch!")
                    else
                        velocityObj:Destroy()
                        print("No two keys pressed!")
                    end
                end
            end)
        end
    end
end)

local TestingGUI = Instance.new("ScreenGui")
local MainGUI = Instance.new("Frame")
local PlayerTP_Input = Instance.new("TextBox")
local PlayerTP_Teleport = Instance.new("TextButton")
--Properties:
TestingGUI.Name = "Testing GUI"
TestingGUI.Parent = game.CoreGui
 
MainGUI.Name = "MainGUI"
MainGUI.Parent = TestingGUI
MainGUI.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
MainGUI.BorderColor3 = Color3.new(0, 0, 0)
MainGUI.BorderSizePixel = 3
MainGUI.Position = UDim2.new(0.295202941, 0, 0.344621539, 0)
MainGUI.Size = UDim2.new(0, 332, 0, 155)
MainGUI.Active = true
MainGUI.Draggable = true
 
PlayerTP_Input.Name = "PlayerTP_Input"
PlayerTP_Input.Parent = MainGUI
PlayerTP_Input.BackgroundColor3 = Color3.new(0, 0, 0)
PlayerTP_Input.BackgroundTransparency = 0.5
PlayerTP_Input.BorderColor3 = Color3.new(0, 0, 0)
PlayerTP_Input.Size = UDim2.new(0, 332, 0, 50)
PlayerTP_Input.Font = Enum.Font.SourceSans
PlayerTP_Input.Text = ""
PlayerTP_Input.TextColor3 = Color3.new(1, 1, 1)
PlayerTP_Input.TextSize = 14
 
PlayerTP_Teleport.Name = "PlayerTP_Teleport"
PlayerTP_Teleport.Parent = MainGUI
PlayerTP_Teleport.BackgroundColor3 = Color3.new(0, 0, 0)
PlayerTP_Teleport.BackgroundTransparency = 0.5
PlayerTP_Teleport.BorderColor3 = Color3.new(0, 0, 0)
PlayerTP_Teleport.Position = UDim2.new(0, 0, 0.677419245, 0)
PlayerTP_Teleport.Size = UDim2.new(0, 332, 0, 50)
PlayerTP_Teleport.Font = Enum.Font.SourceSans
PlayerTP_Teleport.Text = "Teleport To Player"
PlayerTP_Teleport.TextColor3 = Color3.new(1, 1, 1)
PlayerTP_Teleport.TextSize = 14
PlayerTP_Teleport.MouseButton1Click:connect(function()
    local tp_namedplayer = PlayerTP_Input.Text
    local tp_player = game:GetService("Players")[tp_namedplayer]
    local PLR = game:GetService("Players").LocalPlayer
    local p = PlayerTP_Input.Text
 
    if tp_player then
        for i = 1,1 do
        wait(.08)
        PLR.Character.HumanoidRootPart.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -1)
        end
    end
end)