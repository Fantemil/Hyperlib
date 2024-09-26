for Index, Value in next, debug do
    if not getgenv()[Index] then
        getgenv()[Index] = Value
    end
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()