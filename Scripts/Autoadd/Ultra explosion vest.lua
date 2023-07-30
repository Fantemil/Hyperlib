suicide_vest = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
suicide_vest.Grip = CFrame.new(0,0,0) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
suicide_vest.GripForward = Vector3.new(-0,-0,1)
suicide_vest.Name = "Suicide Vest"
suicide_vest.GripRight = Vector3.new(-1,0,0)

vest = Instance.new("Part",suicide_vest)
vest.FormFactor = Enum.FormFactor.Plate
vest.CanCollide = false
vest.Size = Vector3.new(1,0.40000000596046,1)
vest.Name = "Vest"
vest.CFrame = CFrame.new(10.640310287476,1.7895127534866,-17.640350341797) * CFrame.Angles(2.0803525447845, 1.5679913759232, -2.0850734710693)
vest.BrickColor = BrickColor.new("Really black")
vest.Friction = 0.30000001192093

mesh = Instance.new("BlockMesh",vest)
mesh.Scale = Vector3.new(0.69999998807907,1.6000000238419,1.1000000238419)

mainvest = Instance.new("Part",suicide_vest)
mainvest.FormFactor = Enum.FormFactor.Plate
mainvest.Size = Vector3.new(2,1.6000000238419,1)
mainvest.Name = "MainVest"
mainvest.CFrame = CFrame.new(10.64017868042,0.78960591554642,-17.140171051025) * CFrame.Angles(-0.00018611783161759, 1.5707963705063, 0)
mainvest.BrickColor = BrickColor.new("Really black")
mainvest.Friction = 0.30000001192093

mesh = Instance.new("BlockMesh",mainvest)
mesh.Scale = Vector3.new(1.1000000238419,1.1000000238419,1.1000000238419)

vest = Instance.new("Part",suicide_vest)
vest.FormFactor = Enum.FormFactor.Plate
vest.CanCollide = false
vest.Size = Vector3.new(1,0.40000000596046,1)
vest.Name = "Vest"
vest.CFrame = CFrame.new(10.640410423279,1.7896988391876,-16.640354156494) * CFrame.Angles(2.0803525447845, 1.5679913759232, -2.0850734710693)
vest.BrickColor = BrickColor.new("Really black")
vest.Friction = 0.30000001192093

mesh = Instance.new("BlockMesh",vest)
mesh.Scale = Vector3.new(0.69999998807907,1.6000000238419,1.1000000238419)

capsule = Instance.new("Part",suicide_vest)
capsule.FormFactor = Enum.FormFactor.Custom
capsule.CanCollide = false
capsule.Size = Vector3.new(1,0.40000000596046,1)
capsule.Name = "Capsule"
capsule.CFrame = CFrame.new(10.870065689087,0.48955285549164,-17.190101623535) * CFrame.Angles(2.0641593933105, 1.5679913759232, -2.069162607193)
capsule.BrickColor = BrickColor.new("Really black")
capsule.Friction = 0.30000001192093

mesh = Instance.new("BlockMesh",capsule)

handle = Instance.new("Part",suicide_vest)
handle.FormFactor = Enum.FormFactor.Plate
handle.CanCollide = false
handle.Size = Vector3.new(1,0.40000000596046,1)
handle.Name = "Handle"
handle.CFrame = CFrame.new(12.140438079834,1.5896544456482,-15.640468597412) * CFrame.Angles(2.0894796848297, 1.5688432455063, -2.0918607711792)
handle.BrickColor = BrickColor.new("Really black")
handle.Friction = 0.30000001192093

