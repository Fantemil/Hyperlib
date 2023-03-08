--inorder to make it work go to the edge of the map and say in chat in the correct order! "pls donate jar" "pls donate booth" when click on the play button on your booth and it will spawn the jar and when just execute the script

while wait(0.5) do
local args = {
    [1] = "robux"
}

game:GetService("ReplicatedStorage").MakeWish:FireServer(unpack(args))
end