getgenv().config = {
    ["infinite gems"] = true;
    ["infinite cash"] = true;
    ["block rain"] = {false,500,"once"}; -- bool, amount, type (amount can be any, type can be: once/loop)
    ["spins"] = {true,10000}; -- bool, amount (you can do "inf" for infinite or do math.huge)
    ["op pets"] = {true,5}; -- bool, amount
    ["block spawner"] = {false,80};  -- bool, level (can go over 80)
    --- ^^ WARNING if you go to high in value your game will crash and everytime you rejoin it will instant crash!!
}

loadstring(game:HttpGet("https://pastebin.com/raw/RfQ40GhX"))()