mesh = Instance.new("SpecialMesh",handle)
mesh.Scale = Vector3.new(0.25,1.5,0.25)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(3.814697265625e-006,-0.29998183250427,0) * CFrame.Angles(2.7886638641357, 1.5680558681488, -2.7886264324188)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.9993934631348,-0.19999563694,1.4998092651367) * CFrame.Angles(2.8632497787476, 1.5693315267563, -2.8632338047028)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516173839569, 1.5693315267563, -2.0515880584717)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.74976539611816,1.2997642755508,0.869873046875) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.99968719482422,1.2997641563416,0.86986541748047) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.99967765808105,0.39991128444672,0.86985778808594) * CFrame.Angles(2.867255449295, 1.5682591199875, -2.8672308921814)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.7494697570801,0.3999183177948,0.869873046875) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(1.9073486328125e-006,-0.29998207092285,0) * CFrame.Angles(3.1407959461212, -0.65473467111588, 3.1415903568268)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473186969757, -3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(9.5367431640625e-007,-0.29999375343323,0) * CFrame.Angles(0.00079654407454655, 0.65472608804703, 1.5030862243748e-007)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0.00079654407454655, 0.65472716093063, 1.5030862243748e-007)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29998850822449,0) * CFrame.Angles(3.1407968997955, -0.65472900867462, 3.1415920257568)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.140796661377, -0.65472900867462, 3.1415922641754)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.9993686676025,0.39991784095764,0.86986541748047) * CFrame.Angles(2.8658452033997, 1.5682591199875, -2.865820646286)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29999828338623,0) * CFrame.Angles(-3.1407964229584, 1.6482444102687e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482444102687e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.7494678497314,1.2997632026672,0.86986541748047) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(1.9073486328125e-006,-0.29998230934143,0) * CFrame.Angles(3.1407959461212, -0.65473544597626, 3.1415903568268)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, -3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(9.5367431640625e-007,-0.29998970031738,0) * CFrame.Angles(3.140796661377, -0.65473169088364, 3.1415922641754)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473169088364, 3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(3.814697265625e-006,-0.29997754096985,7.62939453125e-006) * CFrame.Angles(3.1408417224884, 1.5390774011612, 3.1415803432465)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29999446868896,-1.1920928955078e-007) * CFrame.Angles(1.3218629360199, 0.6868559718132, 4.6849738311039e-008)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.3218629360199, 0.68685710430145, 9.4050936479291e-021)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(9.5367431640625e-007,-0.29999375343323,0) * CFrame.Angles(0.00079654407454655, 0.65472608804703, 1.5030862243748e-007)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0.00079654407454655, 0.65472716093063, 1.5030862243748e-007)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-2.2493286132813,1.2997678518295,0.86985778808594) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29999849200249,0) * CFrame.Angles(-1.6620417833328, 1.6482446122171e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.6620417833328, 1.6482446122171e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482444102687e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482444102687e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29998111724854,-1.52587890625e-005) * CFrame.Angles(3.1407952308655, -1.0077291727066, 3.1415913105011)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407971382141, -1.0077261924744, -3.1415905952454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.74979400634766,1.2997925281525,0.86988830566406) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(1.9073486328125e-006,-0.29998970031738,0) * CFrame.Angles(3.140796661377, -0.65473258495331, 3.1415922641754)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, 3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29999780654907,-1.7881393432617e-007) * CFrame.Angles(-3.1407964229584, 1.6482431985784e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482436024752e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(1.9073486328125e-006,-0.29998636245728,0) * CFrame.Angles(3.1407973766327, -0.65472120046616, 3.1415913105011)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407973766327, -0.65472120046616, 3.1415915489197)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(1.9073486328125e-006,-0.29998970031738,0) * CFrame.Angles(3.140796661377, -0.65473258495331, 3.1415922641754)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, 3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-2.2493362426758,0.39991748332977,0.86988067626953) * CFrame.Angles(2.8632497787476, 1.5693315267563, -2.8632338047028)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516173839569, 1.5693315267563, -2.0515880584717)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.2495994567871,1.299755692482,0.86985778808594) * CFrame.Angles(2.8782839775085, 1.5682591199875, -2.8782596588135)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29999780654907,-1.7881393432617e-007) * CFrame.Angles(-3.1407964229584, 1.6482431985784e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482436024752e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482444102687e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482444102687e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(9.5367431640625e-007,-0.29998970031738,0) * CFrame.Angles(3.140796661377, -0.65473169088364, 3.1415922641754)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473169088364, 3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29999446868896,-1.1920928955078e-007) * CFrame.Angles(1.3218629360199, 0.6868559718132, 4.6849738311039e-008)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.3218629360199, 0.68685710430145, 9.4050936479291e-021)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.99971389770508,0.39992380142212,0.869873046875) * CFrame.Angles(3.1408536434174, 1.5390754938126, 3.1415703296661)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482436024752e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482436024752e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.99972534179688,1.2997925281525,0.86988067626953) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,-0.29998850822449,0) * CFrame.Angles(3.1407968997955, -0.65472900867462, 3.1415920257568)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.140796661377, -0.65472900867462, 3.1415922641754)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.3218629360199, 0.68685710430145, 9.4050936479291e-021)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.3218629360199, 0.68685710430145, 9.4050936479291e-021)

