_G.farm = true
while _G.farm do
wait()
local A_1 = game:GetService("Workspace")["Salon Spawn Points"]["2"].SalonContainer.Entrance.AcptCustomerInter
local A_2 = "CustomerAccept"
local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.Game.SalonInteractiveService.InteractEvent
Event:FireServer(A_1, A_2)
wait()
for i,v in pairs(game:GetService("Workspace")["Salon Spawn Points"]["2"].SalonContainer.Entrance.Pets:GetDescendants()) do
  if v.Name == "PlaceHolder_Pet" then
    local thing2 = "StartWashingPet"
    local thing = v
    local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.Game.SalonInteractiveService.InteractEvent
    Event:FireServer(thing, thing2)
  end
end
wait()
for i,v in pairs(game:GetService("Workspace")["Salon Spawn Points"]["2"].SalonContainer.Entrance.Pets:GetDescendants()) do
  if v.Name == "PlaceHolder_Pet" then
    local thing2 = "PetFollow"
    local thing = v
    local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.Game.SalonInteractiveService.InteractEvent
    Event:FireServer(thing, thing2)
  end
end
wait()
for i,v in pairs(game:GetService("Workspace")["Salon Spawn Points"]["2"].SalonContainer.LoadedContent["floor_1"].Objects:GetDescendants()) do
  if v.Name == "PH(Beginner Styling Station)" then
    local thing2 = "Styling_"
    local thing = v
    local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.Game.SalonInteractiveService.InteractEvent
    Event:FireServer(thing, thing2)
  end
end
end