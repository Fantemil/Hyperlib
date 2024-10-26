-- // Constants \\ --

-- [ Services ] --
local Services = setmetatable({}, {__index = function(Self, Index)
local NewService = game.GetService(game, Index)
if NewService then
Self[Index] = NewService
end
return NewService
end})

-- [ Modules ] --
--[[
local OrnamentalMouse = loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavoc101/Genesis-Studios/main/Modules/OrnamentalMouse.lua", true))().new()
OrnamentalMouse.Sensitivity = 0.9
OrnamentalMouse.AutoUpdate = false
]]

-- [ LocalPlayer ] --
local LocalPlayer = Services.Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- [ Weapon Names ] --
local WeaponNames = {
   Knife = {
Index = "Murderer";
Color = Color3.fromRGB(255, 0, 0)
};
Gun = {
Index = "Sheriff";
Color = Color3.fromRGB(0, 0, 255)
};
}

local AttackAnimations = {
   "rbxassetid://2467567750";
   "rbxassetid://1957618848";
   "rbxassetid://2470501967";
   "rbxassetid://2467577524";
}

-- // Variables \\ --
-- [ Roles ] --
local Roles = {
   Murderer = nil;
   Sheriff = nil;
   Closest = nil;
}

local ESPInstances = {}
local ESPToggle = true

local SilentAIMEnabled = true

-- [ Character ] --
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
LocalPlayer.CharacterAdded:Connect(function(Character)
Character = Character
Humanoid = Character:WaitForChild("Humanoid")
end)

-- [ Raycast Parameters ] --
local RaycastParameters = RaycastParams.new()
RaycastParameters.IgnoreWater = true
RaycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

-- // Functions \\ --
-- [ Main ] --
local Functions = {}

-- ESP --
function Functions.ESP(Part, Color)
   if Part:FindFirstChildOfClass('BoxHandleAdornment') then
       return Part:FindFirstChildOfClass('BoxHandleAdornment')
   end

   local Box = Instance.new("BoxHandleAdornment")
   Box.Size = Part.Size + Vector3.new(0.1, 0.1, 0.1)
   Box.Name = "Mesh"
   Box.Visible = ESPToggle
   Box.Adornee = Part
   Box.Color3 = Color
   Box.AlwaysOnTop = true
   Box.ZIndex = 5
   Box.Transparency = 0.5
   Box.Parent = Part

   table.insert(ESPInstances, Box)

   return Box
end

