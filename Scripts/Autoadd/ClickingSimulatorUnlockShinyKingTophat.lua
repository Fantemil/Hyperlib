local ohString1 = "CraftPet"
local ohTable2 = {
[1] = "King Tophat",
[2] = "Gold",
[3] = {
[1] = {
["Locked"] = false,
["PetID"] = "1017125390-196",
["PetName"] = "King Tophat"
},
[2] = {
["Locked"] = false,
["PetID"] = "1017125390-195",
["PetName"] = "King Tophat"
},
[3] = {
["Locked"] = false,
["PetID"] = "1017125390-194",
["PetName"] = "King Tophat"
},
[4] = {
["Locked"] = false,
["PetID"] = "1017125390-193",
["PetName"] = "King Tophat"
},
[5] = {
["Locked"] = false,
["PetID"] = "1017125390-192",
["PetName"] = "King Tophat"
},
[6] = {
["Locked"] = false,
["PetID"] = "1017125390-191",
["PetName"] = "King Tophat"
},
[7] = {
["Locked"] = false,
["PetID"] = "1017125390-190",
["PetName"] = "King Tophat"
},
[8] = {
["Locked"] = false,
["PetID"] = "1017125390-189",
["PetName"] = "King Tophat"
},
[9] = {
["Locked"] = false,
["PetID"] = "1017125390-188",
["PetName"] = "King Tophat"
},
[10] = {
["Locked"] = false,
["PetID"] = "1017125390-182",
["PetName"] = "King Tophat"
}
}
}

game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.HandlePet:InvokeServer(ohString1, ohTable2)