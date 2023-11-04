wait(1.1)
game.StarterGui:SetCore("SendNotification", {
Title = "Print All Models in workspace";
Text = "Made by Innovation :D"; 
Icon = "rbxassetid://57254792"; 
Duration = 5; 
})
function scanNames(Model)
for i = 1,table.getn(Model:GetChildren()) do
	if Model:GetChildren()[i]:IsA("Instance") and Model:GetChildren()[i].ClassName ~= "Model" then
		if Model:GetChildren()[i].Name == script.Name then
		warn(script.Name.." (The script that scanned these names)")
		end
		wait()
	print(Model:GetChildren()[i])
	elseif Model:GetChildren()[i]:IsA("Model") then
		scanNames(Model:GetChildren()[i])
end
end
end
scanNames(workspace)


