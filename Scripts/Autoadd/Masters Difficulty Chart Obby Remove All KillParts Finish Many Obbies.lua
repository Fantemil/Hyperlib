local Games = {
    [6429911702] = "https://raw.githubusercontent.com/Faacts/ZrZ/main/masterdco",
    [8884334497] = "https://raw.githubusercontent.com/Faacts/ZrZ/04268b1539c0227e80728d77673aa78777fe71c2/miningclickersim",
    [2537430692] = "https://raw.githubusercontent.com/Faacts/ZrZ/main/jenga",
    [10347946161] = "https://github.com/factshub/FactsHub/raw/main/RatWashingTycoon",
    [8674186618] = "https://raw.githubusercontent.com/Faacts/ZrZ/04268b1539c0227e80728d77673aa78777fe71c2/crateopening",
    [10676523834] = "https://raw.githubusercontent.com/factshub/FactsHub/main/RacingRocket",
    [537413528] = "https://raw.githubusercontent.com/Faacts/ZrZ/04268b1539c0227e80728d77673aa78777fe71c2/babft",
    [9992339729] = "https://raw.githubusercontent.com/Faacts/ZrZ/04268b1539c0227e80728d77673aa78777fe71c2/longestanswer",
    [9872472334] = "https://github.com/Faacts/ZrZ/raw/04268b1539c0227e80728d77673aa78777fe71c2/evade",
    [1] = "https://github.com/Faacts/ZrZ/raw/04268b1539c0227e80728d77673aa78777fe71c2/universal"
}
load = function(u)
    return loadstring(game:HttpGet(u))()
end
for i,v in pairs(Games) do
    if i == game.PlaceId then
        load(v)
        getgenv().b = ''
    end
end
if not b then
    load(Games[1])
end