weld = Instance.new("Weld",handle)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(4.7683715820313e-007,-0.29998970031738,0) * CFrame.Angles(1.6318166255951, -0.65473258495331, 3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6318163871765, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-1.6620417833328, 1.6482446122171e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.6620417833328, 1.6482446122171e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-1.6620417833328, 1.6482446122171e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.6620417833328, 1.6482446122171e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482436024752e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-3.1407964229584, 1.6482436024752e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(2.8610229492188e-006,-0.29998207092285,1.1920928955078e-007) * CFrame.Angles(1.6597069501877, -0.65473127365112, 3.1415889263153)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6597083806992, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0.00079654407454655, 0.65472716093063, 1.5030862243748e-007)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0.00079654407454655, 0.65472716093063, 1.5030862243748e-007)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.99967193603516,-0.19999647140503,1.4998016357422) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-1.5078394412994, 1.6482446122171e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.5078394412994, 1.6482446122171e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-1.5078394412994, 1.6482446122171e-021, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.5078394412994, 1.6482446122171e-021, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.3218629360199, 0.68685710430145, 9.4050936479291e-021)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.3218629360199, 0.68685710430145, 9.4050936479291e-021)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(2.8610229492188e-006,-0.29998207092285,-1.1920928955078e-007) * CFrame.Angles(1.6391389369965, -0.65473127365112, 3.1415889263153)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6391403675079, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, 3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, 3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.2496166229248,0.39991164207458,0.86988830566406) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(2.2218630313873, 0.80705314874649, 4.6874071569328e-021)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.2218630313873, 0.80705314874649, 4.6874071569328e-021)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(2.2218630313873, 0.80705314874649, 4.6874071569328e-021)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.2218630313873, 0.80705314874649, 4.6874071569328e-021)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0.00079654407454655, 0.65472716093063, 1.5030862243748e-007)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0.00079654407454655, 0.65472716093063, 1.5030862243748e-007)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(3.0994415283203e-006,-0.2999826669693,2.3841857910156e-007) * CFrame.Angles(-2.2441155910492, 0.73956590890884, 1.5269987443389e-006)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-2.2441155910492, 0.73956918716431, 5.9582383967949e-022)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473169088364, 3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473169088364, 3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-2.2494087219238,1.2997961044312,0.869873046875) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0.00079627445666119, 0.65473276376724, 4.0871244482251e-021)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0.00079627445666119, 0.65473276376724, 4.0871244482251e-021)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0.00079627445666119, 0.65473276376724, 4.0871244482251e-021)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0.00079627445666119, 0.65473276376724, 4.0871244482251e-021)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, 3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, 3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(3.814697265625e-006,-0.29998254776001,0) * CFrame.Angles(3.1408245563507, 1.5395030975342, 3.1415646076202)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407654285431, 1.5395069122314, -3.1415627002716)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.140796661377, -0.65472900867462, 3.1415922641754)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.140796661377, -0.65472900867462, 3.1415922641754)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.4997653961182,0.79992634057999,1.4998779296875) * CFrame.Angles(2.6387243270874, 1.5693315267563, -2.6387012004852)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516173839569, 1.5693315267563, -2.0515880584717)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.6383513212204, -0.65473282337189, -3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6383513212204, -0.65473282337189, -3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.6383513212204, -0.65473282337189, -3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6383513212204, -0.65473282337189, -3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473169088364, 3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473169088364, 3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(3.814697265625e-006,-0.29997754096985,7.62939453125e-006) * CFrame.Angles(3.1408417224884, 1.5390774011612, 3.1415803432465)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407973766327, -0.65472120046616, 3.1415915489197)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407973766327, -0.65472120046616, 3.1415915489197)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.2496604919434,0.3999240398407,0.86989593505859) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.4826571941376, -0.65473282337189, -3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.4826571941376, -0.65473282337189, -3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.4826571941376, -0.65473282337189, -3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.4826571941376, -0.65473282337189, -3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.140796661377, -0.65472900867462, 3.1415922641754)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.140796661377, -0.65472900867462, 3.1415922641754)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.74975204467773,0.39990890026093,0.86988830566406) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, -3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, -3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.7495307922363,0.39993071556091,0.86988830566406) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.60882127285, -0.65473282337189, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.60882127285, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.60882127285, -0.65473282337189, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.60882127285, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407973766327, -0.65472120046616, 3.1415915489197)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407973766327, -0.65472120046616, 3.1415915489197)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.999439239502,0.39993023872375,0.86988067626953) * CFrame.Angles(3.1408534049988, 1.5390585660934, 3.1415703296661)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473186969757, -3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473186969757, -3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.2496032714844,0.39991796016693,0.86986541748047) * CFrame.Angles(2.8711702823639, 1.5682591199875, -2.8711459636688)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.6318163871765, -0.65473282337189, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6318163871765, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.6318163871765, -0.65473282337189, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6318163871765, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, -3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473258495331, -3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.2496452331543,0.39993023872375,0.86988067626953) * CFrame.Angles(3.140855550766, 1.5390754938126, 3.1415681838989)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407971382141, -1.0077261924744, -3.1415905952454)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407971382141, -1.0077261924744, -3.1415905952454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.9993991851807,1.2997641563416,0.86984252929688) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.6597083806992, -0.65473282337189, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6597083806992, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.6597083806992, -0.65473282337189, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6597083806992, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473186969757, -3.141592502594)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407964229584, -0.65473186969757, -3.141592502594)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.4995365142822,0.39991366863251,0.86985015869141) * CFrame.Angles(2.867255449295, 1.5682591199875, -2.8672308921814)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.7495307922363,1.2997915744781,0.86988067626953) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.6391403675079, -0.65473282337189, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6391403675079, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(1.6391403675079, -0.65473282337189, 3.1415927410126)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(1.6391403675079, -0.65473282337189, 3.1415927410126)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407971382141, -1.0077261924744, -3.1415905952454)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407971382141, -1.0077261924744, -3.1415905952454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.4995880126953,0.39992618560791,0.86986541748047) * CFrame.Angles(3.1408536434174, 1.5390754938126, 3.1415703296661)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.74977874755859,0.39992117881775,0.86990356445313) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.4995307922363,1.2997518777847,0.86985015869141) * CFrame.Angles(2.8632538318634, 1.5682591199875, -2.8632292747498)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-2.2441155910492, 0.73956918716431, 5.9582383967949e-022)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-2.2441155910492, 0.73956918716431, 5.9582383967949e-022)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-2.2441155910492, 0.73956918716431, 5.9582383967949e-022)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-2.2441155910492, 0.73956918716431, 5.9582383967949e-022)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.9994697570801,1.2997925281525,0.86985778808594) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.499584197998,1.2997803688049,0.86986541748047) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.2496452331543,1.2997841835022,0.869873046875) * CFrame.Angles(3.1408567428589, 1.5390754938126, 3.1415672302246)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407654285431, 1.5395069122314, -3.1415627002716)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407654285431, 1.5395069122314, -3.1415627002716)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(3.1407654285431, 1.5395069122314, -3.1415627002716)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407654285431, 1.5395069122314, -3.1415627002716)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-2.2494049072266,0.3999297618866,0.86988830566406) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.999454498291,-0.19998979568481,1.4998245239258) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-1.4997673034668,0.79992651939392,1.4998931884766) * CFrame.Angles(3.1408178806305, 1.5392999649048, 3.1415874958038)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(-0.99971008300781,-0.19999098777771,1.4998245239258) * CFrame.Angles(3.1408522129059, 1.5390754938126, 3.141571521759)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(3.1407825946808, 1.5390980243683, -3.1415469646454)

