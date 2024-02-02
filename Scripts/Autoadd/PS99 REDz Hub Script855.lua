getgenv()["Settings"] = {
    ["FastFarm"] = true, 
    ["UseBETALoader"] = true, 
    ["UISize"] = UDim2.fromScale(0.5, 0.6),
    ["Webhook"] = { -- egg hatching
        Url = "",
        Exclude = {"PETNAME"}
    };
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/0vma/PS99/main/REDZHUB.lua", true))()