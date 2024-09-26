local player=game:GetService("Players").LocalPlayer
local checkpoints=workspace:WaitForChild("Checkpoints")

--[[

    made by bob448
    could not find a rebirth button
    
]]

getgenv().Win=function()
    local char=player.Character or player.CharacterAdded:Wait()
    local root:BasePart=char:WaitForChild("HumanoidRootPart")

    task.spawn(function()
        local index=0
        while true do
            if not root.Parent or not char.Parent then
                char=player.Character or player.CharacterAdded:Wait()
                root=char:WaitForChild("HumanoidRootPart")
            end
            local checkpoint:BasePart?=checkpoints:FindFirstChild(tostring(index))
            if checkpoint then
                local primarypart=checkpoint:WaitForChild("Primary")
                local green=true
                if primarypart.Color~=Color3.fromRGB(49,147,0) then
                    green=false
                end
                if not green then
                    root.CFrame=primarypart.CFrame
                    primarypart.Touched:Wait()
                end
                index+=1
            elseif index>0 then
                break
            end
        end
    end)
end

getgenv().Win()