weld = Instance.new("Weld",handle)
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(2.0516405105591, 1.5682591199875, -2.0515644550323)

weld = Instance.new("Weld",handle)
weld.Part1 = Handle
weld.Part0 = Handle
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-1.1798923015594, -1.5698828697205, -1.1817103624344)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.1798923015594, -1.5698828697205, -1.1817103624344)

weld = Instance.new("Weld",handle)
weld.Part1 = Handle
weld.Part0 = Handle
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-1.9360963106155, -1.5701057910919, -1.9606413841248)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.9360963106155, -1.5701057910919, -1.9606413841248)

weld = Instance.new("Weld",handle)
weld.Part1 = Button
weld.Part0 = Handle
weld.C1 = CFrame.new(0,-0.29996514320374,9.5367431640625e-007) * CFrame.Angles(-1.0851662158966, -1.5690022706985, -1.092029094696)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.1798923015594, -1.5698828697205, -1.1817103624344)

weld = Instance.new("Weld",handle)
weld.Part1 = Handle
weld.Part0 = Handle
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-5.783284905192e-006, 1.5707963705063, 0)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-5.783284905192e-006, 1.5707963705063, 0)

weld = Instance.new("Weld",handle)
weld.Part1 = Handle
weld.Part0 = Handle
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-5.7831662161334e-006, -6.817704615969e-006, -1.099346832234e-006)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-5.7831662161334e-006, -6.817704615969e-006, -1.099346832234e-006)

