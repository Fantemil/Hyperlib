--//Strength Settings\\--
local StrenghtMultiplier = 245 --Much higher will just set players back, not props though.
--\\End//--

--//Vars\\--
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Debris = game:GetService("Debris")
--\\End//--

--//Fling Function\\--
Workspace.ChildAdded:Connect(function(NewModel)
	if NewModel.Name == "GrabParts" then
		local PartToImpulse = NewModel["GrabPart"]["WeldConstraint"].Part1
		if PartToImpulse then --//Part found
			local VelocityObject = Instance.new("BodyVelocity", PartToImpulse)
			NewModel:GetPropertyChangedSignal("Parent"):Connect(function()
				if not NewModel.Parent then
					if UserInputService:GetLastInputType() == Enum.UserInputType.MouseButton2 then --//Launched
						VelocityObject.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						VelocityObject.Velocity = workspace.CurrentCamera.CFrame.lookVector * StrenghtMultiplier
						Debris:AddItem(VelocityObject, 1)
					elseif UserInputService:GetLastInputType() == Enum.UserInputType.MouseButton1 then
						VelocityObject:Destroy() --//Cancel Launch
					else
						VelocityObject:Destroy() --//No keys pressed
					end
				end
			end)
		end
	end
end)
--\\End//--