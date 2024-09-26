print("f")
local w = game:GetService("Workspace")
local Players = game:GetService("Players")
local me = Players.LocalPlayer
while true and task.wait() do
	for _,obj in w.DigSiteItems.Treasures:GetDescendants() do
		if obj.Name == "TreasurePrompt" then
			obj.HoldDuration = 0
			obj.MaxActivationDistance = math.huge
            obj.RequiresLineOfSight = false
            if me.Character then
            	local hrp = me.Character.HumanoidRootPart
            	if (hrp.Position - obj.Parent.Position).Magnitude < 20 then
		            for a=0, 15 do
			            task.spawn(function()
			            	obj:InputHoldBegin()
		            		obj:InputHoldEnd()
			            end)
			        end
			    end
			end
		end
	end
end