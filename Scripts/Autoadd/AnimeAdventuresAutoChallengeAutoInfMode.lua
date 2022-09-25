repeat wait() until game:IsLoaded()

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

local rs = "https://rawscripts.net/raw/"

local games = {
    [2655311011] = "AD_1036",
    [8357510970] = "APS_1040",
    [7107498084] = "ABT_1041",
    [8448735476] = "DBZAU_1042",
    [6329844902] = "LP_1043",
    [8592863835] = "MS2_1044",
    [8540346411] = "RBX_1045",
    [8554378337] = "WFS_1046",
    [8472242071] = "HFS_1048",
    [8739926633] = "MWS_1050",
    [8607531509] = "RS_1053",
    [8311081337] = "OPBR_1054",
    [8649665676] = "APSNW_1055",
    [7363858705] = "FS_1056",
    [7114303730] = "DO_1057",
    [7989049516] = "AM_1058",
    [8140820363] = "AH_1059",
    [7549520141] = "APS2_1078",
    [8822098458] = "Da-Piece-UzuDaPiece-1375",
    [9136292138] = "Released-Grand-Pirates-Uzu-2414",
    [8396586868] = "Testing-A-0ne-Piece-Game-Uzu-1412" ,
    [9264222904] = "Testing-A-0ne-Piece-Game-UzuRaid-1840",
    [9432106399] = "Testing-A-0ne-Piece-Game-UzuSecondSea-2229" ,
    [9572329421] = "Testing-A-0ne-Piece-Game-UzuMaze-2486",
    [9812430518] = "Testing-A-0ne-Piece-Game-UzuDungeon-3205",
    [3183403065] = "UPD-3-Anime-Adventures-Uzu-5109",
}

for i, v in pairs(games) do
    if i == game.PlaceId or i == game.GameId then
        loadstring(game:HttpGet(rs .. v))()
    end
end