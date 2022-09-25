--Made by N3xul
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Tool")
o2 = Instance.new("Part")
o3 = Instance.new("CylinderMesh")
o4 = Instance.new("Part")
o5 = Instance.new("IntValue")
o6 = Instance.new("BlockMesh")
o7 = Instance.new("Part")
o8 = Instance.new("BlockMesh")
o9 = Instance.new("Part")
o10 = Instance.new("CylinderMesh")
o11 = Instance.new("Part")
o12 = Instance.new("SpecialMesh")
o13 = Instance.new("Part")
o14 = Instance.new("BlockMesh")
o15 = Instance.new("Part")
o16 = Instance.new("BlockMesh")
o17 = Instance.new("Part")
o18 = Instance.new("CylinderMesh")
o19 = Instance.new("Part")
o20 = Instance.new("BlockMesh")
o21 = Instance.new("Part")
o22 = Instance.new("SpecialMesh")
o23 = Instance.new("Part")
o24 = Instance.new("CylinderMesh")
o25 = Instance.new("Part")
o26 = Instance.new("BlockMesh")
o27 = Instance.new("Part")
o28 = Instance.new("BlockMesh")
o29 = Instance.new("Part")
o30 = Instance.new("BlockMesh")
o31 = Instance.new("Part")
o32 = Instance.new("BlockMesh")
o33 = Instance.new("Part")
o34 = Instance.new("CylinderMesh")
o35 = Instance.new("Part")
o36 = Instance.new("CylinderMesh")
o37 = Instance.new("Part")
o38 = Instance.new("BlockMesh")
o39 = Instance.new("Part")
o40 = Instance.new("BlockMesh")
o41 = Instance.new("Part")
o42 = Instance.new("CylinderMesh")
o43 = Instance.new("Part")
o44 = Instance.new("BlockMesh")
o45 = Instance.new("Part")
o46 = Instance.new("BlockMesh")
o47 = Instance.new("Part")
o48 = Instance.new("BlockMesh")
o49 = Instance.new("Part")
o50 = Instance.new("BlockMesh")
o51 = Instance.new("Part")
o52 = Instance.new("BlockMesh")
o53 = Instance.new("Part")
o54 = Instance.new("BlockMesh")
o55 = Instance.new("Part")
o56 = Instance.new("SpecialMesh")
o57 = Instance.new("Part")
o58 = Instance.new("BlockMesh")
o59 = Instance.new("Part")
o60 = Instance.new("SpecialMesh")
o61 = Instance.new("Part")
o62 = Instance.new("CylinderMesh")
o63 = Instance.new("Part")
o64 = Instance.new("BlockMesh")
o65 = Instance.new("Part")
o66 = Instance.new("BlockMesh")
o67 = Instance.new("Part")
o68 = Instance.new("BlockMesh")
o69 = Instance.new("Part")
o70 = Instance.new("SpecialMesh")
o71 = Instance.new("Part")
o72 = Instance.new("BlockMesh")
o73 = Instance.new("Part")
o74 = Instance.new("BlockMesh")
o75 = Instance.new("Part")
o76 = Instance.new("Sound")
o77 = Instance.new("Sound")
o79 = Instance.new("Part")
o80 = Instance.new("Part")
o81 = Instance.new("SpecialMesh")
o82 = Instance.new("Part")
o83 = Instance.new("SpecialMesh")
o84 = Instance.new("Part")
o85 = Instance.new("SpecialMesh")
o86 = Instance.new("Part")
o87 = Instance.new("BlockMesh")
o88 = Instance.new("Part")
o89 = Instance.new("SpecialMesh")
o90 = Instance.new("Part")
o91 = Instance.new("SpecialMesh")
o92 = Instance.new("Part")
o93 = Instance.new("SpecialMesh")
o94 = Instance.new("Part")
o95 = Instance.new("SpecialMesh")
o96 = Instance.new("Part")
o97 = Instance.new("BlockMesh")
o98 = Instance.new("Part")
o99 = Instance.new("BlockMesh")
o100 = Instance.new("Part")
o101 = Instance.new("BlockMesh")
o102 = Instance.new("LocalScript")
o103 = Instance.new("LocalScript")
o104 = Instance.new("NumberValue")
o105 = Instance.new("NumberValue")
o106 = Instance.new("ScreenGui")
o107 = Instance.new("Frame")
o108 = Instance.new("TextLabel")
o109 = Instance.new("Smoke")
o110 = Instance.new("Smoke")
o1.Name = "AK74"
o1.Parent = mas
o2.Name = "SmokePart"
o2.Parent = o1
o2.BrickColor = BrickColor.new("Black")
o2.Transparency = 1
o2.Position = Vector3.new(69.2977066, 3.61904788, 201.51828)
o2.Rotation = Vector3.new(90, -90, 0)
o2.Anchored = true
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(69.2977066, 3.61904788, 201.51828, -3.19382108e-014, 0, -1, -0.999999762, -2.4158453e-013, -3.19382108e-014, 2.4158453e-013, 0.999999762, 0)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.105882, 0.164706, 0.207843)
o2.Position = Vector3.new(69.2977066, 3.61904788, 201.51828)
o3.Parent = o2
o3.Scale = Vector3.new(0.600000024, 1, 0.600000024)
o4.Name = "NoSight"
o4.Parent = o1
o4.BrickColor = BrickColor.new("White")
o4.Transparency = 1
o4.Position = Vector3.new(69.2977066, 3.9342339, 201.089035)
o4.Rotation = Vector3.new(-0.00323153776, -0.00099320442, 0.0216091424)
o4.Anchored = true
o4.CanCollide = false
o4.Elasticity = 0
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o4.CFrame = CFrame.new(69.2977066, 3.9342339, 201.089035, 0.999998569, -0.000377150165, -1.73346871e-005, 0.000377151184, 1, 5.64008951e-005, 1.73282315e-005, -5.66393137e-005, 0.999998569)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.94902, 0.952941, 0.952941)
o4.Position = Vector3.new(69.2977066, 3.9342339, 201.089035)
o5.Name = "lenspart"
o5.Parent = o4
o6.Parent = o4
o6.Scale = Vector3.new(0.0476190485, 0.0476190485, 0.0476190485)
o7.Parent = o1
o7.BrickColor = BrickColor.new("Black")
o7.Position = Vector3.new(69.2977066, 3.6842339, 200.654068)
o7.Rotation = Vector3.new(-135.001236, -0.0161826368, 89.9821167)
o7.Anchored = true
o7.CanCollide = false
o7.Elasticity = 0
o7.FormFactor = Enum.FormFactor.Symmetric
o7.Size = Vector3.new(1, 1, 1)
o7.CFrame = CFrame.new(69.2977066, 3.6842339, 200.654068, 0.000312114571, -0.999998689, -0.000282440305, -0.707122445, -0.000420430471, 0.707091093, -0.707089782, -2.10231665e-005, -0.707121611)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.105882, 0.164706, 0.207843)
o7.Position = Vector3.new(69.2977066, 3.6842339, 200.654068)
o8.Parent = o7
o8.Scale = Vector3.new(0.0476190485, 0.0476190485, 0.142857149)
o9.Name = "Cylinder"
o9.Parent = o1
o9.BrickColor = BrickColor.new("Black")
o9.Position = Vector3.new(69.2977066, 3.62031507, 200.737213)
o9.Rotation = Vector3.new(-90.006012, -0.0233571213, -0.00436751125)
o9.Anchored = true
o9.CanCollide = false
o9.Elasticity = 0
o9.FormFactor = Enum.FormFactor.Symmetric
o9.Size = Vector3.new(1, 1, 1)
o9.CFrame = CFrame.new(69.2977066, 3.62031507, 200.737213, 0.999998629, 7.62273485e-005, -0.000407658663, 0.000407666783, -0.000104725361, 0.999999881, 7.61873307e-005, -0.99999845, -0.000104993582)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.105882, 0.164706, 0.207843)
o9.Position = Vector3.new(69.2977066, 3.62031507, 200.737213)
o10.Parent = o9
o10.Scale = Vector3.new(0.142857149, 0.90476191, 0.095238097)
o11.Name = "NoSight"
o11.Parent = o1
o11.BrickColor = BrickColor.new("Black")
o11.Position = Vector3.new(69.2977066, 3.93926787, 201.118301)
o11.Rotation = Vector3.new(-179.995514, -0.000882029475, -90.0216064)
o11.Anchored = true
o11.CanCollide = false
o11.Elasticity = 0
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(1, 1, 1)
o11.CFrame = CFrame.new(69.2977066, 3.93926787, 201.118301, -0.000377148564, 0.99999851, -1.53943183e-005, 1.00000024, 0.000377149729, 7.84248114e-005, 7.82907009e-005, -1.53648507e-005, -0.999998689)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.105882, 0.164706, 0.207843)
o11.Position = Vector3.new(69.2977066, 3.93926787, 201.118301)
o12.Parent = o11
o12.MeshId = "http://www.roblox.com/asset/?id=3270017"
o12.Scale = Vector3.new(0.0571428612, 0.0571428612, 0.428571433)
o12.MeshType = Enum.MeshType.FileMesh
o13.Name = "NoSight"
o13.Parent = o1
o13.BrickColor = BrickColor.new("Black")
o13.Position = Vector3.new(69.2977066, 3.76237607, 200.990097)
o13.Rotation = Vector3.new(-45.0002937, -0.0168264471, 90.0145645)
o13.Anchored = true
o13.CanCollide = false
o13.Elasticity = 0
o13.FormFactor = Enum.FormFactor.Symmetric
o13.Size = Vector3.new(1, 1, 1)
o13.CFrame = CFrame.new(69.2977066, 3.76237607, 200.990097, -0.00025420732, -0.999998689, -0.000293676887, 0.707103848, -0.000387427688, 0.707109749, -0.707108736, -2.78929874e-005, 0.707102537)
o13.BottomSurface = Enum.SurfaceType.Smooth
o13.TopSurface = Enum.SurfaceType.Smooth
o13.Color = Color3.new(0.105882, 0.164706, 0.207843)
o13.Position = Vector3.new(69.2977066, 3.76237607, 200.990097)
o14.Parent = o13
o14.Scale = Vector3.new(0.0476190485, 0.0238095243, 0.380952388)
o15.Name = "NoSight"
o15.Parent = o1
o15.BrickColor = BrickColor.new("Black")
o15.Position = Vector3.new(69.2977066, 3.76721001, 201.118103)
o15.Rotation = Vector3.new(0.00099977036, -0.00261890306, 90.0216064)
o15.Anchored = true
o15.CanCollide = false
o15.Elasticity = 0
o15.FormFactor = Enum.FormFactor.Symmetric
o15.Size = Vector3.new(1, 1, 1)
o15.CFrame = CFrame.new(69.2977066, 3.76721001, 201.118103, -0.000377149496, -0.999998689, -4.57084789e-005, 0.99999994, -0.000377148739, -1.74492598e-005, 1.71065331e-005, -4.57148781e-005, 0.999998629)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.105882, 0.164706, 0.207843)
o15.Position = Vector3.new(69.2977066, 3.76721001, 201.118103)
o16.Parent = o15
o16.Scale = Vector3.new(0.285714298, 0.0238095243, 0.0476190485)
o17.Name = "Cylinder"
o17.Parent = o1
o17.BrickColor = BrickColor.new("Really black")
o17.Position = Vector3.new(69.2977066, 3.62030005, 201.19812)
o17.Rotation = Vector3.new(-85.7927856, 89.9051285, 175.788956)
o17.Anchored = true
o17.CanCollide = false
o17.Elasticity = 0
o17.FormFactor = Enum.FormFactor.Plate
o17.Size = Vector3.new(1, 0.400000006, 1)
o17.CFrame = CFrame.new(69.2977066, 3.62030005, 201.19812, -0.000377150776, -2.77693744e-005, 0.999998629, 0.99999994, 6.66379929e-005, 0.000377152697, -6.6831708e-005, 0.99999851, 2.77441432e-005)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o17.Position = Vector3.new(69.2977066, 3.62030005, 201.19812)
o18.Parent = o17
o18.Offset = Vector3.new(0, -0.0185714271, 0)
o18.Scale = Vector3.new(0.0666666627, 0.0476190485, 0.099999994)
o19.Parent = o1
o19.BrickColor = BrickColor.new("Black")
o19.Position = Vector3.new(69.2977066, 3.7292459, 200.451019)
o19.Rotation = Vector3.new(-90.0007782, -0.0234805904, 89.9984131)
o19.Anchored = true
o19.CanCollide = false
o19.Elasticity = 0
o19.FormFactor = Enum.FormFactor.Symmetric
o19.Size = Vector3.new(1, 1, 1)
o19.CFrame = CFrame.new(69.2977066, 3.7292459, 200.451019, 2.7749209e-005, -0.999998629, -0.000409813598, -1.32024288e-005, -0.000409814005, 0.999999881, -0.999998629, -2.7773538e-005, -1.34557486e-005)
o19.BottomSurface = Enum.SurfaceType.Smooth
o19.TopSurface = Enum.SurfaceType.Smooth
o19.Color = Color3.new(0.105882, 0.164706, 0.207843)
o19.Position = Vector3.new(69.2977066, 3.7292459, 200.451019)
o20.Parent = o19
o20.Scale = Vector3.new(0.333333343, 0.0476190485, 0.0476190485)
o21.Name = "Wedge"
o21.Parent = o1
o21.BrickColor = BrickColor.new("Brown")
o21.Position = Vector3.new(69.2977066, 3.524261, 199.884064)
o21.Rotation = Vector3.new(179.999237, 0.000992271816, -0.024081884)
o21.Anchored = true
o21.CanCollide = false
o21.Elasticity = 0
o21.FormFactor = Enum.FormFactor.Symmetric
o21.Size = Vector3.new(1, 1, 1)
o21.CFrame = CFrame.new(69.2977066, 3.524261, 199.884064, 0.999998629, 0.000420307595, 1.73184108e-005, 0.000420307886, -0.999999881, -1.32024288e-005, 1.73127846e-005, 1.34557486e-005, -0.999998629)
o21.BottomSurface = Enum.SurfaceType.Smooth
o21.TopSurface = Enum.SurfaceType.Smooth
o21.Color = Color3.new(0.486275, 0.360784, 0.27451)
o21.Position = Vector3.new(69.2977066, 3.524261, 199.884064)
o22.Parent = o21
o22.Scale = Vector3.new(0.238095239, 0.0476190485, 0.476190478)
o22.MeshType = Enum.MeshType.Wedge
o23.Name = "Cylinder"
o23.Parent = o1
o23.BrickColor = BrickColor.new("Brown")
o23.Position = Vector3.new(69.2977066, 3.73920989, 200.074005)
o23.Rotation = Vector3.new(-85.7927856, 89.9051285, 175.788956)
o23.Anchored = true
o23.CanCollide = false
o23.Elasticity = 0
o23.FormFactor = Enum.FormFactor.Symmetric
o23.Size = Vector3.new(1, 1, 1)
o23.CFrame = CFrame.new(69.2977066, 3.73920989, 200.074005, -0.000377150776, -2.77693744e-005, 0.999998629, 0.99999994, 6.66379929e-005, 0.000377152697, -6.6831708e-005, 0.99999851, 2.77441432e-005)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Color = Color3.new(0.486275, 0.360784, 0.27451)
o23.Position = Vector3.new(69.2977066, 3.73920989, 200.074005)
o24.Parent = o23
o24.Scale = Vector3.new(0.285714298, 0.476190478, 0.238095239)
o25.Parent = o1
o25.BrickColor = BrickColor.new("Brown")
o25.Position = Vector3.new(69.2977066, 3.71525598, 199.979019)
o25.Rotation = Vector3.new(-89.9990234, -0.0198604949, -179.993881)
o25.Anchored = true
o25.CanCollide = false
o25.Elasticity = 0
o25.FormFactor = Enum.FormFactor.Symmetric
o25.Size = Vector3.new(1, 1, 1)
o25.CFrame = CFrame.new(69.2977066, 3.71525598, 199.979019, -0.999998569, 0.000106894113, -0.000346631015, -0.000346632791, -1.7285347e-005, 0.99999994, 0.000106887252, 0.999998331, 1.71065331e-005)
o25.BottomSurface = Enum.SurfaceType.Smooth
o25.TopSurface = Enum.SurfaceType.Smooth
o25.Color = Color3.new(0.486275, 0.360784, 0.27451)
o25.Position = Vector3.new(69.2977066, 3.71525598, 199.979019)
o26.Parent = o25
o26.Scale = Vector3.new(0.238095239, 0.666666687, 0.0476190485)
o27.Parent = o1
o27.BrickColor = BrickColor.new("Brown")
o27.Position = Vector3.new(69.2977066, 3.6673429, 199.97905)
o27.Rotation = Vector3.new(-89.9990158, -0.0408415273, -179.993881)
o27.Anchored = true
o27.CanCollide = false
o27.Elasticity = 0
o27.FormFactor = Enum.FormFactor.Symmetric
o27.Size = Vector3.new(1, 1, 1)
o27.CFrame = CFrame.new(69.2977066, 3.6673429, 199.97905, -0.999998391, 0.000106894106, -0.000712819048, -0.000712821377, -1.7285347e-005, 0.999999821, 0.000106862339, 0.999998331, 1.73002481e-005)
o27.BottomSurface = Enum.SurfaceType.Smooth
o27.TopSurface = Enum.SurfaceType.Smooth
o27.Color = Color3.new(0.486275, 0.360784, 0.27451)
o27.Position = Vector3.new(69.2977066, 3.6673429, 199.97905)
o28.Parent = o27
o28.Scale = Vector3.new(0.238095239, 0.095238097, 0.0476190485)
o29.Parent = o1
o29.BrickColor = BrickColor.new("Brown")
o29.Position = Vector3.new(69.2977066, 3.66725087, 200.21788)
o29.Rotation = Vector3.new(-89.9780426, -0.0233572777, 179.999146)
o29.Anchored = true
o29.CanCollide = false
o29.Elasticity = 0
o29.FormFactor = Enum.FormFactor.Symmetric
o29.Size = Vector3.new(1, 1, 1)
o29.CFrame = CFrame.new(69.2977066, 3.66725087, 200.21788, -0.999998629, -1.50081187e-005, -0.000407661399, -0.000407697604, -0.000383511186, 1, -1.51522909e-005, 0.999998629, 0.000383272767)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.486275, 0.360784, 0.27451)
o29.Position = Vector3.new(69.2977066, 3.66725087, 200.21788)
o30.Parent = o29
o30.Scale = Vector3.new(0.238095239, 0.190476194, 0.0476190485)
o31.Parent = o1
o31.BrickColor = BrickColor.new("Brown")
o31.Position = Vector3.new(69.2977066, 3.5962379, 199.978958)
o31.Rotation = Vector3.new(-89.9990234, -0.0198604949, -179.993881)
o31.Anchored = true
o31.CanCollide = false
o31.Elasticity = 0
o31.FormFactor = Enum.FormFactor.Symmetric
o31.Size = Vector3.new(1, 1, 1)
o31.CFrame = CFrame.new(69.2977066, 3.5962379, 199.978958, -0.999998569, 0.000106894113, -0.000346631015, -0.000346632791, -1.7285347e-005, 0.99999994, 0.000106887252, 0.999998331, 1.71065331e-005)
o31.BottomSurface = Enum.SurfaceType.Smooth
o31.TopSurface = Enum.SurfaceType.Smooth
o31.Color = Color3.new(0.486275, 0.360784, 0.27451)
o31.Position = Vector3.new(69.2977066, 3.5962379, 199.978958)
o32.Parent = o31
o32.Scale = Vector3.new(0.238095239, 0.666666687, 0.095238097)
o33.Name = "Cylinder"
o33.Parent = o1
o33.BrickColor = BrickColor.new("Black")
o33.Position = Vector3.new(69.2977066, 3.75830197, 198.932236)
o33.Rotation = Vector3.new(-85.7927856, 89.9051285, 175.788956)
o33.Anchored = true
o33.CanCollide = false
o33.Elasticity = 0
o33.FormFactor = Enum.FormFactor.Symmetric
o33.Size = Vector3.new(1, 1, 1)
o33.CFrame = CFrame.new(69.2977066, 3.75830197, 198.932236, -0.000377150776, -2.77693744e-005, 0.999998629, 0.99999994, 6.66379929e-005, 0.000377152697, -6.6831708e-005, 0.99999851, 2.77441432e-005)
o33.BottomSurface = Enum.SurfaceType.Smooth
o33.TopSurface = Enum.SurfaceType.Smooth
o33.Color = Color3.new(0.105882, 0.164706, 0.207843)
o33.Position = Vector3.new(69.2977066, 3.75830197, 198.932236)
o34.Parent = o33
o34.Scale = Vector3.new(0.285714298, 1.23809528, 0.238095239)
o35.Name = "NoSight"
o35.Parent = o1
o35.BrickColor = BrickColor.new("Black")
o35.Position = Vector3.new(69.254982, 3.91026211, 199.527023)
o35.Rotation = Vector3.new(-90.0007782, -0.0234805904, 89.9984131)
o35.Anchored = true
o35.CanCollide = false
o35.Elasticity = 0
o35.FormFactor = Enum.FormFactor.Custom
o35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o35.CFrame = CFrame.new(69.254982, 3.91026211, 199.527023, 2.7749209e-005, -0.999998629, -0.000409813598, -1.32024288e-005, -0.000409814005, 0.999999881, -0.999998629, -2.7773538e-005, -1.34557486e-005)
o35.BottomSurface = Enum.SurfaceType.Smooth
o35.TopSurface = Enum.SurfaceType.Smooth
o35.Color = Color3.new(0.105882, 0.164706, 0.207843)
o35.Position = Vector3.new(69.254982, 3.91026211, 199.527023)
o36.Parent = o35
o36.Scale = Vector3.new(0.238095134, 0.190476194, 0.285714239)
o37.Name = "NoSight"
o37.Parent = o1
o37.BrickColor = BrickColor.new("Black")
o37.Position = Vector3.new(69.3396988, 3.9203341, 199.403091)
o37.Rotation = Vector3.new(94.2072678, -89.9051285, -175.793839)
o37.Anchored = true
o37.CanCollide = false
o37.Elasticity = 0
o37.FormFactor = Enum.FormFactor.Custom
o37.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o37.CFrame = CFrame.new(69.3396988, 3.9203341, 199.403091, -0.000377149467, 2.77368908e-005, -0.999998629, 0.99999994, 1.94311142e-005, -0.000377149001, 1.92373991e-005, -0.999998629, -2.77441795e-005)
o37.BottomSurface = Enum.SurfaceType.Smooth
o37.TopSurface = Enum.SurfaceType.Smooth
o37.Color = Color3.new(0.105882, 0.164706, 0.207843)
o37.Position = Vector3.new(69.3396988, 3.9203341, 199.403091)
o38.Parent = o37
o38.Scale = Vector3.new(0.19047603, 0.142857149, 0.285714239)
o39.Parent = o1
o39.BrickColor = BrickColor.new("Brown")
o39.Position = Vector3.new(69.2977066, 3.66739011, 199.741104)
o39.Rotation = Vector3.new(-89.9990158, -0.0408415273, -179.993881)
o39.Anchored = true
o39.CanCollide = false
o39.Elasticity = 0
o39.FormFactor = Enum.FormFactor.Symmetric
o39.Size = Vector3.new(1, 1, 1)
o39.CFrame = CFrame.new(69.2977066, 3.66739011, 199.741104, -0.999998391, 0.000106894106, -0.000712819048, -0.000712821377, -1.7285347e-005, 0.999999821, 0.000106862339, 0.999998331, 1.73002481e-005)
o39.BottomSurface = Enum.SurfaceType.Smooth
o39.TopSurface = Enum.SurfaceType.Smooth
o39.Color = Color3.new(0.486275, 0.360784, 0.27451)
o39.Position = Vector3.new(69.2977066, 3.66739011, 199.741104)
o40.Parent = o39
o40.Scale = Vector3.new(0.238095239, 0.190476194, 0.0476190485)
o41.Name = "Cylinder"
o41.Parent = o1
o41.BrickColor = BrickColor.new("Brown")
o41.Position = Vector3.new(69.2977066, 3.52424788, 199.718033)
o41.Rotation = Vector3.new(89.9967575, 0.0246726405, -90.0008774)
o41.Anchored = true
o41.CanCollide = false
o41.Elasticity = 0
o41.FormFactor = Enum.FormFactor.Symmetric
o41.Size = Vector3.new(1, 1, 1)
o41.CFrame = CFrame.new(69.2977066, 3.52424788, 199.718033, -1.53435158e-005, 0.99999851, 0.000430618791, -5.63710928e-005, 0.000430618064, -1, -0.99999845, -1.53656074e-005, 5.66393137e-005)
o41.BottomSurface = Enum.SurfaceType.Smooth
o41.TopSurface = Enum.SurfaceType.Smooth
o41.Color = Color3.new(0.486275, 0.360784, 0.27451)
o41.Position = Vector3.new(69.2977066, 3.52424788, 199.718033)
o42.Parent = o41
o42.Scale = Vector3.new(0.142857149, 0.238095239, 0.142857149)
o43.Name = "NoSight"
o43.Parent = o1
o43.BrickColor = BrickColor.new("Black")
o43.Position = Vector3.new(69.2977066, 3.9103539, 199.532043)
o43.Rotation = Vector3.new(94.2072678, -89.9051285, -175.793839)
o43.Anchored = true
o43.CanCollide = false
o43.Elasticity = 0
o43.FormFactor = Enum.FormFactor.Custom
o43.Size = Vector3.new(0.200000003, 0.285714298, 0.200000003)
o43.CFrame = CFrame.new(69.2977066, 3.9103539, 199.532043, -0.000377149467, 2.77368908e-005, -0.999998629, 0.99999994, 1.94311142e-005, -0.000377149001, 1.92373991e-005, -0.999998629, -2.77441795e-005)
o43.BottomSurface = Enum.SurfaceType.Smooth
o43.TopSurface = Enum.SurfaceType.Smooth
o43.Color = Color3.new(0.105882, 0.164706, 0.207843)
o43.Position = Vector3.new(69.2977066, 3.9103539, 199.532043)
o44.Parent = o43
o44.Scale = Vector3.new(0.095238097, 1, 0.238095224)
o45.Parent = o1
o45.BrickColor = BrickColor.new("Black")
o45.Position = Vector3.new(69.2977066, 3.81024194, 199.693863)
o45.Rotation = Vector3.new(-89.9990234, -0.0198604949, -179.993881)
o45.Anchored = true
o45.CanCollide = false
o45.Elasticity = 0
o45.FormFactor = Enum.FormFactor.Symmetric
o45.Size = Vector3.new(1, 1, 1)
o45.CFrame = CFrame.new(69.2977066, 3.81024194, 199.693863, -0.999998569, 0.000106894113, -0.000346631015, -0.000346632791, -1.7285347e-005, 0.99999994, 0.000106887252, 0.999998331, 1.71065331e-005)
o45.BottomSurface = Enum.SurfaceType.Smooth
o45.TopSurface = Enum.SurfaceType.Smooth
o45.Color = Color3.new(0.105882, 0.164706, 0.207843)
o45.Position = Vector3.new(69.2977066, 3.81024194, 199.693863)
o46.Parent = o45
o46.Scale = Vector3.new(0.238095239, 0.285714298, 0.142857149)
o47.Name = "NoSight"
o47.Parent = o1
o47.BrickColor = BrickColor.new("Black")
o47.Position = Vector3.new(69.2977066, 3.8913281, 199.656097)
o47.Rotation = Vector3.new(94.2072678, -89.9051285, -175.793839)
o47.Anchored = true
o47.CanCollide = false
o47.Elasticity = 0
o47.FormFactor = Enum.FormFactor.Custom
o47.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o47.CFrame = CFrame.new(69.2977066, 3.8913281, 199.656097, -0.000377149467, 2.77368908e-005, -0.999998629, 0.99999994, 1.94311142e-005, -0.000377149001, 1.92373991e-005, -0.999998629, -2.77441795e-005)
o47.BottomSurface = Enum.SurfaceType.Smooth
o47.TopSurface = Enum.SurfaceType.Smooth
o47.Color = Color3.new(0.105882, 0.164706, 0.207843)
o47.Position = Vector3.new(69.2977066, 3.8913281, 199.656097)
o48.Parent = o47
o48.Scale = Vector3.new(0.095237948, 0.285714298, 0.523809493)
o49.Name = "Mag1"
o49.Parent = o1
o49.BrickColor = BrickColor.new("Black")
o49.Position = Vector3.new(69.298439, 2.97143507, 198.956085)
o49.Rotation = Vector3.new(-120.001633, -0.0194266811, 179.986145)
o49.Anchored = true
o49.CanCollide = false
o49.Elasticity = 0
o49.FormFactor = Enum.FormFactor.Symmetric
o49.Size = Vector3.new(1, 1, 1)
o49.CFrame = CFrame.new(69.298439, 2.97143507, 198.956085, -0.99999851, -0.000241882386, -0.000339059538, -0.000414613256, 0.500024915, 0.866010785, -3.9932791e-005, 0.866009295, -0.500024438)
o49.BottomSurface = Enum.SurfaceType.Smooth
o49.TopSurface = Enum.SurfaceType.Smooth
o49.Color = Color3.new(0.105882, 0.164706, 0.207843)
o49.Position = Vector3.new(69.298439, 2.97143507, 198.956085)
o50.Parent = o49
o50.Scale = Vector3.new(0.142857149, 0.333333343, 0.238095239)
o51.Name = "Mag1"
o51.Parent = o1
o51.BrickColor = BrickColor.new("Black")
o51.Position = Vector3.new(69.2974625, 2.80036998, 199.091232)
o51.Rotation = Vector3.new(-135.00087, -0.0141806351, 179.980392)
o51.Anchored = true
o51.CanCollide = false
o51.Elasticity = 0
o51.FormFactor = Enum.FormFactor.Symmetric
o51.Size = Vector3.new(1, 1, 1)
o51.CFrame = CFrame.new(69.2974625, 2.80036998, 199.091232, -0.999998569, -0.00034218331, -0.00024749877, -0.000416969444, 0.707117915, 0.707095742, -6.68740104e-005, 0.707094431, -0.70711714)
o51.BottomSurface = Enum.SurfaceType.Smooth
o51.TopSurface = Enum.SurfaceType.Smooth
o51.Color = Color3.new(0.105882, 0.164706, 0.207843)
o51.Position = Vector3.new(69.2974625, 2.80036998, 199.091232)
o52.Parent = o51
o52.Scale = Vector3.new(0.142857149, 0.333333343, 0.285714298)
o53.Name = "NoSight"
o53.Parent = o1
o53.BrickColor = BrickColor.new("Black")
o53.Position = Vector3.new(69.254982, 3.9203341, 199.403091)
o53.Rotation = Vector3.new(94.2072678, -89.9051285, -175.793839)
o53.Anchored = true
o53.CanCollide = false
o53.Elasticity = 0
o53.FormFactor = Enum.FormFactor.Custom
o53.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o53.CFrame = CFrame.new(69.254982, 3.9203341, 199.403091, -0.000377149467, 2.77368908e-005, -0.999998629, 0.99999994, 1.94311142e-005, -0.000377149001, 1.92373991e-005, -0.999998629, -2.77441795e-005)
o53.BottomSurface = Enum.SurfaceType.Smooth
o53.TopSurface = Enum.SurfaceType.Smooth
o53.Color = Color3.new(0.105882, 0.164706, 0.207843)
o53.Position = Vector3.new(69.254982, 3.9203341, 199.403091)
o54.Parent = o53
o54.Scale = Vector3.new(0.19047603, 0.142857149, 0.285714239)
o55.Name = "NoSight"
o55.Parent = o1
o55.BrickColor = BrickColor.new("Black")
o55.Position = Vector3.new(69.301857, 3.92929196, 199.402985)
o55.Rotation = Vector3.new(-87.8713989, 89.9051285, 87.8690186)
o55.Anchored = true
o55.CanCollide = false
o55.Elasticity = 0
o55.FormFactor = Enum.FormFactor.Custom
o55.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o55.CFrame = CFrame.new(69.301857, 3.92929196, 199.402985, 1.51692539e-005, -0.00040766751, 0.999998629, -4.36753035e-005, 1.00000012, 0.000407668209, -0.999998569, -4.3913722e-005, 1.51522545e-005)
o55.BottomSurface = Enum.SurfaceType.Smooth
o55.TopSurface = Enum.SurfaceType.Smooth
o55.Color = Color3.new(0.105882, 0.164706, 0.207843)
o55.Position = Vector3.new(69.301857, 3.92929196, 199.402985)
o56.Parent = o55
o56.Scale = Vector3.new(0.142857105, 0.0952381045, 0.0952381343)
o56.MeshType = Enum.MeshType.Wedge
o57.Parent = o1
o57.BrickColor = BrickColor.new("Black")
o57.Position = Vector3.new(69.2977066, 3.810256, 198.9561)
o57.Rotation = Vector3.new(-90.006012, -0.0233571213, -0.00436751125)
o57.Anchored = true
o57.CanCollide = false
o57.Elasticity = 0
o57.FormFactor = Enum.FormFactor.Symmetric
o57.Size = Vector3.new(1, 1, 1)
o57.CFrame = CFrame.new(69.2977066, 3.810256, 198.9561, 0.999998629, 7.62273485e-005, -0.000407658663, 0.000407666783, -0.000104725361, 0.999999881, 7.61873307e-005, -0.99999845, -0.000104993582)
o57.BottomSurface = Enum.SurfaceType.Smooth
o57.TopSurface = Enum.SurfaceType.Smooth
o57.Color = Color3.new(0.105882, 0.164706, 0.207843)
o57.Position = Vector3.new(69.2977066, 3.810256, 198.9561)
o58.Parent = o57
o58.Scale = Vector3.new(0.238095239, 1.38095236, 0.0476190485)
o59.Name = "NoSight"
o59.Parent = o1
o59.BrickColor = BrickColor.new("Black")
o59.Position = Vector3.new(69.2930603, 3.92929196, 199.402985)
o59.Rotation = Vector3.new(92.5030975, -89.9051285, 92.5057678)
o59.Anchored = true
o59.CanCollide = false
o59.Elasticity = 0
o59.FormFactor = Enum.FormFactor.Custom
o59.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o59.CFrame = CFrame.new(69.2930603, 3.92929196, 199.402985, -1.51692557e-005, -0.000346632412, -0.999998629, 4.36753035e-005, 1.00000012, -0.000346633111, 0.999998569, -4.3913722e-005, -1.51530912e-005)
o59.BottomSurface = Enum.SurfaceType.Smooth
o59.TopSurface = Enum.SurfaceType.Smooth
o59.Color = Color3.new(0.105882, 0.164706, 0.207843)
o59.Position = Vector3.new(69.2930603, 3.92929196, 199.402985)
o60.Parent = o59
o60.Scale = Vector3.new(0.142857119, 0.095238097, 0.0952381045)
o60.MeshType = Enum.MeshType.Wedge
o61.Name = "NoSight"
o61.Parent = o1
o61.BrickColor = BrickColor.new("Black")
o61.Position = Vector3.new(69.3396988, 3.91026211, 199.527023)
o61.Rotation = Vector3.new(-90.0007782, -0.0234805904, 89.9984131)
o61.Anchored = true
o61.CanCollide = false
o61.Elasticity = 0
o61.FormFactor = Enum.FormFactor.Custom
o61.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o61.CFrame = CFrame.new(69.3396988, 3.91026211, 199.527023, 2.7749209e-005, -0.999998629, -0.000409813598, -1.32024288e-005, -0.000409814005, 0.999999881, -0.999998629, -2.7773538e-005, -1.34557486e-005)
o61.BottomSurface = Enum.SurfaceType.Smooth
o61.TopSurface = Enum.SurfaceType.Smooth
o61.Color = Color3.new(0.105882, 0.164706, 0.207843)
o61.Position = Vector3.new(69.3396988, 3.91026211, 199.527023)
o62.Parent = o61
o62.Scale = Vector3.new(0.238095134, 0.190476194, 0.285714298)
o63.Parent = o1
o63.BrickColor = BrickColor.new("Black")
o63.Position = Vector3.new(69.2977066, 3.64428711, 198.884186)
o63.Rotation = Vector3.new(-90.006012, -0.0233571213, -0.00436751125)
o63.Anchored = true
o63.CanCollide = false
o63.Elasticity = 0
o63.FormFactor = Enum.FormFactor.Symmetric
o63.Size = Vector3.new(1, 2, 1)
o63.CFrame = CFrame.new(69.2977066, 3.64428711, 198.884186, 0.999998629, 7.62273485e-005, -0.000407658663, 0.000407666783, -0.000104725361, 0.999999881, 7.61873307e-005, -0.99999845, -0.000104993582)
o63.BottomSurface = Enum.SurfaceType.Smooth
o63.TopSurface = Enum.SurfaceType.Smooth
o63.Color = Color3.new(0.105882, 0.164706, 0.207843)
o63.Position = Vector3.new(69.2977066, 3.64428711, 198.884186)
o64.Parent = o63
o64.Scale = Vector3.new(0.238095239, 0.761904776, 0.285714298)
o65.Name = "Mag1"
o65.Parent = o1
o65.BrickColor = BrickColor.new("Black")
o65.Position = Vector3.new(69.2977066, 3.39128089, 198.845901)
o65.Rotation = Vector3.new(-89.9990234, -0.0198604949, -179.993881)
o65.Anchored = true
o65.CanCollide = false
o65.Elasticity = 0
o65.FormFactor = Enum.FormFactor.Symmetric
o65.Size = Vector3.new(1, 1, 1)
o65.CFrame = CFrame.new(69.2977066, 3.39128089, 198.845901, -0.999998569, 0.000106894113, -0.000346631015, -0.000346632791, -1.7285347e-005, 0.99999994, 0.000106887252, 0.999998331, 1.71065331e-005)
o65.BottomSurface = Enum.SurfaceType.Smooth
o65.TopSurface = Enum.SurfaceType.Smooth
o65.Color = Color3.new(0.105882, 0.164706, 0.207843)
o65.Position = Vector3.new(69.2977066, 3.39128089, 198.845901)
o66.Parent = o65
o66.Scale = Vector3.new(0.142857149, 0.333333343, 0.285714298)
o67.Name = "Mag1"
o67.Parent = o1
o67.BrickColor = BrickColor.new("Black")
o67.Position = Vector3.new(69.298439, 3.167238, 198.874069)
o67.Rotation = Vector3.new(-105.001732, -0.0219448488, 179.990829)
o67.Anchored = true
o67.CanCollide = false
o67.Elasticity = 0
o67.FormFactor = Enum.FormFactor.Symmetric
o67.Size = Vector3.new(1, 1, 1)
o67.CFrame = CFrame.new(69.298439, 3.167238, 198.874069, -0.999998689, -0.000160119409, -0.000383009872, -0.000411395158, 0.258848459, 0.965918124, -5.55789957e-005, 0.965916514, -0.25884822)
o67.BottomSurface = Enum.SurfaceType.Smooth
o67.TopSurface = Enum.SurfaceType.Smooth
o67.Color = Color3.new(0.105882, 0.164706, 0.207843)
o67.Position = Vector3.new(69.298439, 3.167238, 198.874069)
o68.Parent = o67
o68.Scale = Vector3.new(0.142857149, 0.333333343, 0.285714298)
o69.Name = "Wedge"
o69.Parent = o1
o69.BrickColor = BrickColor.new("Black")
o69.Position = Vector3.new(69.2977066, 3.76335192, 198.07431)
o69.Rotation = Vector3.new(-0.00323153776, -0.00099320442, 0.0216091424)
o69.Anchored = true
o69.CanCollide = false
o69.Elasticity = 0
o69.FormFactor = Enum.FormFactor.Symmetric
o69.Size = Vector3.new(1, 1, 1)
o69.CFrame = CFrame.new(69.2977066, 3.76335192, 198.07431, 0.999998569, -0.000377150165, -1.73346871e-005, 0.000377151184, 1, 5.64008951e-005, 1.73282315e-005, -5.66393137e-005, 0.999998569)
o69.BottomSurface = Enum.SurfaceType.Smooth
o69.TopSurface = Enum.SurfaceType.Smooth
o69.Color = Color3.new(0.105882, 0.164706, 0.207843)
o69.Position = Vector3.new(69.2977066, 3.76335192, 198.07431)
o70.Parent = o69
o70.Scale = Vector3.new(0.238095239, 0.0476190485, 0.095238097)
o70.MeshType = Enum.MeshType.Wedge
o71.Parent = o1
o71.BrickColor = BrickColor.new("Brown")
o71.Position = Vector3.new(69.2977066, 3.24830794, 198.278915)
o71.Rotation = Vector3.new(-80.0031891, -0.0194450561, -179.99498)
o71.Anchored = true
o71.CanCollide = false
o71.Elasticity = 0
o71.FormFactor = Enum.FormFactor.Symmetric
o71.Size = Vector3.new(1, 1, 1)
o71.CFrame = CFrame.new(69.2977066, 3.24830794, 198.278915, -0.999998629, 8.76361664e-005, -0.000339380262, -0.000349432928, -0.173593849, 0.984817386, 2.74343911e-005, 0.984815717, 0.173593327)
o71.BottomSurface = Enum.SurfaceType.Smooth
o71.TopSurface = Enum.SurfaceType.Smooth
o71.Color = Color3.new(0.486275, 0.360784, 0.27451)
o71.Position = Vector3.new(69.2977066, 3.24830794, 198.278915)
o72.Parent = o71
o72.Scale = Vector3.new(0.190476194, 0.238095239, 0.619047642)
o73.Name = "Block"
o73.Parent = o1
o73.BrickColor = BrickColor.new("Black")
o73.Position = Vector3.new(69.2977066, 3.47234988, 198.498016)
o73.Rotation = Vector3.new(134.106293, -89.9030914, -105.903885)
o73.Anchored = true
o73.CanCollide = false
o73.Elasticity = 0
o73.FormFactor = Enum.FormFactor.Plate
o73.Size = Vector3.new(1, 0.400000006, 1)
o73.CFrame = CFrame.new(69.2977066, 3.47234988, 198.498016, -0.000150461565, 0.000528063392, -0.999998569, 0.866048634, -0.499959767, -0.00039429497, -0.499959201, -0.866047323, -0.000382182479)
o73.BottomSurface = Enum.SurfaceType.Smooth
o73.TopSurface = Enum.SurfaceType.Smooth
o73.Color = Color3.new(0.105882, 0.164706, 0.207843)
o73.Position = Vector3.new(69.2977066, 3.47234988, 198.498016)
o74.Parent = o73
o74.Scale = Vector3.new(0.095238097, 0.0476190485, 0.0476190485)
o75.Name = "Handle"
o75.Parent = o1
o75.Transparency = 1
o75.Position = Vector3.new(69.2974625, 3.28031993, 198.045059)
o75.Rotation = Vector3.new(179.999237, -0.000880051288, 179.978394)
o75.Anchored = true
o75.CanCollide = false
o75.Elasticity = 0
o75.FormFactor = Enum.FormFactor.Plate
o75.Size = Vector3.new(1, 0.400000006, 1)
o75.CFrame = CFrame.new(69.2974625, 3.28031993, 198.045059, -0.99999851, -0.000377149961, -1.53597921e-005, -0.000377149729, 0.999999881, -1.32918358e-005, 1.53648507e-005, -1.34557486e-005, -0.99999845)
o75.BottomSurface = Enum.SurfaceType.Smooth
o75.FrontSurface = Enum.SurfaceType.Universal
o75.TopSurface = Enum.SurfaceType.Smooth
o75.Position = Vector3.new(69.2974625, 3.28031993, 198.045059)
o76.Name = "Reload"
o76.Parent = o75
o76.SoundId = "http://www.roblox.com/asset/?id=2691591"
o76.Volume = 0.099999994039536
o77.Name = "Shoot"
o77.Parent = o75
o77.SoundId = "http://www.roblox.com/asset/?id=2920959"
o77.Volume = 1
o79.Name = "AimPart"
o79.Parent = o1
o79.BrickColor = BrickColor.new("Black")
o79.Transparency = 1
o79.Position = Vector3.new(69.2974625, 3.940202, 197.956024)
o79.Rotation = Vector3.new(-180, 0, -180)
o79.Anchored = true
o79.CanCollide = false
o79.FormFactor = Enum.FormFactor.Custom
o79.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o79.CFrame = CFrame.new(69.2974625, 3.940202, 197.956024, -1, 3.19382108e-014, 0, -3.19382108e-014, 0.999999762, 2.4158453e-013, -0, -2.4158453e-013, -0.999999762)
o79.BottomSurface = Enum.SurfaceType.Smooth
o79.TopSurface = Enum.SurfaceType.Smooth
o79.Color = Color3.new(0.105882, 0.164706, 0.207843)
o79.Position = Vector3.new(69.2974625, 3.940202, 197.956024)
o80.Name = "Wedge"
o80.Parent = o1
o80.BrickColor = BrickColor.new("Brown")
o80.Position = Vector3.new(69.2977066, 3.41328406, 198.16423)
o80.Rotation = Vector3.new(-80.0008011, -0.0228117164, 0.00421439391)
o80.Anchored = true
o80.CanCollide = false
o80.Elasticity = 0
o80.FormFactor = Enum.FormFactor.Symmetric
o80.Size = Vector3.new(1, 1, 1)
o80.CFrame = CFrame.new(69.2977066, 3.41328406, 198.16423, 0.999998569, -7.35549474e-005, -0.000398139557, 0.000404866703, 0.173634678, 0.984809995, -3.2952812e-006, -0.984808683, 0.173634306)
o80.BottomSurface = Enum.SurfaceType.Smooth
o80.TopSurface = Enum.SurfaceType.Smooth
o80.Color = Color3.new(0.486275, 0.360784, 0.27451)
o80.Position = Vector3.new(69.2977066, 3.41328406, 198.16423)
o81.Parent = o80
o81.Scale = Vector3.new(0.190476194, 0.0476190485, 0.142857149)
o81.MeshType = Enum.MeshType.Wedge
o82.Name = "Wedge"
o82.Parent = o1
o82.BrickColor = BrickColor.new("Brown")
o82.Position = Vector3.new(69.298439, 3.22434807, 197.384155)
o82.Rotation = Vector3.new(179.999237, 0.000992271816, -0.024081884)
o82.Anchored = true
o82.CanCollide = false
o82.Elasticity = 0
o82.FormFactor = Enum.FormFactor.Symmetric
o82.Size = Vector3.new(1, 1, 1)
o82.CFrame = CFrame.new(69.298439, 3.22434807, 197.384155, 0.999998629, 0.000420307595, 1.73184108e-005, 0.000420307886, -0.999999881, -1.32024288e-005, 1.73127846e-005, 1.34557486e-005, -0.999998629)
o82.BottomSurface = Enum.SurfaceType.Smooth
o82.TopSurface = Enum.SurfaceType.Smooth
o82.Color = Color3.new(0.486275, 0.360784, 0.27451)
o82.Position = Vector3.new(69.298439, 3.22434807, 197.384155)
o83.Parent = o82
o83.Scale = Vector3.new(0.238095239, 0.428571433, 1.28571427)
o83.MeshType = Enum.MeshType.Wedge
o84.Name = "Wedge"
o84.Parent = o1
o84.BrickColor = BrickColor.new("Black")
o84.Position = Vector3.new(69.2977066, 3.81024194, 198.194107)
o84.Rotation = Vector3.new(-0.00323153776, -0.00099320442, 0.0216091424)
o84.Anchored = true
o84.CanCollide = false
o84.Elasticity = 0
o84.FormFactor = Enum.FormFactor.Symmetric
o84.Size = Vector3.new(1, 1, 1)
o84.CFrame = CFrame.new(69.2977066, 3.81024194, 198.194107, 0.999998569, -0.000377150165, -1.73346871e-005, 0.000377151184, 1, 5.64008951e-005, 1.73282315e-005, -5.66393137e-005, 0.999998569)
o84.BottomSurface = Enum.SurfaceType.Smooth
o84.TopSurface = Enum.SurfaceType.Smooth
o84.Color = Color3.new(0.105882, 0.164706, 0.207843)
o84.Position = Vector3.new(69.2977066, 3.81024194, 198.194107)
o85.Parent = o84
o85.Scale = Vector3.new(0.238095239, 0.0476190485, 0.142857149)
o85.MeshType = Enum.MeshType.Wedge
o86.Parent = o1
o86.BrickColor = BrickColor.new("Brown")
o86.Position = Vector3.new(69.2977066, 3.53424001, 197.12207)
o86.Rotation = Vector3.new(-0.00323153776, -0.00099320442, 0.0216091424)
o86.Anchored = true
o86.CanCollide = false
o86.Elasticity = 0
o86.FormFactor = Enum.FormFactor.Symmetric
o86.Size = Vector3.new(1, 1, 1)
o86.CFrame = CFrame.new(69.2977066, 3.53424001, 197.12207, 0.999998569, -0.000377150165, -1.73346871e-005, 0.000377151184, 1, 5.64008951e-005, 1.73282315e-005, -5.66393137e-005, 0.999998569)
o86.BottomSurface = Enum.SurfaceType.Smooth
o86.TopSurface = Enum.SurfaceType.Smooth
o86.Color = Color3.new(0.486275, 0.360784, 0.27451)
o86.Position = Vector3.new(69.2977066, 3.53424001, 197.12207)
o87.Parent = o86
o87.Scale = Vector3.new(0.238095239, 0.190476194, 1.0476191)
o88.Name = "Wedge"
o88.Parent = o1
o88.BrickColor = BrickColor.new("Black")
o88.Position = Vector3.new(69.2977066, 3.47733998, 198.479065)
o88.Rotation = Vector3.new(179.999237, 0.000992271816, -0.024081884)
o88.Anchored = true
o88.CanCollide = false
o88.Elasticity = 0
o88.FormFactor = Enum.FormFactor.Symmetric
o88.Size = Vector3.new(1, 1, 1)
o88.CFrame = CFrame.new(69.2977066, 3.47733998, 198.479065, 0.999998629, 0.000420307595, 1.73184108e-005, 0.000420307886, -0.999999881, -1.32024288e-005, 1.73127846e-005, 1.34557486e-005, -0.999998629)
o88.BottomSurface = Enum.SurfaceType.Smooth
o88.TopSurface = Enum.SurfaceType.Smooth
o88.Color = Color3.new(0.105882, 0.164706, 0.207843)
o88.Position = Vector3.new(69.2977066, 3.47733998, 198.479065)
o89.Parent = o88
o89.Scale = Vector3.new(0.238095239, 0.0476190485, 0.714285731)
o89.MeshType = Enum.MeshType.Wedge
o90.Name = "Wedge"
o90.Parent = o1
o90.BrickColor = BrickColor.new("Brown")
o90.Position = Vector3.new(69.2977066, 3.60525489, 197.718201)
o90.Rotation = Vector3.new(179.999237, 0.00218755309, 179.975922)
o90.Anchored = true
o90.CanCollide = false
o90.Elasticity = 0
o90.FormFactor = Enum.FormFactor.Symmetric
o90.Size = Vector3.new(1, 1, 1)
o90.CFrame = CFrame.new(69.2977066, 3.60525489, 197.718201, -0.999998689, -0.000420309458, 3.81800055e-005, -0.000420310069, 0.999999881, -1.32620335e-005, -3.81743303e-005, -1.34557486e-005, -0.999998629)
o90.BottomSurface = Enum.SurfaceType.Smooth
o90.TopSurface = Enum.SurfaceType.Smooth
o90.Color = Color3.new(0.486275, 0.360784, 0.27451)
o90.Position = Vector3.new(69.2977066, 3.60525489, 197.718201)
o91.Parent = o90
o91.Scale = Vector3.new(0.238095239, 0.0476190485, 0.142857149)
o91.MeshType = Enum.MeshType.Wedge
o92.Name = "Wedge"
o92.Parent = o1
o92.BrickColor = BrickColor.new("Brown")
o92.Position = Vector3.new(69.2977066, 3.6534121, 197.908035)
o92.Rotation = Vector3.new(-0.00323153776, -0.00099320442, 0.0216091424)
o92.Anchored = true
o92.CanCollide = false
o92.Elasticity = 0
o92.FormFactor = Enum.FormFactor.Symmetric
o92.Size = Vector3.new(1, 1, 1)
o92.CFrame = CFrame.new(69.2977066, 3.6534121, 197.908035, 0.999998569, -0.000377150165, -1.73346871e-005, 0.000377151184, 1, 5.64008951e-005, 1.73282315e-005, -5.66393137e-005, 0.999998569)
o92.BottomSurface = Enum.SurfaceType.Smooth
o92.TopSurface = Enum.SurfaceType.Smooth
o92.Color = Color3.new(0.486275, 0.360784, 0.27451)
o92.Position = Vector3.new(69.2977066, 3.6534121, 197.908035)
o93.Parent = o92
o93.Scale = Vector3.new(0.238095239, 0.142857149, 0.238095239)
o93.MeshType = Enum.MeshType.Wedge
o94.Name = "Ring"
o94.Parent = o1
o94.BrickColor = BrickColor.new("Black")
o94.Position = Vector3.new(69.2977066, 3.47724891, 198.503067)
o94.Rotation = Vector3.new(92.1286011, -89.9051285, -87.8722458)
o94.Anchored = true
o94.CanCollide = false
o94.Elasticity = 0
o94.FormFactor = Enum.FormFactor.Symmetric
o94.Size = Vector3.new(1, 1, 1)
o94.CFrame = CFrame.new(69.2977066, 3.47724891, 198.503067, 1.51462345e-005, 0.00040766751, -0.999998629, 1.73449516e-005, -0.99999994, -0.000407667307, -0.999998569, -1.71065331e-005, -1.5152269e-005)
o94.BottomSurface = Enum.SurfaceType.Smooth
o94.TopSurface = Enum.SurfaceType.Smooth
o94.Color = Color3.new(0.105882, 0.164706, 0.207843)
o94.Position = Vector3.new(69.2977066, 3.47724891, 198.503067)
o95.Parent = o94
o95.MeshId = "http://www.roblox.com/asset/?id=3270017"
o95.Scale = Vector3.new(0.190476194, 0.142857149, 0.142857149)
o95.MeshType = Enum.MeshType.FileMesh
o96.Parent = o1
o96.BrickColor = BrickColor.new("Black")
o96.Position = Vector3.new(69.2977066, 3.59620595, 198.074112)
o96.Rotation = Vector3.new(-90.0060196, -0.00237609027, -0.00436409656)
o96.Anchored = true
o96.CanCollide = false
o96.Elasticity = 0
o96.FormFactor = Enum.FormFactor.Symmetric
o96.Size = Vector3.new(1, 1, 1)
o96.CFrame = CFrame.new(69.2977066, 3.59620595, 198.074112, 0.999998629, 7.61677511e-005, -4.14705974e-005, 4.14781134e-005, -0.000104755163, 1, 7.61922347e-005, -0.999998391, -0.000105023384)
o96.BottomSurface = Enum.SurfaceType.Smooth
o96.TopSurface = Enum.SurfaceType.Smooth
o96.Color = Color3.new(0.105882, 0.164706, 0.207843)
o96.Position = Vector3.new(69.2977066, 3.59620595, 198.074112)
o97.Parent = o96
o97.Scale = Vector3.new(0.238095239, 0.095238097, 0.285714298)
o98.Parent = o1
o98.BrickColor = BrickColor.new("Brown")
o98.Position = Vector3.new(69.2977066, 3.51039195, 197.836105)
o98.Rotation = Vector3.new(-0.00323153776, -0.00099320442, 0.0216091424)
o98.Anchored = true
o98.CanCollide = false
o98.Elasticity = 0
o98.FormFactor = Enum.FormFactor.Symmetric
o98.Size = Vector3.new(1, 1, 1)
o98.CFrame = CFrame.new(69.2977066, 3.51039195, 197.836105, 0.999998569, -0.000377150165, -1.73346871e-005, 0.000377151184, 1, 5.64008951e-005, 1.73282315e-005, -5.66393137e-005, 0.999998569)
o98.BottomSurface = Enum.SurfaceType.Smooth
o98.TopSurface = Enum.SurfaceType.Smooth
o98.Color = Color3.new(0.486275, 0.360784, 0.27451)
o98.Position = Vector3.new(69.2977066, 3.51039195, 197.836105)
o99.Parent = o98
o99.Scale = Vector3.new(0.238095239, 0.142857149, 0.380952388)
o100.Parent = o1
o100.BrickColor = BrickColor.new("Brown")
o100.Position = Vector3.new(69.2977066, 3.22426009, 196.67012)
o100.Rotation = Vector3.new(-0.00323153776, -0.00099320442, 0.0216091424)
o100.Anchored = true
o100.CanCollide = false
o100.Elasticity = 0
o100.FormFactor = Enum.FormFactor.Symmetric
o100.Size = Vector3.new(1, 1, 1)
o100.CFrame = CFrame.new(69.2977066, 3.22426009, 196.67012, 0.999998569, -0.000377150165, -1.73346871e-005, 0.000377151184, 1, 5.64008951e-005, 1.73282315e-005, -5.66393137e-005, 0.999998569)
o100.BottomSurface = Enum.SurfaceType.Smooth
o100.TopSurface = Enum.SurfaceType.Smooth
o100.Color = Color3.new(0.486275, 0.360784, 0.27451)
o100.Position = Vector3.new(69.2977066, 3.22426009, 196.67012)
o101.Parent = o100
o101.Scale = Vector3.new(0.238095239, 0.428571433, 0.142857149)
o102.Name = "Coloring"
o102.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
repeat
wait()
until script.Parent.Parent.Parent.ClassName == "Player"
g = script.Parent:GetChildren()
for i = 1,#g do
 if g[i].Name == "Color" then
  g[i].BrickColor = script.Parent.Parent.Parent.TeamColor
 end
