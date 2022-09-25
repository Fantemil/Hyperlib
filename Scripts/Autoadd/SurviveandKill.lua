--Ghostmode65
--Kill the Killers in Area 51!!
--More Coming
--Kill Yourself to fix screen

local Main = Instance.new("ScreenGui")
local open = Instance.new("Frame")
local Open = Instance.new("TextButton")
local MainGui = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Spawn = Instance.new("TextButton")
local Chamber = Instance.new("TextButton")
local CommandArea = Instance.new("TextButton")
local Camras = Instance.new("TextButton")
local Sniper = Instance.new("TextButton")
local Rifle = Instance.new("TextButton")
local RayGun = Instance.new("TextButton")
local AssaultGun = Instance.new("TextButton")
local Alarm = Instance.new("TextButton")
local KeyRoom = Instance.new("TextButton")
local MoreToCome = Instance.new("TextButton")
local WalkSpeed = Instance.new("TextBox")
local Jump = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")

--Properties:

Main.Name = "Main"
Main.Parent = game.CoreGui
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

open.Name = "open"
open.Parent = Main
open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open.Position = UDim2.new(0.0826709047, 0, 0.106122464, 0)
open.Size = UDim2.new(0, 92, 0, 65)

Open.Name = "Open"
Open.Parent = open
Open.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Open.Position = UDim2.new(-0.0652173758, 0, 0, 0)
Open.Size = UDim2.new(0, 98, 0, 65)
Open.Font = Enum.Font.SourceSans
Open.Text = "Ghostmode"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextSize = 20.000
Open.Draggable = true
Open.MouseButton1Down:connect(function()
MainGui.Visible = true
open.Visible = false
end)

MainGui.Name = "MainGui"
MainGui.Parent = Main
MainGui.Active = true
MainGui.BackgroundColor3 = Color3.fromRGB(64, 156, 255)
MainGui.BackgroundTransparency = 0.200
MainGui.BorderSizePixel = 0
MainGui.Position = UDim2.new(-0.000580700231, 0, 0.259183675, 0)
MainGui.Size = UDim2.new(0, 195, 0, 316)
MainGui.Visible = false
MainGui.Draggable = true

