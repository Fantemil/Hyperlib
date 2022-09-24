local coreGui = game:GetService("CoreGui")
local runService = game:GetService("RunService")

-- create viewport frame and gui
local viewportGui = Instance.new("ScreenGui", coreGui)
viewportGui.IgnoreGuiInset = true

local viewportFrame = Instance.new("ViewportFrame")
viewportFrame.Parent = viewportGui
viewportFrame.CurrentCamera = workspace.CurrentCamera
viewportFrame.BackgroundTransparency = 1
viewportFrame.Size = UDim2.new(1, 0, 1, 0)
viewportFrame.Position = UDim2.new(0, 0, 0, 0)

-- clone part function
function clonePart(part, model, character)
 -- check if part is a BasePart
    if part:IsA("BasePart") then
  local head = character:WaitForChild("Head")

  -- clone part
  local clone = part:Clone() 

  -- loop through cloned part
  for _, obj in next, clone:GetChildren() do
   -- destroy anything that isnt a SpecialMesh
   if not obj:IsA("SpecialMesh") then
    obj:Destroy()
    continue
   end

   -- change SpecialMesh texture id to nothing
   obj.TextureId = ""
  end

  -- change clone color and parent clone
  clone.Color = Color3.fromRGB(0, 255, 0)
  clone.Parent = model

  -- loop clone
  runService.RenderStepped:connect(function()
   -- check if head exists
   if head:IsDescendantOf(workspace) then
    -- object on screen
    local _, visible = workspace.CurrentCamera:WorldToViewportPoint(part.Position)

    -- if object is on screen
    if visible then
     -- change CFrame and Size and Transparency of clone
     clone.CFrame = part.CFrame
     clone.Size = part.Size
     clone.Transparency = part.Transparency < 1 and 0 or 1
    else
     -- if not visible then stop rendering
     clone.Transparency = 1
    end
   else
    -- if object doesnt exist delete it and move on
    model:Destroy()
    return
   end
  end)
 end
end

function chams(character)
 -- create model for cloned parts to be in
    local model = Instance.new("Model")
    model.Name = character.Name
    model.Parent = viewportFrame

 -- loop through character
    for _, obj in next, character:GetChildren() do
  -- if character has a head then
        if character:FindFirstChild("Head") then
   -- clone parts
            clonePart(obj, model, character)
        end
    end
end

-- loop players
for _, plr in next, game:GetService("Players"):GetChildren() do
 -- get character
    local character = plr.Character or plr.CharacterAdded:Wait()
    character:WaitForChild("Head")

 -- add chams to character
    chams(character)

 -- on character created
    plr.CharacterAdded:connect(function(char)
  -- create chams
        char:WaitForChild("Head")
        chams(char)
    end)
end

-- on player join
game:GetService("Players").PlayerAdded:connect(function(plr)
 -- get character
    local character = plr.Character or plr.CharacterAdded:Wait()
    character:WaitForChild("Head")
    chams(character)
    
 -- on character created
    plr.CharacterAdded:connect(function(char)
  -- create chams
        char:WaitForChild("Head")
        chams(char)
    end)
end)