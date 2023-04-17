while wait(.75) do
   local myTaxi = nil
   
   for i,v in pairs(game:GetService("Workspace").Taxis:GetDescendants()) do
    if v.Name == "DriveSeat" then
    if v:FindFirstChild("SeatWeld") then
    if v.SeatWeld.Part1.Parent.Name == game.Players.LocalPlayer.Name then
    myTaxi = v.Parent.Parent
    print("Found Taxi")
    end
    end
    end
   end
   
   if myTaxi.Taxi.TaxiTarget.Value ~= Vector3.new(0, 0, 0) then
    myTaxi.Taxi:SetPrimaryPartCFrame(CFrame.new(myTaxi.Taxi.TaxiTarget.Value))
   else
    myTaxi.Taxi:SetPrimaryPartCFrame(CFrame.new(myTaxi.Taxi.TaxiRider.Pos.Value))
   end
end