end

end,o102)
end))
o103.Name = "Gun_Script"
o103.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(0.5)
--Edit settings below--
local Tool = script.Parent
local Settings = {
 Range = 700
 ,Spread = 5
 ,Damage = {18, 35}
 ,HeadShotDamage = {13, 14}
 ,Bullets = 1
 ,FireRate = 0.10
 ,Automatic = true
 ,AntiTK = false
 ,ImpactDuration = 3
 --Reload
 ,ReloadKey = "R"
 ,ReloadTime = 3
 ,Ammo = 30
 ,IncludeChamberedBullet = true
 --Gui
 ,GuiPos = Vector2.new(script.Gui.Frame.Position.X.Scale, script.Gui.Frame.Position.Y.Scale)
 --Arms
 ,OneHanded = false
 ,FakeArms = true
 ,FakeArmTransparency = 1
 ,RightPos = CFrame.new(-0.75, -0.25, 0.5) * CFrame.Angles(math.rad(-90), 0, 0)
 ,LeftPos = CFrame.new(1, 0.5, 0.5) * CFrame.Angles(math.rad(-90), math.rad(45), 0)
 ,AimPart = Tool.AimPart
 ,AimPartOffset = CFrame.new()
 ,AimGripOffset = Vector3.new(0, 0, 0)
 ,LeftAimPos = CFrame.new(1, 0.5, 0.5) * CFrame.Angles(math.rad(-100), math.rad(45), 0)
 ,AimAnim = {
  Enabled = false
  ,Frames = 50
  ,Time = 0.1
 }
 ,ChangeFOV = {true, 60}
 ,SpreadReduction = 3
 --Weld
 ,Weld = true
 --Mouse
 ,Icons = {
  Idle = "rbxassetid://70288585"
  ,Fire1 = "rbxassetid://70288578"
  ,Fire2 = "rbxassetid://70288572"
  ,Fire3 = "rbxassetid://70288578"
  ,Reload = "rbxassetid://70288599"
  ,Aim = "rbxasset://textures/Blank.png"
 }
 ,FireMouseAnimTime = 0.15
 --Recoil
 ,Recoil = math.rad(1.2)
 --Smoke
 ,Smoke = true
 ,SmokePart = Tool.SmokePart
 ,Smokes = {{script.Smoke, 6, 0.1}, {script.Smoke1, 0.1}, {script.Smoke1, 0.1}}
 --Sprint
 ,Sprint = true
 ,SprintSpeed = 25
 ,SprintKey = "0"
 ,SprintSpreadIncrease = 40
 ,SprintArmOffset = CFrame.new(0.25, 0.125, 0.25) * CFrame.Angles(math.rad(-30), math.rad(35), 0)
 --Other
 ,DropHats = false
}

