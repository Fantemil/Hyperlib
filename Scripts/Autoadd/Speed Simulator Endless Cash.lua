local RunService = game:GetService("RunService")
_G.yes = true 

while _G.yes == true do
    task.wait(0.1)
    game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(0, 1000000000000000
)
    game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
end


--if ur lag make "task.wait(0.1) to (0.2) or (0.3)" or any number u want :)

--THIS DOSENT NEED TO PAY/CHARGE

--credits to @Raggy again 

--Raggys discord is "Ragggy#4426" ok bye :) <3