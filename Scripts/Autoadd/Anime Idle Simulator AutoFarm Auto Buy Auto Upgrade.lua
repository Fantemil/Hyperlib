getgenv().autoswing = true
getgenv().autobuynextallies = true
getgenv().autoupgrade = true
    while autoswing == true do

    local args = {
    [1] = "Swing"
    }

    game:GetService("ReplicatedStorage")._GAME._MODULES.Utilities.NetworkUtility.Functions.Weapon:InvokeServer(unpack(args))
wait()
    end
while autoupgrade == true do
    

        local args = {
            [1] = "Upgrade",
         [2] = 1,
         [3] = 1
}

        game:GetService("ReplicatedStorage")._GAME._MODULES.Utilities.NetworkUtility.Events.Allies:FireServer(unpack(args))
    wait()
    end
    while autobuynextallies == true 
   
do local args = {
    [1] = "Hire"
}

    game:GetService("ReplicatedStorage")._GAME._MODULES.Utilities.NetworkUtility.Events.Allies:FireServer(unpack(args))
    wait()
end