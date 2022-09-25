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
o3 = Instance.new("BlockMesh")
o4 = Instance.new("Part")
o5 = Instance.new("BlockMesh")
o6 = Instance.new("Part")
o7 = Instance.new("BlockMesh")
o8 = Instance.new("Part")
o9 = Instance.new("BlockMesh")
o10 = Instance.new("Part")
o11 = Instance.new("CylinderMesh")
o12 = Instance.new("Part")
o13 = Instance.new("CylinderMesh")
o14 = Instance.new("Part")
o15 = Instance.new("CylinderMesh")
o16 = Instance.new("Part")
o17 = Instance.new("CylinderMesh")
o18 = Instance.new("Part")
o19 = Instance.new("CylinderMesh")
o20 = Instance.new("Part")
o21 = Instance.new("CylinderMesh")
o22 = Instance.new("Part")
o23 = Instance.new("CylinderMesh")
o24 = Instance.new("Part")
o25 = Instance.new("CylinderMesh")
o26 = Instance.new("Part")
o27 = Instance.new("BlockMesh")
o28 = Instance.new("Part")
o29 = Instance.new("BlockMesh")
o30 = Instance.new("Part")
o31 = Instance.new("BlockMesh")
o32 = Instance.new("Part")
o33 = Instance.new("BlockMesh")
o34 = Instance.new("Part")
o35 = Instance.new("BlockMesh")
o36 = Instance.new("Part")
o37 = Instance.new("BlockMesh")
o38 = Instance.new("Part")
o39 = Instance.new("BlockMesh")
o40 = Instance.new("Part")
o41 = Instance.new("BlockMesh")
o42 = Instance.new("Part")
o43 = Instance.new("BlockMesh")
o44 = Instance.new("Part")
o45 = Instance.new("BlockMesh")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Part")
o49 = Instance.new("BlockMesh")
o50 = Instance.new("Part")
o51 = Instance.new("BlockMesh")
o52 = Instance.new("Part")
o53 = Instance.new("BlockMesh")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("Part")
o57 = Instance.new("SpecialMesh")
o58 = Instance.new("Part")
o59 = Instance.new("SpecialMesh")
o60 = Instance.new("Part")
o61 = Instance.new("SpecialMesh")
o62 = Instance.new("Part")
o63 = Instance.new("SpecialMesh")
o64 = Instance.new("Part")
o65 = Instance.new("SpecialMesh")
o66 = Instance.new("Part")
o67 = Instance.new("SpecialMesh")
o68 = Instance.new("Part")
o69 = Instance.new("SpecialMesh")
o70 = Instance.new("Part")
o71 = Instance.new("SpecialMesh")
o72 = Instance.new("Part")
o73 = Instance.new("SpecialMesh")
o74 = Instance.new("Part")
o75 = Instance.new("SpecialMesh")
o76 = Instance.new("Part")
o77 = Instance.new("SpecialMesh")
o78 = Instance.new("Part")
o79 = Instance.new("SpecialMesh")
o80 = Instance.new("Part")
o81 = Instance.new("SpecialMesh")
o82 = Instance.new("Part")
o83 = Instance.new("SpecialMesh")
o84 = Instance.new("Part")
o85 = Instance.new("SpecialMesh")
o86 = Instance.new("Part")
o87 = Instance.new("SpecialMesh")
o88 = Instance.new("Part")
o89 = Instance.new("SpecialMesh")
o90 = Instance.new("Part")
o91 = Instance.new("SpecialMesh")
o92 = Instance.new("Part")
o93 = Instance.new("CylinderMesh")
o94 = Instance.new("Part")
o95 = Instance.new("Sound")
o96 = Instance.new("Sound")
o98 = Instance.new("Part")
o99 = Instance.new("LocalScript")
o100 = Instance.new("LocalScript")
o101 = Instance.new("NumberValue")
o102 = Instance.new("NumberValue")
o103 = Instance.new("ScreenGui")
o104 = Instance.new("Frame")
o105 = Instance.new("TextLabel")
o106 = Instance.new("Smoke")
o107 = Instance.new("Smoke")
o1.Name = "M1014"
o1.Parent = mas
o2.Name = "Block"
o2.Parent = o1
o2.BrickColor = BrickColor.new("Black")
o2.Position = Vector3.new(64.0497589, 5.13008213, 189.400009)
o2.Rotation = Vector3.new(-6.21202011e-018, -8.33763059e-010, -90)
o2.Anchored = true
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(1, 1, 1)
o2.CFrame = CFrame.new(64.0497589, 5.13008213, 189.400009, 2.98023153e-008, 0.999999166, -1.455191e-011, -0.999999881, -2.98023153e-008, 1.08420204e-019, -1.08420204e-019, -1.455191e-011, 1)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.105882, 0.164706, 0.207843)
o2.Position = Vector3.new(64.0497589, 5.13008213, 189.400009)
o3.Parent = o2
o3.Scale = Vector3.new(0.142857149, 0.0380952395, 0.0476190485)
o4.Name = "Block"
o4.Parent = o1
o4.BrickColor = BrickColor.new("Black")
o4.Position = Vector3.new(66.7416534, 4.73913908, 189.375443)
o4.Rotation = Vector3.new(-89.4603882, -74.9990768, -134.338562)
o4.Anchored = true
o4.FormFactor = Enum.FormFactor.Symmetric
o4.Size = Vector3.new(1, 1, 1)
o4.CFrame = CFrame.new(66.7416534, 4.73913908, 189.375443, -0.180896834, 0.18512243, -0.96592164, -0.681785882, 0.684236467, 0.258820683, 0.708832979, 0.705372155, 0.00243764091)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.105882, 0.164706, 0.207843)
o4.Position = Vector3.new(66.7416534, 4.73913908, 189.375443)
o5.Parent = o4
o5.Scale = Vector3.new(0.0190476198, 0.00476190494, 0.0190476198)
o6.Name = "Block"
o6.Parent = o1
o6.BrickColor = BrickColor.new("Black")
o6.Position = Vector3.new(66.7416534, 4.739151, 189.390808)
o6.Rotation = Vector3.new(-89.4603424, -74.9990616, 135.662155)
o6.Anchored = true
o6.FormFactor = Enum.FormFactor.Symmetric
o6.Size = Vector3.new(1, 1, 1)
o6.CFrame = CFrame.new(66.7416534, 4.739151, 189.390808, -0.185124889, -0.180894643, -0.965921581, -0.684244633, -0.681777716, 0.258820921, -0.70536375, 0.708841324, 0.00243785162)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.105882, 0.164706, 0.207843)
o6.Position = Vector3.new(66.7416534, 4.739151, 189.390808)
o7.Parent = o6
o7.Scale = Vector3.new(0.0190476142, 0.00476190494, 0.0190476216)
o8.Name = "Block"
o8.Parent = o1
o8.BrickColor = BrickColor.new("Black")
o8.Position = Vector3.new(66.7401886, 4.73433018, 189.390808)
o8.Rotation = Vector3.new(-89.460289, -74.9990387, -179.338135)
o8.Anchored = true
o8.FormFactor = Enum.FormFactor.Symmetric
o8.Size = Vector3.new(1, 1, 1)
o8.CFrame = CFrame.new(66.7401886, 4.73433018, 189.390808, -0.258814901, 0.00298987236, -0.965921462, -0.965923667, 0.00173828506, 0.258820862, 0.00245289016, 0.99999404, 0.0024380961)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.105882, 0.164706, 0.207843)
o8.Position = Vector3.new(66.7401886, 4.73433018, 189.390808)
o9.Parent = o8
o9.Scale = Vector3.new(0.0380952284, 0.00952380989, 0.0190476198)
o10.Name = "Cylinder"
o10.Parent = o1
o10.BrickColor = BrickColor.new("Black")
o10.Position = Vector3.new(66.1261749, 4.63275099, 189.394669)
o10.Rotation = Vector3.new(-90.1455231, 14.9997549, -89.8226547)
o10.Anchored = true
o10.FormFactor = Enum.FormFactor.Symmetric
o10.Size = Vector3.new(1, 1, 1)
o10.CFrame = CFrame.new(66.1261749, 4.63275099, 189.394669, 0.00298980833, 0.965921462, 0.258814901, 0.00173873792, -0.258820862, 0.965923607, 0.99999404, -0.00243791705, -0.00245331111)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.105882, 0.164706, 0.207843)
o10.Position = Vector3.new(66.1261749, 4.63275099, 189.394669)
o11.Parent = o10
o11.Scale = Vector3.new(0.142857149, 1.19047618, 0.142857149)
o12.Name = "Cylinder"
o12.Parent = o1
o12.BrickColor = BrickColor.new("Black")
o12.Position = Vector3.new(64.1996613, 5.44641018, 189.482437)
o12.Rotation = Vector3.new(-90.1455307, 14.9997568, 0.178342)
o12.Anchored = true
o12.FormFactor = Enum.FormFactor.Symmetric
o12.Size = Vector3.new(1, 1, 1)
o12.CFrame = CFrame.new(64.1996613, 5.44641018, 189.482437, 0.965921402, -0.00300658983, 0.258814931, -0.258820891, -0.00173428643, 0.965923607, -0.002455279, -0.99999398, -0.00245335489)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.105882, 0.164706, 0.207843)
o12.Position = Vector3.new(64.1996613, 5.44641018, 189.482437)
o13.Parent = o12
o13.Scale = Vector3.new(0.095238097, 0.0190476198, 0.0952377766)
o14.Name = "Cylinder"
o14.Parent = o1
o14.BrickColor = BrickColor.new("Black")
o14.Position = Vector3.new(62.7799835, 5.27568102, 189.403503)
o14.Rotation = Vector3.new(-90.0996246, -0.000169900886, -89.8286972)
o14.Anchored = true
o14.FormFactor = Enum.FormFactor.Symmetric
o14.Size = Vector3.new(1, 1, 1)
o14.CFrame = CFrame.new(62.7799835, 5.27568102, 189.403503, 0.00298989075, 0.999994814, -2.96532994e-006, 0.0017387002, -2.33948208e-006, 0.999998331, 0.99999404, -0.00298989308, -0.0017386995)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o14.Color = Color3.new(0.105882, 0.164706, 0.207843)
o14.Position = Vector3.new(62.7799835, 5.27568102, 189.403503)
o15.Parent = o14
o15.Scale = Vector3.new(0.171428576, 0.666666687, 0.114285722)
o16.Name = "Cylinder"
o16.Parent = o1
o16.BrickColor = BrickColor.new("Really black")
o16.Position = Vector3.new(67.0888214, 4.54772902, 189.391769)
o16.Rotation = Vector3.new(89.8544769, -14.9997568, -90.1773453)
o16.Anchored = true
o16.FormFactor = Enum.FormFactor.Symmetric
o16.Size = Vector3.new(1, 1.20000005, 1)
o16.CFrame = CFrame.new(67.0888214, 4.54772902, 189.391769, -0.00298966886, 0.965921581, -0.258814931, -0.00173879357, -0.258820921, -0.965923607, -0.99999404, -0.00243776804, 0.00245332904)
o16.BottomSurface = Enum.SurfaceType.Smooth
o16.TopSurface = Enum.SurfaceType.Smooth
o16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o16.Position = Vector3.new(67.0888214, 4.54772902, 189.391769)
o17.Parent = o16
o17.Offset = Vector3.new(0, -0.0185714271, 0)
o17.Scale = Vector3.new(0.099999994, 0.0190476198, 0.099999994)
o18.Name = "Cylinder"
o18.Parent = o1
o18.BrickColor = BrickColor.new("Black")
o18.Position = Vector3.new(65.917923, 4.86142111, 189.393753)
o18.Rotation = Vector3.new(-90.1455231, 14.9997635, -89.8226547)
o18.Anchored = true
o18.FormFactor = Enum.FormFactor.Symmetric
o18.Size = Vector3.new(1, 2.2900002, 1)
o18.CFrame = CFrame.new(65.917923, 4.86142111, 189.393753, 0.00298980926, 0.965921521, 0.25881505, 0.0017387392, -0.258820981, 0.965923667, 0.99999404, -0.00243791682, -0.00245331298)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o18.Color = Color3.new(0.105882, 0.164706, 0.207843)
o18.Position = Vector3.new(65.917923, 4.86142111, 189.393753)
o19.Parent = o18
o19.Scale = Vector3.new(0.142857149, 1.0476191, 0.142857149)
o20.Name = "Cylinder"
o20.Parent = o1
o20.BrickColor = BrickColor.new("Black")
o20.Position = Vector3.new(62.5839386, 5.57881308, 189.402924)
o20.Rotation = Vector3.new(-90.1336212, 11.2268991, -89.8253479)
o20.Anchored = true
o20.FormFactor = Enum.FormFactor.Symmetric
o20.Size = Vector3.new(1, 1, 1)
o20.CFrame = CFrame.new(62.5839386, 5.57881308, 189.402924, 0.00298989075, 0.980858505, 0.194694862, 0.0017387002, -0.194700688, 0.980861127, 0.99999404, -0.00259415316, -0.00228755432)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.105882, 0.164706, 0.207843)
o20.Position = Vector3.new(62.5839386, 5.57881308, 189.402924)
o21.Parent = o20
o21.Scale = Vector3.new(0.0571428612, 0.142857149, 0.114285722)
o22.Name = "Cylinder"
o22.Parent = o1
o22.BrickColor = BrickColor.new("Black")
o22.Position = Vector3.new(64.1984406, 5.44621515, 189.298584)
o22.Rotation = Vector3.new(-90.1455307, 14.9997568, 0.178342)
o22.Anchored = true
o22.FormFactor = Enum.FormFactor.Symmetric
o22.Size = Vector3.new(1, 1, 1)
o22.CFrame = CFrame.new(64.1984406, 5.44621515, 189.298584, 0.965921402, -0.00300658983, 0.258814931, -0.258820891, -0.00173428643, 0.965923607, -0.002455279, -0.99999398, -0.00245335489)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o22.Color = Color3.new(0.105882, 0.164706, 0.207843)
o22.Position = Vector3.new(64.1984406, 5.44621515, 189.298584)
o23.Parent = o22
o23.Scale = Vector3.new(0.0952381194, 0.0190476198, 0.0952377766)
o24.Name = "Cylinder"
o24.Parent = o1
o24.BrickColor = BrickColor.new("Black")
o24.Position = Vector3.new(63.4220734, 5.27551317, 189.400909)
o24.Rotation = Vector3.new(-90.0996246, -0.000169900886, -89.8286972)
o24.Anchored = true
o24.FormFactor = Enum.FormFactor.Symmetric
o24.Size = Vector3.new(1, 1, 1)
o24.CFrame = CFrame.new(63.4220734, 5.27551317, 189.400909, 0.00298983394, 0.999994755, -2.96532994e-006, 0.00173871987, -2.30967976e-006, 0.999998331, 0.99999404, -0.0029898365, -0.00173871906)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o24.Color = Color3.new(0.105882, 0.164706, 0.207843)
o24.Position = Vector3.new(63.4220734, 5.27551317, 189.400909)
o25.Parent = o24
o25.Scale = Vector3.new(0.142857149, 0.619047642, 0.095238097)
o26.Parent = o1
o26.BrickColor = BrickColor.new("Black")
o26.Position = Vector3.new(62.8764191, 5.29338312, 189.402451)
o26.Rotation = Vector3.new(-90.0996246, -0.000260400848, 90.1713104)
o26.Anchored = true
o26.FormFactor = Enum.FormFactor.Symmetric
o26.Size = Vector3.new(1, 1, 1)
o26.CFrame = CFrame.new(62.8764191, 5.29338312, 189.402451, -0.00298994523, -0.999994874, -4.54485235e-006, -0.00173867331, 7.15255624e-007, 0.99999845, -0.99999404, 0.00298995036, -0.00173866807)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.105882, 0.164706, 0.207843)
o26.Position = Vector3.new(62.8764191, 5.29338312, 189.402451)
o27.Parent = o26
o27.Scale = Vector3.new(0.142857149, 0.095238097, 0.095238097)
o28.Parent = o1
o28.BrickColor = BrickColor.new("Black")
o28.Position = Vector3.new(64.2484894, 5.40837288, 189.440598)
o28.Rotation = Vector3.new(-90.1455231, 14.9997568, -179.821655)
o28.Anchored = true
o28.FormFactor = Enum.FormFactor.Symmetric
o28.Size = Vector3.new(1, 1, 1)
o28.CFrame = CFrame.new(64.2484894, 5.40837288, 189.440598, -0.965921402, 0.00300669391, 0.258814931, 0.258820862, 0.00173421332, 0.965923607, 0.00245539821, 0.99999398, -0.00245331088)
o28.BottomSurface = Enum.SurfaceType.Smooth
o28.TopSurface = Enum.SurfaceType.Smooth
o28.Color = Color3.new(0.105882, 0.164706, 0.207843)
o28.Position = Vector3.new(64.2484894, 5.40837288, 189.440598)
o29.Parent = o28
o29.Scale = Vector3.new(0.0190476198, 0.038095206, 0.0476190485)
o30.Parent = o1
o30.BrickColor = BrickColor.new("Black")
o30.Position = Vector3.new(64.2111359, 5.46666193, 189.299286)
o30.Rotation = Vector3.new(-90.1455231, 14.9997549, 90.1773529)
o30.Anchored = true
o30.FormFactor = Enum.FormFactor.Symmetric
o30.Size = Vector3.new(1, 1, 1)
o30.CFrame = CFrame.new(64.2111359, 5.46666193, 189.299286, -0.00298995222, -0.965921462, 0.258814901, -0.00173869939, 0.258820862, 0.965923607, -0.99999404, 0.00243806583, -0.00245331111)
o30.BottomSurface = Enum.SurfaceType.Smooth
o30.TopSurface = Enum.SurfaceType.Smooth
o30.Color = Color3.new(0.105882, 0.164706, 0.207843)
o30.Position = Vector3.new(64.2111359, 5.46666193, 189.299286)
o31.Parent = o30
o31.Scale = Vector3.new(0.0190476216, 0.00952380989, 0.0476190485)
o32.Parent = o1
o32.BrickColor = BrickColor.new("Black")
o32.Position = Vector3.new(62.9254913, 5.38791084, 189.402206)
o32.Rotation = Vector3.new(-90.0996246, -0.000260400848, 90.1713104)
o32.Anchored = true
o32.FormFactor = Enum.FormFactor.Symmetric
o32.Size = Vector3.new(1, 1, 1)
o32.CFrame = CFrame.new(62.9254913, 5.38791084, 189.402206, -0.00298994523, -0.999994874, -4.54485235e-006, -0.00173867331, 7.15255624e-007, 0.99999845, -0.99999404, 0.00298995036, -0.00173866807)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o32.Color = Color3.new(0.105882, 0.164706, 0.207843)
o32.Position = Vector3.new(62.9254913, 5.38791084, 189.402206)
o33.Parent = o32
o33.Scale = Vector3.new(0.142857149, 0.571428597, 0.095238097)
o34.Parent = o1
o34.BrickColor = BrickColor.new("Black")
o34.Position = Vector3.new(64.1132355, 5.2218051, 189.398972)
o34.Rotation = Vector3.new(-90.1455231, 14.9997568, 90.1773529)
o34.Anchored = true
o34.FormFactor = Enum.FormFactor.Symmetric
o34.Size = Vector3.new(1, 1, 1)
o34.CFrame = CFrame.new(64.1132355, 5.2218051, 189.398972, -0.00298995222, -0.965921581, 0.258814931, -0.00173869939, 0.258820921, 0.965923607, -0.99999404, 0.00243806583, -0.00245331111)
o34.BottomSurface = Enum.SurfaceType.Smooth
o34.TopSurface = Enum.SurfaceType.Smooth
o34.Color = Color3.new(0.105882, 0.164706, 0.207843)
o34.Position = Vector3.new(64.1132355, 5.2218051, 189.398972)
o35.Parent = o34
o35.Scale = Vector3.new(0.238095239, 0.619047642, 0.190476194)
o36.Parent = o1
o36.BrickColor = BrickColor.new("Black")
o36.Position = Vector3.new(64.2487335, 5.40809822, 189.356369)
o36.Rotation = Vector3.new(-90.1455231, 14.9997568, -179.821655)
o36.Anchored = true
o36.FormFactor = Enum.FormFactor.Symmetric
o36.Size = Vector3.new(1, 1, 1)
o36.CFrame = CFrame.new(64.2487335, 5.40809822, 189.356369, -0.965921402, 0.00300669391, 0.258814931, 0.258820862, 0.00173421332, 0.965923607, 0.00245539821, 0.99999398, -0.00245331088)
o36.BottomSurface = Enum.SurfaceType.Smooth
o36.TopSurface = Enum.SurfaceType.Smooth
o36.Color = Color3.new(0.105882, 0.164706, 0.207843)
o36.Position = Vector3.new(64.2487335, 5.40809822, 189.356369)
o37.Parent = o36
o37.Scale = Vector3.new(0.0190476198, 0.038095206, 0.0476190485)
o38.Parent = o1
o38.BrickColor = BrickColor.new("Black")
o38.Position = Vector3.new(64.239212, 5.40986776, 189.482376)
o38.Rotation = Vector3.new(-90.1455231, 14.9997549, 90.1773529)
o38.Anchored = true
o38.FormFactor = Enum.FormFactor.Symmetric
o38.Size = Vector3.new(1, 1, 1)
o38.CFrame = CFrame.new(64.239212, 5.40986776, 189.482376, -0.00298995222, -0.965921462, 0.258814901, -0.00173869939, 0.258820862, 0.965923607, -0.99999404, 0.00243806583, -0.00245331111)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.105882, 0.164706, 0.207843)
o38.Position = Vector3.new(64.239212, 5.40986776, 189.482376)
o39.Parent = o38
o39.Scale = Vector3.new(0.0190476216, 0.190476194, 0.0476190485)
o40.Parent = o1
o40.BrickColor = BrickColor.new("Black")
o40.Position = Vector3.new(64.239212, 5.40940905, 189.298523)
o40.Rotation = Vector3.new(-90.1455231, 14.9997549, 90.1773529)
o40.Anchored = true
o40.FormFactor = Enum.FormFactor.Symmetric
o40.Size = Vector3.new(1, 1, 1)
o40.CFrame = CFrame.new(64.239212, 5.40940905, 189.298523, -0.00298995222, -0.965921462, 0.258814901, -0.00173869939, 0.258820862, 0.965923607, -0.99999404, 0.00243806583, -0.00245331111)
o40.BottomSurface = Enum.SurfaceType.Smooth
o40.TopSurface = Enum.SurfaceType.Smooth
o40.Color = Color3.new(0.105882, 0.164706, 0.207843)
o40.Position = Vector3.new(64.239212, 5.40940905, 189.298523)
o41.Parent = o40
o41.Scale = Vector3.new(0.0190476198, 0.190476194, 0.0476190485)
o42.Parent = o1
o42.BrickColor = BrickColor.new("Black")
o42.Position = Vector3.new(63.763134, 5.03712511, 189.400955)
o42.Rotation = Vector3.new(-90.1985321, 29.9996662, 90.1978149)
o42.Anchored = true
o42.FormFactor = Enum.FormFactor.Symmetric
o42.Size = Vector3.new(1, 1, 1)
o42.CFrame = CFrame.new(63.763134, 5.03712511, 189.400955, -0.00298995222, -0.866022348, 0.499994934, -0.00173869939, 0.500001252, 0.866022885, -0.99999404, 0.0017200273, -0.00300073437)
o42.BottomSurface = Enum.SurfaceType.Smooth
o42.TopSurface = Enum.SurfaceType.Smooth
o42.Color = Color3.new(0.105882, 0.164706, 0.207843)
o42.Position = Vector3.new(63.763134, 5.03712511, 189.400955)
o43.Parent = o42
o43.Scale = Vector3.new(0.199999988, 0.228571385, 0.428571433)
o44.Parent = o1
o44.BrickColor = BrickColor.new("Black")
o44.Position = Vector3.new(62.4762726, 5.40576506, 189.403458)
o44.Rotation = Vector3.new(-90.1336288, 11.2268991, 90.1746597)
o44.Anchored = true
o44.FormFactor = Enum.FormFactor.Symmetric
o44.Size = Vector3.new(1, 1, 1)
o44.CFrame = CFrame.new(62.4762726, 5.40576506, 189.403458, -0.00298995222, -0.980858445, 0.194694862, -0.00173869939, 0.194700658, 0.980861127, -0.99999404, 0.00259421393, -0.0022875655)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.105882, 0.164706, 0.207843)
o44.Position = Vector3.new(62.4762726, 5.40576506, 189.403458)
o45.Parent = o44
o45.Scale = Vector3.new(0.142857149, 0.095238097, 0.476190478)
o46.Parent = o1
o46.BrickColor = BrickColor.new("Black")
o46.Position = Vector3.new(64.4276886, 5.28558302, 189.39798)
o46.Rotation = Vector3.new(-90.1455231, 14.9997549, 90.1773529)
o46.Anchored = true
o46.FormFactor = Enum.FormFactor.Symmetric
o46.Size = Vector3.new(1, 1, 1)
o46.CFrame = CFrame.new(64.4276886, 5.28558302, 189.39798, -0.00298995222, -0.965921462, 0.258814901, -0.00173869939, 0.258820862, 0.965923607, -0.99999404, 0.00243806583, -0.00245331111)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.TopSurface = Enum.SurfaceType.Smooth
o46.Color = Color3.new(0.105882, 0.164706, 0.207843)
o46.Position = Vector3.new(64.4276886, 5.28558302, 189.39798)
o47.Parent = o46
o47.Scale = Vector3.new(0.238095239, 0.714285731, 0.095238097)
o48.Parent = o1
o48.BrickColor = BrickColor.new("Black")
o48.Position = Vector3.new(64.2116241, 5.46698093, 189.481644)
o48.Rotation = Vector3.new(-90.1455231, 14.9997549, 90.1773529)
o48.Anchored = true
o48.FormFactor = Enum.FormFactor.Symmetric
o48.Size = Vector3.new(1, 1, 1)
o48.CFrame = CFrame.new(64.2116241, 5.46698093, 189.481644, -0.00298995222, -0.965921462, 0.258814901, -0.00173869939, 0.258820862, 0.965923607, -0.99999404, 0.00243806583, -0.00245331111)
o48.BottomSurface = Enum.SurfaceType.Smooth
o48.TopSurface = Enum.SurfaceType.Smooth
o48.Color = Color3.new(0.105882, 0.164706, 0.207843)
o48.Position = Vector3.new(64.2116241, 5.46698093, 189.481644)
o49.Parent = o48
o49.Scale = Vector3.new(0.0190476216, 0.00952380989, 0.0476190485)
o50.Parent = o1
o50.BrickColor = BrickColor.new("Black")
o50.Position = Vector3.new(66.5387726, 4.61120701, 189.39328)
o50.Rotation = Vector3.new(-90.1455231, 14.9997635, 90.1773529)
o50.Anchored = true
o50.FormFactor = Enum.FormFactor.Symmetric
o50.Size = Vector3.new(1, 1, 1)
o50.CFrame = CFrame.new(66.5387726, 4.61120701, 189.39328, -0.0029898081, -0.965921581, 0.25881505, -0.00173873769, 0.258821011, 0.965923667, -0.99999404, 0.00243791658, -0.00245331111)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.105882, 0.164706, 0.207843)
o50.Position = Vector3.new(66.5387726, 4.61120701, 189.39328)
o51.Parent = o50
o51.Scale = Vector3.new(0.142857149, 0.095238097, 0.171428576)
o52.Parent = o1
o52.BrickColor = BrickColor.new("Black")
o52.Position = Vector3.new(64.9701691, 4.917665, 189.396912)
o52.Rotation = Vector3.new(-90.1455231, 14.9997568, 90.1773529)
o52.Anchored = true
o52.FormFactor = Enum.FormFactor.Symmetric
o52.Size = Vector3.new(1, 1, 1)
o52.CFrame = CFrame.new(64.9701691, 4.917665, 189.396912, -0.00298995222, -0.965921521, 0.258814931, -0.00173869939, 0.258820891, 0.965923607, -0.99999404, 0.00243806583, -0.00245331111)
o52.BottomSurface = Enum.SurfaceType.Smooth
o52.TopSurface = Enum.SurfaceType.Smooth
o52.Color = Color3.new(0.105882, 0.164706, 0.207843)
o52.Position = Vector3.new(64.9701691, 4.917665, 189.396912)
o53.Parent = o52
o53.Scale = Vector3.new(0.142857149, 1.19047618, 0.142857149)
o54.Parent = o1
o54.BrickColor = BrickColor.new("Black")
o54.Position = Vector3.new(65.0011749, 5.03360319, 189.396667)
o54.Rotation = Vector3.new(-90.1455231, 14.9997568, 90.1773529)
o54.Anchored = true
o54.FormFactor = Enum.FormFactor.Symmetric
o54.Size = Vector3.new(1, 1, 1)
o54.CFrame = CFrame.new(65.0011749, 5.03360319, 189.396667, -0.00298995222, -0.965921521, 0.258814931, -0.00173869939, 0.258820891, 0.965923607, -0.99999404, 0.00243806583, -0.00245331111)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.TopSurface = Enum.SurfaceType.Smooth
o54.Color = Color3.new(0.105882, 0.164706, 0.207843)
o54.Position = Vector3.new(65.0011749, 5.03360319, 189.396667)
o55.Parent = o54
o55.Scale = Vector3.new(0.238095239, 1.19047618, 0.095238097)
o56.Name = "Ring"
o56.Parent = o1
o56.BrickColor = BrickColor.new("Black")
o56.Position = Vector3.new(64.2543488, 5.42530775, 189.397842)
o56.Rotation = Vector3.new(90.5375824, 74.9990768, -90.6598282)
o56.Anchored = true
o56.FormFactor = Enum.FormFactor.Symmetric
o56.Size = Vector3.new(1, 1, 1)
o56.CFrame = CFrame.new(64.2543488, 5.42530775, 189.397842, -0.00298068277, 0.258814812, 0.96592164, -0.00174118311, 0.965923727, -0.258820742, -0.99999404, -0.00245331065, -0.00242846971)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.TopSurface = Enum.SurfaceType.Smooth
o56.Color = Color3.new(0.105882, 0.164706, 0.207843)
o56.Position = Vector3.new(64.2543488, 5.42530775, 189.397842)
o57.Parent = o56
o57.MeshId = "http://www.roblox.com/asset/?id=3270017"
o57.Scale = Vector3.new(0.0714285746, 0.0714285746, 0.119047619)
o57.MeshType = Enum.MeshType.FileMesh
o58.Name = "Ring"
o58.Parent = o1
o58.BrickColor = BrickColor.new("Black")
o58.Position = Vector3.new(64.0434113, 5.14215279, 189.399277)
o58.Rotation = Vector3.new(-0.092099905, 0.199286178, 165.000137)
o58.Anchored = true
o58.FormFactor = Enum.FormFactor.Symmetric
o58.Size = Vector3.new(1, 1, 1)
o58.CFrame = CFrame.new(64.0434113, 5.14215279, 189.399277, -0.965919852, -0.25881508, 0.00347819296, 0.258821875, -0.965923727, 0.0016074361, 0.0029436422, 0.00245288899, 0.999992609)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.TopSurface = Enum.SurfaceType.Smooth
o58.Color = Color3.new(0.105882, 0.164706, 0.207843)
o58.Position = Vector3.new(64.0434113, 5.14215279, 189.399277)
o59.Parent = o58
o59.MeshId = "http://www.roblox.com/asset/?id=3270017"
o59.Scale = Vector3.new(0.285714298, 0.238095239, 0.238095239)
o59.MeshType = Enum.MeshType.FileMesh
o60.Name = "Wedge"
o60.Parent = o1
o60.BrickColor = BrickColor.new("Black")
o60.Position = Vector3.new(64.9706573, 4.91723776, 189.297043)
o60.Rotation = Vector3.new(-90.1455231, 14.9997578, 0.178348169)
o60.Anchored = true
o60.FormFactor = Enum.FormFactor.Symmetric
o60.Size = Vector3.new(1, 1, 1)
o60.CFrame = CFrame.new(64.9706573, 4.91723776, 189.297043, 0.965921402, -0.00300669391, 0.258814961, -0.258820891, -0.00173421332, 0.965923607, -0.00245539797, -0.99999398, -0.00245331088)
o60.BottomSurface = Enum.SurfaceType.Smooth
o60.TopSurface = Enum.SurfaceType.Smooth
o60.Color = Color3.new(0.105882, 0.164706, 0.207843)
o60.Position = Vector3.new(64.9706573, 4.91723776, 189.297043)
o61.Parent = o60
o61.Scale = Vector3.new(1.19047618, 0.0476190485, 0.142857149)
o61.MeshType = Enum.MeshType.Wedge
o62.Name = "Wedge"
o62.Parent = o1
o62.BrickColor = BrickColor.new("Black")
o62.Position = Vector3.new(63.0675812, 5.29388618, 189.402634)
o62.Rotation = Vector3.new(-90.0996246, -0.000160509386, -89.8286896)
o62.Anchored = true
o62.FormFactor = Enum.FormFactor.Symmetric
o62.Size = Vector3.new(1, 1, 1)
o62.CFrame = CFrame.new(63.0675812, 5.29388618, 189.402634, 0.00298991334, 0.999994814, -2.80141717e-006, 0.00173866947, -2.45869137e-006, 0.999998391, 0.99999404, -0.00298991567, -0.00173866865)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.TopSurface = Enum.SurfaceType.Smooth
o62.Color = Color3.new(0.105882, 0.164706, 0.207843)
o62.Position = Vector3.new(63.0675812, 5.29388618, 189.402634)
o63.Parent = o62
o63.Scale = Vector3.new(0.142857149, 0.285714298, 0.095238097)
o63.MeshType = Enum.MeshType.Wedge
o64.Name = "Wedge"
o64.Parent = o1
o64.BrickColor = BrickColor.new("Black")
o64.Position = Vector3.new(64.9704132, 4.91780281, 189.481613)
o64.Rotation = Vector3.new(-90.1455231, 14.9997578, -179.821655)
o64.Anchored = true
o64.FormFactor = Enum.FormFactor.Symmetric
o64.Size = Vector3.new(1, 1, 1)
o64.CFrame = CFrame.new(64.9704132, 4.91780281, 189.481613, -0.965921402, 0.00300669391, 0.258814961, 0.258820891, 0.00173421332, 0.965923607, 0.00245539797, 0.99999398, -0.00245331088)
o64.BottomSurface = Enum.SurfaceType.Smooth
o64.TopSurface = Enum.SurfaceType.Smooth
o64.Color = Color3.new(0.105882, 0.164706, 0.207843)
o64.Position = Vector3.new(64.9704132, 4.91780281, 189.481613)
o65.Parent = o64
o65.Scale = Vector3.new(1.19047618, 0.0476190485, 0.142857149)
o65.MeshType = Enum.MeshType.Wedge
o66.Name = "Wedge"
o66.Parent = o1
o66.BrickColor = BrickColor.new("Black")
o66.Position = Vector3.new(63.3058624, 5.38850212, 189.401108)
o66.Rotation = Vector3.new(-0.0114219431, -89.8176193, -179.910629)
o66.Anchored = true
o66.FormFactor = Enum.FormFactor.Symmetric
o66.Size = Vector3.new(1, 1, 1)
o66.CFrame = CFrame.new(63.3058624, 5.38850212, 189.401108, -0.00298993615, 4.66406163e-006, -0.999994934, -0.0017386385, -0.99999845, 5.96046334e-007, -0.99999404, 0.00173863268, 0.00298994128)
o66.BottomSurface = Enum.SurfaceType.Smooth
o66.TopSurface = Enum.SurfaceType.Smooth
o66.Color = Color3.new(0.105882, 0.164706, 0.207843)
o66.Position = Vector3.new(63.3058624, 5.38850212, 189.401108)
o67.Parent = o66
o67.Scale = Vector3.new(0.142857149, 0.095238097, 0.190476194)
o67.MeshType = Enum.MeshType.Wedge
o68.Name = "Wedge"
o68.Parent = o1
o68.BrickColor = BrickColor.new("Black")
o68.Position = Vector3.new(63.0194855, 5.53146505, 189.401749)
o68.Rotation = Vector3.new(89.900383, 0.000252716884, -90.1713104)
o68.Anchored = true
o68.FormFactor = Enum.FormFactor.Symmetric
o68.Size = Vector3.new(1, 1, 1)
o68.CFrame = CFrame.new(63.0194855, 5.53146505, 189.401749, -0.00298988633, 0.999994814, 4.41074189e-006, -0.00173868262, -8.64267236e-007, -0.99999845, -0.99999404, -0.00298989099, 0.00173867738)
o68.BottomSurface = Enum.SurfaceType.Smooth
o68.TopSurface = Enum.SurfaceType.Smooth
o68.Color = Color3.new(0.105882, 0.164706, 0.207843)
o68.Position = Vector3.new(63.0194855, 5.53146505, 189.401749)
o69.Parent = o68
o69.Scale = Vector3.new(0.142857149, 0.761904776, 0.190476194)
o69.MeshType = Enum.MeshType.Wedge
o70.Name = "Wedge"
o70.Parent = o1
o70.BrickColor = BrickColor.new("Black")
o70.Position = Vector3.new(64.244339, 5.39377022, 189.382507)
o70.Rotation = Vector3.new(89.8544769, -14.9997578, -0.178348169)
o70.Anchored = true
o70.FormFactor = Enum.FormFactor.Symmetric
o70.Size = Vector3.new(1, 1, 1)
o70.CFrame = CFrame.new(64.244339, 5.39377022, 189.382507, 0.965921402, 0.00300669391, -0.258814961, -0.258820891, 0.00173421332, -0.965923607, -0.00245539797, 0.99999398, 0.00245331088)
o70.BottomSurface = Enum.SurfaceType.Smooth
o70.TopSurface = Enum.SurfaceType.Smooth
o70.Color = Color3.new(0.105882, 0.164706, 0.207843)
o70.Position = Vector3.new(64.244339, 5.39377022, 189.382507)
o71.Parent = o70
o71.Scale = Vector3.new(0.0190476216, 0.0285714306, 0.0190476198)
o71.MeshType = Enum.MeshType.Wedge
o72.Name = "Wedge"
o72.Parent = o1
o72.BrickColor = BrickColor.new("Black")
o72.Position = Vector3.new(63.9674835, 5.40893793, 189.398926)
o72.Rotation = Vector3.new(90.5397034, 74.9990768, -90.6618805)
o72.Anchored = true
o72.FormFactor = Enum.FormFactor.Symmetric
o72.Size = Vector3.new(1, 1, 1)
o72.CFrame = CFrame.new(63.9674835, 5.40893793, 189.398926, -0.00298995222, 0.258814812, 0.96592164, -0.00173869939, 0.965923727, -0.258820742, -0.99999404, -0.00245331065, -0.00243806629)
o72.BottomSurface = Enum.SurfaceType.Smooth
o72.TopSurface = Enum.SurfaceType.Smooth
o72.Color = Color3.new(0.105882, 0.164706, 0.207843)
o72.Position = Vector3.new(63.9674835, 5.40893793, 189.398926)
o73.Parent = o72
o73.Scale = Vector3.new(0.238095239, 0.095238097, 0.238095239)
o73.MeshType = Enum.MeshType.Wedge
o74.Name = "Wedge"
o74.Parent = o1
o74.BrickColor = BrickColor.new("Black")
o74.Position = Vector3.new(64.244339, 5.393785, 189.398376)
o74.Rotation = Vector3.new(89.8544769, -14.9997511, 179.821655)
o74.Anchored = true
o74.FormFactor = Enum.FormFactor.Symmetric
o74.Size = Vector3.new(1, 1, 1)
o74.CFrame = CFrame.new(64.244339, 5.393785, 189.398376, -0.965921402, -0.00300666504, -0.258814842, 0.258820802, -0.00173422124, -0.965923727, 0.00245536841, -0.99999398, 0.00245331088)
o74.BottomSurface = Enum.SurfaceType.Smooth
o74.TopSurface = Enum.SurfaceType.Smooth
o74.Color = Color3.new(0.105882, 0.164706, 0.207843)
o74.Position = Vector3.new(64.244339, 5.393785, 189.398376)
o75.Parent = o74
o75.Scale = Vector3.new(0.0190476216, 0.0285714306, 0.0190476216)
o75.MeshType = Enum.MeshType.Wedge
o76.Name = "Wedge"
o76.Parent = o1
o76.BrickColor = BrickColor.new("Black")
o76.Position = Vector3.new(63.7401886, 5.19858122, 189.400101)
o76.Rotation = Vector3.new(90.5397034, 74.9990768, 89.3381271)
o76.Anchored = true
o76.FormFactor = Enum.FormFactor.Symmetric
o76.Size = Vector3.new(1, 1, 1)
o76.CFrame = CFrame.new(63.7401886, 5.19858122, 189.400101, 0.00298995222, -0.258814812, 0.96592164, 0.00173869939, -0.965923727, -0.258820742, 0.99999404, 0.00245331065, -0.00243806629)
o76.BottomSurface = Enum.SurfaceType.Smooth
o76.TopSurface = Enum.SurfaceType.Smooth
o76.Color = Color3.new(0.105882, 0.164706, 0.207843)
o76.Position = Vector3.new(63.7401886, 5.19858122, 189.400101)
o77.Parent = o76
o77.Scale = Vector3.new(0.238095239, 0.0476190485, 0.285714298)
o77.MeshType = Enum.MeshType.Wedge
o78.Name = "Wedge"
o78.Parent = o1
o78.BrickColor = BrickColor.new("Black")
o78.Position = Vector3.new(63.922802, 5.1496582, 189.399628)
o78.Rotation = Vector3.new(-89.4602966, -74.9990768, 90.6618805)
o78.Anchored = true
o78.FormFactor = Enum.FormFactor.Symmetric
o78.Size = Vector3.new(1, 1, 1)
o78.CFrame = CFrame.new(63.922802, 5.1496582, 189.399628, -0.00298995222, -0.258814812, -0.96592164, -0.00173869939, -0.965923727, 0.258820742, -0.99999404, 0.00245331065, 0.00243806629)
o78.BottomSurface = Enum.SurfaceType.Smooth
o78.TopSurface = Enum.SurfaceType.Smooth
o78.Color = Color3.new(0.105882, 0.164706, 0.207843)
o78.Position = Vector3.new(63.922802, 5.1496582, 189.399628)
o79.Parent = o78
o79.Scale = Vector3.new(0.238095239, 0.0476190485, 0.095238097)
o79.MeshType = Enum.MeshType.Wedge
o80.Name = "Wedge"
o80.Parent = o1
o80.BrickColor = BrickColor.new("Black")
o80.Position = Vector3.new(63.723587, 5.32519579, 189.39975)
o80.Rotation = Vector3.new(90.5397034, 74.9990768, -90.6618805)
o80.Anchored = true
o80.FormFactor = Enum.FormFactor.Symmetric
o80.Size = Vector3.new(1, 1, 1)
o80.CFrame = CFrame.new(63.723587, 5.32519579, 189.39975, -0.00298995222, 0.258814812, 0.96592164, -0.00173869939, 0.965923727, -0.258820742, -0.99999404, -0.00245331065, -0.00243806629)
o80.BottomSurface = Enum.SurfaceType.Smooth
o80.TopSurface = Enum.SurfaceType.Smooth
o80.Color = Color3.new(0.105882, 0.164706, 0.207843)
o80.Position = Vector3.new(63.723587, 5.32519579, 189.39975)
o81.Parent = o80
o81.Scale = Vector3.new(0.238095239, 0.190476194, 0.190476194)
o81.MeshType = Enum.MeshType.Wedge
o82.Name = "Wedge"
o82.Parent = o1
o82.BrickColor = BrickColor.new("Black")
o82.Position = Vector3.new(64.2572784, 5.45472813, 189.482254)
o82.Rotation = Vector3.new(89.8544693, -14.9997549, -90.1773529)
o82.Anchored = true
o82.FormFactor = Enum.FormFactor.Symmetric
o82.Size = Vector3.new(1, 1, 1)
o82.CFrame = CFrame.new(64.2572784, 5.45472813, 189.482254, -0.00298996363, 0.965921462, -0.258814901, -0.00173874153, -0.258820862, -0.965923607, -0.99999404, -0.00243806629, 0.00245335465)
o82.BottomSurface = Enum.SurfaceType.Smooth
o82.TopSurface = Enum.SurfaceType.Smooth
o82.Color = Color3.new(0.105882, 0.164706, 0.207843)
o82.Position = Vector3.new(64.2572784, 5.45472813, 189.482254)
o83.Parent = o82
o83.Scale = Vector3.new(0.0190476216, 0.0857142806, 0.0476190485)
o83.MeshType = Enum.MeshType.Wedge
o84.Name = "Wedge"
o84.Parent = o1
o84.BrickColor = BrickColor.new("Black")
o84.Position = Vector3.new(63.6447296, 4.83071899, 189.40181)
o84.Rotation = Vector3.new(90.1971054, 59.999649, 89.6573792)
o84.Anchored = true
o84.FormFactor = Enum.FormFactor.Symmetric
o84.Size = Vector3.new(1, 1, 1)
o84.CFrame = CFrame.new(63.6447296, 4.83071899, 189.40181, 0.00298995222, -0.499994874, 0.866022348, 0.00173869939, -0.866023004, -0.500001132, 0.99999404, 0.00300073437, -0.00172002765)
o84.BottomSurface = Enum.SurfaceType.Smooth
o84.TopSurface = Enum.SurfaceType.Smooth
o84.Color = Color3.new(0.105882, 0.164706, 0.207843)
o84.Position = Vector3.new(63.6447296, 4.83071899, 189.40181)
o85.Parent = o84
o85.Scale = Vector3.new(0.199999988, 0.0476190485, 0.228571385)
o85.MeshType = Enum.MeshType.Wedge
o86.Name = "Wedge"
o86.Parent = o1
o86.BrickColor = BrickColor.new("Black")
o86.Position = Vector3.new(62.3847198, 5.4229908, 189.404434)
o86.Rotation = Vector3.new(90.7633743, 78.7715378, 89.1201706)
o86.Anchored = true
o86.FormFactor = Enum.FormFactor.Symmetric
o86.Size = Vector3.new(1, 1, 1)
o86.CFrame = CFrame.new(62.3847198, 5.4229908, 189.404434, 0.00298993941, -0.194694698, 0.980858564, 0.00173865119, -0.980861068, -0.194700569, 0.99999404, 0.00228751567, -0.00259421091)
o86.BottomSurface = Enum.SurfaceType.Smooth
o86.TopSurface = Enum.SurfaceType.Smooth
o86.Color = Color3.new(0.105882, 0.164706, 0.207843)
o86.Position = Vector3.new(62.3847198, 5.4229908, 189.404434)
o87.Parent = o86
o87.Scale = Vector3.new(0.142857149, 0.476190478, 0.095238097)
o87.MeshType = Enum.MeshType.Wedge
o88.Name = "Wedge"
o88.Parent = o1
o88.BrickColor = BrickColor.new("Black")
o88.Position = Vector3.new(64.2553253, 5.45478821, 189.298187)
o88.Rotation = Vector3.new(89.8544693, -14.9997549, -90.1773529)
o88.Anchored = true
o88.FormFactor = Enum.FormFactor.Symmetric
o88.Size = Vector3.new(1, 1, 1)
o88.CFrame = CFrame.new(64.2553253, 5.45478821, 189.298187, -0.00298996363, 0.965921462, -0.258814901, -0.00173874153, -0.258820862, -0.965923607, -0.99999404, -0.00243806629, 0.00245335465)
o88.BottomSurface = Enum.SurfaceType.Smooth
o88.TopSurface = Enum.SurfaceType.Smooth
o88.Color = Color3.new(0.105882, 0.164706, 0.207843)
o88.Position = Vector3.new(64.2553253, 5.45478821, 189.298187)
o89.Parent = o88
o89.Scale = Vector3.new(0.0190476216, 0.0857142806, 0.0476190485)
o89.MeshType = Enum.MeshType.Wedge
o90.Name = "Wedge"
o90.Parent = o1
o90.BrickColor = BrickColor.new("Black")
o90.Position = Vector3.new(62.7333527, 5.29338312, 189.403595)
o90.Rotation = Vector3.new(-90.0996246, -0.000365414977, 90.1713104)
o90.Anchored = true
o90.FormFactor = Enum.FormFactor.Symmetric
o90.Size = Vector3.new(1, 1, 1)
o90.CFrame = CFrame.new(62.7333527, 5.29338312, 189.403595, -0.00298992055, -0.999994874, -6.37769426e-006, -0.00173869438, -1.10268593e-006, 0.999998331, -0.99999404, 0.00298992847, -0.00173868344)
o90.BottomSurface = Enum.SurfaceType.Smooth
o90.TopSurface = Enum.SurfaceType.Smooth
o90.Color = Color3.new(0.105882, 0.164706, 0.207843)
o90.Position = Vector3.new(62.7333527, 5.29338312, 189.403595)
o91.Parent = o90
o91.Scale = Vector3.new(0.142857149, 0.190476194, 0.095238097)
o91.MeshType = Enum.MeshType.Wedge
o92.Name = "SmokePart"
o92.Parent = o1
o92.BrickColor = BrickColor.new("Black")
o92.Transparency = 5
o92.Position = Vector3.new(66.8361359, 4.61509609, 189.39238)
o92.Rotation = Vector3.new(-0.0725302622, 0.164302975, -104.999908)
o92.Anchored = true
o92.CanCollide = false
o92.FormFactor = Enum.FormFactor.Custom
o92.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o92.CFrame = CFrame.new(66.8361359, 4.61509609, 189.39238, -0.258815974, 0.96592021, 0.00286762393, -0.96592319, -0.258820474, 0.00126587693, 0.00196474674, -0.0024509544, 0.999987721)
o92.BottomSurface = Enum.SurfaceType.Smooth
o92.TopSurface = Enum.SurfaceType.Smooth
o92.Color = Color3.new(0.105882, 0.164706, 0.207843)
o92.Position = Vector3.new(66.8361359, 4.61509609, 189.39238)
o93.Parent = o92
o93.Scale = Vector3.new(0.600000024, 1, 0.600000024)
o94.Name = "Handle"
o94.Parent = o1
o94.BrickColor = BrickColor.new("Black")
o94.Transparency = 1
o94.Position = Vector3.new(64.1393585, 4.73704576, 189.348969)
o94.Rotation = Vector3.new(-89.4574432, -74.9987564, -89.3652039)
o94.Anchored = true
o94.CanCollide = false
o94.FormFactor = Enum.FormFactor.Custom
o94.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o94.CFrame = CFrame.new(64.1393585, 4.73704576, 189.348969, 0.00286762393, 0.258815974, -0.96592021, 0.00126587693, 0.96592319, 0.258820474, 0.999987721, -0.00196474674, 0.0024509544)
o94.BottomSurface = Enum.SurfaceType.Smooth
o94.TopSurface = Enum.SurfaceType.Smooth
o94.Color = Color3.new(0.105882, 0.164706, 0.207843)
o94.Position = Vector3.new(64.1393585, 4.73704576, 189.348969)
o95.Name = "Reload"
o95.Parent = o94
o95.SoundId = "http://www.roblox.com/asset/?id=145081845"
o95.Volume = 1
o96.Name = "Shoot"
o96.Parent = o94
o96.Pitch = 0.5
o96.SoundId = "http://roblox.com/asset/?id=10209798"
o96.Volume = 1
o98.Name = "AimPart"
o98.Parent = o1
o98.BrickColor = BrickColor.new("Black")
o98.Transparency = 1
o98.Position = Vector3.new(63.9701691, 5.50999498, 189.394012)
o98.Rotation = Vector3.new(-89.3490067, -74.9987259, -89.2571793)
o98.Anchored = true
o98.CanCollide = false
o98.FormFactor = Enum.FormFactor.Custom
o98.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o98.CFrame = CFrame.new(63.9701691, 5.50999498, 189.394012, 0.00335565885, 0.258815825, -0.965920091, 0.00116089836, 0.965924442, 0.25882104, 0.999993682, -0.00198985194, 0.00294085639)
o98.BottomSurface = Enum.SurfaceType.Smooth
o98.TopSurface = Enum.SurfaceType.Smooth
o98.Color = Color3.new(0.105882, 0.164706, 0.207843)
o98.Position = Vector3.new(63.9701691, 5.50999498, 189.394012)
o99.Name = "Coloring"
o99.Parent = o1
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