--Do not edit below this lign--

local Orig_Spread = Settings.Spread
local Orig_Grip = Tool.GripPos

local Player = game.Players.LocalPlayer
local Character = Player.Character

local Camera = Workspace.CurrentCamera

local Ammo, StoredAmmo = script.Ammo, script.StoredAmmo

local Gui, CanUpdateGui = nil, true

local Sprinting, Equipped

function Update_Gui()
 if Gui and CanUpdateGui then
  Gui.Frame.AmmoDisplay.Text = Ammo.Value .. "|" .. StoredAmmo.Value
 end
end

local Welded
if Settings.Weld then
 Delay(0, function()
  local weldC0s = {}
  for i, v in pairs(Tool:GetChildren()) do
   if v:IsA("BasePart") and v ~= Tool.Handle then
    table.insert(weldC0s, {v, Tool.Handle.CFrame:toObjectSpace(v.CFrame)})
    v.Anchored = false
   end
  end
  Tool.Handle.Anchored = false
  local welds = {}
  Tool.Equipped:connect(function()
   for i, v in ipairs(welds) do
    v.Part1 = nil
    v:Destroy()
   end
   for i, v in ipairs(weldC0s) do
    if v[1] and v[2] then
     local w = Instance.new("Weld", Tool.Handle)
     w.Part0 = Tool.Handle
     w.Part1 = v[1]
     w.C0 = v[2]
     table.insert(welds, w)
    end
   end
  end)
  wait()
  Welded = true
 end)
