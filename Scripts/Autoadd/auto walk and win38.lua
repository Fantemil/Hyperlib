if game.PlaceId ~= 6839171747 or game.ReplicatedStorage.GameData.Floor.Value ~= "Rooms" then
	game.StarterGui:SetCore("SendNotification", { Title = "Invalid Place"; Text = "The game detected appears to not be rooms. Please execute this while in rooms!" })
 
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()
 
	return
elseif workspace:FindFirstChild("PathFindPartsFolder") then
	game.StarterGui:SetCore("SendNotification", { Title = "Warning"; Text = "If you are having issues and the bot is broken, please contact me! geodude#2619" })
 
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()
 
	return
end
 
local PathfindingService = game:GetService("PathfindingService")
local VirtualInputManager = game:GetService('VirtualInputManager')
local LocalPlayer = game.Players.LocalPlayer
local LatestRoom = game.ReplicatedStorage.GameData.LatestRoom
 
local Cooldown = false
 
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
 
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = ScreenGui
 
TextLabel.Size = UDim2.new(0,350,0,100)
TextLabel.TextSize = 48
TextLabel.TextStrokeColor3 = Color3.new(1,1,1)
TextLabel.TextStrokeTransparency = 0
TextLabel.BackgroundTransparency = 1
 
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
end
 
local Folder = Instance.new("Folder")
Folder.Parent = workspace
Folder.Name = "PathFindPartsFolder"
 
if LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules:FindFirstChild("A90") then
    LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.A90.Name = "lol" -- Fuck you A90
end
 
function getLocker()
    local Closest
 
    for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
        if v.Name == "Rooms_Locker" then
            if v:FindFirstChild("Door") and v:FindFirstChild("HiddenPlayer") then
                if v.HiddenPlayer.Value == nil then
                    if v.Door.Position.Y > -3 then -- Prevents going to the lower lockers in the room with the bridge 
                        if Closest == nil then
                            Closest = v.Door
                        else
                            if (LocalPlayer.Character.HumanoidRootPart.Position - v.Door.Position).Magnitude < (Closest.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                                Closest = v.Door
                            end
                        end
                    end
                end
            end
        end
    end
    return Closest
end
 
function getPath()
    local Part
 
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity and Entity.Main.Position.Y > -4 then
        Part = getLocker()
    else
        Part = workspace.CurrentRooms[LatestRoom.Value].Door.Door
    end
    return Part
end
 
LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
    TextLabel.Text = "Room: "..math.clamp(LatestRoom.Value, 1,1000)
 
    if LatestRoom.Value ~= 1000 then
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.Scriptable
    else
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.KeyboardMouse
 
        Folder:ClearAllChildren()
 
        local Sound = Instance.new("Sound")
        Sound.Parent = game.SoundService
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Volume = 3
        Sound.PlayOnRemove = true
        Sound:Destroy()
 
        game.StarterGui:SetCore("SendNotification", { Title = "youtube.com/geoduude"; Text = "Thank you for using my script!" })
        return
    end
end)
 
game:GetService("RunService").RenderStepped:connect(function()
    LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    LocalPlayer.Character.Collision.CanCollide = false
    LocalPlayer.Character.Collision.Size = Vector3.new(8,LocalPlayer.Character.Collision.Size.Y,8)
 
    LocalPlayer.Character.Humanoid.WalkSpeed = 21
 
    local Path = getPath()
 
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity then
        if Path then
            if Path.Parent.Name == "Rooms_Locker" then
                if Entity.Main.Position.Y > -4 then
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Path.Position).Magnitude < 2 then
                        if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                            fireproximityprompt(Path.Parent.HidePrompt)
                        end
                    end
                end
            end
        end
        if Entity.Main.Position.Y < -4 then
            if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
                LocalPlayer.Character:SetAttribute("Hiding", false)
            end
        end
    else
        if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
            LocalPlayer.Character:SetAttribute("Hiding", false)
        end
    end
end)
 
while true do
 
    local Destination = getPath()
 
    local path = PathfindingService:CreatePath({ WaypointSpacing = 1, AgentRadius = 0.1, AgentCanJump = false })
    path:ComputeAsync(LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,3,0), Destination.Position)
    local Waypoints = path:GetWaypoints()
 
    if path.Status ~= Enum.PathStatus.NoPath then
 
        Folder:ClearAllChildren()
 
        for _, Waypoint in pairs(Waypoints) do
            local part = Instance.new("Part")
            part.Size = Vector3.new(1,1,1)
            part.Position = Waypoint.Position
            part.Shape = "Cylinder"
            part.Rotation = Vector3.new(0,0,90)
            part.Material = "SmoothPlastic"
            part.Anchored = true
            part.CanCollide = false
            part.Parent = Folder
        end
 
        for _, Waypoint in pairs(Waypoints) do
            if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                LocalPlayer.Character.Humanoid:MoveTo(Waypoint.Position)
                LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
            end
        end
    end
end