end,o99)
end))
o100.Name = "Gun_Script"
o100.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(0.5)
--Edit settings below--
local Tool = script.Parent
local Settings = {
 Range = 700
 ,Spread = 5
 ,Damage = {20, 30}
 ,HeadShotDamage = {13, 14}
 ,Bullets = 2
 ,FireRate = 0.4
 ,Automatic = false
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

end,o100)
end))
o101.Name = "Ammo"
o101.Parent = o100
o101.Value = 30
o102.Name = "StoredAmmo"
o102.Parent = o100
o102.Value = 1200
o103.Name = "Gui"
o103.Parent = o100
o104.Parent = o103
o104.Position = UDim2.new(1,-200,1,-100)
o104.Size = UDim2.new(0,100,0,100)
o104.Position = UDim2.new(1,-200,1,-100)
o104.BackgroundColor3 = Color3.new(1, 1, 1)
o104.BackgroundTransparency = 1
o104.BorderSizePixel = 0
o105.Name = "AmmoDisplay"
o105.Parent = o104
o105.Size = UDim2.new(1,0,1,0)
o105.Text = ""
o105.BackgroundTransparency = 1
o105.FontSize = Enum.FontSize.Size24
o105.TextColor3 = Color3.new(0.917647, 0.917647, 0.917647)
o105.TextStrokeTransparency = 0.5
o105.TextXAlignment = Enum.TextXAlignment.Right
o106.Parent = o100
o106.Size = 0.30000001192093
o106.Color = Color3.new(0.372549, 0.372549, 0.372549)
o106.Enabled = false
o106.Opacity = 0.30000001192093
o106.RiseVelocity = 15
o107.Name = "Smoke1"
o107.Parent = o100
o107.Size = 0.10000000149012
o107.Color = Color3.new(1, 0.6, 0.2)
o107.Enabled = false
o107.Opacity = 0.40000000596046
o107.RiseVelocity = 3
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