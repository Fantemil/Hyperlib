local Games = {
    [3101667897] = "SmoxHub/main/Legends%20Of%20Speed";
    [3956818381] = "SmoxHub/main/Ninja%20Legends";
    [286090429] = "SmoxHub/main/Arsenal";
    [2653064683] = "SmoxHub/main/Word%20Bomb";
    [4951858512] = "SmoxHub/main/Victory%20Race";
    [9872472334] = "SmoxHub/main/Evade";
    [9980179145] = "SmoxHub/main/Speed%20Race%20Clicker";
    [9285238704] = "SmoxHub/main/Race%20Clicker";
    [10320240572] = "SmoxHub/main/Easy%20Race%20Clicker";
    [10429088113] = "SmoxHub/main/Jump%20Race";
    [606849621] = "SmoxHub/main/Jailbreak";
    [10676523834] = "SmoxHub/main/Racing%20Rocket";
    [10681622988] = "SmoxHub/main/Easy%20Jump%20Race";

}

local Supported = Games[game.PlaceId] or false
if Supported ~= false then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SmoxHub/' .. Supported))()
end

if not game.PlaceId == Supported  then
   local hint = Instance.new("Hint",game.CoreGui)
    local req = (syn and syn.request) or (http and http.request) or http_request or request
        print("Not a supported game")
        hint.Text = "This game is not supported"
    delay(5,function() hint:destroy() end)
end