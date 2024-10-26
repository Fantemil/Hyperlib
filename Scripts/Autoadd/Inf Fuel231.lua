local numberValue = game.ReplicatedStorage.FuelConfig:FindFirstChild("Fuel Barrel")

if numberValue and numberValue:IsA("NumberValue") then
    numberValue.Value = 10000000  -- Replace 100 with the value you want to set
    print("Fuel Barrel NumberValue successfully updated!")
else
    print("Fuel Barrel not found or not a NumberValue type!")
end
