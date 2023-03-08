local tabDown = false
    local input = game:GetService('UserInputService')
    local player = game.Players.LocalPlayer
    local camera = game.Workspace.CurrentCamera
    local character = player.Character 
    local head = character.Head
    local torso = character.Torso
    pos = Vector3.new(0,0,0)
    local rs = game:GetService('RunService')
    isdoing = false
    
    cor = coroutine.create(function()
        while wait() do
            if tabDown and I == 0 then
               local pos = head.Position
               local partyGoal = findGoal(head.Position)
               local lookAt = partyGoal.Position + Vector3.new(0,183,0)
               local mag = (character.PrimaryPart.Position - partyGoal.Position).magnitude
               local cameraCFrame = CFrame.new(pos, lookAt)
               camera.CFrame = cameraCFrame
               I = I + 1
               rs.RenderStepped:Wait()
               I = I - 1
            if isdoing == false then
                coroutine.yield()
            end
        end
    end
         
        
        
    end)
    
    function findGoal(position)
         local nearestGoal = nil
         local lowest = math.huge
         for i,v in pairs(game.Workspace:GetDescendants()) do
              if v.Name == 'Goal' and v:IsA('Part') then
                  local distance = (torso.Position - v.Position).magnitude
                  if distance < lowest then
                      lowest = distance
                      Goal = v
                  end
              end
         end
         return Goal
    end
    
    input.InputBegan:Connect(function(key, gpe)
        local xkey = key.KeyCode
        if xkey == Enum.KeyCode.X then
            tabDown = true
            if isdoing == false then
                wait()
                isdoing = true 
                coroutine.resume(cor)
            end
        end
    end)
    
    input.InputEnded:Connect(function(key, gpe)
        local xkey = key.KeyCode
        if xkey == Enum.KeyCode.X then
            tabDown = false
            if isdoing then
                isdoing = false
            end 
        end 
    end)
    I = 0