weld = Instance.new("Weld",handle)
weld.Part1 = Vest
weld.Part0 = Handle
weld.C1 = CFrame.new(-2,-0.19996643066406,1.4999694824219) * CFrame.Angles(-0, -1.5707963705063, 0)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.87646484375, -1.5687830448151, -2.0926914215088)

weld = Instance.new("Weld",handle)
weld.Part1 = MainVest
weld.Part0 = Handle
weld.C1 = CFrame.new(-1.5,0.80003356933594,1.4999694824219) * CFrame.Angles(-0, -1.5707963705063, 0)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.87646484375, -1.5687830448151, -2.0926914215088)

weld = Instance.new("Weld",handle)
weld.Part1 = Vest
weld.Part0 = Handle
weld.C1 = CFrame.new(-1,-0.19996643066406,1.4999694824219) * CFrame.Angles(-0, -1.5707963705063, 0)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.87646484375, -1.5687830448151, -2.0926914215088)

weld = Instance.new("Weld",handle)
weld.Part1 = Capsule
weld.Part0 = Handle
weld.C1 = CFrame.new(-1.5499572753906,1.1000289916992,1.2700500488281) * CFrame.Angles(7.3903847805923e-006, -1.5707963705063, 0)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.87646484375, -1.5687830448151, -2.0926914215088)

weld = Instance.new("Weld",handle)
weld.Part1 = Handle
weld.Part0 = Handle
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(-1.87646484375, -1.5687830448151, -2.0926914215088)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.87646484375, -1.5687830448151, -2.0926914215088)

weld = Instance.new("Weld",handle)
weld.Part1 = Button
weld.Part0 = Handle
weld.C1 = CFrame.new(0,-0.29996490478516,0) * CFrame.Angles(5.5680798141111e-006, -1.5707963705063, 0)
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(-1.87646484375, -1.5687830448151, -2.0926914215088)

button = Instance.new("Part",suicide_vest)
button.FormFactor = Enum.FormFactor.Plate
button.CanCollide = false
button.Size = Vector3.new(1,0.40000000596046,1)
button.Name = "Button"
button.CFrame = CFrame.new(12.140488624573,1.8896195888519,-15.640523910522) * CFrame.Angles(2.0774846076965, 1.5679913759232, -2.082367181778)
button.BrickColor = BrickColor.new("Bright red")
button.Friction = 0.30000001192093

mesh = Instance.new("SpecialMesh",button)
mesh.Scale = Vector3.new(0.15000000596046,0.20000000298023,0.15000000596046)

local prev
local parts = suicide_vest:GetChildren()
 
for i = 1,#parts do
        if (parts[i].className == "Part") then
                if (prev ~= nil)then
                        local weld = Instance.new("Weld")
                        weld.Part0 = prev
                        weld.Part1 = parts[i]
                        weld.C0 = prev.CFrame:inverse()
                        weld.C1 = parts[i].CFrame:inverse()
                        weld.Parent = prev
                end
                prev = parts[i]
        end
end

