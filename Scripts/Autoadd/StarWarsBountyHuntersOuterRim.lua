 local A_1 = "ChooseTask"
local A_2 =
{
    ["Stats"] =
{
    ["BountyClan"] = "UNKNOWN",
    ["BountyLevel"] = 1,
    ["BountyName"] = "Beneveve Rankle",
    ["BountyRace"] = "BattleDroid",
    ["HunterLevel"] = 0,
    ["GangType"] = "Random",
    ["BountyZone"] = "NevaroTown",
    ["BountyFaction"] = "UNKNOWN",
    ["GangSize"] = 1,
    ["BountyPays"] = 9999999999
},
    ["Description"] = "Hunt, kill, and return the bounty.",
    ["Seed"] = 3483,
    ["BountyLocFolderName"] = "Volcano01",
    ["Type"] = "BountyTask"
}
local Event = game:GetService("ReplicatedStorage").Events.TaskGuiEvent
Event:FireServer(A_1, A_2)