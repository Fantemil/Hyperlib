local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()

local ft = Instance.new("Tool")
ft.Name = "Fling Tool"
ft.RequiresHandle = false
ft.Parent = lp.Backpack
ft.Activated:Connect(function()
	local obj = mouse.Target
	if obj:IsA("BasePart") or obj:IsA("Part") or obj:IsA("MeshPart") or obj:IsA("CornerWedgePart") or obj:IsA("TrussPart") or obj:IsA("WedgePart") then
		if not obj.Anchored then
    		local bambam = Instance.new("BodyAngularVelocity")
	    	bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
	    	bambam.Parent = obj
	    	bambam.AngularVelocity = Vector3.new(99999,99999,99999)
	    	bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
	    	bambam.P = math.huge
    	end
	end
end)