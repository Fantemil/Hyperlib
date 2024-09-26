-- Credits by Pio "Discord User id: 311397526399877122"
-- and edited by Agent666_0 (with ai helper)
local r_time = game.Players.RespawnTime

local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()

local bp = lp.Backpack
local chr = lp.Character

local rhand = chr:WaitForChild("RightHand") --origin: local rhand = chr.RightHand --changed version for r6 avatars: "local rhand = chr:WaitForChild("Right Arm")"

local function setsimradius(radius)
    lp.MaximumSimulationRadius = radius
    lp.SimulationRadius = radius
end

local tool = bp:FindFirstChildOfClass("Tool")
local t_handle = tool.Handle

tool.Parent = chr
tool.Parent = bp

chr.Humanoid.Sit = false
chr.Humanoid.RootPart.CFrame = CFrame.new(0, -499, 0) * CFrame.Angles(0, 0, math.rad(90))

rhand:GetPropertyChangedSignal("Parent"):Connect(function()
    if not rhand.Parent then
        workspace.Camera.CameraSubject = t_handle
        
        setsimradius(9e6)
        
        local bp = Instance.new("BodyPosition")
        bp.Position = tool.Handle.Position + Vector3.new(0, 20, 0)
        bp.MaxForce = Vector3.one * 9e10
        bp.P = 9e4
        bp.Parent = tool.Handle
        
        t_handle.CanCollide = false
        t_handle.CanQuery = false
        tool.Parent = chr
        
        repeat task.wait() until (t_handle.Position - bp.Position).Magnitude < 5
        
        for i, v in next, game.Players:GetPlayers() do
            local v_chr = v.Character
            
            if i > 1 and v_chr then
                local v_hum = v_chr:FindFirstChildOfClass("Humanoid")
                
                if v_hum and not v_hum.Sit then
                    local v_root = v_hum.RootPart
                    
                    if v_root and v_root.Velocity.Magnitude < 600 then
                        for i = 1, r_time + 3 do
                            task.wait()
                            
                            tool.Handle.RotVelocity = Vector3.new(8000, 8000, -8000)
                            
                            t_handle.Position = v_root.Position + (v_hum.MoveDirection * 3.8)
                            bp.Position = t_handle.Position
                        end
                    end
                end
            end
        end
    end
    -- ignore the "end" tree

end)

