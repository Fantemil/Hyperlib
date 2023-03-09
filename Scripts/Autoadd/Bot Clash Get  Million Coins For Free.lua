local args = {
   [1] = "MissionGet",
   [2] = "MISSION_001"
}

game:GetService("ReplicatedStorage").Remotes.MissionRF:InvokeServer(unpack(args))
local args = {
   [1] = "MissionReceiveAward",
   [2] = "MISSION_001",
   [3] = Vector3.new(67.61710357666016, -1.3638267517089844, -182.75799560546875)
}

game:GetService("ReplicatedStorage").Remotes.MissionRF:InvokeServer(unpack(args))