ScrollingFrame.Parent = MainGui
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(28, 218, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.Position = UDim2.new(0.00277040922, 0, 0.091772154, 0)
ScrollingFrame.Size = UDim2.new(0, 194, 0, 287)

Spawn.Name = "Spawn"
Spawn.Parent = ScrollingFrame
Spawn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Spawn.BackgroundTransparency = 1.000
Spawn.Size = UDim2.new(0, 178, 0, 41)
Spawn.Font = Enum.Font.SourceSans
Spawn.Text = "Spawn"
Spawn.TextColor3 = Color3.fromRGB(0, 0, 0)
Spawn.TextSize = 14.000
Spawn.MouseButton1Down:connect(function()
local x = 324.54
local y = 511.5
local z = 419.38
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

Chamber.Name = "Chamber"
Chamber.Parent = ScrollingFrame
Chamber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Chamber.BackgroundTransparency = 1.000
Chamber.Position = UDim2.new(-0.00523560215, 0, 0.0648734197, 0)
Chamber.Size = UDim2.new(0, 178, 0, 41)
Chamber.Font = Enum.Font.SourceSans
Chamber.Text = "Pack a Punch"
Chamber.TextColor3 = Color3.fromRGB(0, 0, 0)
Chamber.TextSize = 14.000
Chamber.MouseButton1Down:connect(function()
local x = 281
local y = 325.5
local z = 784
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

CommandArea.Name = "CommandArea"
CommandArea.Parent = ScrollingFrame
CommandArea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandArea.BackgroundTransparency = 1.000
CommandArea.Position = UDim2.new(-0.00523560215, 0, 0.129746839, 0)
CommandArea.Size = UDim2.new(0, 178, 0, 41)
CommandArea.Font = Enum.Font.SourceSans
CommandArea.Text = "CommandArea"
CommandArea.TextColor3 = Color3.fromRGB(0, 0, 0)
CommandArea.TextSize = 14.000
CommandArea.MouseButton1Down:connect(function()
local x = 138.42
local y = 333.5
local z = 535.41
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)


Camras.Name = "Camras"
Camras.Parent = ScrollingFrame
Camras.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Camras.BackgroundTransparency = 1.000
Camras.Position = UDim2.new(-0.00523560215, 0, 0.259493679, 0)
Camras.Size = UDim2.new(0, 178, 0, 41)
Camras.Font = Enum.Font.SourceSans
Camras.Text = "Camras"
Camras.TextColor3 = Color3.fromRGB(0, 0, 0)
Camras.TextSize = 14.000
Camras.MouseButton1Down:connect(function()
local x = 91.2
local y = 314
local z = 172.4
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)


Sniper.Name = "Sniper"
Sniper.Parent = ScrollingFrame
Sniper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sniper.BackgroundTransparency = 1.000
Sniper.Position = UDim2.new(-0.00523560215, 0, 0.194620252, 0)
Sniper.Size = UDim2.new(0, 178, 0, 41)
Sniper.Font = Enum.Font.SourceSans
Sniper.Text = "Sniper"
Sniper.TextColor3 = Color3.fromRGB(0, 0, 0)
Sniper.TextSize = 14.000
Sniper.MouseButton1Down:connect(function()
local x = 184.08
local y = 306.5
local z = 176.32
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

Rifle.Name = "Rifle"
Rifle.Parent = ScrollingFrame
Rifle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rifle.BackgroundTransparency = 1.000
Rifle.Position = UDim2.new(-0.0104439342, 0, 0.389240444, 0)
Rifle.Size = UDim2.new(0, 178, 0, 41)
Rifle.Font = Enum.Font.SourceSans
Rifle.Text = "Rifle"
Rifle.TextColor3 = Color3.fromRGB(0, 0, 0)
Rifle.TextSize = 14.000
Rifle.MouseButton1Down:connect(function()
local x = 122
local y = 323.5
local z = 699
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

RayGun.Name = "RayGun"
RayGun.Parent = ScrollingFrame
RayGun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RayGun.BackgroundTransparency = 1.000
RayGun.Position = UDim2.new(0, 0, 0.324367076, 0)
RayGun.Size = UDim2.new(0, 178, 0, 41)
RayGun.Font = Enum.Font.SourceSans
RayGun.Text = "RayGun"
RayGun.TextColor3 = Color3.fromRGB(0, 0, 0)
RayGun.TextSize = 14.000
RayGun.MouseButton1Down:connect(function()
local x = 231.32
local y = 373.5
local z = 39.78
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

AssaultGun.Name = "AssaultGun"
AssaultGun.Parent = ScrollingFrame
AssaultGun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AssaultGun.BackgroundTransparency = 1.000
AssaultGun.Position = UDim2.new(-0.00523560215, 0, 0.501582265, 0)
AssaultGun.Size = UDim2.new(0, 178, 0, 41)
AssaultGun.Font = Enum.Font.SourceSans
AssaultGun.Text = "AssaultGun"
AssaultGun.TextColor3 = Color3.fromRGB(0, 0, 0)
AssaultGun.TextSize = 14.000
AssaultGun.MouseButton1Down:connect(function()
local x = 112.07
local y = 335.5
local z = 556
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

Alarm.Name = "Alarm"
Alarm.Parent = ScrollingFrame
Alarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Alarm.BackgroundTransparency = 1.000
Alarm.Position = UDim2.new(-0.00523560215, 0, 0.446202517, 0)
Alarm.Size = UDim2.new(0, 178, 0, 41)
Alarm.Font = Enum.Font.SourceSans
Alarm.Text = "Killers Ignore You"
Alarm.TextColor3 = Color3.fromRGB(0, 0, 0)
Alarm.TextSize = 14.000
Alarm.MouseButton1Down:connect(function()
Local = game:GetService('Players').LocalPlayer
Char  = Local.Character
touched,tpdback = false, false
Local.CharacterAdded:connect(function(char)
    if script.Disabled ~= true then
        wait(.25)
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end
end)
game:GetService('UserInputService').InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.Equals then
        if script.Disabled ~= true then
            script.Disabled = true
            print'you may re-execute'
        end
    end
end)
box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(10,1,10)
box.Position = Vector3.new(0,10000,0)
box.Touched:connect(function(part)
    if (part.Parent.Name == Local.Name) then
        if touched == false then
            touched = true
            function apply()
                if script.Disabled ~= true then
                    no = Char.HumanoidRootPart:Clone()
                    wait(.25)
                    Char.HumanoidRootPart:Destroy()
                    no.Parent = Char
                    Char:MoveTo(loc)
                    touched = false
                end end
            if Char then
                apply()
            end
        end
    end
end)
repeat wait() until Char
loc = Char.HumanoidRootPart.Position
Char:MoveTo(box.Position + Vector3.new(0,.5,0))
end)

KeyRoom.Name = "KeyRoom"
KeyRoom.Parent = ScrollingFrame
KeyRoom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyRoom.BackgroundTransparency = 1.000
KeyRoom.Position = UDim2.new(-8.0963131e-05, 0, 0.566455662, 0)
KeyRoom.Size = UDim2.new(0, 178, 0, 41)
KeyRoom.Font = Enum.Font.SourceSans
KeyRoom.Text = "ShutGun"
KeyRoom.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyRoom.TextSize = 14.000
KeyRoom.MouseButton1Down:connect(function()
local x = 143
local y = 333
local z = 500
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

MoreToCome.Name = "More To Come"
MoreToCome.Parent = ScrollingFrame
MoreToCome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MoreToCome.BackgroundTransparency = 1.000
MoreToCome.Position = UDim2.new(-0.000868789852, 0, 0.630928695, 0)
MoreToCome.Size = UDim2.new(0, 178, 0, 41)
MoreToCome.Font = Enum.Font.SourceSans
MoreToCome.Text = "Remove All Doors"
MoreToCome.TextColor3 = Color3.fromRGB(0, 0, 0)
MoreToCome.TextSize = 14.000
MoreToCome.MouseButton1Down:connect(function()
game.Workspace.AREA51.Doors.Vertical.ToComptersRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.EntranceOfArea.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ComputersRoomRight.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ComputersRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ComputersRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToMultipleRooms.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToMedicAndMeet.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ElectricityRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToRadioactive.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ComputersRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ComputersRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.CartonsRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToTeleporterRight.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TeleporterRoomRight.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TeleporterRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToTeleporterLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToSurveillanceCams.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToMenageRoom.Door.Door:Destroy()
game.Workspace.AREA51.ExecutionRoom.Door.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.RobotsRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.SmallTrapRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.UFORoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TrapRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TrapRoomRight.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToAlienRoom.Door.DoorDestroy()
game.Workspace.AREA51.Doors.Horizontal.ToUndergroundRoom.Door.DoorDestroy()
game.Workspace.AREA51.Doors.Horizontal.ToExperimentRoom.Door.DoorDestroy()
game.Workspace.AREA51.Doors.Vertical.ToJails.Door.DoorDestroy()
game.Workspace.AREA51.JailsRoom.RotateDoor.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToTrainRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToNewRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToOtherNewRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TrainRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToRayGunElevatorRoom.Door.Door:Destroy()
end)

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = ScrollingFrame
WalkSpeed.BackgroundColor3 = Color3.fromRGB(107, 124, 0)
WalkSpeed.BackgroundTransparency = 0.300
WalkSpeed.Position = UDim2.new(0.0463917516, 0, 0.714538932, 0)
WalkSpeed.Size = UDim2.new(0, 75, 0, 47)
WalkSpeed.Font = Enum.Font.SourceSans
WalkSpeed.Text = "WalkSpeed"
WalkSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed.TextSize = 14.000

Jump.Name = "Jump"
Jump.Parent = ScrollingFrame
Jump.BackgroundColor3 = Color3.fromRGB(112, 129, 0)
Jump.BackgroundTransparency = 0.300
Jump.Position = UDim2.new(0.474226803, 0, 0.714538932, 0)
Jump.Size = UDim2.new(0, 75, 0, 47)
Jump.Font = Enum.Font.SourceSans
Jump.Text = "Jump"
Jump.TextColor3 = Color3.fromRGB(0, 0, 0)
Jump.TextSize = 14.000

TextLabel.Parent = MainGui
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(-0.0126142064, 0, 0.00316455704, 0)
TextLabel.Selectable = true
TextLabel.Size = UDim2.new(0, 197, 0, 29)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Code 81975"
TextLabel.TextColor3 = Color3.fromRGB(194, 8, 207)
TextLabel.TextSize = 20.000