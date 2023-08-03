local All_Name = {"Part", "MeshPart", "UnionOperation", "WedgePart"}


    for key, value in pairs(workspace.Park.Ground:GetDescendants()) do
        for i,v in pairs(All_Name) do 
        	if v == value.ClassName then
	                value.Transparency = 1
    	        end
            end
end


    for key, value in pairs(workspace:GetDescendants()) do
        	if value.Name == "Net" then
	                value:Destroy()
    	        end
            end

game:GetService("Workspace").Park.Lights:Destroy()
game:GetService("Workspace").Park["Prop Lights"]:Destroy()
game:GetService("Workspace").Park["Path Walls"]:Destroy()
game:GetService("Workspace").Park.Benches:Destroy()
game:GetService("Workspace").Park.Borders:Destroy()
game:GetService("Workspace").Park["Trash Cans"]:Destroy()
game:GetService("Workspace").Park.Fences:Destroy()
game:GetService("Workspace")["Fake Plaza"]:Destroy()