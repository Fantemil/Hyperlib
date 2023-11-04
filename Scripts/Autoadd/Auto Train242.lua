local G_Train = true 
local isTrainRequested = false

while true do
    if G_Train == true and not isTrainRequested then
        isTrainRequested = true
        
        while G_Train == true do
            local args = {
                [1] = {
                    [1] = "Train_Request"
                }
            }

            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))

            wait(0.01)
        end
    elseif G_Train == false then
        isTrainRequested = false
        
        
        
    end

    wait(0.01) 
 
end