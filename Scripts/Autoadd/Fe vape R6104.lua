--==/Bound to No Limits/==--
--[[Leak this and i'll be freaking mad]]--
local Player, Character, Mouse = game:service("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character, game:GetService("Players").LocalPlayer:GetMouse();
local currentCam                        = workspace.CurrentCamera
Humanoid                                         = Character:findFirstChild("Humanoid");
Torso                                                 = Character:findFirstChild("Torso");
Head                                                 = Character:findFirstChild("Head");
Right_Arm                                         = Character:findFirstChild("Right Arm");
Left_Arm                                         = Character:findFirstChild("Left Arm");
Right_Leg                                        = Character:findFirstChild("Right Leg");
Right_Leg.FormFactor                 = "Custom";
Left_Leg                                         = Character:findFirstChild("Left Leg");
Left_Leg.FormFactor                        = "Custom";
Right_Shoulder                                = Torso:findFirstChild("Right Shoulder");
Left_Shoulder                                 = Torso:findFirstChild("Left Shoulder");
Right_Hip                                         = Torso:findFirstChild("Right Hip");
Left_Hip                                        = Torso:findFirstChild("Left Hip");
Neck                                                 = Torso:findFirstChild("Neck");
rootPart                                         = Character:findFirstChild("HumanoidRootPart");
rootPart.Archivable                 = true;
rootJoint                                         = rootPart:findFirstChild("RootJoint");
rootJoint.Archivable                 = true;
c_new                                                = CFrame.new;
i_new                                                = Instance.new;
c_angles                                        = CFrame.Angles;
Humanoid:ClearAllChildren();
local Animations = false
local followMouse = false
local isSprinting = false
local Angle = 0
local angleSpeed = 1
local currentAnim
local Vaping = false
local vapePower = 2.5
local Release = false
local currentFace = Head.face.Texture

function math_pos(float)
    if float < 0 then float = 0 end
    return float
end
function math_neg(float)
    if float > 0 then float = 0 end
    return float
end
function math_max(float, max)
    if float > max then float = max end
    return float
end
function math_min(float, min)
    if float > min then float = min end
    return float
end

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
        wld = Instance.new("Weld", wp1)
        wld.Part0 = wp0
        wld.Part1 = wp1
        wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
        return wld
end

newWeld2 = function(wp02, wp12, wc0x2, wc0y2, wc0z2, wc0x12, wc0y12, wc0z12)
        wld2 = Instance.new("Weld", wp12)
        wld2.Part0 = wp02
        wld2.Part1 = wp12
        wld2.C0 = CFrame.new(wc0x2, wc0y2, wc0z2) * CFrame.Angles(wc0x12, wc0y12, wc0z12)
        return wld2
end

LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0)
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0)
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0)
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0)
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0)


function nooutline(part)
        part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface  =  10, 10, 10, 10, 10, 10
end

function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
        local fp = i_new("Part")
        fp.formFactor = formfactor
        fp.Parent = parent
        fp.Reflectance = reflectance
        fp.Transparency = transparency
        fp.CanCollide = false
        fp.Locked = true
        fp.BrickColor = BrickColor.new(tostring(brickcolor))
        fp.Name = name
        fp.Size = size
        fp.Position = Character.Torso.Position
        nooutline(fp)
        fp.Material = material
        fp:BreakJoints()
        return fp
end

function mesh(Mesh, part, meshtype, meshid, offset, scale)
        local mesh = i_new(Mesh)
        mesh.Parent = part
        if Mesh == "SpecialMesh" then
                mesh.MeshType = meshtype
                mesh.MeshId = meshid
        end
        mesh.Offset = offset
        mesh.Scale = scale
        return mesh
end

function weld(parent, part0, part1, c0, c1)
        local weld = i_new("Weld")
        weld.Parent = parent
        weld.Part0 = part0
        weld.Part1 = part1
        weld.C0 = c0
        weld.C1 = c1
        return weld
end

function swait(num)
        if num == 0 or num == nil then
                game:GetService("RunService").Stepped:wait(0)
        else
                for i = 0, num do
                        game:GetService("RunService").Stepped:wait(0)
                end
        end
end

