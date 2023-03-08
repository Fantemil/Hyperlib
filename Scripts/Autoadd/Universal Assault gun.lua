goldgun=true
local function Create(ty)
 return function(data)
  local obj = Instance.new(ty)
  for k, v in pairs(data) do
   if type(k) == 'number' then
    v.Parent = obj
   else
    obj[k] = v
   end
  end
  return obj
 end
end

tool=Create'Tool'{
 GripPos = Vector3.new(0.449999988, -0.49000001, 0.439999998);
 Name = "M16";
 Grip = CFrame.new(0.449999988, -0.49000001, 0.439999998, 1, 0, 0, 0, 1, 0, 0, 0, 1);
 Create'Part'{
  Transparency = 1;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  FrontSurface = Enum.SurfaceType.Hinge;
  Size = Vector3.new(0.337499917, 1.26250005, 4.73750019);
  formFactor = Enum.FormFactor.Custom;
  CFrame = CFrame.new(-0.0354669988, 0.689999998, 0.0734099969, 0.999991238, -1.78499271e-010, -0.00408358732, 4.28665703e-022, 1, -4.37113883e-008, 0.00408358732, 4.37110046e-008, 0.999991238);
  Name = "Handle";
  --Position = Vector3;
  Create'BlockMesh'{
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.5625);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0354660451, 0.136882007, 0.0734099746, -0.99999094, -1.03869013e-007, -0.00408364553, 1.04211487e-007, -1, -8.362899e-008, -0.00408364553, -8.40538448e-008, 0.99999094);
  Name = "MagPart2";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.4375, 0.625, 1);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.21875, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0371888056, 0.51499939, 0.495281041, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 0.15625, 0.625);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.56250006, 0.581250012, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0354660451, 0.490000337, 0.0734099895, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  Name = "MagPart1";
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 1, 0.43750003);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.443749994, 0.337499976);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0393199287, 0.277504355, 1.01715159, -0.999991238, -1.78499271e-010, 0.00408358732, -4.28665703e-022, 1, 4.37113883e-008, -0.00408358732, 4.37110046e-008, -0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.625, 1, 1);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.443749994, 0.243750006);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0381331369, 0.277504355, 0.726528704, -0.999991238, 1.78499271e-010, -0.00408358732, -4.28665703e-022, -1, -4.37113883e-008, -0.00408358732, -4.37110046e-008, 0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.625, 1, 1);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.243750006, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0381331369, 0.593124628, 0.726529181, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 0.9375, 0.625);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0373486653, 0.590330124, 0.534426749, 0.00365247182, -0.00182623533, 0.999991238, 0.447213501, 0.89442724, 4.28665703e-022, -0.894419432, 0.447209597, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.09375, 0.40624997, 0.09375);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0373345688, 0.660322785, 0.530975401, 0.00182623579, -0.00365247135, 0.999991238, 0.894427121, 0.44721359, 4.28665703e-022, -0.447209686, 0.894419312, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.46875, 0.09375, 0.09375);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.65625006, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0354696736, 0.589595914, 0.0742982924, 0.00391136762, -0.00117340987, 0.999991238, 0.287347823, 0.957826316, 4.28665703e-022, -0.957817912, 0.28734532, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 0.03125, 0.812499821);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.40625, 1.22500002);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0426633656, 0.483750761, 1.83589435, -0.999991238, 1.78499271e-010, -0.00408358732, -4.28665703e-022, -1, -4.37113883e-008, -0.00408358732, -4.37110046e-008, 0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.9375, 1, 1);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0388222411, 0.640000761, 0.8952775, 0.999991238, 1.78499271e-010, 0.00408358732, 4.28665703e-022, -1, 4.37113883e-008, 0.00408358732, -4.37110046e-008, -0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.625, 0.46875, 0.46875);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.625);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0354660451, 0.593124688, 0.0734099969, -0.999991238, 1.78499271e-010, -0.00408358732, -4.28665703e-022, -1, -4.37113883e-008, -0.00408358732, -4.37110046e-008, 0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.625, 0.9375, 1);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.65625, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.107354648, 0.598576725, 0.0766958967, 0.00391215365, -0.00117146294, 0.99998349, 0.287344724, 0.957820952, -2.12762438e-006, -0.957808793, 0.287342906, 0.00408380246);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(1, 0.0625, 0.09375);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.65625, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.0363937765, 0.598574281, 0.077288352, -0.00391177926, -0.00117338961, -0.99998337, -0.287343442, 0.95782125, 1.33872973e-007, 0.95780921, 0.287341684, -0.0040840013);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(1, 0.0625, 0.09375);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(1.21875012, 0.262500018, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0366783589, 0.818126082, 0.370282173, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 1, 0.625);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.262500018, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.117214538, 0.818126023, 0.960582674, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(1, 0.187499821, 0.15625);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(1.46875, 0.262499988, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.042165678, 0.818126023, 1.71402037, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 1, 0.9375);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.262500018, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.0390340909, 0.818126023, 0.961220741, -1.78499271e-010, 0.00408358732, -0.999991238, 1, 4.37113883e-008, -4.28665703e-022, 4.37110046e-008, -0.999991238, -0.00408358732);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(1, 0.187499821, 0.15625);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.275000036, 0.200000003, 0.275000036);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0340623111, 0.949376464, -0.270337135, 1.78499271e-010, -0.00408358686, -0.999991119, -1, -4.37113847e-008, -4.28665653e-022, -4.37110046e-008, 0.999991119, -0.00408358686);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(1, 0.3125, 1);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.300000012, 0.268749982, 0.300000012);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0317525305, 0.949376464, -0.835957706, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.3125, 0.400000006, 0.3125);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0331179798, 0.949376464, -0.501585841, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 2.6875, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0396772437, 0.949376345, 1.10465097, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.9375, 1, 0.9375);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.325000137, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.00448472612, 0.955624938, 0.771919727, -0.254872203, -1.78499271e-010, 0.966974258, 4.22219593e-008, 1, 1.13133343e-008, -0.966974258, 4.37110046e-008, -0.254872203);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 0.43750006, 0.625);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.102780372, 0.955624938, 0.921392381, 1.78499271e-010, -0.254872352, 0.96697402, -1, 4.22219486e-008, 1.13133396e-008, -4.37110046e-008, -0.96697402, -0.254872352);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.18749997, 0.15625, 0.18749997);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.325000018, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.0559526756, 0.955624938, 0.755990207, 1.78499271e-010, -0.254872352, 0.96697402, -1, 4.22219486e-008, 1.13133396e-008, -4.37110046e-008, -0.96697402, -0.254872352);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.43750003, 1, 0.43749994);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.104536295, 0.955624938, 0.940319657, 1.78499271e-010, -0.254872352, 0.96697402, -1, 4.22219486e-008, 1.13133396e-008, -4.37110046e-008, -0.96697402, -0.254872352);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.31249997, 0.03125, 0.3125);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.287499994, 0.256249994, 0.28125);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0275554266, 0.949376464, -1.09844232, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(1.20000017, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0366400741, 1.05874991, 0.360907227, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 0.34375, 0.625);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.256249994, 0.200000003, 0.256250024);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0269301254, 0.946250975, -1.25156641, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(1, 0.0625000075, 1);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0268407967, 1.03375113, -1.2734412, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.406249821, 0.15625, 0.406250119);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0268407986, 0.98375082, -1.2734406, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.15625, 0.5, 0.40624997);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0268407986, 0.933751941, -1.2734406, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.406249821, 0.15625, 0.406250119);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.268749982, 0.200000003, 0.268750012);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0269939322, 0.946250975, -1.23594153, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(1, 0.09375, 1);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.275000006, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0265472885, 1.13709307, -1.34531569, -0.00353646907, -0.0020416358, 0.999991238, 0.499999791, -0.866025209, 1.25594809e-007, 0.86601764, 0.49999541, 0.00408349093);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.15625, 1, 0.218750015);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0264196787, 1.00250065, -1.37656474, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.875, 0.15625, 0.28125);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0343813412, 1.1399945, -0.192213088, -0.999991238, -1.78499271e-010, 0.00408358732, -4.28665703e-022, 1, 4.37113883e-008, -0.00408358732, 4.37110046e-008, -0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.625, 0.46875, 0.15625);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0873781741, 1.17436945, -0.223679245, -0.999983966, 0.00408357335, 1.7849866e-010, -4.28662573e-022, 4.37112355e-008, -0.999996543, -0.00408355752, -0.999987781, -4.37108518e-008);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.0937499925, 0.15625, 0.81250006);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0342537276, 1.15874445, -0.22346282, -0.999991238, 0.00408358732, 1.78499271e-010, -4.28665703e-022, 4.37113883e-008, -1, -0.00408358732, -0.999991238, -4.37110046e-008);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.43750003, 0.15625, 0.65624994);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.274999976, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0259985588, 1.12436962, -1.47968924, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.15625, 1, 0.28125);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0259985551, 0.946251273, -1.47968984, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.53124994, 0.15625, 0.531250119);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.800000012, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0252711698, 0.946251035, -1.65781271, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.40624997, 1, 0.406250119);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0388477631, 1.15874445, 0.901527345, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.156250477, 0.65625006, 0.43750003);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(1.09375012, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0896751881, 1.23687041, 0.338815331, 0.00408358732, -1.76725606e-010, 0.999991238, 4.41457289e-008, 1, 2.74215419e-018, -0.999991238, 4.32766676e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 0.1875, 0.09375);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(1.09375012, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0365507454, 1.22124445, 0.339032263, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 0.03125, 0.43750003);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0261261705, 1.25561953, -1.44843924, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.46875003, 0.0625000075, 0.218750045);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0386563465, 1.1556195, 0.854652762, -0.999991238, 4.19486446e-010, -0.00408359291, -4.45527339e-012, -0.99999994, -1.03316026e-007, -0.00408359338, -1.03315131e-007, 0.999991179);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.625, 0.62500006, 0.3125);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.224999994, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0920615345, 1.20561934, 0.92318517, -0.999991238, -1.78499271e-010, 0.00408358732, -4.28665703e-022, 1, 4.37113883e-008, -0.00408358732, 4.37110046e-008, -0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.09375, 1, 0.375);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.034419626, 1.1712445, -0.182838112, 0.999991238, 1.78499271e-010, 0.00408358732, 4.28665703e-022, -1, 4.37113883e-008, 0.00408358732, -4.37110046e-008, -0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.625, 0.46875, 0.25000003);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.0188711844, 1.17436945, -0.223245382, -0.999983966, 0.00408357335, 1.7849866e-010, -4.28662573e-022, 4.37112355e-008, -0.999996543, -0.00408355752, -0.999987781, -4.37108518e-008);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.09375, 0.15625, 0.81250006);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0390008986, 1.15874445, 0.939027309, -0.999991238, -1.78499271e-010, 0.00408358732, -4.28665703e-022, 1, 4.37113883e-008, -0.00408358732, 4.37110046e-008, -0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.43750003, 0.656250119, 0.218750015);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.224999994, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.0141878203, 1.20561934, 0.92361939, -0.999991238, -1.78499271e-010, 0.00408358732, -4.28665703e-022, 1, 4.37113883e-008, -0.00408358732, 4.37110046e-008, -0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.09375, 1, 0.375);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0511226021, 1.26924443, -1.44938493, 0.265298247, -0.964150548, -0.00544282049, -0.866018772, -0.235806987, -0.440915436, 0.423825413, 0.121687695, -0.897531629);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.46874997, 0.03125, 0.468750149);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(1.09375012, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.0165741704, 1.23686945, 0.339249194, 0.00408358732, -1.77615575e-010, 0.999991238, 4.39277912e-008, 1, 1.11795683e-018, -0.999991238, 4.34946053e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 0.1875, 0.09375);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.00102843717, 1.26924443, -1.44918036, -0.268751293, -0.963124335, 0.0127752814, -0.866020501, 0.235806838, -0.440912127, 0.421640664, -0.129559353, -0.897458851);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.46874997, 0.03125, 0.468750149);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0386180654, 1.23999453, 0.845278144, 0.00408358732, -5.6798885e-011, 0.999991238, 1.39090659e-008, 1, 4.28665703e-022, -0.999991238, 1.39089433e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(0.156251192, 0.21875, 0.15625003);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0386180617, 1.22749496, 0.845277786, 0.00408358732, 0.999991238, 1.78499271e-010, 4.37113883e-008, 4.28665703e-022, -1, -0.999991238, 0.00408358732, -4.37110046e-008);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.15624997, 0.4375, 0.156249985);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.800000012, 0.800000012, 1);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0386180617, 1.27515078, 0.845277786, 0.999991238, 3.15210187e-008, 0.00408327067, 3.13429069e-008, -1, 4.37114238e-008, 0.00408327067, -4.35830607e-008, -0.999991238);
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.0281249993, 0.0281249993, 0.1953125);
   MeshId = "http://www.roblox.com/asset/?id=3270017";
   MeshType = Enum.MeshType.FileMesh;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0235739276, 0.946251035, -2.07343388, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.46875, 0.15625, 0.46875);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0234973598, 0.946251035, -2.09218359, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.40624997, 0.03125, 0.40624997);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0234463159, 0.946251035, -2.10468364, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.46875, 0.09375, 0.46875);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0233952701, 0.946251035, -2.11718345, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.40624997, 0.03125, 0.40624997);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 1.09375);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0896751881, 1.28686953, 0.338815331, 0.999991238, -9.23612387e-009, -0.00408358732, 9.54482005e-009, 1, 7.54319061e-008, 0.00408358732, -7.56121779e-008, 0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.09375, 0.3125, 1);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 1.09375);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(0.0165741704, 1.28687, 0.339249194, 0.999991238, -9.23619226e-009, -0.00408358732, 9.54482005e-009, 1, 7.54487886e-008, 0.00408358732, -7.55952954e-008, 0.999991238);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.09375, 0.3125, 1);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0511177629, 1.26811838, 0.845227122, -0.00408324087, 3.09163255e-008, -0.999991238, 2.72938252e-007, 1, 2.98022123e-008, 0.999991238, -2.72814162e-007, -0.00408324087);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.15625, 0.0625, 0.03125);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0261178873, 1.26811838, 0.845329225, -0.00408358732, -0.999991238, -2.97452623e-008, -1.39090659e-008, 2.98023224e-008, -1, 0.999991238, -0.00408358732, -1.40306451e-008);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.15625, 0.03125, 0.0625);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0292430501, 1.26499462, 0.84531647, -0.00408358732, -0.999991238, -2.97452623e-008, -1.39090659e-008, 2.98023224e-008, -1, 0.999991238, -0.00408358732, -1.40306451e-008);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.15625, 0.0625, 0.03125);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.047992602, 1.26499462, 0.845239878, -0.00408324087, 3.09163255e-008, -0.999991238, 2.72938252e-007, 1, 2.98022123e-008, 0.999991238, -2.72814162e-007, -0.00408324087);
  Name = "Wedge";
  --Position = Vector3;
  Create'SpecialMesh'{
   Scale = Vector3.new(0.15625, 0.03125, 0.0625);
   MeshType = Enum.MeshType.Wedge;
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0230379589, 0.946251035, -2.20468235, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.46875, 0.84375, 0.46875);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  BrickColor = BrickColor.new(26);
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0226934049, 0.946251273, -2.28905702, 1.78499271e-010, 0.00408358732, 0.999991238, -1, 4.37113883e-008, 4.28665703e-022, -4.37110046e-008, -0.999991238, 0.00408358732);
  --Position = Vector3;
  Create'CylinderMesh'{
   Scale = Vector3.new(0.34374997, 0.03125, 0.34374997);
  };
 };
 Create'Part'{
  TopSurface = Enum.SurfaceType.Smooth;
  CanCollide = false;
  Material = Enum.Material.SmoothPlastic;
  Size = Vector3.new(1.21875012, 0.262500018, 0.200000003);
  formFactor = Enum.FormFactor.Custom;
  BottomSurface = Enum.SurfaceType.Smooth;
  CFrame = CFrame.new(-0.0366783589, 0.818126082, 0.370282173, 0.00408358732, -1.78499271e-010, 0.999991238, 4.37113883e-008, 1, 4.28665703e-022, -0.999991238, 4.37110046e-008, 0.00408358732);
  --Position = Vector3;
  Create'BlockMesh'{
   Scale = Vector3.new(1, 1, 0.625);
  };
 };
};


