local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character

local RS = game:GetService("RunService")

local Tool = Instance.new("Tool", Player.Backpack)
Tool.Name="Grab"

local Handle = Instance.new("Part", Tool)
Handle.Size=Vector3.zero
Handle.CanCollide=false
Handle.Transparency=1
Handle.Name="Handle"
local Current = nil
local A,B,C,D=nil,nil,nil,nil

function Align(P0,P1)
	local A0,A1 = Instance.new("Attachment",P0), Instance.new("Attachment",P1)
	local AL, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation",P0)
	AL.Attachment0 = A0
	AL.Attachment1 = A1
	AL.Responsiveness=math.huge
	AL.MaxForce=math.huge
	AL.MaxVelocity=math.huge
	--
	AO.Attachment0 = A0
	AO.Attachment1 = A1	
	AO.Responsiveness=math.huge
	AO.MaxTorque=math.huge
	AO.MaxAngularVelocity=math.huge
	
	A,B,C,D = A0, A1, AL, AO
	Current = P0
end


function Grab()
	if Tool.Parent == Character then
		if (A and B and C and D) ~= nil then
			A:Destroy()
			B:Destroy()
			C:Destroy()
			D:Destroy()
			A,B,C,D=nil,nil,nil,nil
			Current=nil
		end
		local Target = Mouse.Target
		if Target.Anchored == false and not Target:FindFirstChildOfClass("WeldConstraint") then
			Align(Target, Handle)
			Target.CanCollide = false
		end
	end
end

function Drop()
	if Tool.Parent == Character then
		if (A and B and C and D and Current) ~= nil then
			Current.CanCollide=true
			Current.Velocity = Handle.Velocity
			Current.RotVelocity= Handle.RotVelocity
			A:Destroy()
			B:Destroy()
			C:Destroy()
			D:Destroy()
			A,B,C,D=nil,nil,nil,nil
			Current=nil
		end
	end
end

local IsOwned = Instance.new("SelectionBox", workspace.Terrain)
IsOwned.Color3=Color3.new(0,1,0)
IsOwned.LineThickness=0.01

RS.Heartbeat:Connect(function()
	local sine = os.clock()
	if Current ~= nil then
		if Current.ReceiveAge == 0 then
			IsOwned.Adornee = Current
			Current.Velocity = Vector3.new(-25.1 + math.pi * math.sin(sine*15), 25.1 + math.pi * math.sin(sine*15), 25.1 + math.pi * math.sin(sine*15))
			Current.RotVelocity = Vector3.new(0 + math.pi / 6 * math.sin(sine*15), 0 + math.pi / 6 * math.sin(sine*15), 0 + math.pi / 6 * math.sin(sine*15))
		else
			IsOwned.Adornee = nil
		end
	else
		IsOwned.Adornee = nil
	end
end)

Mouse.Button1Down:Connect(Grab)
Mouse.Button1Up:Connect(Drop)