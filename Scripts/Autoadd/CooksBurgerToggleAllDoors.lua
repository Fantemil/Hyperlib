local Event = game:GetService("Workspace").Restaurant.Freezer.FreezerDoor.FreezerDoor.ContextAction
Event:FireServer()


 
local A_1 = "gameplay.interaction"
local A_2 = 
{
 ["with"] = game:GetService("Workspace").Restaurant.InteractiveDoor, 
 ["side"] = -90
}
local Event = game:GetService("ReplicatedStorage").Libs.Events.RemoteEvent
Event:FireServer(A_1, A_2)

 
local Event = game:GetService("Workspace").Restaurant.Fridge.FridgeDoor.FridgeDoor.ContextAction
Event:FireServer()


 
local Event = game:GetService("Workspace").Items.Microwave.Body.ContextAction
Event:FireServer()