local handle=tool.Handle


for _, part in ipairs(tool:GetChildren()) do
 if part:IsA"BasePart" and part~=handle then
  local cv=Instance.new("CFrameValue", part)
  cv.Value=handle.CFrame:inverse()*part.CFrame
  cv.Name="cf"
 end
 if goldgun and part:IsA"BasePart" then
  part.BrickColor=BrickColor.new"New Yeller"
  part.Reflectance=.3
 elseif part:IsA"BasePart" then
  part.BrickColor=BrickColor.new"Black"
 end
end

for _, part in ipairs(tool:GetChildren()) do
 if part:IsA"BasePart" and part~=handle then
  local w=Instance.new"Weld"
  w.Parent=handle
  w.Part0=handle
  w.Part1=part
  w.C0=part.cf.Value
 end
end




tool.Parent=game.Players.LocalPlayer.Backpack
local sounds={
 Dry=131242822;
 Reload=138022745;
 Shoot1=151997297;
 Shoot2=151997297;
 Shoot3=151997297;
 Shoot4=151997297;
 Shoot5=151997297;
}

do
 local soundobjs={}
 for name, id in pairs(sounds) do
  local s=Instance.new("Sound", tool.Handle)
  soundobjs[name]=s
  s.Volume=1
  s.SoundId="rbxassetid://"..id
  s.Name=name 
 end
 local shootn=1
 function PlaySound(name, skip)
  if not skip then
   if name~='Shoot' then
    soundobjs[name]:Play()
   else
    --print(name..shootn)
    soundobjs[name..shootn]:Play()
    shootn=shootn+1
    if shootn==6 then
     shootn=1
    end
   end
  end
 end