end

local Left_Weld, Right_Weld

Ammo.Changed:connect(Update_Gui)
StoredAmmo.Changed:connect(Update_Gui)

Settings.Range = math.min(Settings.Range, 999)

local Ignore_Model = Workspace:FindFirstChild("Ray_Ignore") or Instance.new("Model", Workspace)
Ignore_Model.Name = "Ray_Ignore"

local Ray_Ignore = {Character, Ignore_Model, Camera}

Character.Humanoid.Died:connect(function()
 Tool.Parent = Player.Backpack
end)

function Fire(Mouse)
 local Spread = CFrame.Angles(math.rad(math.random(-Settings.Spread, Settings.Spread)/10), math.rad(math.random(-Settings.Spread, Settings.Spread)/10), math.rad(math.random(-Settings.Spread, Settings.Spread)/10))
 local Ray = Ray.new(Character.Head.Position, (CFrame.new(Character.Head.Position, Mouse.Hit.p) * Spread).lookVector.unit * Settings.Range)
 local Hit, Pos = Workspace:FindPartOnRayWithIgnoreList(Ray, Ray_Ignore)
 if Hit and Hit.Parent:FindFirstChild("Humanoid") then
  local Hit_Player = game.Players:GetPlayerFromCharacter(Hit.Parent)
  if Settings.AntiTK and not Hit_Player.Neutral and Hit_Player.TeamColor == Player.TeamColor then
   return
  end
  local Humanoid = Hit.Parent.Humanoid
  local c = Instance.new("ObjectValue")
  c.Name = "creator"
  c.Value = Player
  game.Debris:AddItem(c, 3)
  c.Parent = Humanoid
  if Hit.Name == "Head" then
   Humanoid.Health = Humanoid.Health - math.random(Settings.HeadShotDamage[1], Settings.HeadShotDamage[2])
  else
   Humanoid.Health = Humanoid.Health - math.random(Settings.Damage[1], Settings.Damage[2])
  end
 elseif Hit then
  local Hit_Part = Instance.new("Part", Ignore_Model)
  Hit_Part.FormFactor = "Custom"
  Hit_Part.TopSurface = 0
  Hit_Part.BottomSurface = 0
  Hit_Part.Anchored = true
  Hit_Part.CanCollide = false
  Hit_Part.Size = Vector3.new()
  Hit_Part.CFrame = CFrame.new(Pos) * CFrame.Angles(math.random(0, 360), math.random(0, 360), math.random(0, 360))
  Hit_Part.BrickColor = BrickColor.new("Black")
  game.Debris:AddItem(Hit_Part, Settings.ImpactDuration)
  if not Hit.Anchored then
   local w = Instance.new("Weld", Hit_Part)
   w.Part0 = Hit
   w.Part1 = Hit_Part
   w.C0 = Hit.CFrame:toObjectSpace(Hit_Part.CFrame)
   Hit_Part.Anchored = false
  end
  if Hit.Parent:IsA("Hat") and Settings.DropHats then
   Hit.Parent.Parent = workspace
   game.Debris:AddItem(Hit, 3)
  end
 end