function shrapeffect(shrap, hit)
pcall(function()
if (game.Players:GetPlayerFromCharacter(hit.Parent) ~= nil and game.Players:GetPlayerFromCharacter(hit.Parent) ~= game.Players:GetPlayerFromCharacter(script.Parent.Parent)) or game.Players:GetPlayerFromCharacter(hit.Parent) == nil then
hit.Parent.Humanoid:TakeDamage(35)
end
end)
end

function check(obj, pos, dist)
if (obj.Position - pos).magnitude <= dist then
return true
end
return false
end

function checkchildren(obj, pos, dist)
for i, v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
test = check(v, pos, dist)
if test then burnout(obj)
end
end
end
end

function burnout(obj)
	for i, v in pairs(obj:GetChildren()) do
		if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") or v:IsA("BodyColors") then
			v:remove()
		elseif #(v:GetChildren()) ~= 0 then
			for n, m in pairs(v:GetChildren()) do
				if m:IsA("Shirt") or m:IsA("Pants") or m:IsA("ShirtGraphic")  or m:IsA("BodyColors")then
					m:remove()
				elseif m:IsA("BasePart") then
					m.BrickColor = BrickColor.new("Really black")
					if m:findFirstChild("Fuel") then
						m:findFirstChild("Fuel").ConstrainedValue = 0
					end
				elseif m:IsA("SpecialMesh") then
					m.VertexColor = Vector3.new(0,0,0)
				end
			end
		elseif v:IsA("BasePart") then
			v.BrickColor = BrickColor.new("Really black")
			if v:findFirstChild("Fuel") then
				v:findFirstChild("Fuel").ConstrainedValue = 0
			end
		end
	end
	if obj:IsA("BasePart") then
		obj.BrickColor = BrickColor.new("Really black")
		if obj:findFirstChild("Fuel") then
			obj:findFirstChild("Fuel").ConstrainedValue = 0
		end
	end
end


function Shrapnel(number)
for i = 1, number do
local shrapnel = Instance.new("Part")
shrapnel.formFactor = "Symmetric"
shrapnel.Size = Vector3.new(1, 1, 1)
shrapnel.Parent = workspace
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(),math.random(),math.random())
mesh.MeshId = "http://www.roblox.com/asset/?id=15170610"
mesh.TextureId = "http://www.roblox.com/asset/?id=15170762"
mesh.Parent = shrapnel
shrapnel.CanCollide = false
shrapnel.CFrame = suicide_vest.MainVest.CFrame + Vector3.new(math.random(-5,5), math.random(),math.random(-5,5))
shrapnel.Velocity = Vector3.new(math.random(-150, 150),-10,math.random(-150, 150))
shrapnel.Touched:connect(function(hit) shrapeffect(shrapnel, hit) end)
end
end

function onActivated() 
print("Fire!")
suicide_vest.MainVest.CanCollide = false
Shrapnel(math.random(30,40)) 
local exp = Instance.new("Explosion")
exp.Position = suicide_vest.MainVest.Position
exp.Parent = workspace
exp.BlastRadius = 15
local exppart = Instance.new("Part")
exppart.CanCollide = false
exppart.Anchored = true
exppart.Parent = suicide_vest
exppart.Position = exp.Position
exppart.Transparency = 1
local sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id=2248511"
sound.Parent = exppart
sound:Play()
for i, v in pairs(workspace:GetChildren()) do
if v:IsA("BasePart") and (v.Position - exp.Position).magnitude <= exp.BlastRadius + 10 and v.Name ~= "Base" then
v.BrickColor = BrickColor.new("Really black")
elseif v:IsA("Model") then
checkchildren(v, exp.Position, exp.BlastRadius + 10)
end
end
script.Parent.Parent.Head.BrickColor = BrickColor.new("Really black")
script.Parent.Parent["Right Arm"].BrickColor = BrickColor.new("Really black")
script.Parent.Parent["Right Leg"].BrickColor = BrickColor.new("Really black")
script.Parent.Parent["Left Arm"].BrickColor = BrickColor.new("Really black")
script.Parent.Parent["Left Leg"].BrickColor = BrickColor.new("Really black")
end

suicide_vest.Equipped:connect(function(mouse)
mouse.Button1Up:connect(function() onActivated() end)
end)