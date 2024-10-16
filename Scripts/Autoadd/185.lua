local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "TomaGuiV2", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Loading",
	Content = "Quick Notification",
	Image = "rbxassetid://4483345998",
	Time = 10
})
--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Strength",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "cheats here at the buttom xD!"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "notify yourself",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "lucks!",
	Content = "IM HACKER!",
	Image = "rbxassetid://4483345998",
	Time = 10
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "super strength",
	Callback = function()
      		local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = 250

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
  	end
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "goodbye strength",
	Callback = function()
      		local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = 1000000000000

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
  	end
})

Tab:AddButton({
	Name = "400 strength+",
	Callback = function()
      		local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = 400

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
  	end
})

Tab:AddButton({
	Name = "50 strength+",
	Callback = function()
      		local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = 150

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
  	end
})
Tab:AddButton({
	Name = "strength+",
	Callback = function()
      		local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = 1000000000000

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
  	end
})
Tab:AddButton({
	Name = "strength+",
	Callback = function()
      		local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = math.huge

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
  	end
})
--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab2 = Window:MakeTab({
	Name = "Aimbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab2:AddButton({
	Name = "Delete Mob Cheat Engine",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Mick-gordon/Hyper-Escape/main/DeleteMobCheatEngine.lua'))()
    end
})
Tab2:AddButton({
    Name = "Enbled Aimbot",
    Callback = function()
            local fov = 100
local maxDistance = 50
local maxTransparency = 0.1
local teamCheck = false

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128)
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end

UserInputService.InputBegan:Connect(onKeyDown)

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    local maxDistance = fov
    local transparency = (1 - (distance / maxDistance)) * maxTransparency
    return transparency
end

local function isPlayerAlive(player)
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        return character.Humanoid.Health > 0
    end
    return false
end

local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer

    for i = 1, #Players:GetPlayers() do
        local player = Players:GetPlayers()[i]
        if player and player ~= localPlayer and (not teamCheck or player.Team ~= localPlayer.Team) then
            if isPlayerAlive(player) then
                local part = player.Character and player.Character:FindFirstChild(trg_part)
                if part then
                    local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                    local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude

                    if distance < last and isVisible and distance < fov and distance < maxDistance then
                        last = distance
                        nearest = player
                    end
                end
            end
        end
    end

    return nearest
end

local function toggleTeamCheck()
    teamCheck = not teamCheck
end

toggleTeamCheck()
toggleTeamCheck()

RunService.RenderStepped:Connect(function()
    updateDrawings()
    local closest = getClosestPlayerInFOV("Head")
    if closest and closest.Character:FindFirstChild("Head") then
        lookAt(closest.Character.Head.Position)
    end
    
    if closest then
        local ePos, isVisible = Cam:WorldToViewportPoint(closest.Character.Head.Position)
        local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
        FOVring.Transparency = calculateTransparency(distance)
    else
        FOVring.Transparency = maxTransparency
    end
    
    wait(0.03)
end)
        end
})
Tab2:AddButton({
    Name = "Disbled Aimbot(WIP)",
    Callback = function ()
            local maxDistance = 0
        end
})


loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
warn ("loaded!")

Tab:AddButton({
    Name = "inf yield (if inf yield not on)",
    Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end
})

OrionLib:MakeNotification({
	Name = "Loaded",
	Content = "Quick Notification",
	Image = "rbxassetid://4483345998",
	Time = 10
})