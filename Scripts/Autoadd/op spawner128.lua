getgenv().petdupe = true
while getgenv().petdupe == true do
workspace.PetGive.AddPet:FireServer()
task.wait()
end