function newRay(start, face, range, wat)
        local ray = Ray.new(start.p, (face.p - start.p).Unit * range)
        hit, pos = workspace:findPartOnRayWithIgnoreList(ray, wat)
        return ray, hit, pos
end

function QuaternionFromCFrame(cf) 
        local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
        local trace = m00 + m11 + m22 
        if trace > 0 then 
                local s = math.sqrt(1 + trace) 
                local recip = 0.5/s 
                return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
        else 
                local i = 0 
                if m11 > m00 then
                        i = 1
                end
                if m22 > (i == 0 and m00 or m11) then 
                        i = 2 
                end 
                if i == 0 then 
                        local s = math.sqrt(m00-m11-m22+1) 
                        local recip = 0.5/s 
                        return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
                elseif i == 1 then 
                        local s = math.sqrt(m11-m22-m00+1) 
                        local recip = 0.5/s 
                        return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
                elseif i == 2 then 
                        local s = math.sqrt(m22-m00-m11+1) 
                        local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
                end 
        end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
        local xs, ys, zs = x + x, y + y, z + z 
        local wx, wy, wz = w*xs, w*ys, w*zs 
        local xx = x*xs 
        local xy = x*ys 
        local xz = x*zs 
        local yy = y*ys 
        local yz = y*zs 
        local zz = z*zs 
        return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
        local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
        local startInterp, finishInterp; 
        if cosTheta >= 0.0001 then 
                if (1 - cosTheta) > 0.0001 then 
                        local theta = math.acos(cosTheta) 
                        local invSinTheta = 1/math.sin(theta) 
                        startInterp = math.sin((1-t)*theta)*invSinTheta 
                        finishInterp = math.sin(t*theta)*invSinTheta  
                else 
                        startInterp = 1-t 
                        finishInterp = t 
                end 
        else 
                if (1+cosTheta) > 0.0001 then 
                        local theta = math.acos(-cosTheta) 
                        local invSinTheta = 1/math.sin(theta) 
                        startInterp = math.sin((t-1)*theta)*invSinTheta 
                        finishInterp = math.sin(t*theta)*invSinTheta 
                else 
                        startInterp = t-1 
                        finishInterp = t 
                end 
        end 
        return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function clerp(a, b, t) 
        local qa = {QuaternionFromCFrame(a)}
        local qb = {QuaternionFromCFrame(b)} 
        local ax, ay, az = a.x, a.y, a.z 
        local bx, by, bz = b.x, b.y, b.z
        local _t = 1-t
        return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end

local freeFalling = false
Humanoid.FreeFalling:connect(function(f)
        if f then
                freeFalling = true
        else
                freeFalling = false
        end
end)

function Vapor()
end