end

player,char = game.Players.LocalPlayer, game.Players.LocalPlayer.Character
hum,torso,rarm,larm = char.Humanoid, char.Torso, char["Right Arm"], char["Left Arm"]
rs,ls,rw,lw = torso["Right Shoulder"], torso["Left Shoulder"], Instance.new("Weld"), Instance.new("Weld")

stop=false

hum.Died:connect(function()
 stop=true
end)

function getlimbs()
 return hum and torso and rarm and larm and rs and ls
end

function lerpCF(time,callback,yield,skip)
 if not skip then
  local start=tick()
  local goalt=start+time
  local con
  con=game:GetService"RunService".RenderStepped:connect(function()
   local alpha=(tick()-start)/time
   local cancel=callback(math.min(alpha, 1))
   if cancel then
    con:disconnect()
   end
   if tick()>goalt then
    con:disconnect()
   end
  end)
  if yield then
   wait(time)
  end
 end
end

anim={
 drawtime=.2;
 shoottime=.06;
 reloadtime=1.5;
}
if goldgun then
 for k, v in pairs(anim) do
  anim[k]=v*.6 
 end
end
--lerpCF(time,callback,yield,skip)

local defR=CFrame.new(-.5, .5, 0)
local defL=CFrame.new(.5, .5, 0)

