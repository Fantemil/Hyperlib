for i = 0,9 ,1 do 
    for j = 0,9,1 do 
        for x = 0,9,1 do
            game:GetService("ReplicatedStorage").Remotes.MissionRF:InvokeServer("MissionGet", "MISSION_"..i..j..x)
            game:GetService("ReplicatedStorage").Remotes.MissionRF:InvokeServer("MissionReceiveAward", "MISSION_"..i..j..x, Vector3.new(67.61710357666016, -1.3638267517089844, -182.75799560546875))
        end
    end
end