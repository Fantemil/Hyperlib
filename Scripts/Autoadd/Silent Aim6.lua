if not game:IsLoaded() then
   game.Loaded:Wait()
end

getgenv().SilentAimSettings = {
   Enabled = true,
   
   VisibleCheck = true,
   TargetPart = "Head",
   
   FOVRadius = 130,
   FOVVisible = true,
}

local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local GetChildren = game.GetChildren
local GetPlayers = Players.GetPlayers
local WorldToScreen = Camera.WorldToScreenPoint
local WorldToViewportPoint = Camera.WorldToViewportPoint
local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
local FindFirstChild = game.FindFirstChild
local RenderStepped = RunService.RenderStepped
local GuiInset = GuiService.GetGuiInset
local GetMouseLocation = UserInputService.GetMouseLocation

local resume = coroutine.resume
local create = coroutine.create

local ValidTargetParts = {"Head", "HumanoidRootPart"}
local PredictionAmount = 0.165
local Aiming = false

local fov_circle = Drawing.new("Circle")
fov_circle.Thickness = 1
fov_circle.NumSides = 100
fov_circle.Radius = 180
fov_circle.Filled = false
fov_circle.Visible = false
fov_circle.ZIndex = 999
fov_circle.Transparency = 1
fov_circle.Color = Color3.fromRGB(54, 57, 241)

local ExpectedArguments = {
   FindPartOnRayWithIgnoreList = {
       ArgCountRequired = 3,
       Args = {
           "Instance", "Ray", "table", "boolean", "boolean"
       }
   },
   FindPartOnRayWithWhitelist = {
       ArgCountRequired = 3,
       Args = {
           "Instance", "Ray", "table", "boolean"
       }
   },
   FindPartOnRay = {
       ArgCountRequired = 2,
       Args = {
           "Instance", "Ray", "Instance", "boolean", "boolean"
       }
   },
   Raycast = {
       ArgCountRequired = 3,
       Args = {
           "Instance", "Vector3", "Vector3", "RaycastParams"
       }
   }
}

local function getPositionOnScreen(Vector)
   local Vec3, OnScreen = WorldToScreen(Camera, Vector)
   return Vector2.new(Vec3.X, Vec3.Y), OnScreen
end

local function ValidateArguments(Args, RayMethod)
   local Matches = 0
   if #Args < RayMethod.ArgCountRequired then
       return false
   end
   for Pos, Argument in next, Args do
       if typeof(Argument) == RayMethod.Args[Pos] then
           Matches = Matches + 1
       end
   end
   return Matches >= RayMethod.ArgCountRequired
end

local function getDirection(Origin, Position)
   return (Position - Origin).Unit * 1000
end

local function getMousePosition()
   return GetMouseLocation(UserInputService)
end

local function IsPlayerVisible(Player)
   local PlayerCharacter = Player.Character
   local LocalPlayerCharacter = LocalPlayer.Character
   
   if not (PlayerCharacter or LocalPlayerCharacter) then return end
   
   local PlayerRoot = FindFirstChild(PlayerCharacter, SilentAimSettings.TargetPart) or FindFirstChild(PlayerCharacter, "HumanoidRootPart")
   
   if not PlayerRoot then return end
   
   local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter, PlayerCharacter}
   local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)
   
   return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
end

local function getClosestPlayer()
   local Closest
   local DistanceToMouse
   for _, Player in next, GetPlayers(Players) do
       if Player == LocalPlayer then continue end

       local Character = Player.Character
       if not Character then continue end
       
       if SilentAimSettings.VisibleCheck and not IsPlayerVisible(Player) then continue end

       local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
       local Humanoid = FindFirstChild(Character, "Humanoid")
       if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end

       local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)
       if not OnScreen then continue end

       local Distance = (getMousePosition() - ScreenPosition).Magnitude
       if Distance <= (DistanceToMouse or SilentAimSettings.FOVRadius or 2000) then
           Closest = (Character[SilentAimSettings.TargetPart])
           DistanceToMouse = Distance
       end
   end
   return Closest
end

resume(create(function()
   RenderStepped:Connect(function()
       fov_circle.Visible = SilentAimSettings.FOVVisible
       fov_circle.Color = Color3.fromRGB(255, 255, 255)
       fov_circle.Radius = SilentAimSettings.FOVRadius
       fov_circle.Position = getMousePosition()
   end)
end))

local aim_c_1
aim_c_1 = UserInputService.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 then
       Aiming = true
   end
end)

local aim_c_2
aim_c_2 = UserInputService.InputEnded:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 then
       Aiming = false
   end
end)

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
   local Method = getnamecallmethod()
   local Arguments = {...}
   local self = Arguments[1]
   if Aiming and self == workspace and not checkcaller() then
       if Method == "FindPartOnRayWithIgnoreList" then
           if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
               local A_Ray = Arguments[2]

               local HitPart = getClosestPlayer()
               if HitPart then
                   local Origin = A_Ray.Origin
                   local Direction = getDirection(Origin, HitPart.Position)
                   Arguments[2] = Ray.new(Origin, Direction)

                   return oldNamecall(unpack(Arguments))
               end
           end
       end
   end
   return oldNamecall(...)
end))