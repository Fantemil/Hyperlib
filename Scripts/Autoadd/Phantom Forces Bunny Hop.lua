local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
getgenv().bhop = true

local game_client = {}
do -- Client Collector
   local garbage = getgc(true)

   for i = 1, #garbage do
       local v = garbage[i]
       if typeof(v) == "table" then
           if rawget(v, "getCharacterObject") then -- Used for sending LocalPlayer Character Data to Server
               game_client.character_interface = v
           elseif rawget(v, "getController") then -- Weapon Detection
               game_client.weapon_controller_interface = v
           end
       end
   end
end

RunService.RenderStepped:Connect(function()
   if getgenv().bhop and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
       local character_object = game_client.character_interface.getCharacterObject()
       local weapon_controller = game_client.weapon_controller_interface.getController()
       local power = 4 -- This is the hardcoded value for jumping
       if character_object and weapon_controller then
           if character_object._floorMaterial == Enum.Material.Air then
               return
           end

           local active_weapon = weapon_controller:getActiveWeapon()
           if active_weapon:getWeaponType() == "Melee" then
               power = power * 1.15
           end

           local velocity_y = character_object._rootPart.Velocity.y
           power = power and (2 * game.Workspace.Gravity * power) ^ 0.5 or 40
           local jump_power = power
           if velocity_y < 0 then
               jump_power = power
           --else
               --jump_power = (velocity_y * velocity_y + power * power) ^ 0.5
           end

           -- Skip the else cause its gay and will stack velocity when you're near walls for some reason

           if character_object._movementMode == "prone" or character_object._movementMode == "crouch" then
               character_object:setMovementMode("stand")
               return
           end

           if active_weapon:getWeaponType() == "Firearm" and active_weapon:isAiming() then
               character_object._humanoid.JumpPower = jump_power
               character_object._humanoid.Jump = true
               return true
           end

           --if character_object._speed > 5 and character_object._velocity.z < 0 and character_object:parkourDetection() then
               --character_object:parkour()
           --else
               character_object._humanoid.JumpPower = jump_power
               character_object._humanoid.Jump = true
           --end
           -- Skipping parkour detection cause its cringe
       end
   end
end)