function Vape()
        if Release == true and vapePower > 5 then
                Vaping = true
                Humanoid.WalkSpeed = 0
                Humanoid.JumpPower = 0
                smoke = Instance.new("ParticleEmitter", Head)
                smoke.Color = ColorSequence.new(Color3.new(1, 1, 1))
                smoke.Texture = "http://www.roblox.com/asset/?id=382199579"
                smoke.Size = NumberSequence.new({
                                                        NumberSequenceKeypoint.new(0, 0, 0),
                                                        NumberSequenceKeypoint.new(0.161235, 0.25, 0),
                                                        NumberSequenceKeypoint.new(0.197256, 1.25, 0),
                                                        NumberSequenceKeypoint.new(0.221269, 1.5, 0),                                                                
                                                        NumberSequenceKeypoint.new(0.25729, 1.5, 0),
                                                        NumberSequenceKeypoint.new(0.284734, 2, 0),
                                                        NumberSequenceKeypoint.new(0.512865, 2.5, 0),
                                                        NumberSequenceKeypoint.new(0.548885, 3.5, 0),
                                                        NumberSequenceKeypoint.new(0.595197, 4.5, 0),
                                                        NumberSequenceKeypoint.new(0.632933, 6.5, 0),
                                                        NumberSequenceKeypoint.new(0.6741, 9, 0),
                                                        NumberSequenceKeypoint.new(1, 10, 0)
                                                        })
                smoke.Transparency = NumberSequence.new({
                                                        NumberSequenceKeypoint.new(0, 1, 0),
                                                        NumberSequenceKeypoint.new(0, 0.999, 0),
                                                        NumberSequenceKeypoint.new(0.154374, 0.89, 0),
                                                        NumberSequenceKeypoint.new(0.310463, 0.79, 0),
                                                        NumberSequenceKeypoint.new(0.504288, 0.69, 0),
                                                        NumberSequenceKeypoint.new(0.638079, 0.79, 0),
                                                        NumberSequenceKeypoint.new(0.765009, 0.999, 0),
                                                        NumberSequenceKeypoint.new(1, 1, 0)
                                                        })
                smoke.Speed = NumberRange.new(1.5)
                smoke.EmissionDirection = 5
                smoke.Acceleration = Vector3.new(0, 0.075, 0)                        
                smoke.Lifetime = NumberRange.new(vapePower/0.5)
                smoke.Rate = 15
                smoke.ZOffset = 3
                smoke.RotSpeed = NumberRange.new(100)
                smoke.Rotation = NumberRange.new(100)
                for i = 0, 3, 0.01 do
                        Animations = true
                        RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0.1) * c_angles(math.rad(20), math.rad(0), math.rad(20)), 0.01)
                        LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0.1) * c_angles(math.rad(20), math.rad(0), math.rad(-20)), 0.01)
                        LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-5.5)), 0.005)
                        RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(5.5)), 0.005)
                        Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), 0), 0.01)
                        Head_Weld.C0         = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-5), math.rad(0), 0), 0.005)
                        Head.face.Texture = "http://www.roblox.com/asset/?id=7317691"
                        swait()
                end
                wait(7.5)
                Head.face.Texture = currentFace
                game.Debris:AddItem(smoke, 0)
                Humanoid.WalkSpeed = 16
                Humanoid.JumpPower = 50
                Animations = false
                wait(1)
                Vaping = false
                vapePower = 2.5
        elseif vapePower < 5 then
                Vaping = false
                vapePower = 2.5
        end
end

Mouse.KeyDown:connect(function(key)
        if key == "z" and followMouse == false then
                followMouse = true
                gyro = Instance.new("BodyGyro", rootPart)
                gyro.P = 1e7
                gyro.D = 1e3
                gyro.MaxTorque = Vector3.new(0, 1e7, 0)
                coroutine.resume(coroutine.create(function()
                        while wait() do
                                gyro.CFrame = CFrame.new(Vector3.new(), (Mouse.Hit.p -rootPart.CFrame.p).unit * 100)
                        end
                end))
        elseif key == "z" and followMouse == true then
                followMouse = false
                gyro:Destroy()
        end
end)

Mouse.Button1Down:connect(function()
        if Vaping == false then
                Vaping = true
                Release = false
                Mouse.Button1Up:connect(function()
                        Release = true
                end)
                if Release == false then
                        repeat
                                Animations = true
                                vapePower = vapePower + 0.1
                                Humanoid.WalkSpeed = 0
                                Humanoid.JumpPower = 0
                                wait()
                                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.8, 1.4, -1) * c_angles(math.rad(60), math.rad(-25), math.rad(-80)) * CFrame.Angles(0, math.rad(150), 0), 0.1)
                                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0.1) * c_angles(math.rad(-12.5), math.rad(10), math.rad(-25)), 0.1)        
                                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(-5)), 0.01)
                                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(5)), 0.01)        
                                Head_Weld.C0         = clerp(Head_Weld.C0, c_new(0, 1.5, -0.05) * c_angles(math.rad(11.5), math.rad(0), 0), 0.05)        
                                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(15), math.rad(0), 0), 0.01)                
                                if vapePower > 5 then
                                        Head.face.Texture = "http://www.roblox.com/asset/?id=7317691"
                                elseif vapePower < 5 then
                                        Humanoid.WalkSpeed = 16
                                        Humanoid.JumpPower = 50
                                end
                                print(vapePower)
                        until Release == true
                end
                Animations = false
                Vape()
        end
end)