end

local Can_Shoot = true
local Reloading = false

local First_Person = false

local Mouse_Held

Tool.Equipped:connect(function(Mouse)
 Equipped = true
 if Settings.Weld and not Welded then
  wait()
  Tool.Parent = Player.Backpack
 end
 Character = Player.Character
 if Gui then
  return
 end
 Ray_Ignore = {Character, Ignore_Model, Camera}
 Mouse.Icon = Settings.Icons.Idle
 Gui = script.Gui:Clone()
 Gui.Parent = Player.PlayerGui
 Gui.Frame.Position = UDim2.new(Settings.GuiPos.X, Gui.Frame.Position.X.Offset, 1.1, Gui.Frame.Position.Y.Offset)
 Gui.Frame:TweenPosition(UDim2.new(Settings.GuiPos.X, Gui.Frame.Position.X.Offset, Settings.GuiPos.Y, Gui.Frame.Position.Y.Offset), "Out", "Bounce", 1)
 CanUpdateGui = true
 Update_Gui()
 Mouse.Button1Down:connect(function()
  if Can_Shoot and Ammo.Value > 0 and Character.Humanoid.Health > 0 then
   Mouse_Held = true
   while true do
    Can_Shoot = false
    Delay(0, function()
     local t = math.min(Settings.FireMouseAnimTime/3, Settings.FireRate/3)
     if not Aiming then
      Mouse.Icon = Settings.Icons.Fire1
     end
     wait(t)
     if not Aiming then
      if Reloading then return end
      Mouse.Icon = Settings.Icons.Fire2
     end
     wait(t)
     if not Aiming then
      if Reloading then return end
      Mouse.Icon = Settings.Icons.Fire3
     end
     wait(t)
     if not Aiming then
      if Reloading then return end
      Mouse.Icon = Settings.Icons.Idle
     end
    end)
    if Settings.Smoke then
     for i, v in pairs(Settings.Smokes) do
      local s = v[1]:Clone()
      s.Parent = Settings.SmokePart
      s.Enabled = true
      game.Debris:AddItem(s, v[2])
      if v[3] then
       Delay(v[3], function()
        s.Enabled = false
       end)
      end
     end
    end
    for _ = 1, Settings.Bullets do
     Fire(Mouse)
    end
    Camera.CoordinateFrame = CFrame.new(Camera.Focus.p) * (Camera.CoordinateFrame - Camera.CoordinateFrame.p) * CFrame.Angles(math.abs(Settings.Recoil), 0, 0) * CFrame.new(0, 0, (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude)
    if Tool.Handle:FindFirstChild("Shoot") then
     Tool.Handle.Shoot:Play()
    end
    Ammo.Value = Ammo.Value - 1
    wait(Settings.FireRate)
    if not Settings.Automatic or Ammo.Value <= 0 or Character.Humanoid.Health <= 0 or not Mouse_Held then
     break
    end
   end
   Can_Shoot = true
  elseif Can_Shoot and Character.Humanoid.Health > 0 and Tool.Handle:FindFirstChild("Click") then
   Tool.Handle.Click:Play()
  end
 end)
 Mouse.Button1Up:connect(function()
  Mouse_Held = false
 end)
 Mouse.KeyDown:connect(function(Key)
  if Key:upper() == Settings.ReloadKey:upper() and Can_Shoot and StoredAmmo.Value > 0 and not Aiming then
   if Settings.IncludeChamberedBullet and Ammo.Value == Settings.Ammo + 1 or not Settings.IncludeChamberedBullet and Ammo.Value == Settings.Ammo then
    return
   end
   Can_Shoot = false
   Reloading = true
   local TextLabel = Gui.Frame.AmmoDisplay
   Delay(0, function()
    CanUpdateGui = false
    TextLabel.Text = "Reloading."
    wait(Settings.ReloadTime/3)
    if TextLabel then
     TextLabel.Text = "Reloading.."
    end
    wait(Settings.ReloadTime/3)
    if TextLabel then
     TextLabel.Text = "Reloading..."
    end
   end)
   if Tool.Handle:FindFirstChild("Reload") then
    Tool.Handle.Reload:Play()
   end
   Mouse.Icon = Settings.Icons.Reload
   wait(Settings.ReloadTime)
   Mouse.Icon = Settings.Icons.Idle
   CanUpdateGui = true
   local m = Settings.Ammo
   if Ammo.Value > 0 and Settings.IncludeChamberedBullet then
    m = m + 1
   end
   if (StoredAmmo.Value - (m - Ammo.Value)) <= 0 then
    Ammo.Value = Ammo.Value + StoredAmmo.Value
    StoredAmmo.Value = 0
   else
    StoredAmmo.Value = StoredAmmo.Value - (m - Ammo.Value)
    Ammo.Value = m
   end
   Can_Shoot = true
   Reloading = false
  elseif Key:upper() == Settings.SprintKey:upper() and Settings.Sprint and not Aiming then
   Sprinting = true
   Character.Humanoid.WalkSpeed = Settings.SprintSpeed
   Settings.Spread = Settings.Spread + Settings.SprintSpreadIncrease
  end
 end)
 Mouse.KeyUp:connect(function(Key)
  if Key:upper() == Settings.SprintKey:upper() and Sprinting then
   Sprinting = false
   Character.Humanoid.WalkSpeed = 16
   Settings.Spread = Settings.Spread - Settings.SprintSpreadIncrease
   Right_Weld.C0 = CFrame.new(0, -1.5, 0)
  end
 end)
 Mouse.Button2Down:connect(function()
  if not Reloading and not Sprinting and not Aiming and (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude < 1 then
   Aiming = true
   Mouse.Icon = Settings.Icons.Aim
   if Settings.AimAnim.Enabled then
    Right_Weld.C1 = CFrame.new()
    Right_Weld.C0 = CFrame.new()
    Delay(0, function()
     Tween_C0(Right_Weld, Settings.AimAnim.Frames, Settings.AimAnim.Time, Right_Weld.C0, Character.Head.CFrame:toObjectSpace(Settings.AimPart.CFrame))
    end)
    Delay(0, function()
     Tween_C1(Left_Weld, Settings.AimAnim.Frames, Settings.AimAnim.Time, Left_Weld.C1, Settings.LeftAimPos)
    end)
    Delay(0, function()
     if Settings.ChangeFOV[1] then
      Camera.FieldOfView = 70
      local Cam_Dif, T_F = 70 - Settings.ChangeFOV[2], Settings.AimAnim.Time * Settings.AimAnim.Frames
      for i = 1, T_F do
       local FOV = 70 - Cam_Dif/T_F * i
       Camera.FieldOfView = FOV
       wait(Settings.AimAnim.Time/Settings.AimAnim.Frames)
       if not Aiming then
        return
       end
      end
      Camera.FieldOfView = Settings.ChangeFOV[2]
     end
    end)
   else
    Right_Weld.C1 = CFrame.new()
    Right_Weld.C0 = CFrame.new()
    Right_Weld.C1 = Character.Head.CFrame:toObjectSpace(Settings.AimPart.CFrame)
    Left_Weld.C1 = Settings.LeftAimPos
    if Settings.ChangeFOV[1] then
     Camera.FieldOfView = Settings.ChangeFOV[2]
    end
   end
   Tool.GripPos = Orig_Grip + Settings.AimGripOffset
   Settings.Spread = Settings.Spread - Settings.SpreadReduction
  end
 end)
 Mouse.Button2Up:connect(function()
  if Aiming then
   Mouse.Icon = Settings.Icons.Idle
   Tool.GripPos = Orig_Grip
   if Settings.AimAnim.Enabled then
    Delay(0, function()
     Tween_C0(Right_Weld, Settings.AimAnim.Frames, Settings.AimAnim.Time, Right_Weld.C0, CFrame.new(0, -1.5, 0))
    end)
    Delay(0, function()
     Tween_C1(Left_Weld, Settings.AimAnim.Frames, Settings.AimAnim.Time, Left_Weld.C1, Settings.LeftPos)
    end)
   else
    Right_Weld.C1 = Settings.RightPos
    Right_Weld.C0 = CFrame.new(0, -1.5, 0)
    Left_Weld.C1 = Settings.LeftPos
   end
   if Settings.ChangeFOV[1] then
    Camera.FieldOfView = 70
   end
   Settings.Spread = Settings.Spread + Settings.SpreadReduction
   Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
   Character.Torso.Neck.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
   wait(0.25)
   Aiming = false
  end
 end)
 wait()
 Camera.Changed:connect(function()
  if (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude < 1 and Equipped then
   Mouse.TargetFilter = workspace
   Character.Torso.Neck.C1 = CFrame.new()
   Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.asin((Mouse.Hit.p - Mouse.Origin.p).unit.y), 0, 0)
  end
 end)
 Mouse.Idle:connect(function()
  if (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude < 1 and Equipped then
   Mouse.TargetFilter = workspace
   Character.Torso.Neck.C1 = CFrame.new()
   Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.asin((Mouse.Hit.p - Mouse.Origin.p).unit.y), 0, 0)
  end
 end)
 while wait() and Equipped do
  if Sprinting then
   Right_Weld.C0 = CFrame.new(0, -1.5, 0) * Settings.SprintArmOffset
   Left_Weld.C0 = CFrame.new(0, -1.5, 0) * Settings.SprintArmOffset
  elseif not Aiming then
   Left_Weld.C0 = CFrame.new(0, -1.5, 0)
  end
  if (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude > 1 and Equipped then
   Mouse.TargetFilter = nil
   Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
   Character.Torso.Neck.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
  end
 end
end)

local Arms_Made
local Fake_Arm_Right, Fake_Arm_Left, Fake_Arm_Model

Tool.Equipped:connect(function(Mouse)
 if Character and not Arms_Made then
  Arms_Made = true
  local Torso = Character.Torso
  Torso["Right Shoulder"].Part1 = nil
  Left_Weld = Instance.new("Weld", Torso)
  Left_Weld.Name = "Left_Weld"
  Left_Weld.Part0 = Character.Head
  Left_Weld.C0 = CFrame.new(0, -1.5, 0)
  if not Settings.OneHanded then
   Torso["Left Shoulder"].Part1 = nil
   Left_Weld.Part1 = Character["Left Arm"]
  end
  Right_Weld = Instance.new("Weld", Torso)
  Right_Weld.Name = "Right_Weld"
  Right_Weld.Part0 = Character.Head
  Right_Weld.Part1 = Character["Right Arm"]
  Right_Weld.C0 = CFrame.new(0, -1.5, 0)
  Left_Weld.C1 = Settings.LeftPos
  Right_Weld.C1 = Settings.RightPos
 end
 if Settings.FakeArms and not Fake_Arm_Right then
  Fake_Arm_Right, Fake_Arm_Left = Character["Right Arm"]:Clone(), Character["Left Arm"]:Clone()
  Fake_Arm_Right.FormFactor, Fake_Arm_Left.FormFactor = "Custom", "Custom"
  Fake_Arm_Right.Size, Fake_Arm_Left.Size = Vector3.new(), Vector3.new()
  local fakeArms = {Fake_Arm_Right, Fake_Arm_Left}
  for i = 1, 2 do
   local w = Instance.new("Weld", fakeArms[i])
   w.Part0 = Character[fakeArms[i].Name]
   w.Part1 = fakeArms[i]
   fakeArms[i].Transparency = Settings.FakeArmTransparency
  end
  Fake_Arm_Model = Instance.new("Model", Camera)
  Fake_Arm_Right.Parent = Fake_Arm_Model
  if not Settings.OneHanded then
   Fake_Arm_Left.Parent = Fake_Arm_Model
  end
  Fake_Arm_Model.Name = "FakeArms"
  if Settings.CharacterMeshes then
   for i, v in pairs(Character:GetChildren()) do
    if v:IsA("CharacterMesh") and v.BodyPart == Enum.BodyPart.LeftArm or v:IsA("CharacterMesh") and v.BodyPart == Enum.BodyPart.RightArm then
     v:Clone().Parent = Fake_Arm_Model
    end
   end
  end
  if Character:FindFirstChild("Shirt") then
   Instance.new("Humanoid", Fake_Arm_Model)
   Character.Shirt:Clone().Parent = Fake_Arm_Model
  else
   local Arm_Mesh = Instance.new("SpecialMesh", Fake_Arm_Right)
   Arm_Mesh.MeshType, Arm_Mesh.Scale = "Brick", Vector3.new(5, 10, 5)
   local Arm_Mesh2 = Instance.new("SpecialMesh", Fake_Arm_Left)
   Arm_Mesh2.MeshType, Arm_Mesh2.Scale = "Brick", Vector3.new(5, 10, 5)
  end
 end
end)

Tool.Unequipped:connect(function()
 Equipped = false
 Tool.GripPos = Orig_Grip
 Aiming = false
 Settings.Spread = Orig_Spread
 if Settings.ChangeFOV[1] then
  Camera.FieldOfView = 70
 end
 if Gui then
  Gui:Destroy()
  Gui = nil
 end
 for i, v in pairs(Tool.Handle:GetChildren()) do
  if v:IsA("Sound") then
   v:Stop()
  end
 end
 if Fake_Arm_Right and Fake_Arm_Left and Fake_Arm_Model then
  Fake_Arm_Model:Destroy()
  Fake_Arm_Right, Fake_Arm_Left, Fake_Arm_Model = nil, nil, nil
 end
 if Character and Left_Weld and Right_Weld then
  Arms_Made = false
  local Torso = Character.Torso
  Torso["Right Shoulder"].Part1, Torso["Left Shoulder"].Part1 = Character["Right Arm"], Character["Left Arm"]
  Left_Weld:Destroy()
  Right_Weld:Destroy()
 end
 Sprinting = false
 Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
 Character.Torso.Neck.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
 Character.Humanoid.WalkSpeed = 16
end)

end,o103)
end))
o104.Name = "Ammo"
o104.Parent = o103
o104.Value = 30
o105.Name = "StoredAmmo"
o105.Parent = o103
o105.Value = 1200
o106.Name = "Gui"
o106.Parent = o103
o107.Parent = o106
o107.Position = UDim2.new(1,-200,1,-100)
o107.Size = UDim2.new(0,100,0,100)
o107.Position = UDim2.new(1,-200,1,-100)
o107.BackgroundColor3 = Color3.new(1, 1, 1)
o107.BackgroundTransparency = 1
o107.BorderSizePixel = 0
o108.Name = "AmmoDisplay"
o108.Parent = o107
o108.Size = UDim2.new(1,0,1,0)
o108.Text = ""
o108.BackgroundTransparency = 1
o108.FontSize = Enum.FontSize.Size24
o108.TextColor3 = Color3.new(0.917647, 0.917647, 0.917647)
o108.TextStrokeTransparency = 0.5
o108.TextXAlignment = Enum.TextXAlignment.Right
o109.Parent = o103
o109.Size = 0.30000001192093
o109.Color = Color3.new(0.372549, 0.372549, 0.372549)
o109.Enabled = false
o109.Opacity = 0.30000001192093
o109.RiseVelocity = 15
o110.Name = "Smoke1"
o110.Parent = o103
o110.Size = 0.10000000149012
o110.Color = Color3.new(1, 0.6, 0.2)
o110.Enabled = false
o110.Opacity = 0.40000000596046
o110.RiseVelocity = 3
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
 mas1[i].Parent = game:GetService("Players").LocalPlayer.Backpack 
 ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end