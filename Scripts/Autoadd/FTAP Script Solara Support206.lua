--[[
loadstring(game:HttpGet("https://raw.githubusercontent.com/DVGUI-coding/DVGUI-coding/refs/heads/main/davidgui.lua"))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
print ("master flinger")
]]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "SigmaGui", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

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
	Name = "Main",
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
	Content = "IM HACKER! ( TUI LAÌ HACKER )",
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
	Name = "strength+",
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
	Name = "strength+",
	Callback = function()
      		local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = 50

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
--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab2 = Window:MakeTab({
	Name = "Main2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
warn ("loaded!")