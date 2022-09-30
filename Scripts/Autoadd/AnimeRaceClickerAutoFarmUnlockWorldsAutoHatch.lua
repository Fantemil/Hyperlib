local Games = {
    [10320240572] = "RBLX/main/LOAKS/SCRIPTS/10320240572.LOAKS";
    [10676523834] = "RBLX/main/LOAKS/SCRIPTS/10676523834.LOAKS";
    [10681622988] = "RBLX/main/LOAKS/SCRIPTS/10681622988.LOAKS";
    [10714365287] = "RBLX/main/LOAKS/SCRIPTS/10714365287.LOAKS";
    [2653064683] = "RBLX/main/LOAKS/SCRIPTS/2653064683.LOAKS";
    [3101667897] = "RBLX/main/LOAKS/SCRIPTS/3101667897.LOAKS";
    [4951858512] = "RBLX/main/LOAKS/SCRIPTS/4951858512.LOAKS";
    [9980179145] = "RBLX/main/LOAKS/SCRIPTS/9980179145.LOAKS";
    [10652184030] = "RBLX/main/LOAKS/SCRIPTS/10652184030.LOAKS";
    [7026828578] = "RBLX/main/LOAKS/SCRIPTS/7026828578.LOAKS";
    [10904953319] = "RBLX/main/LOAKS/SCRIPTS/10904953319.LOAKS";
}

local Supported = Games[game.PlaceId] or false
if Supported ~= false then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/LOAKS-HUB/' .. Supported))()
end

if not game.PlaceId == Supported  then
   local hint = Instance.new("Hint",game.CoreGui)
    local req = (syn and syn.request) or (http and http.request) or http_request or request
        print("Not a supported game")
        hint.Text = "This game is not supported"
    delay(5,function() hint:destroy() end)
end