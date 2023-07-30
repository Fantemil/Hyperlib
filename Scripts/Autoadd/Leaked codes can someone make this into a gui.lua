-- Leaked by ba77o6EGpJK2mv5gfvBaEQSpUAxEdaVK#1281 and Peaci#3875
-- No Recoil
local recoilObject = getrenv()._G.modules.Player.Recoil
local OldHook; OldHook = hookfunction(recoilObject, function(...)
    local args = {...}
    args[2].cameraX = 0
    args[2].cameraY = 0
    return OldHook(unpack(args))
end)

-- Noclip
local LocalCharacter = getrenv()._G.modules.Character
local Noclip = false
local Debounce = false
local function nc()
    if Debounce then
        return
    end
    Debounce = true

    Noclip = not Noclip
    if Noclip then
        LocalCharacter.SetNoclipping(true)
    else
        LocalCharacter.SetNoclipping(false)
    end
    
    wait(0.5)
    
    Debounce = false
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.V then
        nc()
    end
end)

-- Remove Entities
Connections["Remove Entities"] = workspace.ChildRemoved:Connect(function(Model)
if Entities[Model] then
Entity = Entities[Model]; Entities[Model] = nil; Debounce[EntityInfo[Entity].Type] = false
end
end)

-- Quick Crouch
local QuickCrouch = true
if QuickCrouch == true then
game:GetService("Workspace").Ignore.LocalCharacter.Top.CrouchForce.Stiffness = 10000
else
game:GetService("Workspace").Ignore.LocalCharacter.Top.CrouchForce.Stiffness = 100
end

-- Fullbright
      local Light = game:GetService("Lighting")
       
      function dofullbright()
      Light.Ambient = Color3.new(1,1,1)
      Light.ColorShift_Bottom = Color3.new(1, 1, 1)
      Light.ColorShift_Top = Color3.new(1, 1, 1)
      end
       
      dofullbright()
       
      Light.LightingChanged:Connect(dofullbright)