local aimR=defR*CFrame.Angles(-math.pi/2, -math.pi*.05, 0)*CFrame.new(.3,0,-.5)
local aimL=defL*CFrame.Angles(-math.pi/2,math.pi*.225,0)*CFrame.new(-.5,0,.3)

local shootR=aimR*CFrame.new(0,0,.1)
local shootL=aimL*CFrame.new(0,0,.1)

local reloadR=defR*CFrame.Angles(-math.pi/1.5, 0, math.pi/6)
local reloadLdown=defL
local ammo=30
tool.Equipped:connect(function(mouse)
 if hum.Health>0 and getlimbs() then
  stop=false
  rs.Part1=nil
  ls.Part1=nil
  
  rw.Parent=torso
  lw.Parent=torso
  
  rw.Part0=torso
  lw.Part0=torso
  
  rw.Part1=rarm
  lw.Part1=larm
  
  rw.C0=CFrame.new(1, .5, 0)
  rw.C1=CFrame.new(-.5, .5, 0)
  
  lw.C0=CFrame.new(-1, .5, 0)
  lw.C1=CFrame.new(.5, .5, 0)
  lerpCF(anim.drawtime, function(a)lw.C1=defL:lerp(aimL,a); return stop end,false)
  lerpCF(anim.drawtime, function(a)rw.C1=defR:lerp(aimR,a); return stop end,true)
  mouse.Button1Up:connect(function()
   shoot=false
  end)
  mouse.Button1Down:connect(function()
   if not reload then
    shoot=true
    while shoot and ammo>0 do
     PlaySound("Shoot")
     ammo=ammo-1
     if not goldgun then
     wait(.05)
     end
     lerpCF(anim.shoottime/2, function(a)lw.C1=aimL:lerp(shootL,a); return stop end,false)
     lerpCF(anim.shoottime/2, function(a)rw.C1=aimR:lerp(shootR,a); return stop end,true)
     
     lerpCF(anim.shoottime/2, function(a)lw.C1=shootL:lerp(aimL,a); return stop end,false)
     lerpCF(anim.shoottime/2, function(a)rw.C1=shootR:lerp(aimR,a); return stop end,true)
     
     local target=mouse.Target
     if target then
      humt=target.Parent:FindFirstChild("Humanoid") or target.Parent.Parent:FindFirstChild("Humanoid")
      if humt then
       if humt.MaxHealth==math.huge then
         humt.MaxHealth=10^10
         humt.Health=10^10
       end
       humt:TakeDamage((math.random(1, 4)/100)*humt.MaxHealth)
       if target.Name=="Head" then
        humt:TakeDamage((3/100)*humt.MaxHealth)
       elseif target.Name=="Torso" then
        humt:TakeDamage((1/100)*humt.MaxHealth)
       end
       humt:TakeDamage((1/100)*humt.MaxHealth)
       if goldgun then
        hum:TakeDamage((3/100)*humt.MaxHealth)
       end
      end
     end
    end
   end
  end)
  mouse.KeyDown:connect(function(key)
   if key=='r' and not reload and not shoot then
    reload=true
    PlaySound("Reload")
    lerpCF(anim.reloadtime/4, function(a)lw.C1=aimL:lerp(reloadLdown,a); return stop end,true)
    wait(anim.reloadtime/2)
    lerpCF(anim.reloadtime/4, function(a)lw.C1=reloadLdown:lerp(aimL,a); return stop end,true)
    --5/6
    if not stop then
     ammo=30
    end
    reload=false
   end
  end)
 end 
end)

tool.Unequipped:connect(function()
 stop=true
 rs.Part1=rarm
 ls.Part1=larm
 
 rw.Parent=nil
 lw.Parent=nil
end)