-- Notify Roles --
function Functions.NotifyRoles()
   if Roles.Murderer then
       -- Murderer --
       local Image, Ready = Services.Players:GetUserThumbnailAsync(Roles.Murderer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
       Services.StarterGui:SetCore("SendNotification", {
           Title = 'Murderer';
           Text = Roles.Murderer.Name;
           Icon = Image;
           Duration = 5;
       })
   end

   if Roles.Sheriff then
       -- Sheriff --
       local Image, Ready = Services.Players:GetUserThumbnailAsync(Roles.Sheriff.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
       Services.StarterGui:SetCore("SendNotification", {
           Title = 'Sheriff';
           Text = Roles.Sheriff.Name;
           Icon = Image;
           Duration = 5;
       })
   end
end

-- GetClosestPlayer --
function Functions.GetClosestPlayer(MaxDistance)
   local ClosestPlayer = nil
   local FarthestDistance = MaxDistance or math.huge

   for i, v in ipairs(Services.Players.GetPlayers(Services.Players)) do
       if v ~= LocalPlayer then
           pcall(function()
               local DistanceFromPlayer = (LocalPlayer.Character.PrimaryPart.Position - v.Character.PrimaryPart.Position).Magnitude
               if DistanceFromPlayer < FarthestDistance then
                   FarthestDistance = DistanceFromPlayer
                   ClosestPlayer = v
               end
           end)
       end
   end

   return ClosestPlayer
end

-- [ Event ] --
local EventFunctions = {}

function EventFunctions.Initialize(Player)
   local function CharacterAdded(Character)
       Player:WaitForChild("Backpack").ChildAdded:Connect(function(Child)
           local Role = WeaponNames[Child.Name]
           if Role then
Roles[Role.Index] = Player

               local Cham = Functions.ESP(Player.Character.HumanoidRootPart, Role.Color)

               local Animator = Player.Character:FindFirstChildWhichIsA("Humanoid"):WaitForChild("Animator")
               Animator.AnimationPlayed:Connect(function(AnimationTrack)
                   if (AnimationTrack and AnimationTrack.Animation) == nil then
                       return
                   end

                   if table.find(AttackAnimations, AnimationTrack.Animation.AnimationId) then
                       Cham.Color3 = Color3.fromRGB(255, 0, 255)

                       while true do
                           Services.RunService.Heartbeat:Wait(0.01)
                           local PlayingAnimations = Animator:GetPlayingAnimationTracks()
                           local StillAttacking = false
                           for i,v in ipairs(PlayingAnimations) do
                               if table.find(AttackAnimations, v.Animation.AnimationId) then
                                   StillAttacking = true
                               end
                           end
                           if StillAttacking == false then
                               break
                           end
                       end

                       Cham.Color3 = Role.Color
                   end
               end)
           end
       end)
   end

   CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
   Player.CharacterAdded:Connect(CharacterAdded)
end

function EventFunctions.GunAdded(Child)
   if Child.Name == "GunDrop" then
       Functions.ESP(Child, Color3.fromRGB(255, 255, 255))
   end
end

function EventFunctions.ContextActionService_C(actionName, InputState, inputObject)
if InputState == Enum.UserInputState.End then
return
   end
   
   Functions.NotifyRoles()
end

function EventFunctions.ContextActionService_V(actionName, InputState, inputObject)
if InputState == Enum.UserInputState.End then
return
   end

   if Humanoid.WalkSpeed == 16.5 or Humanoid.WalkSpeed == 16 then
Humanoid.WalkSpeed = 20
else
Humanoid.WalkSpeed = 16.5
   end

   Services.StarterGui:SetCore("SendNotification", {
Title = 'Speed Change';
Text = tostring(Humanoid.WalkSpeed);
Duration = 3;
})
end

function EventFunctions.ContextActionService_B(actionName, InputState, inputObject)
if InputState == Enum.UserInputState.End then
return
   end

   ESPToggle = not ESPToggle
   for i,v in ipairs(ESPInstances) do
       v.Visible = ESPToggle
       if v.Parent == nil then
           table.remove(ESPInstances, i)
       end
   end
end

function EventFunctions.ContextActionService_G(actionName, InputState, inputObject)
   if InputState == Enum.UserInputState.End then
return
   end
   SilentAIMEnabled = not SilentAIMEnabled
   Services.StarterGui:SetCore("SendNotification", {
Title = 'Silent Aim';
Text = "Enabled: " .. tostring(SilentAIMEnabled);
Duration = 3;
})
end

-- // Metatable \\ --
local RawMetatable = getrawmetatable(game)
local OldNameCall = RawMetatable.__namecall
setreadonly(RawMetatable, false)

RawMetatable.__namecall = newcclosure(function(Object, ...)
   local NamecallMethod = getnamecallmethod()
   local Arguments = {...}

   if SilentAIMEnabled == true then
       RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}
       if NamecallMethod == "FireServer" and tostring(Object) == "Throw" then
           local Success, Error = pcall(function()
               local Closest = Functions.GetClosestPlayer()
               local PrimaryPart = Closest.Character.PrimaryPart
               local Velocity = PrimaryPart.AssemblyLinearVelocity * Vector3.new(1, 0, 1)
               local Magnitude = (PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
               local Prediction = Velocity * 0.5 * Magnitude / 100
               local Result = workspace.Raycast(workspace, LocalPlayer.Character.PrimaryPart.Position, (PrimaryPart.Position - (LocalPlayer.Character.PrimaryPart.Position + Prediction)).Unit * 200, RaycastParameters)
               Arguments[2] = Result.Position
           end)
           if not Success then
               warn(Error)
           end
       elseif NamecallMethod == "InvokeServer" and tostring(Object) == "ShootGun" and Roles.Murderer then
           local Success, Error = pcall(function()
               local PrimaryPart = Roles.Murderer.Character.PrimaryPart
               local Prediction = PrimaryPart.AssemblyLinearVelocity / 40
               if math.abs(PrimaryPart.AssemblyLinearVelocity.Y) < 10 then
                   Arguments[2] = PrimaryPart.Position + Prediction
               else
                   return "Nullify Remote"
               end
           end)
           if not Success then
               warn(Error)
           elseif Success == "Nullify Remote" then
               warn("Null")
               return
           end
       end
   end

   return OldNameCall(Object, unpack(Arguments))
end)

setreadonly(RawMetatable, true)

-- // Event Listeners \\ --
for i,v in ipairs(Services.Players:GetPlayers()) do
EventFunctions.Initialize(v)
end
Services.Players.PlayerAdded:Connect(EventFunctions.Initialize)

workspace.ChildAdded:Connect(EventFunctions.GunAdded)

-- [ Binds ] --
Services.ContextActionService:BindAction('SprintBind', EventFunctions.ContextActionService_V, false, Enum.KeyCode.V)
Services.ContextActionService:BindAction('NotifyBind', EventFunctions.ContextActionService_C, false, Enum.KeyCode.C)
Services.ContextActionService:BindAction('ESPBind', EventFunctions.ContextActionService_B, false, Enum.KeyCode.B)
Services.ContextActionService:BindAction('AIMBind', EventFunctions.ContextActionService_G, false, Enum.KeyCode.G)

-- // Actions \\ --