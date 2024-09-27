while true do
wait()
	local ccamount=0
	local pro=(...)
	if pro then
		for _,j in pairs(workspace:GetDescendants()) do
			if j:IsA("ClickDetector") and j.Name:lower()==pro:lower() or j:IsA("ClickDetector") and j.Parent.Name:lower()==pro:lower() then
				ccamount=ccamount+1
				fireclickdetector(j)
			end
		end
	else
		for _,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ClickDetector") then
				ccamount=ccamount+1
				fireclickdetector(v)
			end
		end
	end
end