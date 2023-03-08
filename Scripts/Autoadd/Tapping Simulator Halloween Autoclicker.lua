_G.Tap = true
 
spawn(function()
    while _G.Tap == true do 
        local args = {
    [1] = 5
}
 
game:GetService("ReplicatedStorage").Events.Tap:FireServer(unpack(args))
    wait()
    end
end)