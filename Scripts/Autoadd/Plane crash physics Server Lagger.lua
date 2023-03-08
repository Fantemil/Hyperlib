--Jitter1337#6557

game:GetService("RunService").RenderStepped:connect(function()
    local args = {[1]="Plane"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Plane2"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Passenger plane"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Speed plane"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Little boy"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Stunt plane"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="AE Stunt"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="A360"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="A370"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Bomber"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Cargo plane"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Fuel carrier"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Helicopter"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Tactical helicopter"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
    local args = {[1]="Bomber helicopter"};
    game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args));
end);