Vepr = Instance.new("Model", Character)
Handle = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Handle", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Handleweld = weld(Vepr, Right_Arm, Handle, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(0.677656174,  -0.199986219,  -0.745416641,  0.721854568,  0.692044795,  -4.12490877e-008,  0,  5.96046377e-008,  1,  0.692044854,  -0.721854508,  4.30258851e-008))
mesh("CylinderMesh", Handle, "", "", Vector3.new(0,  0,  0), Vector3.new(0.850000024,  1,  0.850000024))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.0770874023,  0.530002356,  -0.00293064117,  -0.707106829,  5.7016841e-008,  0.70710665,  8.64581722e-008,  1,  5.82424065e-009,  -0.707106769,  6.52535093e-008,  -0.707106948))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.100000001,  1.5,  0.100000001))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  0.530002356,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.649999976,  1.5,  0.649999976))
ColoredPart = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Dark stone grey", "ColoredPart", Vector3.new(0.400000006,  0.200000003,  0.200000003))
ColoredPartweld = weld(Vepr, Handle, ColoredPart, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(0.0150222778,  0.0528726578,  0.580010891,  1,  -9.83454888e-015,  8.94069672e-008,  -8.94069672e-008,  -5.96041154e-008,  -1,  -1.24344979e-014,  1,  -5.96040941e-008))
mesh("CylinderMesh", ColoredPart, "", "", Vector3.new(0,  0,  0), Vector3.new(0.075000003,  0.150000006,  0.075000003))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  1.12999749,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.349999994,  0.5,  0.349999994))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  -0.299999952,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(1.10000002,  0.25,  1.10000002))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.0799965858,  0.530002356,  0.00411891937,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.100000001,  1.5,  0.100000001))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  -0.350000143,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(1,  0.5,  1))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  0.39999938,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(1.10000002,  0.25,  1.10000002))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  1.20999694,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.25,  0.5,  0.25))
ColoredPart = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.SmoothPlastic, 0, 0, "Really black", "ColoredPart", Vector3.new(0.400000006,  0.200000003,  0.200000003))
ColoredPartweld = weld(Vepr, Handle, ColoredPart, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(1.06904175e-005,  1.26000762,  0.00412273407,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", ColoredPart, "", "", Vector3.new(0,  0,  0), Vector3.new(0.300000012,  0.100000001,  0.300000012))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  0.00412368774,  0.39999938,  1,  -9.83454888e-015,  8.94069672e-008,  8.94069672e-008,  1.02581704e-014,  1,  7.10542736e-015,  -1,  -7.10542736e-015))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0,  0,  0), Vector3.new(1,  1,  1))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  0.440000296,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(1,  0.5,  1))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  1.25999618,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.349999994,  0.100000001,  0.349999994))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  1.06999803,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.649999976,  0.5,  0.649999976))
ColoredPart = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Dark stone grey", "ColoredPart", Vector3.new(0.400000006,  0.200000003,  0.200000003))
ColoredPartweld = weld(Vepr, Handle, ColoredPart, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(1.23977661e-005,  0.0528755188,  0.595012188,  1,  -9.83454888e-015,  8.94069672e-008,  -8.94069672e-008,  -5.96041154e-008,  -1,  -1.24344979e-014,  1,  -5.96040941e-008))
mesh("CylinderMesh", ColoredPart, "", "", Vector3.new(0,  0,  0), Vector3.new(0.075000003,  0.150000006,  0.075000003))
ColoredPart = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Dark stone grey", "ColoredPart", Vector3.new(0.400000006,  0.200000003,  0.200000003))
ColoredPartweld = weld(Vepr, Handle, ColoredPart, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.0149841309,  0.0528774261,  0.580010891,  1,  -9.83454888e-015,  8.94069672e-008,  -8.94069672e-008,  -5.96041154e-008,  -1,  -1.24344979e-014,  1,  -5.96040941e-008))
mesh("CylinderMesh", ColoredPart, "", "", Vector3.new(0,  0,  0), Vector3.new(0.075000003,  0.150000006,  0.075000003))
ColoredPart = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Dark stone grey", "ColoredPart", Vector3.new(0.400000006,  0.200000003,  0.200000003))
ColoredPartweld = weld(Vepr, Handle, ColoredPart, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(1.23977661e-005,  0.0528755188,  0.565011501,  1,  -9.83454888e-015,  8.94069672e-008,  -8.94069672e-008,  -5.96041154e-008,  -1,  -1.24344979e-014,  1,  -5.96040941e-008))
mesh("CylinderMesh", ColoredPart, "", "", Vector3.new(0,  0,  0), Vector3.new(0.075000003,  0.150000006,  0.075000003))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(0.0829200745,  0.530002356,  0.00291061401,  0.707106769,  2.99547696e-016,  0.707106948,  -7.10542736e-015,  1,  7.10542736e-015,  -0.707106829,  1.42076978e-014,  0.70710665))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.100000001,  1.5,  0.100000001))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(0.0800065994,  0.530002356,  0.00412559509,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.100000001,  1.5,  0.100000001))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(0.0841331482,  0.530002356,  -1.09672546e-005,  8.94069672e-008,  5.70167558e-008,  1,  6.52536016e-008,  1,  -5.70167309e-008,  -1,  6.52536229e-008,  -8.94069672e-008))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.100000001,  1.5,  0.100000001))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  0.759999275,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.649999976,  1,  0.649999976))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(1.66893005e-005,  0.0508747101,  0.580010891,  1,  -9.83454888e-015,  8.94069672e-008,  -8.94069672e-008,  -5.96041154e-008,  -1,  -1.24344979e-014,  1,  -5.96040941e-008))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.300000012,  0.150000006,  0.300000012))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(0.082918644,  0.530002356,  -0.00291919708,  -0.707106829,  5.7016841e-008,  0.70710665,  8.64581722e-008,  1,  5.82424065e-009,  -0.707106769,  6.52535093e-008,  -0.707106948))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.100000001,  1.5,  0.100000001))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.0770807266,  0.530002356,  0.0029168129,  0.707106769,  2.99547696e-016,  0.707106948,  -7.10542736e-015,  1,  7.10542736e-015,  -0.707106829,  1.42076978e-014,  0.70710665))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.100000001,  1.5,  0.100000001))
TransparentPart = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.SmoothPlastic, 0, 0.25, "Teal", "TransparentPart", Vector3.new(0.400000006,  0.200000003,  0.200000003))
TransparentPartweld = weld(Vepr, Handle, TransparentPart, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  0.93999958,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", TransparentPart, "", "", Vector3.new(0,  0,  0), Vector3.new(0.400000006,  0.800000012,  0.400000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  0.710000038,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(1,  0.5,  1))
TransparentPart = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.SmoothPlastic, 0, 0.5, "Really black", "TransparentPart", Vector3.new(0.400000006,  0.200000003,  0.200000003))
TransparentPartweld = weld(Vepr, Handle, TransparentPart, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-4.29153442e-006,  0.93999958,  0.00412368774,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", TransparentPart, "", "", Vector3.new(0,  0,  0), Vector3.new(0.550000012,  0.800000012,  0.550000012))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.400000006,  0.200000003,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(7.62939453e-006,  0.0458641052,  0.580001354,  1,  -9.83454888e-015,  8.94069672e-008,  -8.94069672e-008,  -5.96041154e-008,  -1,  -1.24344979e-014,  1,  -5.96040941e-008))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.349999994,  0.150000006,  0.349999994))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.00204133987,  0,  0.0835571289,  0.86602515,  -1.36460565e-014,  -0.500000298,  -7.10542736e-015,  1,  7.10542736e-015,  0.500000477,  3.96655577e-015,  0.866025209))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.00356006622,  0,  0.0779504776,  -0.500000477,  -3.96655577e-015,  -0.866025209,  -7.10542736e-015,  1,  7.10542736e-015,  0.86602515,  -1.36460565e-014,  -0.500000298))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.00355911255,  0,  0.0820550919,  0.499999642,  -1.38011093e-014,  -0.866025567,  -7.10542736e-015,  1,  7.10542736e-015,  0.866025627,  -3.38788869e-015,  0.499999791))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.00206279755,  0,  -0.0835399628,  -0.866025627,  3.38788869e-015,  -0.499999791,  -7.10542736e-015,  1,  7.10542736e-015,  0.499999642,  -1.38011093e-014,  -0.866025567))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.00206565857,  0,  0.0764513016,  -0.866025627,  3.38788869e-015,  -0.499999791,  -7.10542736e-015,  1,  7.10542736e-015,  0.499999642,  -1.38011093e-014,  -0.866025567))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.00410270691,  0,  -0.0799913406,  -2.68220901e-007,  -1.02581687e-014,  -1,  -7.10542736e-015,  1,  7.10542736e-015,  1,  -9.83455057e-015,  -8.94069672e-008))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.00410270691,  0,  0.0800023079,  -2.68220901e-007,  -1.02581687e-014,  -1,  -7.10542736e-015,  1,  7.10542736e-015,  1,  -9.83455057e-015,  -8.94069672e-008))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(4.76837158e-006,  0,  -0.0758914948,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.0020403862,  0,  -0.0764379501,  0.86602515,  -1.36460565e-014,  -0.500000298,  -7.10542736e-015,  1,  7.10542736e-015,  0.500000477,  3.96655577e-015,  0.866025209))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.00355911255,  0,  -0.0820565224,  -0.500000477,  -3.96655577e-015,  -0.866025209,  -7.10542736e-015,  1,  7.10542736e-015,  0.86602515,  -1.36460565e-014,  -0.500000298))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(9.05990601e-006,  0,  0.0841112137,  1,  -9.83454888e-015,  8.94069672e-008,  -7.10542736e-015,  1,  7.10542736e-015,  8.94069672e-008,  1.02581704e-014,  1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))
Part = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Really black", "Part", Vector3.new(0.200000003,  0.800000012,  0.200000003))
Partweld = weld(Vepr, Handle, Part, CFrame.new(0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1), CFrame.new(-0.0035533905,  0,  -0.0779447556,  0.499999642,  -1.38011093e-014,  -0.866025567,  -7.10542736e-015,  1,  7.10542736e-015,  0.866025627,  -3.38788869e-015,  0.499999791))
mesh("CylinderMesh", Part, "", "", Vector3.new(0,  0,  0), Vector3.new(0.150000006,  1,  0.150000006))

game:GetService("RunService").Stepped:connect(function()
        Angle = (Angle % 100) + angleSpeed/10
        walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
        jumpVel = Torso.Velocity.Y

        if(Humanoid.Jump) and jumpVel > 1 then
                currentAnim = "Jumping"
        elseif freeFalling == true  then
                currentAnim = "Falling"
        elseif walkingMagnitude < 2 then
                currentAnim = "Idling"
        elseif isSprinting == true then
                currentAnim = "Sprinting"
        elseif walkingMagnitude > 2 then
                currentAnim = "Walking"
        end

        if currentAnim == "Jumping" and Animations == false then
                angleSpeed = 1
                axisSpeed = 1
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5, 0.5, -0.1) * c_angles(math.rad(-10), math.rad(0), math.rad(10)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5, 0.5, -0.1) * c_angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(10)), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)) * c_angles(math.rad(0), math.rad(0), rootPart.RotVelocity.Y/55), 0.4)
                Head_Weld.C0         = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)

        elseif currentAnim == "Falling" and Animations == false then
                angleSpeed = 1
                axisSpeed = 1
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5, 0.5, -0.1) * c_angles(math.rad(0), math.rad(0), math.rad(65)), 0.125)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5, 0.5, -0.1) * c_angles(math.rad(0), math.rad(0), math.rad(-65)), 0.125)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5, -0.4, -0.4) * c_angles(math.rad(-5), math.rad(0), math.rad(-2.5)), 0.125)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5, -0.4, -0.4) * c_angles(math.rad(-5), math.rad(0), math.rad(2.5)), 0.125)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.05)
                Head_Weld.C0         = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-17.5), math.rad(0), math.rad(0)), 0.125)        

        elseif currentAnim == "Idling" and Animations == false then
                angleSpeed = 0.25
                axisSpeed = 0.25
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5, 0.5 + math.sin(Angle) * 0.075, 0.1) * c_angles(math.rad(15) + math.sin(Angle) * 0.075, math.rad(0), math.rad(10) + math.sin(Angle) * 0.075), 0.125)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5, 0.5 + math.sin(Angle) * 0.075, 0.1) * c_angles(math.rad(-10) + math.sin(Angle) * 0.075, math.rad(0), math.rad(-10) - math.sin(Angle) * 0.075), 0.125)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5, -1.1 - math.sin(Angle) * 0.075, -0.25) * c_angles(math.rad(15), math.rad(0), math.rad(-7.5)), 0.125)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5, -1.1 - math.sin(Angle) * 0.075, -0.25) * c_angles(math.rad(-15), math.rad(0), math.rad(7.5)), 0.125)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(Angle) * 0.075, 0) * c_angles(math.rad(-5), math.rad(0), 0), 0.3)
                Head_Weld.C0         = clerp(Head_Weld.C0, c_new(0, 1.5, -0.05) * c_angles(math.rad(-5) + math.sin(Angle) * 0.05, math.rad(0), 0), 0.125)        

        elseif currentAnim == "Sprinting" and Animations == false then
                angleSpeed = 2
                axisSpeed = 2
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(-math.sin(Angle) * 2, math.rad(5) + math.sin(Angle) * 0.1, math.rad(5) + rootPart.RotVelocity.Y/35), 0.15)
                RA_Weld.C1                = c_new(0, 0.5, 0)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(-math.sin(Angle) * -2, math.rad(-5) + math.sin(Angle) * 0.1, math.rad(-5) + rootPart.RotVelocity.Y/35), 0.15)
                LA_Weld.C1                = c_new(0, 0.5, 0)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5, -1.15 + math_pos(-math.cos(Angle - 0.25) * 0.65), math_neg(math.asin(math.sin(Angle)) * 0.65)) * c_angles(-0.025 - math.asin(math.sin(Angle)) * 1, 0, -0.025 + -math.asin(math.sin(Angle)) * 0.025 + rootPart.RotVelocity.Y/25), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5, -1.15 + math_pos(math.cos(Angle - 0.25) * 0.65), math_neg(-math.asin(math.sin(Angle)) * 0.65)) * c_angles(-0.025 + math.asin(math.sin(Angle)) * 1, 0, 0.025 + -math.asin(math.sin(Angle)) * 0.025 + rootPart.RotVelocity.Y/25), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1 + math.abs(math.sin(Angle) * 0.25), 0) * c_angles(math.rad(-20) + math.abs(math.sin(Angle) * 0.05) + rootPart.RotVelocity.Y/35, math.sin(Angle) * 0.015, rootPart.RotVelocity.Y/55), 0.15)
                Head_Weld.C0         = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.abs((math.sin(Angle/2) * 0.5) * 0.05), math.sin(Angle) * -0.05 + rootPart.RotVelocity.Y/15 , 0), 0.15)

        elseif currentAnim == "Walking" and Animations == false then
                angleSpeed = 1
                axisSpeed = 1
                Humanoid.WalkSpeed = 7
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(-math.sin(Angle) * 0.6, math.rad(5) + math.sin(Angle) * 0.05, math.rad(5)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(-math.sin(Angle) * -0.6, math.rad(-5) + math.sin(Angle) * 0.05, math.rad(-5)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5, -1.05 + math_pos(-math.cos(Angle - 0.25) * 0.35), math_neg(math.asin(math.sin(Angle)) * 0.35)) * c_angles(-0.025 - math.asin(math.sin(Angle)) * 0.4, 0, -0.025 + -math.asin(math.sin(Angle)) * 0.025 - rootPart.RotVelocity.Y/65), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5, -1.05 + math_pos(math.cos(Angle - 0.25) * 0.35), math_neg(-math.asin(math.sin(Angle)) * 0.35)) * c_angles(-0.025 + math.asin(math.sin(Angle)) * 0.4, 0, 0.025 + -math.asin(math.sin(Angle)) * 0.025 - rootPart.RotVelocity.Y/65), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1 + math.abs(math.sin(Angle) * 0.05), 0) * c_angles(math.rad(-12.5) + math.abs(math.sin(Angle) * 0.05), math.sin(Angle) * 0.015, rootPart.RotVelocity.Y/55), 0.15)
                Head_Weld.C0         = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.abs((math.sin(Angle/2) * 0.5) * 0.05), math.sin(Angle) * -0.05 + rootPart.RotVelocity.Y/45, 0), 0.15)        
        end
end)