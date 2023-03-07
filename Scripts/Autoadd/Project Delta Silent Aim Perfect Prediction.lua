local CHEAT_CLIENT = {} do
   do
       CHEAT_CLIENT.player = game.Players.LocalPlayer
       CHEAT_CLIENT.camera = game.Workspace.CurrentCamera
       CHEAT_CLIENT.mouse = CHEAT_CLIENT.player:GetMouse()
   end

   do
       function CHEAT_CLIENT:get_target()
           local current_target = nil
           local maximum_distance = math.huge
   
           for i,v in pairs(game.Players:GetPlayers()) do
               if v == game.Players.LocalPlayer then continue end
               if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                   local position, on_screen = CHEAT_CLIENT.camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                   if not on_screen then continue end
                   local distance = (Vector2.new(position.X, position.Y - game.GuiService:GetGuiInset(game.GuiService).Y) - Vector2.new(CHEAT_CLIENT.mouse.X, CHEAT_CLIENT.mouse.Y)).Magnitude
                   if distance > maximum_distance then continue end
                   current_target = v
                   maximum_distance = distance
               end
           end
   
           return current_target
       end
   
       function CHEAT_CLIENT:predict_velocity(target_part, projectile_speed)
               local velocity = target_part.Velocity
   
               local distance = (CHEAT_CLIENT.camera.CFrame.p - target_part.CFrame.p).Magnitude
               local time_to_hit = (distance / projectile_speed)
   
               local predicted_position = target_part.CFrame.p + (velocity * time_to_hit)
               local delta = (predicted_position - target_part.CFrame.p).Magnitude
   
               local final_projectile_speed = projectile_speed - 0.013 * projectile_speed ^ 2 * time_to_hit ^ 2
   
               time_to_hit += (delta / final_projectile_speed)
   
               return target_part.CFrame.p + (velocity * time_to_hit)
       end
   
       function CHEAT_CLIENT:predict_drop(target_part, projectile_speed, projectile_drop)
               local distance = (CHEAT_CLIENT.camera.CFrame.p - target_part.CFrame.p).Magnitude
               local time_to_hit = (distance / projectile_speed)
   
               local final_projectile_speed = projectile_speed - 0.013 * projectile_speed ^ 2 * time_to_hit ^ 2
               time_to_hit += (distance / final_projectile_speed)
   
               local drop_timing = projectile_drop * time_to_hit ^ 2
   
               if not tostring(drop_timing):find("nan") then
                   return drop_timing
               end
               return 0
       end
   
       function CHEAT_CLIENT:get_bullet_atribute(attribute)
           local attribute_value = nil
           local status = game.ReplicatedStorage.Players[CHEAT_CLIENT.player.Name]:FindFirstChild("Status")
           if status then
               local equipped_tool = status.GameplayVariables.EquippedTool.Value
               if equipped_tool then
                   local inventory_equipped_tool = game.ReplicatedStorage.Players[CHEAT_CLIENT.player.Name].Inventory:FindFirstChild(tostring(equipped_tool))
                   if inventory_equipped_tool then
                       local mag = inventory_equipped_tool.Attachments:FindFirstChild("Magazine") and inventory_equipped_tool.Attachments:FindFirstChild("Magazine"):FindFirstChildOfClass("StringValue") and inventory_equipped_tool.Attachments:FindFirstChild("Magazine"):FindFirstChildOfClass("StringValue"):FindFirstChild("ItemProperties").LoadedAmmo or inventory_equipped_tool.ItemProperties:FindFirstChild("LoadedAmmo")
                       if mag then
                           local first_bullet_type = mag:FindFirstChild("1")
                           if first_bullet_type then
                               attribute_value = game.ReplicatedStorage.AmmoTypes[first_bullet_type:GetAttribute("AmmoType")]:GetAttribute(attribute)
                           end
                       end
                   end
               end
           end
           return attribute_value
       end
   end
end

local silent_aim_hook; silent_aim_hook = hookfunction(require(game.ReplicatedStorage.Modules.FPS.Bullet).CreateBullet, function(...)
   local args = {...}

   if CHEAT_CLIENT:get_target() then
       local attribute_velocity = CHEAT_CLIENT:get_bullet_atribute("MuzzleVelocity")
       local attribute_drop = CHEAT_CLIENT:get_bullet_atribute("ProjectileDrop")
       local target_part = CHEAT_CLIENT:get_target() and CHEAT_CLIENT:get_target().Character:FindFirstChild("Head")
       if attribute_velocity and attribute_drop and target_part then
           args[9] = {CFrame = CFrame.new(args[9].CFrame.p, CHEAT_CLIENT:predict_velocity(target_part, attribute_velocity) + Vector3.new(0, CHEAT_CLIENT:predict_drop(target_part, attribute_velocity, attribute_drop), 0))}
       end
   end

   return silent_aim_hook(unpack(args))
end)