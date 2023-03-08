if not game:IsLoaded() then
    game.Loaded:Wait()
end
if game.PlaceId == 1537690962 then
     _G.wl_key = 'put ur key here'
     -- remove the dashes behind _G.autoload if you want to autoload your config(your config must be saved as your username)
    -- _G.autoload = game.Players.LocalPlayer.Name
    loadstring(game:HttpGet('https://scripts.luawl.com/12761/bss.lua'))()
end