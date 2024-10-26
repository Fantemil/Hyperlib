local uis = game:GetService("UserInputService")
local part = Instance.new('Part',workspace)
local cam = workspace.CurrentCamera
local lp = game:GetService('Players').LocalPlayer
local chr = lp.Character
local hrp = chr.HumanoidRootPart
local maxVelocity = 50
local bp = Instance.new('BodyPosition')
local pos = Vector3.zero
bp.D = 200
bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
local bg = Instance.new('BodyGyro')
bg.D = 20
bg.P = 9000
bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)

part.Size = Vector3.zero

local _,y,z = 0,0,0
local offset = Vector3.new(0,7,0) --Pls don't change X and Z for stability!

local ws = 1
local jp = 1

Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VeztWare/KavoUi/main/KavoUi.lua"))()

local Window = Library.CreateLib("Ragdoll walker", "Midnight")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
local canMove = false

Section:NewToggle("Toggle walker", "You can toggle it", function(state)
    canMove = state
    wait()
    if state then
        part.CanQuery = false
        part.CanTouch = false
        part.Position = hrp.Position - offset
        bp.Parent = hrp
        bg.Parent = hrp
    else
        part.Anchored = true
        for _,v in pairs(chr:GetChildren()) do
            if v:IsA('BasePart') or v:IsA('Part') or v:IsA('MeshPart') then
                v.CanCollide = true
                v.Massless = false
            end
        end
        bp.Parent = nil
        bg.Parent = nil
    end
end)

Section:NewSlider("Speed", "Speed of walker", 5, 1, function(s)
    ws = s
end)

Section:NewSlider("Jump power", "Jump power of walker", 5, 1, function(s)
    jp = s
end)

Section:NewKeybind("Jump keybind", "Pls dont use Space", Enum.KeyCode.Q, function()
	if canMove then
        part.Anchored = true
        for i=1,10 do
            part.Position = part.Position + (Vector3.new(0, 1, 0) * jp)
            wait(0.05)
        end
        part.Anchored = false
        notJumped = false
    end
end)


lp.CharacterAdded:Connect(function(character)
    chr = character
    hrp = chr:WaitForChild('HumanoidRootPart')
    if canMove then
        bp.Parent = hrp
        bg.Parent = hrp
    end
end)

spawn(function()
    while wait() do
        if canMove then
            for _,v in pairs(chr:GetChildren()) do
                if v:IsA('BasePart') or v:IsA('Part') or v:IsA('MeshPart') then
                    v.CanCollide = false
                    v.Massless = true
                end
            end
        end
    end
end)

part.CanQuery = false
part.CanTouch = false
part.Position = hrp.Position - offset

wait()
local bav = Instance.new('BodyAngularVelocity', part)
bav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
bav.AngularVelocity = Vector3.zero
wait()

while wait() do
    if canMove then
        if uis:IsKeyDown(Enum.KeyCode.W) then
            _,y,z = cam.CFrame:ToEulerAnglesYXZ()
            part.CFrame = CFrame.Angles(0,y,z) + part.Position
            part.Position = part.Position + (part.CFrame.LookVector * ws)
        elseif uis:IsKeyDown(Enum.KeyCode.S) then
            _,y,z = cam.CFrame:ToEulerAnglesYXZ()
            part.CFrame = CFrame.Angles(0,y,z) + part.Position
            part.Position = part.Position - (part.CFrame.LookVector * ws)
        end

        if uis:IsKeyDown(Enum.KeyCode.A) then
            _,y,z = cam.CFrame:ToEulerAnglesYXZ()
            part.CFrame = CFrame.Angles(0,y,z) + part.Position
            part.Position = part.Position - (part.CFrame.RightVector * ws)
        elseif uis:IsKeyDown(Enum.KeyCode.D) then
            _,y,z = cam.CFrame:ToEulerAnglesYXZ()
            part.CFrame = CFrame.Angles(0,y,z) + part.Position
            part.Position = part.Position + (part.CFrame.RightVector * ws)
        end

        bp.Position = part.Position + offset
        bg.CFrame = part.CFrame
    end

    if part.Velocity.X > maxVelocity or part.Velocity.X < -maxVelocity or part.Velocity.Y > maxVelocity or part.Velocity.Z > maxVelocity or part.Velocity.Z < -maxVelocity then
        part.Velocity = Vector3.zero
        part.Position = pos
    else
        pos = part.Position
    end
end