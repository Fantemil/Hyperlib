print(":pray:")

local rigtype = game.Players.LocalPlayer.Character.Humanoid.RigType -- did we really have to make 2 rig types?
print(rigtype)


-->> ScreenGui <<--
local gui = Instance.new("ScreenGui") 
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer.PlayerGui 

-->> Frame <<--
local frame = Instance.new("Frame") 
local UICorner = Instance.new("UICorner") 
frame.Position = UDim2.new(0,127,0,34)
frame.Size = UDim2.new(0,270,0,100) 
frame.Parent = gui 
UICorner.Parent = frame
frame.Active = true 
frame.Selectable = true 
frame.Draggable = true
-- active selectable and draggable is to make the gui move 


-->> On Button <<--
local Tb = Instance.new("TextButton") 
local UICorner2  = Instance.new("UICorner") 
Tb.Position = UDim2.new(0,0,0,50) 
Tb.Size = UDim2.new(0,135,0,50) 
Tb.TextColor3 = Color3.fromRGB(255,255,255) 
Tb.BackgroundColor3  =  Color3.fromRGB(50,50,50) 
Tb.Text = "On" 
Tb.Parent = frame 
UICorner2.Parent = Tb   

-->> Off Button <<--
local Tb2 = Instance.new("TextButton") 
local UICorner3 = Instance.new("UICorner") 
Tb2.Position = UDim2.new(0,135,0,50) 
Tb2.Size = UDim2.new(0,135,0,50) 
Tb2.TextColor3 = Color3.fromRGB(255,255,255) 
Tb2.BackgroundColor3  =  Color3.fromRGB(50,50,50) 
Tb2.Text = "Off" 
Tb2.Parent = frame 
UICorner3.Parent = Tb2


Tb.MouseButton1Click:Connect(function()
    -------->> Flying Part Thing <<-----------
local part = Instance.new("Part")
part.Parent = game.Players.LocalPlayer.Character
part.Size = Vector3.new(25,1.75,25)
part.Anchored = true
part.Transparency = 1


while wait(0.1) do 
    if rigtype == Enum.HumanoidRigType.R6 then
        part.CFrame = game.Players.LocalPlayer.Character["Left Leg"].CFrame
        else
            
            part.CFrame = game.Players.LocalPlayer.Character.LeftLowerLeg.CFrame
    
    end
end
part.Rotation = Vector3.new(0,0,0)
end)


local TextBox = Instance.new("TextBox")
local UICorner4 = Instance.new("UICorner")
TextBox.Position = UDim2.new(0,0,0,0)
TextBox.Size = UDim2.new(0,50,0,50)
TextBox.BackgroundColor3 = Color3.FromRGB(0,0,0)
UICorner4.Parent =  TextBox
TextBox.Parent = frame 






Tb2.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Part:Destroy()
end)


