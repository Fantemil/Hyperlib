_G.spam = false

while _G.spam == true do
    workspace.Restaurant.Freezer.FreezerDoor.FreezerDoor.ContextAction:FireServer()
    workspace.Restaurant.Fridge.FridgeDoor.FridgeDoor.ContextAction:FireServer()
    wait()
end