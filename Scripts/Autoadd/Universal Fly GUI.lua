--[[
 --MADE BY MY FRIEND
]]

local Fly = false
local FlySpeed = 25

--[[
    da gui
]]

local FlyGui = Instance.new('ScreenGui')
local Frame = Instance.new('Frame')
local TextButton = Instance.new('TextButton')

FlyGui.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui')
FlyGui.Name = 'FlyGui'

Frame.Parent = FlyGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.25, 0, 0.25, 0)
TextButton.Size = UDim2.new(0.5, 0, 0.5, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = 'Fly'
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 20

--[[
    mostly important the "functions"
]]

function FlyToggle()
    if Fly == false then
        Fly = true
        TextButton.Text = 'Stop'
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
        while Fly == true do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, FlySpeed, 0)
            wait()
        end
    else
        Fly = false
        TextButton.Text = 'Fly'
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    end
end

--[[
    idk
]]

TextButton.MouseButton1Down:Connect(FlyToggle)