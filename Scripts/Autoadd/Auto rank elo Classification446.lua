
getgenv().Customize = {
    ["RankMode"] = "Duo"; -- // FFA , Duo
    ["DuoMode_AutoInviteAll"] = true;
    ["Radius"] = (15);
    ["Speed"] = (0.01);
    ["Heights"] = (-7);
    ["View BallTarget"] = true;
    ["LowQuality"] = true;
    ["Anti AFK"] = true;
    ["Auto PlayAgain"] = true;
    ["Auto Rejoin when you get Kicked"] = true;
    ["Auto Kicked When Moderators joined"] = true;
}
repeat wait()
until game:IsLoaded()
local a,b=xpcall(function()
    local r=loadstring
    local n="https://raw.githubusercontent.com/Stang001/pulawat/main/"
    local M=r(game:HttpGet(n .. "BladeBall%20Ranked%20Farm.lua"))
    if (M~=nil and M~="")then
        M()
    end
end,function()
    warn("Script get an error !");
end)