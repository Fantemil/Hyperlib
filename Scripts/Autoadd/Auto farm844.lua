repeat wait() until game:IsLoaded()
getgenv().Wait = 0.25 -- 0,25 for 80 ping, 0.3-0.4 for anything above
    if game.PlaceId ~= 46955756 then
    workspace:WaitForChild("Winner"):InvokeServer()
    wait(1)
    game:GetService("TeleportService"):Teleport(46955756)
else
    workspace:WaitForChild("SkipWaitVote"):InvokeServer()
    while true do
        workspace:WaitForChild("BuyZombie"):InvokeServer("Speedy")
        workspace:WaitForChild("Make"):InvokeServer("Speedy")
        wait(getgenv().Wait) 
    end
end