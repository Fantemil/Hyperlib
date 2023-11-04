local folderToDelete = game:GetService("Workspace"):FindFirstChild("Parts")

if folderToDelete then
    while true do
        wait(3)	--It says every how many seconds the blocks will be deleted. The default is 3.
        folderToDelete:ClearAllChildren()
    end
else
    warn("ERROR: Please contact Uranus at https://scriptblox.com/u/uranus.")
end
