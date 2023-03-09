local ids = {
2124961762,
2124961777,
2124961798,
2124961816,
2124961823,
2124987431,
2124987434,
2124987441,
2124987445,
2124987454,
2125241852,
2125241857,
2125241861,
2125241865,
2125241877,
2125241880,
2125241886,
2125241900,
2125241902
}
for _,v in next, ids do

-- Remote Path: game:GetService("ReplicatedStorage").Remotes.Badge.Badge

local A_1 = v
local Event = game:GetService("ReplicatedStorage").Remotes.Badge.Badge
Event:InvokeServer(A_1)
end