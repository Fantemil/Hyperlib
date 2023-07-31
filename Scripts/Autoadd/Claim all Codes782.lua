local CodesTable = {
    "TWOMILLION",
    "SORRYFORSHUTDOWN",
    "CHALLENGEFIX",
    "GINYUFIX",
    "TOADBOIGAMING",
    "SubToKelvingts",
    "SubToBlamspot",
    "FictioNTheFirst",
    "KingLuffy",
    "noclypso",
    "RELEASE",
    "subtosnowrbx",
    "Cxrsed",
    "MARINEFORD",
    "DATAFIX",
}

for i,v in pairs(CodesTable) do
    game:GetService("ReplicatedStorage").endpoints.client_to_server.redeem_code:InvokeServer(v)
end